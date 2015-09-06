; --- TT sfx player v0.1r ---
; --- Build uppon ayFX replayer, the work of Shiru, Z80st, ARTRAG

				
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
	call	_ttsfx_scc_end
	jp	_ttsfx_psg_end
										
				
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
	ld	hl,_VOLUME_TABLE
	and	$f0
	add	a,l
	ld	l,a
	ret 	nc
	inc	h
	ret			
				
				
_ttsfx_psg_end:	; --- End of an sfx_PSG stream ---
		ld	a,255				; Lowest sfx_PSG priority
		ld	(sfx_PSG_PRIORITY),a	; Priority saved (not playing sfx_PSG stream)
		ret					; Return

		
		
ttsfx_psg_start:	
		; ---     START A NEW sfx_PSG STREAM     ---
		; --- INPUT: B -> sound to be played ---
		; ---        C -> sound priority     ---
		push	bc				; Store bc in stack
		push	hl				; Store hl in stack
		ld	a,(sfx_PSG_PRIORITY)	; a:=Current sfx_PSG stream priority
		cp	c				; If new sfx_PSG stream priority is higher than currently one...
		jp	c,_ttsfx_end_start	; ...we don't start the new sfx_PSG stream

		; --- INITS ---
		ld	a,c				; a:=New priority
		and	$7F				; We mask the priority
		ld	(sfx_PSG_PRIORITY),a	; new sfx_PSG stream priority saved in RAM

		; --- sfx_PSG stream pointer ---
		ld	l,b				; l:=b (new sfx_PSG stream index)
		ld	h,0				; hl:=b (new sfx_PSG stream index)
		add	hl,hl				; hl:=hl*2
		ld	bc,sfx_PSG_STREAMS	; Pointer to the pointer list of the sfx_PSG streams
		add	hl,bc				; Pointer to the pointer of new sfx_PSG stream to be played
		ld	c,(hl)			; e:=lower byte of new sfx_PSG stream pointer
		inc	hl				; Increment pointer to the pointer
		ld	b,(hl)			; bc:=pointer to the new sfx_PSG stream
		inc	bc				; skip the waveform as this is psg
		ld	(sfx_PSG_POINTER),bc	; Pointer saved in RAM
_ttsfx_end_start:	
		pop	hl				; Retrieve hl from stack
		pop	bc				; Retrieve bc from stack
		ret					; Return

		
ttsfx_scc_start:	
		; ---     START A NEW sfx_SCC STREAM     ---
		; --- INPUT: B -> sound to be played ---
		; ---        C -> sound priority     ---
		push	bc				; Store bc in stack
		push	hl				; Store hl in stack
		ld	a,(sfx_SCC_PRIORITY)	; a:=Current sfx_SCC stream priority
		cp	c				; If new sfx_SCC stream priority is higher than currently one...
		jp	c,_ttsfx_end_start			; ...we don't start the new sfx_SCC stream

		; --- INITS ---
		ld	a,c				; a:=New priority
		and	$7F				; We mask the priority
		ld	(sfx_SCC_PRIORITY),a	; new sfx_SCC stream priority saved in RAM

		; --- sfx_SCC stream pointer ---
		ld	l,b				; l:=b (new sfx_SCC stream index)
		ld	h,0				; hl:=b (new sfx_SCC stream index)
		add	hl,hl				; hl:=hl*2
		ld	bc,sfx_SCC_STREAMS	; Pointer to the pointer list of the sfx_SCC streams
		add	hl,bc				; Pointer to the pointer of new sfx_SCC stream to be played
		ld	c,(hl)			; e:=lower byte of new sfx_SCC stream pointer
		inc	hl				; Increment pointer to the pointer
		ld	b,(hl)			; bc:=pointer to the new sfx_SCC stream
		
		;--- get the waveform		
		ld	a,(TRACK_Chan4+17+TRACK_Waveform)
		ld	h,a
		ld	a,(bc)
		inc	bc
		ld	(sfx_SCC_POINTER),bc	; Pointer saved in RAM		
		cp	h
		jp	z,_ttsfx_end_start			; no unessecary updates
		ld	(sfx_SCC_WAVE),a
		jp	_ttsfx_end_start	
		
		
		
		
