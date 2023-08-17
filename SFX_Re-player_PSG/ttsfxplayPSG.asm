; --- TT sfx player v0.14 ---
; --- Build uppon ayFX replayer, the work of Shiru, Z80st, ARTRAG

;--- PSG playback on chan 1
PSG_regVOLreg 	equ	PSG_regVOLA
PSG_regTonereg 	equ	PSG_regToneA
PSG_tonebit 	equ	0
PSG_mixerOR 	equ	10110000b
PSG_mixerAND	equ	10110111b
PSG_volumeAND 	equ	10001001b
PSG_volumeCP	equ	10001001b

;--- PSG playback on chan 2
;PSG_regVOLreg 	equ	PSG_regVOLB
;PSG_regTonereg 	equ	PSG_regToneB
;PSG_tonebit 	equ	1
;PSG_mixerOR 	equ	10101000b
;PSG_mixerAND	equ	10101111b
;PSG_volumeAND 	equ	10010010b
;PSG_volumeCP	equ	10010010b

;--- PSG playback on chan 3
;PSG_regVOLreg 	equ	PSG_regVOLC
;PSG_regTonereg 	equ	PSG_regToneC
;PSG_tonebit 	equ	2
;PSG_mixerOR 	equ	10011000b
;PSG_mixerAND	equ	10011111b
;PSG_volumeAND 	equ	10100100b
;PSG_volumeCP	equ	10100100b


; --- plays SFX over PSG(chan3)
; --- Works with an afb file.

;===========================================================
; ---	ttsfx_init
; Initialise the sfx player. Sets initial priorities, volume
; balancce and initial SCC waveform.
;
;===========================================================	
ttsfx_init:
	ld	a,15
	call	ttsfx_psg_balance	
	xor	a
	ld	(sfx_STATUS),a
	dec	a
	ld	(sfx_PRIORITY),a
	ret

;===========================================================
; ---	ttsfx_psg_balance
; Set the main SFXvolume for the PSG chip.
;
; in: [A] master volume (0-15) 0=silenced, 15=full volume. 
;===========================================================	
ttsfx_psg_balance:
	call	_getsfxbalancebase
	ld	(sfx_PSG_BALANCE),hl	
	ret				
				

_getsfxbalancebase:
	rlca
	rlca
	rlca
	rlca
	ld	hl,_VOLUME_TABLE_PSG			; Volume table from TT replayer
	and	$f0
	add	a,l
	ld	l,a
	ret 	nc
	inc	h
	ret			

				



ttsfx_start:
	;--- Start a new SFX
	;--- Input B -> sfx number
	;--- Input C -> priority  0 = highest, 254 is lowest

	;--- Test priority
	ld	a,(sfx_PRIORITY)		; a:=Current sfx_SCC stream priority
	cp	c				; If new sfx_SCC stream priority is higher than currently one...
	ret	c				; ...we don't start the new sfx_SCC stream	

	;--- Set priority
	ld	a,c				; a:=New priority
	ld	(sfx_PRIORITY),a		; new priority saved in RAM
	ld	a,1		
	ld	(sfx_STATUS),a		; playing SFX


	ld	de, sfxbank+1		; Start of SFX offset list
	ld	l, b
	ld	h, 0
	add	hl, hl			; *2 to get item offset in bank
	add	hl, de

	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	add	hl,bc				; Pointer to the first sfx
	ld	(sfx_PSG_POINTER),hl
	ret


ttsfx_play:
	;--- Disable this section if the SFX do not need to run at 
	;    the same speed on 50hz and 60hz.
	;--- SPEED EQUALIZATION 
	ld	a,(equalization_cnt)  		; if NTSC call 5 times out of 6
	cp	6					; if previously set on 6 then skip
	ret	z

	
	;--------------------------------
	; Play sfx stream
	;--------------------------------
	ld	a,(sfx_STATUS)		; a:=Current sfx_PSG stream priority
	and	a				; PSG active?
	jp	nz,.psg_play
	
	;--- If not active just use re-player noise and mixer
	ld	a,(replay_noise)
	ld	(PSG_regNOISE),a
	ret

