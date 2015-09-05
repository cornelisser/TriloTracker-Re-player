				; --- ayFX REPLAYER v2.01r ---
				; --- Build uppon the work of Shiru, Alone Coder, Z80st, ARTRAG
				
				; --- V2.01r re-added check on end of sfx (ayFX format compatible)
				; --- v2.01  added SCC functions. + clean up of the code.
				; --- v2.00  ayFX_Init now expects data in BC. Also DE is no longer used (1 less push/pop)
				;            Priority mask is changed (0..127 is possible)
				;            Fixed playback over channel 3 (chan c)
				; --- v1.11r If a frame volume is zero then no AYREGS update
				; --- v1.1r  Relative volume using PT3 Volume Table
				; --- v1.1   Explicit priority (as suggested by AR)
				; --- v1.0f  Bug fixed (error when using noise)
				; --- v1.0   Initial release
				

SFX_INIT:
	ld	a,8
	call	ayFX_set_SCC_balance
	ld	a,8
	jp	ayFX_set_PSG_balance				
										
				
;===========================================================
; ---	ayFX_set_SCC_balance
; Set the main SFX volume for the SCC chip. This enables for
;
; in: [A] master volume (0-7) 0=halve volume, 8=full volume. 
;===========================================================	
SFX_set_SCC_balance:
	call	_getnewbalancebase
	ld	(replay_mainSCCvol),hl	
	ret
	
;===========================================================
; ---	ayFX_set_PSG_balance
; Set the main SFXvolume for the PSG chip. This enables for
; setting the balance between SCC en PSG as some MSX models 
; default balance differs. 
;
; in: [A] master volume (0-7) 0=halve volume, 8=full volume. 
;===========================================================	
SFX_set_PSG_balance:
	call	_getnewbalancebase
	ld	(replay_mainPSGvol),hl	
	ret				
				

ayFX_END:	; --- End of an ayFX stream ---
		ld	a,255				; Lowest ayFX priority
		ld	(ayFX_PRIORITY),a		; Priority saved (not playing ayFX stream)
		ret					; Return

		
		
ayFX_START:	; ---     START A NEW ayFX STREAM     ---
		; --- INPUT: B -> sound to be played ---
		; ---        C -> sound priority     ---
		push	bc				; Store bc in stack
		push	hl				; Store hl in stack
		ld	a,(ayFX_PRIORITY)	; a:=Current ayFX stream priority
		cp	c				; If new ayFX stream priority is higher than currently one...
		jp	c,_INIT_END		3	; ...we don't start the new ayFX stream

		; --- INITS ---
		ld	a,c				; a:=New priority
		and	$7F				; We mask the priority
		ld	(ayFX_PRIORITY),a	; new ayFX stream priority saved in RAM

		; --- ayFX stream pointer ---
		ld	l,b				; l:=b (new ayFX stream index)
		ld	h,0				; hl:=b (new ayFX stream index)
		add	hl,hl				; hl:=hl*2
		ld	bc,ayFX_STREAMS		; Pointer to the pointer list of the ayFX streams
		add	hl,bc				; Pointer to the pointer of new ayFX stream to be played
		ld	c,(hl)			; e:=lower byte of new ayFX stream pointer
		inc	hl				; Increment pointer to the pointer
		ld	b,(hl)			; bc:=pointer to the new ayFX stream
		ld	(ayFX_POINTER),bc		; Pointer saved in RAM
_INIT_END:	
		pop	hl				; Retrieve hl from stack
		pop	bc				; Retrieve bc from stack
		ret					; Return

		