ttsfx_play:	; --- PLAY A FRAME OF AN sfx_PSG STREAM ---
		ld	a,(sfx_PSG_PRIORITY)	; a:=Current sfx_PSG stream priority
		or	a				; If priority has bit 7 on...
		jp	m,_ttsfx_scc_play				; ...return

		; --- Extract control byte from stream ---
		ld	hl,(sfx_PSG_POINTER)	; Pointer to the current sfx_PSG stream
		ld	c,(hl)			; c:=Control byte
		inc	hl				; Increment pointer
		; --- Check if there's new tone on stream ---
		bit	5,c				; If bit 5 c is off...
		jp	z,_ayCHECK_NN		; ...jump to _ayCHECK_NN (no new tone)
		; --- Extract new tone from stream ---
		ld	e,(hl)			; e:=lower byte of new tone
		inc	hl				; Increment pointer
		ld	d,(hl)			; d:=higher byte of new tone
		inc	hl				; Increment pointer
		ld	(sfx_PSG_TONE),de		; sfx_PSG tone updated
_ayCHECK_NN:	; --- Check if there's new noise on stream ---
		bit	6,c				; if bit 6 c is off...
		jp	z,_aySETPOINTER		; ...jump to _aySETPOINTER (no new noise)
		; --- Extract new noise from stream ---
		ld	a,(hl)			; a:=New noise
		inc	hl				; Increment pointer
		cp	$20				; If it's an illegal value of noise (used to mark end of stream)...
		jp	z,_ttsfx_psg_end			; ...jump to _ttsfx_psg_end
		ld	(sfx_PSG_NOISE),a		; sfx_PSG noise updated
