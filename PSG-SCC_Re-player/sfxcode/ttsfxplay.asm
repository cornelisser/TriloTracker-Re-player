; --- TT sfx player v0.14 ---
; --- Build uppon ayFX replayer, the work of Shiru, Z80st, ARTRAG


; --- plays SFX over PSG(chan3) and SCC (chan1)
; --- Works with a wavetable list (SFX_WAVEBASE) and afb file.

;===========================================================
; ---	ttsfx_init
; Initialise the sfx player. Sets initial priorities, volume
; balancce and initial SCC waveform.
;
;===========================================================	
ttsfx_init:
	ld	a,15
	call	ttsfx_scc_balance
	ld	a,15
	call	ttsfx_psg_balance	
	xor	a
	ld	(sfx_STATUS),a
	dec	a
	ld	(sfx_PRIORITY),a
	ret

								
				
;===========================================================
; ---	ttsfx_scc_balance
; Set the main SFX volume for the SCC chip.
;
; in: [A] master volume (0-15) 0=silenced, 15=full volume. 
;===========================================================	
ttsfx_scc_balance:
	call	_getsfxbalancebase
	ld	(sfx_SCC_BALANCE),hl	
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
	ld	hl,_VOLUME_TABLE			; Volume table from TT replayer
	and	$f0
	add	a,l
	ld	l,a
	ret 	nc
	inc	h
	ret			
				
				



ttsfx_start:
	;--- Start a new SFX
	;--- Input B -> sfx number
	;--- Input C -> priority  0 = lowest, 255 is highest

	;--- Test priority
	ld	a,(sfx_PRIORITY)		; a:=Current sfx_SCC stream priority
	cp	c				; If new sfx_SCC stream priority is higher than currently one...
	ret	c				; ...we don't start the new sfx_SCC stream	

	;--- Set priority
	ld	a,c				; a:=New priority
	ld	(sfx_PRIORITY),a		; new priority saved in RAM
	ld	a,00000011b			
	ld	(sfx_STATUS),a		; 2 chnnels playing

	;--- Get pointers
	ld	hl,sfxbank+1				; Start of SFX offset list
	ld	a,b
	add	a						; offset is 2 sfx (PSG+SCC)
	add	a
	add	a,l
	ld	l,a
	jp	nc,.skip
	inc	h
.skip:	
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	inc	hl
	push	hl						; store for second sfx
	add	hl,bc						; Pointer to the first sfx
	ld	(sfx_PSG_POINTER),hl
	pop	hl
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)		
	add	hl,bc						; Pointer to the second sfx
	ld	(sfx_SCC_POINTER),hl
	ret


ttsfx_play:
	;--------------------------------
	; Play both sfx streams
	;--------------------------------
	ld	a,(sfx_STATUS)	; a:=Current sfx_PSG stream priority
	bit	0,a			; PSG active?
	jp	nz,.psg_play
	and	a			; SCC active?
	jp	nz,_ttsfx_scc_play.scc_play
	ret

.psg_play:
	ld	b,00000000b			; mixer mask for music noise 
	; --- PLAY A FRAME OF AN sfx_PSG STREAM ---
	; --- Extract control byte from stream ---
	ld	hl,(sfx_PSG_POINTER)	; Pointer to the current sfx_PSG stream
	ld	c,(hl)			; c:=Control byte
;	ld	a,c
;	cp	64				; Check for end marker
;	jp	z,_ttsfx_psg_end
	inc	hl				; Increment pointer
	; --- Check if there's new tone on stream ---
	bit	5,c				; If bit 5 c is off...
	jp	z,_ayCHECK_NN		; ...jump to _ayCHECK_NN (no new tone)
	; --- Extract new tone from stream ---
	ld	e,(hl)			; e:=lower byte of new tone
	inc	hl				; Increment pointer
	ld	d,(hl)			; d:=higher byte of new tone
	inc	hl				; Increment pointer
	ld	(PSG_regToneC),de		; sfx_PSG tone updated
_ayCHECK_NN:	
	; --- Check if there's new noise on stream ---
	bit	6,c				; if bit 6 c is off...
	jp	z,_aySETPOINTER		; ...jump to _aySETPOINTER (no new noise)
	; --- Extract new noise from stream ---
	ld	a,(hl)			; a:=New noise
	inc	hl				; Increment pointer
	cp	$20				; If it's an illegal value of noise (used to mark end of stream)...
	jp	nz,_ayNOISE
	;--- end of sfx
	ld	a,(sfx_STATUS)
	and	00000010b			; remove bit 0
	ld	(sfx_STATUS),a
	ld	a,255				; reset prio
	ld	(sfx_PRIORITY),a
	jp	_aySETPOINTER
_ayNOISE:
	ld	(sfx_PSG_NOISE),a		; sfx_PSG noise updated