sccFX_START:	; ---     START A NEW sccFX STREAM     ---
		; --- INPUT: B -> sound to be played ---
		; ---        C -> sound priority     ---
		push	bc				; Store bc in stack
		push	hl				; Store hl in stack
		;ld	b,a				; b:=a (new sccFX stream index)
		ld	a,(sccFX_PRIORITY)	; a:=Current sccFX stream priority
		cp	c				; If new sccFX stream priority is higher than currently one...
		jp	c,_INIT_END			; ...we don't start the new sccFX stream

		; --- INITS ---
		ld	a,c				; a:=New priority
		and	$7F				; We mask the priority
		ld	(sccFX_PRIORITY),a	; new sccFX stream priority saved in RAM

		; --- sccFX stream pointer ---
		ld	l,b				; l:=b (new sccFX stream index)
		ld	h,0				; hl:=b (new sccFX stream index)
		add	hl,hl				; hl:=hl*2
		ld	bc,sccFX_STREAMS		; Pointer to the pointer list of the sccFX streams
		add	hl,bc				; Pointer to the pointer of new sccFX stream to be played
		ld	c,(hl)			; e:=lower byte of new sccFX stream pointer
		inc	hl				; Increment pointer to the pointer
		ld	b,(hl)			; bc:=pointer to the new sccFX stream
		
		;--- get the waveform		
		ld	a,(bc)
		inc	bc
		ld	(sccFX_WAVE),a		
		
		ld	(sccFX_POINTER),bc		; Pointer saved in RAM		
		jp	_INIT_END	
		
		
		
		
ayFX_PLAY:	; --- PLAY A FRAME OF AN ayFX STREAM ---
		ld	a,(ayFX_PRIORITY)		; a:=Current ayFX stream priority
		or	a				; If priority has bit 7 on...
		ret	m				; ...return

;		ld	b,a					; store prio to subtract on vol.
		; --- Extract control byte from stream ---
		ld	hl,(ayFX_POINTER)		; Pointer to the current ayFX stream
		ld	c,(hl)			; c:=Control byte
		inc	hl				; Increment pointer
		; --- Check if there's new tone on stream ---
		bit	5,c				; If bit 5 c is off...
		jp	z,_ayCHECK_NN			; ...jump to _ayCHECK_NN (no new tone)
		; --- Extract new tone from stream ---
		ld	e,(hl)			; e:=lower byte of new tone
		inc	hl				; Increment pointer
		ld	d,(hl)			; d:=higher byte of new tone
		inc	hl				; Increment pointer
		ld	(ayFX_TONE),de		; ayFX tone updated
_ayCHECK_NN:	; --- Check if there's new noise on stream ---
		bit	6,c				; if bit 6 c is off...
		jp	z,_aySETPOINTER		; ...jump to _aySETPOINTER (no new noise)
		; --- Extract new noise from stream ---
		ld	a,(hl)			; a:=New noise
		inc	hl				; Increment pointer
		cp	$20				; If it's an illegal value of noise (used to mark end of stream)...
		jp	z,ayFX_END			; ...jump to ayFX_END
		ld	(ayFX_NOISE),a		; ayFX noise updated