_aySETPOINTER:	; --- Update sfx_PSG pointer ---
		ld	(sfx_PSG_POINTER),hl	; Update sfx_PSG stream pointer
		; --- Extract volume ---
		ld	a,c				; a:=Control byte
		and	$0F				; lower nibble
		; --- Fix the volume using TT Volume Table ---
		ld	hl,(sfx_PSG_BALANCE)	; hl:=Pointer to relative volume table
		ld	e,a				; e:=a (sfx_PSG volume)
		ld	d,0				; d:=0
		add	hl,de				; hl:=hl+de (hl points to the relative volume of this frame
		ld	a,(hl)			; a:=sfx_PSG relative volume
		and	$0f				; mask only ay volume
		ld	(sfx_PSG_VOLUME),a	; sfx_PSG volume updated
		or	a				; If relative volume is zero...
		ret	z				; ...return (don't copy sfx_PSG values in to AYREGS)

		ld	b,a 				; Store relative volume in b
		; -------------------------------------
		; --- COPY sfx_PSG VALUES IN TO AYREGS ---
		; -------------------------------------
		; --- Set noise channel ---
		bit	7,c				; If noise is off...
		jp	nz,_aySETMASKS		; ...jump to _aySETMASKS
		ld	a,(sfx_PSG_NOISE)		; sfx_PSG noise value
		ld	(AY_regNOISE),a		; copied in to AYREGS (noise channel)
_aySETMASKS:	; --- Set mixer masks ---
		ld	a,c				; a:=Control byte
		and	$90				; Only bits 7 and 4 (noise and tone mask for psg reg 7)
		cp	$90				; If no noise and no tone...
		ret	z				; ...return (don't copy sfx_PSG values in to AYREGS)
		; --- Copy sfx_PSG values in to ARYREGS ---
		rrc	a				; Rotate a to the right (1 TIME)
		rrc	a				; Rotate a to the right (2 TIMES) (OR mask)
		
		;--- Set the PSG mixer value
		ld	c,a				; c:=OR mask
		ld	a,(AY_regMIXER)		; a:=PSG mixer value
		and	00011011b
		or	c				; OR mask
		ld	(AY_regMIXER),a		; PSG mixer value updated
		
		ld 	a,b				; relative volume
		ld	(AY_regVOLC),a		; Volume copied in to AYREGS (channel C volume)
		bit	2,c				; If tone is off...
		ret	nz				; ...return
		ld	hl,(sfx_PSG_TONE)		; sfx_PSG tone value
		ld	(AY_regToneC),hl		; copied in to AYREGS (channel C tone)
		ret					; Return

		
		
_ttsfx_scc_end:	; --- End of an sfx_SCC stream ---
		ld	a,255				; Lowest sfx_SCC priority
		ld	(sfx_SCC_PRIORITY),a	; Priority saved (not playing sfx_SCC stream)
		;--- Restore music waveform
		ld	hl,TRACK_Chan4+17+TRACK_Flags
		set	B_TRGWAV,(hl)		
		ret					; Return		
		
		
		

_ttsfx_scc_play:	; --- PLAY A FRAME OF AN sfx_SCC STREAM ---
		ld	a,(sfx_SCC_PRIORITY)	; a:=Current sfx_SCC stream priority
		or	a				; If priority has bit 7 on...
		ret	m				; ...return

		;--- disable music Waveform updates
		ld	hl,TRACK_Chan4+17+TRACK_Flags
		res	B_TRGWAV,(hl)
		
		; --- Extract control byte from stream ---
		ld	hl,(sfx_SCC_POINTER)	; Pointer to the current sfx_SCC stream
		ld	c,(hl)			; c:=Control byte
		inc	hl				; Increment pointer
		; --- Check if there's new tone on stream ---
		bit	5,c				; If bit 5 c is off...
		jp	z,_sccCHECK_NN		; ...jump to _sccCHECK_NN (no new tone)
		; --- Extract new tone from stream ---
		ld	e,(hl)			; e:=lower byte of new tone
		inc	hl				; Increment pointer
		ld	d,(hl)			; d:=higher byte of new tone
		inc	hl				; Increment pointer
		ld	(sfx_SCC_TONE),de		; sfx_SCC tone updated
_sccCHECK_NN:	; --- Check if there's the end of the sfx ---
		bit	6,c				; if bit 6 c is off...
		jp	z,_sccSETPOINTER		; ...jump to _sccSETPOINTER (no end)
		; --- Extract new noise from stream ---
		ld	a,(hl)			; a:=New noise
		inc	hl				; Increment pointer
		cp	$20				; If it's an illegal value of noise (used to mark end of stream)...
		jp	z,_ttsfx_scc_end			; ...jump to _ttsfx_scc_end
		
_sccSETPOINTER:	; --- Update sfx_SCC pointer ---
		ld	(sfx_SCC_POINTER),hl	; Update sfx_SCC stream pointer
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
		ld	(sfx_SCC_VOLUME),a	; sfx_SCC volume updated
		or	a				; If relative volume is zero...
		ret	z				; ...return (don't copy sfx_SCC values in to sccREGS)

		ld	b,a 				; Store relative volume in b
		; -------------------------------------
		; --- COPY sfx_SCC VALUES IN TO sccREGS ---
		; -------------------------------------

		; --- Set mixer masks ---
		ld	a,c				; a:=Control byte
		and	$80				; Only bit 4 (tone mask for SCC)
		ret	z				; ...return (don't copy sfx_SCC values in to sccREGS)

		;--- Set the SCC mixer value
		ld	a,(SCC_regMIXER)		; a:=SCC mixer value
		or	1				; Set the tone enabled bit.
		ld	(SCC_regMIXER),a		; SCC mixer value updated
		
		ld 	a,b				; relative volume
		ld	(SCC_regVOLA),a		; Volume copied in to SCCREGS (channel 1 volume)
		ld	hl,(sfx_SCC_TONE)		; sfx_SCC tone value
		ld	(SCC_regToneA),hl		; copied in to SCCREGS (channel 1 tone)
		ret					; Return	

		
;-- Used but the tt music replayer to update the waveform for sfx.		
_write_SFX_wave:
	ld	l,a
	ld	h,0
	add	hl,hl
	add	hl,hl
		
	ld	  bc,ttsfx_waveforms
	add	  hl,bc
	ld	  bc,32
	ldir
	
	ld	a,255		; reset wave trigger
	ld 	(sfx_SCC_WAVE),a	
	
	ret		
		
		