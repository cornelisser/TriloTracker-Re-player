				; --- ayFX REPLAYER v2.00 ---
				; --- Build uppon the work of Shiru, Alone Coder, Z80st, ARTRAG
				
				
				; --- v2.00  ayFX_Init now expects data in BC. Also DE is no longer used (1 less push/pop)
				;            Priority mask is changed (0..127 is possible)
				;            Fixed playback over channel 3 (chan c)
				; --- v1.11r If a frame volume is zero then no AYREGS update
				; --- v1.1r  Relative volume using PT3 Volume Table
				; --- v1.1   Explicit priority (as suggested by AR)
				; --- v1.0f  Bug fixed (error when using noise)
				; --- v1.0   Initial release
				
	;TODO:
			;--- add SCC SFX part
			;--- replace relative volume with ay and scc counterparts. 
			;--- Let replayer use TT replayer RAM values.
				
				

ayFX_SETUP:		; --- ayFX replayer setup ---
		ld	a,0				; Starting channel
		ld	(ayFX_CHANNEL),a		; Updated

ayFX_END:	; --- End of an ayFX stream ---
		ld	a,255				; Lowest ayFX priority
		ld	(ayFX_PRIORITY),a		; Priority saved (not playing ayFX stream)
		ret							; Return

		
ayFX_INIT:	; ---     INIT A NEW ayFX STREAM     ---
		; --- INPUT: B -> sound to be played ---
		; ---        C -> sound priority     ---
		push	bc				; Store bc in stack
;		push	de				; Store de in stack
		push	hl				; Store hl in stack
		;ld	b,a				; b:=a (new ayFX stream index)
		ld	a,(ayFX_PRIORITY)	; a:=Current ayFX stream priority
		cp	c				; If new ayFX stream priority is higher than currently one...
		jp	c,_INIT_END			; ...we don't start the new ayFX stream

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
;		pop	de				; Retrieve de from stack
		pop	bc				; Retrieve bc from stack
		ret					; Return

		
		
_INIT_NOSOUND:	; --- Init a sample with relative volume zero -> no sound output ---
		ld	a,255				; Lowest ayFX priority
		ld	(ayFX_PRIORITY),a		; Priority saved (not playing ayFX stream)
		jp	_INIT_END			; Jumps to _INIT_END
		

ayFX_FRAME:
ayFX_PLAY:	; --- PLAY A FRAME OF AN ayFX STREAM ---
		ld	a,(ayFX_PRIORITY)		; a:=Current ayFX stream priority
		or	a				; If priority has bit 7 on...
		ret	m				; ...return

		ld	b,a					; store prio to subtract on vol.
		; --- Extract control byte from stream ---
		ld	hl,(ayFX_POINTER)		; Pointer to the current ayFX stream
		ld	c,(hl)			; c:=Control byte
		inc	hl				; Increment pointer
		; --- Check if there's new tone on stream ---
		bit	5,c				; If bit 5 c is off...
		jp	z,_CHECK_NN			; ...jump to _CHECK_NN (no new tone)
		; --- Extract new tone from stream ---
		ld	e,(hl)			; e:=lower byte of new tone
		inc	hl				; Increment pointer
		ld	d,(hl)			; d:=higher byte of new tone
		inc	hl				; Increment pointer
		ld	(ayFX_TONE),de		; ayFX tone updated
_CHECK_NN:	; --- Check if there's new noise on stream ---
		bit	6,c				; if bit 6 c is off...
		jp	z,_SETPOINTER		; ...jump to _SETPOINTER (no new noise)
		; --- Extract new noise from stream ---
		ld	a,(hl)			; a:=New noise
		inc	hl				; Increment pointer
		cp	$20				; If it's an illegal value of noise (used to mark end of stream)...
		jp	z,ayFX_END			; ...jump to ayFX_END
		ld	(ayFX_NOISE),a		; ayFX noise updated
_SETPOINTER:	; --- Update ayFX pointer ---
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
		jp	nz,_SETMASKS		; ...jump to _SETMASKS
		ld	a,(ayFX_NOISE)		; ayFX noise value
		ld	(AY_regNOISE),a		; copied in to AYREGS (noise channel)