.psg_play:
	; --- PLAY A FRAME OF AN sfx_PSG STREAM ---
	; --- Extract control byte from stream ---
	ld	hl,(sfx_PSG_POINTER)	; Pointer to the current sfx_PSG stream
	ld	c,(hl)			; c:=Control byteb
	ld	a,(PSG_regMIXER)
	ld	b,a				; b = mixer 
	inc	hl				; Increment pointer

_ayCHECK_NT:
	; --- Check if there's new tone on stream ---
	bit	5,c				; If bit 5 c is off...
	jp	z,_ayCHECK_NN		; ...jump to _ayCHECK_NN (no new tone)
	; --- Extract new tone from stream ---
	ld	e,(hl)			; e:=lower byte of new tone
	inc	hl				; Increment pointer
	ld	d,(hl)			; d:=higher byte of new tone
	inc	hl				; Increment pointer
	ld	(sfx_PSG_TONE),de		; sfx_PSG tone updated

_ayCHECK_NN:	
	; --- Check if there's new noise on stream ---
	bit	6,c				; if bit 6 c is off...
	jp	z,_aySETPOINTER		; ...jump to _aySETPOINTER (no new noise)
	; --- Extract new noise from stream ---
	ld	a,(hl)			; a:=New noise
	inc	hl				; Increment pointer
	cp	$20				; If it's an illegal value of noise (used to mark end of stream)...
	jp	z,_ayEND
_ayNOISE:
	ld	(sfx_PSG_NOISE),a		; sfx_PSG noise updated
_aySETPOINTER:
	; --- Update sfx_PSG pointer ---
	ld	(sfx_PSG_POINTER),hl	; Update sfx_PSG stream pointer

	; --- Set noise register if enabled ---
	bit	7,c				; If noise is off...
	jp	nz,_ayMUSNOISE		; ...jump to _aySETMASKS
	ld	a,b				; mixer mask for no music noise
	or	PSG_mixerOR
	and	PSG_mixerAND
	ld	b,a
	ld	a,(sfx_PSG_NOISE)		; sfx_PSG noise value
	jp	_ayNOISESET
_ayMUSNOISE:
	;-- If no sfx noise then use music noise value
	ld	a,(replay_noise)		; replaer PSG noise value
_ayNOISESET:
	ld	(PSG_regNOISE),a		; copied in to AYREGS (noise channel)

	; --- Extract and set volume if tone or noise is enabled ---
	bit	4,c				; If tone is off...
	jp	nz,_ayVOLUME		; ...jump to _ayMIXER
	ld	hl,(sfx_PSG_TONE)
	ld	(PSG_regTonereg),hl
	res	PSG_tonebit,b				; enable tone on chan 

_ayVOLUME:	
	;--- Only update volume if tone or noise is active
	ld	a,PSG_volumeAND
	and	b
	cp	PSG_volumeCP
	jp	z,_ayMIXER

	ld	a,c				; a:=Control byte
	and	$0F				; lower nibble
	; --- Fix the volume using TT Volume Table ---
	ld	hl,(sfx_PSG_BALANCE)	; hl:=Pointer to relative volume table
	add	a,l
	ld	l,a
	jp	nc,.skip
	inc	h
.skip:	
	ld	a,(hl)			; a:=sfx_PSG relative volume
	and	$0f				; mask only ay volume
	ld	(PSG_regVOLreg),a		; Diretly update the TT register value

_ayMIXER:
	;--- Set Mixer
	ld	a,b
	ld	(PSG_regMIXER),a		; Directly write the TT register value
	ret


_ayEND:		
	xor   a		            ; remove bit 0
	ld	(sfx_STATUS),a
	dec	a				; reset prio (255)
	ld	(sfx_PRIORITY),a	
	ret					