_aySETPOINTER:	; --- Update ayFX pointer ---
		ld	(ayFX_POINTER),hl		; Update ayFX stream pointer
		; --- Extract volume ---
		ld	a,c				; a:=Control byte
		and	$0F				; lower nibble
		;sub	b				; subtract prio from vol
		ret	m				; return if volume < 0
		; --- Fix the volume using PT3 Volume Table ---
		ld	hl,(ayFX_BALANCE)		; hl:=Pointer to relative volume table
		ld	e,a				; e:=a (ayFX volume)
		ld	d,0				; d:=0
		add	hl,de				; hl:=hl+de (hl points to the relative volume of this frame
		ld	a,(hl)			; a:=ayFX relative volume
		and	$0f				; mask only ay volume
		ld	(ayFX_VOLUME),a		; ayFX volume updated
		or	a				; If relative volume is zero...
		ret	z				; ...return (don't copy ayFX values in to AYREGS)

		ld	b,a 				; Store relative volume in b
		; -------------------------------------
		; --- COPY ayFX VALUES IN TO AYREGS ---
		; -------------------------------------
		; --- Set noise channel ---
		bit	7,c				; If noise is off...
		jp	nz,_aySETMASKS		; ...jump to _aySETMASKS
		ld	a,(ayFX_NOISE)		; ayFX noise value
		ld	(AY_regNOISE),a		; copied in to AYREGS (noise channel)
_aySETMASKS:	; --- Set mixer masks ---
		ld	a,c				; a:=Control byte
		and	$90				; Only bits 7 and 4 (noise and tone mask for psg reg 7)
		cp	$90				; If no noise and no tone...
		ret	z				; ...return (don't copy ayFX values in to AYREGS)
		; --- Copy ayFX values in to ARYREGS ---
		rrc	a				; Rotate a to the right (1 TIME)
		rrc	a				; Rotate a to the right (2 TIMES) (OR mask)
		
		;--- Set the PSG mixer value
		ld	c,a				; c:=OR mask
		ld	a,(AY_regMIXER)		; a:=PSG mixer value
		or	c				; OR mask
		ld	(AY_regMIXER),a		; PSG mixer value updated
		
		ld 	a,b				; relative volume
		ld	(AY_regVOLC),a		; Volume copied in to AYREGS (channel C volume)
		bit	2,c				; If tone is off...
		ret	nz				; ...return
		ld	hl,(ayFX_TONE)		; ayFX tone value
		ld	(AY_regToneC),hl		; copied in to AYREGS (channel C tone)
		ret					; Return

		
		
sccFX_END:	; --- End of an sccFX stream ---
		ld	a,255				; Lowest sccFX priority
		ld	(sccFX_PRIORITY),a	; Priority saved (not playing sccFX stream)
		ret					; Return		
		
		
		

sccFX_PLAY:	; --- PLAY A FRAME OF AN sccFX STREAM ---
		ld	a,(sccFX_PRIORITY)	; a:=Current sccFX stream priority
		or	a				; If priority has bit 7 on...
		ret	m				; ...return

;		ld	b,a				; store prio to subtract on vol.
		; --- Extract control byte from stream ---
		ld	hl,(sccFX_POINTER)	; Pointer to the current sccFX stream
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
		ld	(sccFX_TONE),de		; sccFX tone updated
_sccCHECK_NN:	; --- Check if there's the end of the sfx ---
		bit	6,c				; if bit 6 c is off...
		jp	z,_sccSETPOINTER		; ...jump to _sccSETPOINTER (no end)
		; --- Extract new noise from stream ---
		ld	a,(hl)			; a:=New noise
		inc	hl				; Increment pointer
		cp	$20				; If it's an illegal value of noise (used to mark end of stream)...
		jp	z,sccFX_END			; ...jump to sccFX_END
		
_sccSETPOINTER:	; --- Update sccFX pointer ---
		ld	(sccFX_POINTER),hl	; Update sccFX stream pointer
		; --- Extract volume ---
		ld	a,c				; a:=Control byte
		and	$0F				; lower nibble
		;sub	b				; subtract prio from vol
		ret	m				; return if volume < 0
		; --- Fix the volume using PT3 Volume Table ---
		ld	hl,(sccFX_BALANCE)	; hl:=Pointer to relative volume table
		ld	e,a				; e:=a (sccFX volume)
		ld	d,0				; d:=0
		add	hl,de				; hl:=hl+de (hl points to the relative volume of this frame
		ld	a,(hl)			; a:=sccFX relative volume
		rra					; SCC relative volume is in the higher 4 bits
		rra
		rra
		rra
		and	$0f				; mask only scc volume
		ld	(sccFX_VOLUME),a		; sccFX volume updated
		or	a				; If relative volume is zero...
		ret	z				; ...return (don't copy sccFX values in to sccREGS)

		ld	b,a 				; Store relative volume in b
		; -------------------------------------
		; --- COPY sccFX VALUES IN TO sccREGS ---
		; -------------------------------------

		; --- Set mixer masks ---
		ld	a,c				; a:=Control byte
		and	$80				; Only bit 4 (tone mask for SCC)
;		cp	$80				; If no noise and no tone...
		ret	z				; ...return (don't copy sccFX values in to sccREGS)

		;--- Set the SCC mixer value
;		ld	c,a				; c:=OR mask
		ld	a,(SCC_regMIXER)		; a:=SCC mixer value
		and 	$1E				; erase volume bit (1) for channel 1
		ld	(SCC_regMIXER),a		; SCC mixer value updated
		
		ld 	a,b				; relative volume
		ld	(SCC_regVOLA),a		; Volume copied in to SCCREGS (channel 1 volume)
		ld	hl,(sccFX_TONE)		; sccFX tone value
		ld	(SCC_regToneA),hl		; copied in to SCCREGS (channel 1 tone)
		ret					; Return	