_aySETPOINTER:
	; --- Update sfx_PSG pointer ---
	ld	(sfx_PSG_POINTER),hl	; Update sfx_PSG stream pointer
	; --- Set noise register ---
	bit	7,c				; If noise is off...
	jp	nz,_ayVOLUME		; ...jump to _aySETMASKS
	ld	a,(sfx_PSG_NOISE)		; sfx_PSG noise value
	ld	(PSG_regNOISE),a		; copied in to AYREGS (noise channel)
	ld	b,00011000b			; mixer mask for no music noise

_ayVOLUME:	
	; --- Extract volume ---
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
	ld	(PSG_regVOLC),a		; Diretly update the TT register value

	;--- Set Mixer
	ld	a,c
	rra
	rra					; shift the bits in place for the mixer
	and	00100100b			; tone and noise bits
	ld	c,a
	ld	a,(PSG_regMIXER)
	and	00111111b
	or	b
	and 	c
	ld	(PSG_regMIXER),a		; Directly write the TT register value


_ttsfx_scc_play:	
	ld	a,(sfx_STATUS)	; a:=Current sfx_PSG stream priority
	and	00000010b		; PSG active?
	ret	z

.scc_play:
	; --- Extract control byte from stream ---
	ld	hl,(sfx_SCC_POINTER)	; Pointer to the current sfx_SCC stream
	ld	c,(hl)			; c:=Control byte
;	ld	a,c
	inc	hl				; Increment pointer
	; --- Check if there's new tone on stream ---
	bit	5,c				; If bit 5 c is off...
	jp	z,_sccCHECK_W		; ...jump to _sccCHECK_NN (no new tone)
	; --- Extract new tone from stream ---
	ld	e,(hl)			; e:=lower byte of new tone
	inc	hl				; Increment pointer
	ld	d,(hl)			; d:=higher byte of new tone
	inc	hl				; Increment pointer
	ld	(SCC_regToneA),de		; sfx_SCC tone updated
_sccCHECK_W:	; --- Check if there's the end of the sfx ---
	bit	6,c				; if bit 6 c is off...
	jp	z,_sccSETPOINTER		; ...jump to _sccSETPOINTER (no end)
	; --- Extract new waveform from stream ---
	ld	a,(hl)			; a:=New waveform
	inc	hl
	add	a				; *2
	jp	z,_sccSETPOINTER		; wave form 0 is no waveform
	cp	$40				; And marker is now 2*$20 due to the add
	jp	nz,_sccWAVE		
	;--- end of sfx
	ld	a,(sfx_STATUS)
	and	00000001b			; remove bit 1
	ld	(sfx_STATUS),a
	jp	nz,_sccSETPOINTER
	dec	a				; reset prio if status is 0
	ld	(sfx_PRIORITY),a
	jp	_sccSETPOINTER
_sccWAVE:
	add	a				; *4
	add	a				; *8
	or	3				; set SFX wave flag

	ld	(sfx_SCC_POINTER),hl	; Update sfx_SCC stream pointer
	;--- Set waveform trigger in TT replayer
	ld	hl,TRACK_Chan4+17+TRACK_Waveform
	cp	(hl)
	jp	z,_sccVOLUME


	ld	(TRACK_Chan4+17+TRACK_Waveform),a		; Set a new waveform trigger, ttreplay will handle this
	ld	hl,TRACK_Chan4+17+TRACK_Flags
	set 	B_TRGWAV,(hl)
	jp	_sccVOLUME

_sccSETPOINTER:	; --- Update sfx_SCC pointer ---
	ld	(sfx_SCC_POINTER),hl	; Update sfx_SCC stream pointer
_sccVOLUME:		
	; --- Extract volume ---
	ld	a,c				; a:=Control byte
	and	$0F				; lower nibble
	; --- Fix the volume using TT Volume Table ---
	ld	hl,(sfx_SCC_BALANCE)	; hl:=Pointer to relative volume table
	ld	e,a				; e:=a (sfx_SCC volume)
	ld	d,0				; d:=0
	add	hl,de				; hl:=hl+de (hl points to the relative volume of this frame
	ld	a,(hl)			; a:=sfx_SCC relative volume
	rra					; SCC relative volume is in the higher 4 bits
	rra
	rra
	rra
	and	$0f				; mask only scc volume
	ld	(SCC_regVOLA),a			; Volume copied in to SCCREGS (channel 1 volume)

	; -------------------------------------
	; --- COPY sfx_SCC VALUES IN TO sccREGS ---
	; -------------------------------------
	; --- Set mixer masks ---
	ld	a,c				; a:=Control byte
	and	$80				; Only bit 4 (tone mask for SCC)
	ret	z				; ...return (don't copy sfx_SCC values in to sccREGS)

	;--- Set the SCC mixer value
	ld	hl,SCC_regMIXER
	set 	0,(hl)

	ret