_SETMASKS:	; --- Set mixer masks ---
		ld	a,c				; a:=Control byte
		and	$90				; Only bits 7 and 4 (noise and tone mask for psg reg 7)
		cp	$90				; If no noise and no tone...
		ret	z				; ...return (don't copy ayFX values in to AYREGS)
		; --- Copy ayFX values in to ARYREGS ---
		rrc	a				; Rotate a to the right (1 TIME)
		rrc	a				; Rotate a to the right (2 TIMES) (OR mask)

		;---------------------------
		; this part of the code used channel 3 as fixed playback for SFX!!!!!
		; uncommented part below is original stuff with 'balancing' sfx over channels
		; made it fixed as music is more important than sfx for most composers
		; just make psg channel 3 least important in music.
		
		;--- Set the PSG mixer value
		ld	c,a				; c:=OR mask
		ld	a,(AY_regMIXER)		; a:=PSG mixer value
		or	c				; OR mask
		ld	(AY_regMIXER),a		; PSG mixer value updated
		
		ld 	a,b				; relative volume
		ld	(AYREGS+10),a		; Volume copied in to AYREGS (channel C volume)
		bit	2,c				; If tone is off...
		ret	nz				; ...return
		ld	hl,(ayFX_TONE)		; ayFX tone value
		ld	(AY_regToneC),hl		; copied in to AYREGS (channel C tone)
		ret					; Return


	
		
;		ld	d,$DB				; d:=Mask for psg mixer (AND mask)
		; --- Calculate next ayFX channel ---
;		ld	hl,ayFX_CHANNEL			; Old ayFX playing channel
		;dec	(hl)				; New ayFX playing channel
		;jp	nz,_SETCHAN			; If not zero jump to _SETCHAN
		;ld	(hl),2				; If zero -> set channel 3
		;ld	b,1
_SETCHAN:	;ld	b,(hl)				; Channel counter
_CHK1:		; --- Check if playing channel was 1 ---
		;djnz	_CHK2				; Decrement and jump if channel was not 1
_PLAY_C:	; --- Play ayFX stream on channel C ---
;		call	_SETMIXER			; Set PSG mixer value (a:=ayFX volume)
;		ld	(AYREGS+10),a			; Volume copied in to AYREGS (channel C volume)
;		bit	2,c				; If tone is off...
;		ret	nz				; ...return
;		ld	hl,(ayFX_TONE)			; ayFX tone value
;		ld	(AYREGS+4),hl			; copied in to AYREGS (channel C tone)
;		ret					; Return
_CHK2:		; --- Check if playing channel was 2 ---
;		rrc	d				; Rotate right AND mask
;		rrc	a				; Rotate right OR mask
;		djnz	_CHK3				; Decrement and jump if channel was not 2
_PLAY_B:	; --- Play ayFX stream on channel B ---
;		call	_SETMIXER			; Set PSG mixer value (a:=ayFX volume)
;		ld	(AYREGS+9),a			; Volume copied in to AYREGS (channel B volume)
;		bit	1,c				; If tone is off...
;		ret	nz				; ...return
;		ld	hl,(ayFX_TONE)			; ayFX tone value
;		ld	(AYREGS+2),hl			; copied in to AYREGS (channel B tone)
;		ret					; Return
_CHK3:		; --- Check if playing channel was 3 ---
;		rrc	d				; Rotate right AND mask
;		rrc	a				; Rotate right OR mask
_PLAY_A:	; --- Play ayFX stream on channel A ---
;		call	_SETMIXER			; Set PSG mixer value (a:=ayFX volume)
;		ld	(AYREGS+8),a			; Volume copied in to AYREGS (channel A volume)
;		bit	0,c				; If tone is off...
;		ret	nz				; ...return
;		ld	hl,(ayFX_TONE)			; ayFX tone value
;		ld	(AYREGS+0),hl			; copied in to AYREGS (channel A tone)
;		ret					; Return
;_SETMIXER:	; --- Set PSG mixer value ---
;		ld	c,a				; c:=OR mask
;		ld	a,(AYREGS+7)			; a:=PSG mixer value
;		and	d				; AND mask
;		or	c				; OR mask
;		ld	(AYREGS+7),a			; PSG mixer value updated
;		ld	a,(ayFX_VOLUME)			; a:=ayFX volume value
;		ret					; Return

		; --- UNCOMMENT THIS IF YOU DON'T USE THIS REPLAYER WITH PT3 REPLAYER ---
;VT_:		.INCBIN	"VT.BIN"
		; --- UNCOMMENT THIS IF YOU DON'T USE THIS REPLAYER WITH PT3 REPLAYER ---
		
