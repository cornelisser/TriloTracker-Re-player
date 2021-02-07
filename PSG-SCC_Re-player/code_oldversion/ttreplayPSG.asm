;================================
; TriloTracker PSG re-player v0.1
;
; Expects page with music data (instruments,waveforms and patterns) to be active
; Also expects the code to run as a cartridge with SCC mapper
;================================
	
;===============================
; todo:
; - add external SCC support through conditional code.
; - add replayer speed up through conditional code.
; - optimize replayer code
; - decide on to re-enable the macro offset effect command
; - add fade option.
; - add pause function.
; - instructions for external usage of the RAM variables (setting PSG/SCC base volumes etc)

	
	
;===========================================================
; ---	replay_init
; Initialize all data for playback
; 
; 
;===========================================================
replay_init:
	;--- Get the start speed.
	ld	hl,(replay_songbase)
	inc	hl
	inc	hl
	ld	a,(hl)	
	ld	(replay_speed),a

	;--- Set track pointers to start
	inc	hl
	ld	de,TRACK_pointer1
	ld	bc,6
	ldir
	ld	(replay_orderpointer),hl		; store pointer for next set
								; of strack pointers
	
	
	xor	a
	ld	(replay_speed_subtimer),a
	
;	ld	(replay_morph_active),a
;	ld	(replay_morph_waveform),a
	
	;--- Erase channel data	in RAM
	ld	bc,(TRACK_REC_SIZE*3)-1
	ld	hl,TRACK_Chan1
	ld	de,TRACK_Chan1+1
	ld	(hl),a
	ldir
	
	
	;--- Silence the chips
	ld	(SCC_regMIXER),a
	ld	(AY_regVOLA),a
	ld	(AY_regVOLB),a	
	ld	(AY_regVOLC),a
	ld	(AY_regNOISE),a
	ld	a,0x3f
	ld	(AY_regMIXER),a

	;--- Set vibrato table
	ld	hl,TRACK_Vibrato_sine
	ld	(replay_vib_table),hl
	
	;--- Set the tone table base
	ld	hl,TRACK_ToneTable
	ld	(replay_Tonetable),hl

	ld	a,1
	ld	(replay_speed_timer),a
;	ld	(replay_morph_timer),a
;	ld	(replay_morph_speed),a
	ld	(TRACK_Chan1+17+TRACK_Delay),a	
	ld	(TRACK_Chan2+17+TRACK_Delay),a		
	ld	(TRACK_Chan3+17+TRACK_Delay),a	
;	ld	(TRACK_Chan4+17+TRACK_Delay),a	
;	ld	(TRACK_Chan5+17+TRACK_Delay),a		
;	ld	(TRACK_Chan6+17+TRACK_Delay),a		
;	ld	(TRACK_Chan7+17+TRACK_Delay),a		
;	ld	(TRACK_Chan8+17+TRACK_Delay),a		
		

		
;;	;--- Init the SCC	(waveforms too)
;;	ld	a,(SCC_slot)
;;	ld	h,0x80
;;	call enaslt
	
;	ld	a,255
;	ld	(TRACK_Chan4+17+TRACK_Waveform),a
;	ld	(TRACK_Chan5+17+TRACK_Waveform),a
;	ld	(TRACK_Chan6+17+TRACK_Waveform),a	
;	ld	(TRACK_Chan7+17+TRACK_Waveform),a	
;	ld	a,128
;	ld	(TRACK_Chan4+17+TRACK_Flags),a
;	ld	(TRACK_Chan5+17+TRACK_Flags),a
;	ld	(TRACK_Chan6+17+TRACK_Flags),a	
;	ld	(TRACK_Chan7+17+TRACK_Flags),a	
	
;	call scc_reg_update
	
;;	ld	a,(mapper_slot)				
;;	ld	h,0x80
;;	call enaslt
	
	call	replay_route
	
	; end	is here
	ld	a,1
	ld	(replay_mode),a	
	
	ret



_replay_check_patternend:
	ld 	a,(TRACK_Chan1+17+TRACK_Delay)
	dec	a
	jp	nz,replay_decodedata_NO
	
	ld	hl,(TRACK_pointer1)
	ld	a,(hl)
	

	;--- check for end of pattern
	cp	191	
	jp	nz,replay_decodedata_NO

	;-- next_pattern
	;--- Set track pointers to start
	ld	hl,(replay_orderpointer)
	xor	a
	cp	(hl)
	jp	nz,99f
	inc	hl
	cp	(hl)
	dec	hl
	jp	nz,99f
	;--- restart order
	ld	hl,(replay_songbase)
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
99:	
	ld	de,TRACK_pointer1
	ld	bc,6
	ldir
	ld	(replay_orderpointer),hl		; store pointer for next set
								; of strack pointers
; ==================================
; This part is only for debugging 
; compiled music data correctness.
; ==================================
;	jp	replay_decodedata_NO
;
;	;/// DEBUG
;	ld	a,(TRACK_Chan1+17+TRACK_Delay)
;	dec	a
;	jp	z,0f
;	halt
;0:
;	ld	a,(TRACK_Chan2+17+TRACK_Delay)
;	dec	a
;	jp	z,0f
;	halt
;0:	ld	a,(TRACK_Chan3+17+TRACK_Delay)
;	dec	a
;	jp	z,0f
;	halt
;0:
;
	jp	replay_decodedata_NO

	
;--- Replay	music
replay_play:
	ld	a,(replay_mode)
	and	a
	ret	z


	;--- The speed timer
	ld	hl,replay_speed_timer
	dec	(hl)

	jp	nz,_replay_check_patternend	
	
	;--- Re-init Timer == 0
	xor	a
	ld	bc,(replay_speed)		; [b]	subtimer [c] speed
	srl	c				; bit	0 is halve speedstep
	adc	a,a
	xor	b				; alternate	speed	to have halve speed.
	ld	(replay_speed_subtimer),a
	add	c
	ld	(replay_speed_timer),a

;	jp	replay_decodedata	
	
;===========================================================
; ---	replay_decodedata
; Process the patterndata 
; 
; 
;===========================================================
replay_decodedata:
	;--- process the channels (tracks)
	ld 	hl,TRACK_Chan1+17+TRACK_Delay
	dec	(hl)
	jp	nz,0f

	ld	a,(TRACK_Chan1+17+TRACK_Flags)
	and	11110011b		; reset B_TRGENV and B_TRGCMD
	ld	d,a
	ld	a,(TRACK_Chan1+17+TRACK_Note)	
	ld	ix,TRACK_Chan1+17
	ld	bc,(TRACK_pointer1)
	call	replay_decode_chan
	ld	(TRACK_pointer1),bc
	ld	a,d
	ld	(TRACK_Chan1+17+TRACK_Flags),a	


0:	
	ld 	hl,TRACK_Chan2+17+TRACK_Delay
	dec	(hl)
	jp	nz,0f

	ld	a,(TRACK_Chan2+17+TRACK_Flags)
	and	11110011b		; reset B_TRGENV and B_TRGCMD
	ld	d,a
	ld	a,(TRACK_Chan2+17+TRACK_Note)	
	ld	ix,TRACK_Chan2+17
	ld	bc,(TRACK_pointer2)
	call	replay_decode_chan
	ld	(TRACK_pointer2),bc
	ld	a,d				;'
	ld	(TRACK_Chan2+17+TRACK_Flags),a	


0:
	ld 	hl,TRACK_Chan3+17+TRACK_Delay
	dec	(hl)
	jp	nz,0f

	ld	a,(TRACK_Chan3+17+TRACK_Flags)
	and	11110011b		; reset B_TRGENV and B_TRGCMD
	ld	d,a		;'
	ld	a,(TRACK_Chan3+17+TRACK_Note)	
	ld	ix,TRACK_Chan3+17
	ld	bc,(TRACK_pointer3)
	call	replay_decode_chan
	ld	(TRACK_pointer3),bc
	ld	a,d				;'
	ld	(TRACK_Chan3+17+TRACK_Flags),a	


0:

	; continue to process data
;===========================================================
; ---	replay_decodedata_NO
; Process changes.
; 
; 
;===========================================================
replay_decodedata_NO:

; ==============================
; Debugging only 
; for display of used CPU time	
; ==============================
;	;--- test for 5th sprite
;	ld	a,0
;	out (0x99),a
;	ld a,7+128
;	out (0x99),a 
;0:	in	a,(0x99)
;	and	0x40
;	ld	a,11
;	out (0x99),a
;	ld a,7+128
;	out (0x99),a 



;	;---- morph routine here
;	ld	a,(replay_morph_active)
;	and	a
;	call	nz,replay_process_morph

	;--- Initialize PSG Mixer and volume
	xor	a
	ld	(SCC_regMIXER),a
	ld	a,(replay_mainPSGvol)
	ld	(replay_mainvol),a

	;--- Process track 1
	ld	ix,TRACK_Chan1+17
	ld	a,(TRACK_Chan1+17+TRACK_Flags)
	ld	d,a
	call	replay_process_chan_AY
	ld	(AY_regToneA),hl
	ld	a,d
	ld	(TRACK_Chan1+17+TRACK_Flags),a	
	ld	a,(AY_regVOLC)
	ld	(AY_regVOLA),a	

	;--- Process track 2
	ld	ix,TRACK_Chan2+17
	ld	a,(TRACK_Chan2+17+TRACK_Flags)
	ld	d,a
	call	replay_process_chan_AY
	ld	(AY_regToneB),hl
	ld	a,d
	ld	(TRACK_Chan2+17+TRACK_Flags),a	
	ld	a,(AY_regVOLC)
	ld	(AY_regVOLB),a	

	;--- Process track 3	
	ld	ix,TRACK_Chan3+17
	ld	a,(TRACK_Chan3+17+TRACK_Flags)
	ld	d,a
	call	replay_process_chan_AY
	ld	(AY_regToneC),hl
	ld	a,d
	ld	(TRACK_Chan3+17+TRACK_Flags),a	
;	ld	a,(SCC_regVOLE)
;	ld	(AY_regVOLC),a	

	;-- Convert mixer to AY
	ld	a,(SCC_regMIXER)		
	srl	a
	srl	a
	xor	0x3f
	ld	(AY_regMIXER),a

;================
; For debug only.
; Display CPU time PSG and SCC processing
;================
;	ld	a,15
;	out (0x99),a
;	ld a,7+128
;	out (0x99),a 

	ret




replay_decode_chan:
	;--- initialize data
;	ld	a,(ix+TRACK_Note)
	ld	(replay_previous_note),a

	;--- Check if retrig has ended
	dec	(ix+TRACK_Retrig)
	jp	nz,99f
	res 	B_TRGCMD,(ix+TRACK_Flags)

99:
	;=============
	; Note 
	;=============
	ld	a,(bc)
	cp	96

	jp	c,_replay_decode_note
	jp	z,_replay_decode_rest
_rdn2:cp	112;128
	jp	c,_replay_decode_vol
_rdv2:cp	143
	jp	c,_replay_decode_ins
_rdi2:
	cp	191
	jp	nc,_replay_decode_delay
	jp	c,_replay_decode_cmd

_rdn:
	cp	97
	jp	c,_rd_delay
	jp	_rdn2

_rdi:
	cp	143
	jp	c,_rd_delay
	jp	_rdi2

_rdv:
	cp	112
	jp	c,_rd_delay
	jp	_rdv2
_rdc:
	inc	bc
	ld	a,(bc)
	cp	191
	jp	c,_rd_delay
	jp	_replay_decode_delay

	;--- re-init previous delay
_rd_delay:
	ld	a,(ix+TRACK_prevDelay)
	ld	(ix+TRACK_Delay),a

	ret



_replay_decode_note:

	ld	(ix+TRACK_Note),a

	set 	B_TRGNOT,d
	res	B_ACTMOR,d
;	set	B_TRGNOT,(ix+TRACK_Flags)	; set note trigger
;	res	B_ACTMOR,(ix+TRACK_Flags)	; reset morph slave mode

	inc	bc
	ld	a,(bc)
	

	jp	_rdn
	
_replay_decode_rest:
	res	B_ACTNOT,d				; set	note bit to	0
;	res	B_ACTMOR,d				; reset morph slave mode
;	res	B_ACTNOT,(ix+TRACK_Flags)	; set	note bit to	0
;	res	B_ACTMOR,(ix+TRACK_Flags)	; reset morph slave mode

;	ld	a,(replay_previous_note)
;	ld	(ix+TRACK_Note),a

	inc	bc
	ld	a,(bc)
	jp	_rdn

_replay_decode_ins:
;	res	B_ACTMOR,d				; reset morph slave mode
;	set	B_TRGINS,d
	
	sub	112;97
	cp	(ix+TRACK_Instrument)
	jp	z,0f
	
	ld	(ix+TRACK_Instrument),a

	;--- set instrument pointer
	add	a
	ld	hl,(replay_insbase)
	add	a,l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a

	;-- get waveform
	ld	a,(hl)
	inc	hl
	
	ld	e,(hl)
	inc	hl

	;---- Store the restart offset
	ld	(ix+TRACK_MacroRestart),e
	;--- Store the macro start
	ld	(ix+TRACK_MacroPointer),l
	ld	(ix+TRACK_MacroPointer+1),h	
	;--- Store the macro re-start
	ld	(ix+TRACK_MacroStart),l
	ld	(ix+TRACK_MacroStart+1),h		
	;--- Set the waveform  (if needed)
	cp	(ix+TRACK_Waveform)
	jp	z,0f
	
	;--- this is a new waveform
	ld	(ix+TRACK_Waveform),a
	set	B_TRGWAV,d
;	set	B_TRGWAV,(ix+TRACK_Flags)
	
0:	
	inc	bc
	ld	a,(bc)
	jp	_rdi


_replay_decode_vol:
	sub	96;127
	add	a
	add	a
	add	a
	add	a
	
	;--- Set new base	volume (high byte) but keep relative offset (low byte)
	ld	e,a
	ld	a,(ix+TRACK_Volume)
	and	0xf
	or	e
	ld	(ix+TRACK_Volume),a

	inc	bc
	ld	a,(bc)
	jp	_rdv


_replay_decode_delay:
	sub	191
	ld	(ix+TRACK_Delay),a
	ld	(ix+TRACK_prevDelay),a

	inc	bc
	ret


_replay_decode_cmd:

	sub	142
	ld	(ix+TRACK_Command),a
;	add	13
	ld	hl,DECODE_CMDLIST
	add	a,a
	add	a,l
	ld	l,a
	jp	nc,99f
	inc	h
99:
;	ld	d,0
;	ld	e,a
;	add	hl,de
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	
	inc	bc
	ld	a,(bc)
	jp	(hl)

DECODE_CMDLIST:
	dw	_CHIPcmdA_env_mul			;0
	dw	_CHIPcmdB_wave_res		;1
	dw	_CHIPcmdF_wave_set		;2
	dw	_CHIPcmd10_morph_slave		;3
	dw	_CHIPcmd11_morph_start		;4
	dw	_CHIPcmd12_morph_cont		;5
	dw	_CHIPcmd16_vib_ctrl		;6
	dw	_CHIPcmd17_track_detune		;7
	dw	_CHIPcmd18_transpose		;8
	dw	_CHIPcmd1A_trigger		;9
	dw	_CHIPcmd1B_speed			;a
	dw	_CHIPcmd1C_call			;b	
	dw	_CHIPcmd1D_ret			;c
	
	dw	_CHIPcmdC_wave_duty		;d
	dw	_CHIPcmdD_wave_cut		;e
	dw	_CHIPcmdE_wave_compr		;f
	dw	_CHIPcmd13_short_arp		;10
	dw	_CHIPcmd14_fine_up		;11
	dw	_CHIPcmd15_fine_down		;12
	dw	_CHIPcmd19_note_delay		;13
				
	dw	_CHIPcmd0_arpeggio		;14
	dw	_CHIPcmd1_port_up			;15
	dw	_CHIPcmd2_port_down		;16
	dw	_CHIPcmd3_port_tone		;17
	dw	_CHIPcmd4_vibrato			;18
	dw	_CHIPcmd5_vibrato_port_tone	;19
	dw	_CHIPcmd6_vibrato_vol		;1a
	dw	_CHIPcmd7_vol_slide		;1b
	dw	_CHIPcmd8_macro_offset		;1c
	dw	_CHIPcmd9_env_shape		;1d

	dw	_CHIPcmd0_RE_arpeggio		;1e
	dw	_CHIPcmd1_RE_port_up		;1f
	dw	_CHIPcmd2_RE_port_down		;20
	dw	_CHIPcmd3_RE_port_tone		;21
	dw	_CHIPcmd4_RE_vibrato		;22
	dw	_CHIPcmd5_RE_vibrato_port_tone;23
	dw	_CHIPcmd6_RE_vibrato_vol	;24
	dw	_CHIPcmd7_RE_vol_slide		;25
	dw	_CHIPcmd8_RE_macro_offset	;26
	dw	_CHIPcmd9_RE_env_shape		;27



_CHIPcmd0_arpeggio:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; Cycles between note, note+x	halftones, note+y
	; halftones. 
	; Ex:	(MOD/XM: C-4 01 .. 037)	This will play 
	; C-4, C-4+3 semitones andC-4+7 semitones. 
	ld	(ix+TRACK_cmd_0),a
	set	B_TRGCMD,d
;	set	B_TRGCMD,(ix+TRACK_Flags)
	ld	(ix+TRACK_Timer),0

;	inc	bc
;	ld	a,(bc)
	jp	_rdc
	
_CHIPcmd1_port_up:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; This will	slide	up the pitch of the current note
	; being played by	the given speed. 
	ld	(ix+TRACK_cmd_1),a
	set	B_TRGCMD,d
;	set	B_TRGCMD,(ix+TRACK_Flags)

;	inc	bc
;	ld	a,(bc)
	jp	_rdc
	
	
	 
_CHIPcmd2_port_down:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; This will	slide	down the pitch of	the current	note
	; being played by	the given speed.	
	ld	(ix+TRACK_cmd_2),a
	set	B_TRGCMD,d
;	set	B_TRGCMD,(ix+TRACK_Flags)

;	inc	bc
;	ld	a,(bc)
	jp	_rdc
	

_CHIPcmd3_RE_port_tone:
;	dec	bc
	ld	(ix+TRACK_Retrig),a

	jp	0f	
_CHIPcmd3_port_tone:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; This command is	used together with a note, and 
	; will bend	the current	pitch	at the given speed
	; towards the specified	note.	Example:
	;	C-4 1....
	;	F-4 ..305 (bend the note up towards	F-4)
	;	... ..300 (continue to slide up, until F-4
	;						  is reached

	ld	(ix+TRACK_cmd_3),a
	ld	(ix+TRACK_Timer),2
0:
	set	B_TRGCMD,d
	set	B_ACTNOT,d
;	set	B_TRGCMD,(ix+TRACK_Flags)
;	set	B_ACTNOT,(ix+TRACK_Flags)
	;--- Check if we have a	note on the	same event
	bit	B_TRGNOT,d
;	bit	B_TRGNOT,(ix+TRACK_Flags)
	jp	z,_rdc


	;-- get the	previous note freq
	ld	a,(replay_previous_note)
	add	a
	
	exx
	
	
	ld	hl,(replay_Tonetable)	;TRACK_ToneTable
	add	a,l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	ld	e,(hl)
	inc	hl
	ld	d,(hl)

	; add	the toneadd
	ld	l,(ix+TRACK_cmd_ToneSlideAdd)
	ld	h,(ix+TRACK_cmd_ToneSlideAdd+1)

	add	hl,de	
	ex	de,hl				; store current freq in	[de]

	;--- get the current note freq
	ld	a,(ix+TRACK_Note)
	add	a
	ld	hl,(replay_Tonetable)	;TRACK_ToneTable
	add	a,l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a				; destination freq in [hl]
	
	;--- Calculate the delta
	xor	a
	ex	de,hl
	sbc	hl,de				; results in pos/neg delta
	
	ld	(ix+TRACK_cmd_ToneSlideAdd),l
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),h	
	
	exx
	
	res	B_TRGNOT,d
;	res	B_TRGNOT,(ix+TRACK_Flags)


;	inc	bc
;	ld	a,(bc)
	jp	_rdc	

	
_CHIPcmd4_vibrato:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; Vibrato with speed x and depth y.	This command 
	; will oscillate the frequency of the current note
	; with a sine wave. (You can change	the vibrato
	; waveform to a triangle wave, a square wave, or a
	; random table by	using	the E4x command).
	;--- Init values
	ld	e,a
	and	$07

;	inc	a  ; perhaps re-enable this
	ld	(ix+TRACK_cmd_4_depth),a
	ld	a,e
	rra
	rra
	rra
	rra
	and	$0f
	ld	(ix+TRACK_cmd_4_step),a
	neg	
	ld	(ix+TRACK_Step),a

	set	B_TRGCMD,d
;	set	B_TRGCMD,(ix+TRACK_Flags)

;	inc	bc
;	ld	a,(bc)
	jp	_rdc

	
	


_CHIPcmd5_vibrato_port_tone:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; portTone	+ volumeslide
	;--- Init values
_CHIPcmd6_vibrato_vol:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
_CHIPcmd7_vol_slide:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; slide the	volume up or down	1 step.
	; The	x or y param  set	the delay*2	(x=up,y=down)
	; With A00 the previous	value	is used.
	
	;--- neg or	pos
	ld	(ix+TRACK_cmd_A),a
	set	B_TRGCMD,d
;	set	B_TRGCMD,(ix+TRACK_Flags)
	ld	(ix+TRACK_Timer),1

	jp	_rdc



_CHIPcmd8_macro_offset:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; This command, when used together with a	note,	
	; will start playing the sample at the position	xx 
	; (instead of position 0). If	xx is	00 (900), the 
	; previous value will be used.

	;--- Init values
;	ld	(ix+TRACK_cmd_9),a
;	set	B_TRGCMD,(ix+TRACK_Flags)
;	ld	(ix+TRACK_Timer),2		; timer is set as	we process cmd
							; before new notes.
	
;	inc	bc
;	ld	a,(bc)
	jp	_rdc




_CHIPcmd9_env_shape:

	set	B_TRGENV,d
;	set	B_TRGENV,(IX+TRACK_Flags)
	;--- store new envelope shape (anything other than 0 is written)
	ld	(AY_regEnvShape),a

;	inc	bc
;	ld	a,(bc)
	jp	_rdc


	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; This command set the envelope frequency using a
	; multiplier value (00-ff)
_CHIPcmdA_env_mul:
	ld	d,a
	xor	a
	srl	d
	rra	
	srl	d
	rra		
	srl	d
	rra	
	ld	(AY_regEnvL),a
	ld	a,d
	ld	(AY_regEnvH),a
	
;	inc	bc
;	ld	a,(bc)
	jp	_rdc	



_CHIPcmdB_wave_res:
_CHIPcmdC_wave_duty:
_CHIPcmdD_wave_cut:
_CHIPcmdE_wave_compr:
_CHIPcmdF_wave_set:
_CHIPcmd10_morph_slave:
_CHIPcmd11_morph_start:
_CHIPcmd12_morph_cont:
	
	

_CHIPcmd13_short_arp:
	ld	(ix+TRACK_cmd_E),a		; store the halve not to add
	ld	(ix+TRACK_Timer),0

	set	B_TRGCMD,d		; command active
;	set	B_TRGCMD,(ix+TRACK_Flags)		; command active		

;	inc	bc
;	ld	a,(bc)
	jp	_rdc	
	
	
_CHIPcmd14_fine_up:
_CHIPcmd15_fine_down:
	ld	(ix+TRACK_cmd_E),a
	ld	(ix+TRACK_Timer),2
	set	B_TRGCMD,d		; command active
;	set	B_TRGCMD,(ix+TRACK_Flags)		; command active

;	inc	bc
;	ld	a,(bc)
	jp	_rdc	


_CHIPcmd16_vib_ctrl:
;	res	B_TRGCMD,(ix+TRACK_Flags)		; command in-active
	ld	hl,TRACK_Vibrato_sine
	cp	1
	jp	c,_cmd16_sine
	jp	z,_cmd16_tri
_cmd16_pulse:
	ld	hl,TRACK_Vibrato_pulse
	ld	(replay_vib_table),hl
	jp	_rdc
_cmd16_tri:
	ld	hl,TRACK_Vibrato_triangle
	ld	(replay_vib_table),hl
	jp	_rdc	

_cmd16_sine:
	ld	hl,TRACK_Vibrato_sine
	ld	(replay_vib_table),hl
	jp	_rdc




_CHIPcmd17_track_detune:
;	res	B_TRGCMD,(ix+TRACK_Flags)		; command in-active
	
	; This command sets the	detune of the track.
	ld	e,a
	and	0x07		; low	4 bits is value
	bit	3,e		; Center around 8
	jp	z,99f
	inc	a
	neg			; make correct value
	ld	(ix+TRACK_cmd_detune),a
	ld	(ix+TRACK_cmd_detune+1),0xff

;	inc	bc
;	ld	a,(bc)
	jp	_rdc	


99:
	ld	(ix+TRACK_cmd_detune),a
	ld	(ix+TRACK_cmd_detune+1),0x00	

;	inc	bc
;	ld	a,(bc)
	jp	_rdc	


	
_CHIPcmd18_transpose:
;	jp	_rdc

	ld	e,a
	add	a
	ld	hl,TRACK_ToneTable;(replay_Tonetable)
	; This comment sets the	detune of the track.
	and	15		; low	4 bits is value
	bit	3,e		; Center around 8
;	ld	d,0
;	ld	e,a

	jp	z,0f
;neg	
	neg	
	add	a,l
	ld	l,a
	jp	nc,0f
	dec	h
99:
	ld	(replay_Tonetable),hl

;	inc	bc
;	ld	a,(bc)
	jp	_rdc
; pos
0:	
	add	a,l
	ld	l,a
	jp	nc,0f
	inc	h
99:
	ld	(replay_Tonetable),hl
;	inc	bc
;	ld	a,(bc)
	jp	_rdc




_CHIPcmd19_note_delay:
	bit	B_TRGNOT,d		; is there a note	in this eventstep?
;	bit	B_TRGNOT,(ix+TRACK_Flags)		; is there a note	in this eventstep?
	jp	z,_rdc

	
0:	
	set	B_TRGCMD,d					; command active
;	set	B_TRGCMD,(ix+TRACK_Flags)		; command active
;	and	0x0f
	inc	a
	ld	(ix+TRACK_Timer),a			; set	the timer to param y
	ld	a,(ix+TRACK_Note)
	ld	(ix+TRACK_cmd_E),a			; store the	new note
	ld	a,(replay_previous_note)
	ld	(ix+TRACK_Note),a				; restore the old	note
	res	B_TRGNOT,(ix+TRACK_Flags)		; reset any	triggernote

;	inc	bc
;	ld	a,(bc)
	jp	_rdc	



_CHIPcmd1A_trigger:
;	res	B_TRGCMD,(ix+TRACK_Flags)		; command in-active
	ld	(replay_trigger),a
	
;	inc	bc
;	ld	a,(bc)
	jp	_rdc		



_CHIPcmd1B_speed:
;	res	B_TRGCMD,(ix+TRACK_Flags)		; command in-active
	ld	(replay_speed),a
	;--- Reset Timer == 0
	srl	a				; divide speed with 2
	ld	e,a
	ld	a,0				
	adc	a				; store carry of shift as subtimer
	ld	(replay_speed_subtimer),a
	add	a,e
	ld	(replay_speed_timer),a

;	inc	bc
;	ld	a,(bc)
	jp	_rdc	
	


_CHIPcmd1C_call:
_CHIPcmd1D_ret:
;	res	B_TRGCMD,(ix+TRACK_Flags)		; command in-active
	;< not implemented yet>
	dec 	bc
	jp	_rdc	




_CHIPcmd0_RE_arpeggio:
	ld	(ix+TRACK_Timer),0
	
_CHIPcmd1_RE_port_up:	
_CHIPcmd2_RE_port_down:
_CHIPcmd4_RE_vibrato:
	set	B_TRGCMD,d
;	set	B_TRGCMD,(ix+TRACK_Flags)
	
	;dec	bc
	ld	(ix+TRACK_Retrig),a
	jp	_rdc		
	
_CHIPcmd5_RE_vibrato_port_tone:
_CHIPcmd6_RE_vibrato_vol:
_CHIPcmd7_RE_vol_slide:
	set	B_TRGCMD,d
;	set	B_TRGCMD,(ix+TRACK_Flags)
	ld	(ix+TRACK_Timer),1
	;dec	bc
	ld	(ix+TRACK_Retrig),a
	jp	_rdc
	
		
_CHIPcmd8_RE_macro_offset:	
	set	B_TRGCMD,d
;	set	B_TRGCMD,(ix+TRACK_Flags)
	ld	(ix+TRACK_Timer),2
	
	;dec	bc
	ld	(ix+TRACK_Retrig),a
	jp	_rdc			



_CHIPcmd9_RE_env_shape:
	set	B_TRGENV,d
;	set	B_TRGENV,(IX+TRACK_Flags)
	
	;dec	bc
	ld	(ix+TRACK_Retrig),a
	jp	_rdc	





;===========================================================
; ---replay_route
; Output the data	to the CHIP	registers
; 
; in HL is the current tone freq
; in D is TRACK_FLAGS  
;===========================================================
replay_process_chan_AY:

	;-- set the	mixer	right
	ld	hl,SCC_regMIXER   
	srl	(hl)

	;=====
	; COMMAND
	;=====
	bit	B_TRGCMD,d	;(ix+TRACK_Flags)
	jp	z,_pcAY_noCommand
	
	ld	hl,_pcAY_cmdlist-26
	ld	a,(ix+TRACK_Command)
	add	a
	add	a,l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a	
	jp	(hl)
	
_pcAY_noCommand:	
_pcAY_commandEND:

	;=====
	; NOTE
	;=====
	;--- Check if we need to trigger a new note
	bit	B_TRGNOT,d	;(ix+TRACK_Flags)
	jp	z,_pcAY_noNoteTrigger
	

_pcAY_triggerNote:	
	;--- get new Note
	res	B_TRGNOT,d		;(ix+TRACK_Flags)		; reset trigger note flag
	set	B_ACTNOT,d		;(ix+TRACK_Flags)		; set	note active	flag

	ld	l,(ix+TRACK_MacroStart)
	ld	h,(ix+TRACK_MacroStart+1)
	;--- Store the macro start	
	ld	(ix+TRACK_MacroPointer),l
	ld	(ix+TRACK_MacroPointer+1),h	

;	; init macrostep but check for cmd9
;	ld	b,0
;	bit	B_TRGCMD,(ix+TRACK_Flags)
;	jp	z,99f
;	ld	a,0x09		; Macro offset
;	cp	(ix+TRACK_Command)
;	jp	nz,99f
;	ld	b,(ix+TRACK_cmd_9)
;99:	ld	(ix+TRACK_MacroStep),b

	ld	hl,0
	ld	(_SP_Storage),sp
	ld	sp,ix
	pop	af
	pop	af
	push	hl
	push	hl		
	push	hl
	push	hl
	push	hl
	
	ld	sp,(_SP_Storage)
;	ld	(ix+TRACK_ToneAdd),0
;	ld	(ix+TRACK_ToneAdd+1),0
;	ld	(ix+TRACK_VolumeAdd),0	
;	ld	(ix+TRACK_cmd_ToneAdd),0
;	ld	(ix+TRACK_cmd_ToneAdd+1),0
;	ld	(ix+TRACK_cmd_VolumeAdd),0
;	ld	(ix+TRACK_Noise),0
;	ld	(ix+TRACK_cmd_ToneSlideAdd),0
;	ld	(ix+TRACK_cmd_ToneSlideAdd+1),0

_pcAY_noNoteTrigger:
	;Get note freq
	ld	a,(ix+TRACK_Note)
	add	a,(ix+TRACK_cmd_NoteAdd)
	add	a
	ex	af,af'			;'store the	note offset
	ld	(ix+TRACK_cmd_NoteAdd),0	
	

	;==============
	; Macro instrument
	;==============
	bit	B_ACTNOT,d			;(ix+TRACK_Flags)
	jp	z,_pcAY_noNoteActive
	
;	ld	(_SP_Storage),SP
;	
;	;--- Get the macro len and loop
	ld	l,(ix+TRACK_MacroPointer)
	ld	h,(ix+TRACK_MacroPointer+1)

	ld	e,(hl)				; info byte
	inc	hl
	bit	0,e					; Volume change
	jp	nz,_vol_change
	ld	a,(ix+TRACK_VolumeAdd)
	jp	_noEnv
	
	;--- Volume change
_vol_change:
	ld	a,(hl)
	inc	hl
	
	bit	1,e
	jp	z,_vol_base
_vol_rel:
	add	 (ix+TRACK_VolumeAdd)
	cp	16
	jp	c,_vol_base
	cp	128
	jp	c,1f
	ld	a,$0f
	jp	_vol_base
1:	xor	a
_vol_base:
	ld	(ix+TRACK_VolumeAdd),a

	;---- envelope check
	; is done here to be able to continue
	; macro volume values.
	bit	B_TRGENV,d		;'(IX+TRACK_Flags)
	jp	z,_noEnv		; if not set then normal volume calculation
	ld	a,16			; set volume to 16 == envelope
	ld	(AY_regVOLC),a
	jp	_noVolume	
	
_noEnv:
	add 	a,(ix+TRACK_cmd_VolumeAdd)
	cp  	128
	jp 	c,1f
	xor 	a
	jp 	2f
1:  	cp 	16
	jp 	c,2f
 	ld 	a,$f
2:
	or	(ix+TRACK_Volume)
	
;	;--- make this faster precalculate
;	ld	c,a
;	ld	a,(IX+TRACK_cmd_VolumeAdd)	
;	rla						; C flag contains devitation bit (C flag was reset in the previous OR)
;	jp	c,_sub_Vadd
;_add_Vadd:
;	add	a,c
;	jp	nc,_Vadd
;	ld	a,c
;	or	0xf0
;	jp	_Vadd
;_sub_Vadd:
;	ld	b,a
;	xor	a
;	sub	b
;	ld	b,a
;	ld	a,c
;	sub	a,b
;	jp	nc,_Vadd
;	ld	a,c
;	and	0x0f	

	;-- next is _Vadd
_Vadd:
;	;--- apply main volume balance
;	ld	hl,replay_mainvol
;	CP	(HL)
;	JP	C,88F
;	sub	(hl)
;	jp	99f
;88:	xor	a
;99:	
;	ld	l,a
;	ld	h,0
	ld	bc,_VOLUME_TABLE
	add	a,c
	ld	c,a
	jp	nc,99f
	inc	b
99:
	ld	a,(bc)	
	; Test which CHIP.
;	bit	B_PSGSCC,d		;(ix+TRACK_Flags)
;	jp	nz,99f
;	rra
;	rra
;	rra
;	rra
;99:
;	and	0x0f
	ld	(AY_regVOLC),a

_noVolume:
	;-------------------------------
	;
	; NOISE
	;
	;-------------------------------
	bit 	7,e			; test if noise
	jp	z,_noNoise
	
	;--- prevent SCC and noise
;	bit	B_PSGSCC,d		;(ix+TRACK_Flags)
;	jp	nz,_noNoise

	;--- Set the mixer for noise
	ld	a,(SCC_regMIXER)
	or	128
	ld	(SCC_regMIXER),a

	bit	5,e
	jp	z,_noNoise
	ld	a,(hl)	; get	the deviation	
	inc	hl
	bit	6,e
	jp	z,99f
	add	(ix+TRACK_Noise)
99:	ld	(ix+TRACK_Noise),a
	ld	(AY_regNOISE),a
_noNoise:
	;-------------------------------
	;
	; TONE
	;
	;-------------------------------
	bit	4,e		; do we have tone?
	jp	z,_pcAY_noTone

	;-- enable tone output
	ld	a,(SCC_regMIXER)
	or	16
	ld	(SCC_regMIXER),a
_pcAY_noTone:
	ld	b,(ix+TRACK_ToneAdd)	; get	the current	deviation	
	ld	c,(ix+TRACK_ToneAdd+1)

	bit	2,e
	jp	z,_pcAY_noToneAdd
	ld	a,(hl)
	inc	hl
	add	c
	ld	c,a
	ld	(ix+TRACK_ToneAdd+1),c
	jp	nc,99f
	inc	b
99:	ld	a,(hl)
	inc	hl
	add	b
	ld	b,a
	ld	(ix+TRACK_ToneAdd),b
_pcAY_noToneAdd:	
	ld	(ix+TRACK_MacroPointer),l	;--- store pointer for next time
	ld	(ix+TRACK_MacroPointer+1),h	

	ex	af,af'			;';restore note offset
	ld	hl,(replay_Tonetable)
	add	a,l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	ld	a,(hl)	;--- Store the note tone value in hl
	inc	hl
	ld	h,(hl)
	ld	l,a
		
	add	hl,bc		;--- Store tone deviation		

	; set	the detune.
	ld	(_SP_Storage),sp
	ld	sp,ix
	pop	bc		; cmd detume
	add	hl,bc
	pop	bc		; cmd toneadd
	add	hl,bc
	pop	bc		; cmd tone slide add
	add	hl,bc
	ld	sp,(_SP_Storage)
;	ld	c,(ix+TRACK_cmd_detune)
;	ld	b,(ix+TRACK_cmd_detune+1)
;	add	hl,bc
;
;	ld	c,(ix+TRACK_cmd_ToneAdd)
;	ld	b,(ix+TRACK_cmd_ToneAdd+1)
;	add	hl,bc
;	
;	ld	c,(ix+TRACK_cmd_ToneSlideAdd)
;	ld	b,(ix+TRACK_cmd_ToneSlideAdd+1)
;	
;	add	hl,bc

	;-------------------------------
	;
	; END of macro?
	;
	;-------------------------------
	bit	3,e		
	ret	z
	
	;--- now get new pointer
	ld	c,(ix+TRACK_MacroStart)
	ld	b,(ix+TRACK_MacroStart+1)
	
	ld	a,(ix+TRACK_MacroRestart)	
	add	a,c
	ld	c,a
	jp	nc,99f
	inc	b
99:		
	;--- Store the macro start	
	ld	(ix+TRACK_MacroPointer),c
	ld	(ix+TRACK_MacroPointer+1),b		

	ret
	
_pcAY_noNoteActive:
	xor	a
	ld	(AY_regVOLC),a
	ret	
	
stop_debug:
	halt
	jp	stop_debug	
	
PROCESS_CMDLIST:	
[13]	dw 	stop_debug

_pcAY_cmdlist:
	dw	_pcAY_cmdc_wave_duty		;d
	dw	_pcAY_cmdd_wave_cut		;e
	dw	_pcAY_cmde_wave_compr		;f
	dw	_pcAY_cmd13_short_arp		;10
	dw	_pcAY_cmd14_fine_up		;11
	dw	_pcAY_cmd15_fine_down		;12
	dw	_pcAY_cmd19_note_delay		;13
	
	dw	_pcAY_cmd0_arpeggio		;14
	dw	_pcAY_cmd1_port_up		;15
	dw	_pcAY_cmd2_port_down		;16
	dw	_pcAY_cmd3_port_tone		;17
	dw	_pcAY_cmd4_vibrato		;18
	dw	_pcAY_cmd5_vibrato_port_tone	;19
	dw	_pcAY_cmd6_vibrato_vol		;1a
	dw	_pcAY_cmd7_vol_slide		;1b
	dw	_pcAY_cmd8_macro_offset		;1c
	dw	0	;env shape

	dw	_pcAY_cmd0_arpeggio		;1d
	dw	_pcAY_cmd1_port_up		;1e
	dw	_pcAY_cmd2_port_down		;1f
	dw	_pcAY_cmd3_port_tone		;20
	dw	_pcAY_cmd4_vibrato
	dw	_pcAY_cmd5_vibrato_port_tone
	dw	_pcAY_cmd6_vibrato_vol
	dw	_pcAY_cmd7_vol_slide
	dw	_pcAY_cmd8_macro_offset


			
_pcAY_cmd0_arpeggio:
	ld	a,(ix+TRACK_Timer)
	bit	0,a
	jp	z,99f

	;--- set x
		ld	(ix+TRACK_Timer),2
		xor	a
		ld	a,(ix+TRACK_cmd_0)
		and	0xf0
		rra
		rra
		rra
		rra
		ld	(ix+TRACK_cmd_NoteAdd),a		
		jp	_pcAY_commandEND

	
99:
	bit	1,a
	jp	z,99f

	;--- set y
		ld	(ix+TRACK_Timer),0
		ld	a,(ix+TRACK_cmd_0)
		and	0x0f
		ld	(ix+TRACK_cmd_NoteAdd),a		
		jp	_pcAY_commandEND
	
99:
	;--- set none
	ld	(ix+TRACK_Timer),1
	jp	_pcAY_commandEND
	
	
	
	
_pcAY_cmd1_port_up:
	ld	a,(ix+TRACK_cmd_1)
	ld	b,a
	ld	a,(ix+TRACK_cmd_ToneSlideAdd)
	sub	b
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	jp	nc,_pcAY_commandEND
	dec	(ix+TRACK_cmd_ToneSlideAdd+1)
	jp	_pcAY_commandEND
	
_pcAY_cmd2_port_down:
	ld	a,(ix+TRACK_cmd_2)
	ld	b,a
	ld	a,(ix+TRACK_cmd_ToneSlideAdd)
	add	b
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	jp	nc,_pcAY_commandEND
	inc	(ix+TRACK_cmd_ToneSlideAdd+1)
	jp	_pcAY_commandEND


_pcAY_cmd3_port_tone:
	ld	a,(ix+TRACK_cmd_3)
	ld	l,(ix+TRACK_cmd_ToneSlideAdd)
	ld	h,(ix+TRACK_cmd_ToneSlideAdd+1)
	bit	7,h
	jp	z,_pcAY_cmd3_sub
_pcAY_cmd3_add:
	;pos slide
	add	a,l
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	jp	nc,_pcAY_commandEND
	inc	h					
	bit	7,h
	jp	z,_pcAY_cmd3_stop			; delta turned pos ?
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),h
	jp	_pcAY_commandEND
_pcAY_cmd3_sub:
	;negative slide	
	ld	c,a
	xor	a
	ld	b,a
	sbc	hl,bc
	bit	7,h
	jp	nz,_pcAY_cmd3_stop			; delta turned neg ?
	ld	(ix+TRACK_cmd_ToneSlideAdd),l
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),h
	jp	_pcAY_commandEND
_pcAY_cmd3_stop:	
	res	B_TRGCMD,d		;(ix+TRACK_Flags)
	ld	(ix+TRACK_cmd_ToneSlideAdd),0
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),0	
	jp	_pcAY_commandEND


	;-- vibrato	
_pcAY_cmd4_vibrato:


	ld	hl,(replay_vib_table)
	;--- Get next step
	ld	a,(IX+TRACK_Step)
	add	(ix+TRACK_cmd_4_step)
	and	$3F			; max	32
	ld	(ix+TRACK_Step),a
	
	bit	5,a			; step 32-63 the neg	
	jp	z,_pcAY_cmd4pos

; neg	
	and	$1f
	add	l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	ld	a,(hl)
	;apply depth
	ld	b,(ix+TRACK_cmd_4_depth)
11:	srl	a
	djnz	11b
;	and	$0f

	neg
	jp	z,33f			; $ff00 gives strange result ;)	
	ld	(ix+TRACK_cmd_ToneAdd),a
	ld	(ix+TRACK_cmd_ToneAdd+1),0xff
	jp	_pcAY_commandEND

_pcAY_cmd4pos:	
;	and	$1f
	add	l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	ld	a,(hl)
	;apply depth
	ld	b,(ix+TRACK_cmd_4_depth)
11:	srl	a
	djnz	11b
;	and	$0f
33:	ld	(ix+TRACK_cmd_ToneAdd),a
	ld	(ix+TRACK_cmd_ToneAdd+1),0
	jp	_pcAY_commandEND
		
	

_pcAY_cmd5_vibrato_port_tone:
	call	_pcAY_cmdasub
	jp	_pcAY_cmd3_port_tone
	
_pcAY_cmd6_vibrato_vol:
	call	_pcAY_cmdasub
	jp	_pcAY_cmd4_vibrato	

_pcAY_cmd7_vol_slide:
	;retrig
;	dec	(ix+TRACK_Timer)
	call	_pcAY_cmdasub
	jp	_pcAY_commandEND

_pcAY_cmdasub
	dec	(ix+TRACK_Timer)
	ret	nz
		
	; vol	slide
	ld	a,(ix+TRACK_cmd_A)
	ld	c,a
	and	$0f
	ld	(ix+TRACK_Timer),a

	ld	a,(IX+TRACK_cmd_VolumeAdd)
	bit	7,c
	jp	z,_pcAY_cmda_inc
_pcAY_cmda_dec:
	cp	0x88
	ret	z
	sub	8
	ld	(ix+TRACK_cmd_VolumeAdd),a
	ret
_pcAY_cmda_inc:
	cp	0x78
	ret	z
	add	8	
	ld	(ix+TRACK_cmd_VolumeAdd),a
	ret
	
_pcAY_cmd8_macro_offset:
	dec	(ix+TRACK_Timer)
	jp	nz,_pcAY_commandEND
	res	B_TRGCMD,d			;(ix+TRACK_Flags)
	jp	_pcAY_commandEND


_pcAY_cmdc_wave_duty:
_pcAY_cmdd_wave_cut:
_pcAY_cmde_wave_compr:
	jp	_pcAY_commandEND		
	

_pcAY_cmd13_short_arp:
	dec	(ix+TRACK_Timer)
	bit	B_TRGNOT,d		;(ix+TRACK_Timer)
	jp	z,_pcAY_commandEND
	ld	a,(ix+TRACK_cmd_E)
	ld	(ix+TRACK_cmd_NoteAdd),a		
	jp	_pcAY_commandEND

_pcAY_cmd14_fine_up:
	dec	(ix+TRACK_Timer)
	jp	nz,_pcAY_commandEND

	res	B_TRGCMD,d			;(ix+TRACK_Flags)
	ld	a,(ix+TRACK_cmd_ToneSlideAdd)
	add	(ix+TRACK_cmd_E)
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	jp	nc,_pcAY_commandEND	
	inc	(ix+TRACK_cmd_ToneSlideAdd+1)
	jp	_pcAY_commandEND	

_pcAY_cmd15_fine_down:
	dec	(ix+TRACK_Timer)
	jp	nz,_pcAY_commandEND

	res	B_TRGCMD,d		;(ix+TRACK_Flags)
	ld	a,(ix+TRACK_cmd_ToneSlideAdd)
	sub	(ix+TRACK_cmd_E)
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	jp	nc,_pcAY_commandEND	
	dec	(ix+TRACK_cmd_ToneSlideAdd+1)
	jp	_pcAY_commandEND	


_pcAY_cmd19_note_delay:
	; note delay
	dec	(ix+TRACK_Timer)
	jp	nz,_pcAY_commandEND	; no delay yet

	; trigger note
	ld	a,(ix+TRACK_cmd_E)		
	ld	(ix+TRACK_Note),a		; set	the note val
	set	B_TRGNOT,d	;(ix+TRACK_Flags)		; set	trigger note flag
	res	B_TRGCMD,d	;(ix+TRACK_Flags)		; reset tiggger cmd flag
	
	jp	_pcAY_commandEND	








	
;===========================================================
; ---replay_route
; Output the data	to the CHIP	registers
; 
; 
;===========================================================
replay_route:
;---------------
; P S	G 
;---------------
	;--- Push values to AY HW
	ld	b,0
	ld	c,0xa0
	ld	hl,AY_registers
_comp_loop:	
	out	(c),b
	ld	a,(hl)
	add	1
	out	(0xa1),a
	inc	hl
	ld	a,(hl)
	adc	a,0
	inc	b
	out	(c),b	
	inc	hl
	out	(0xa1),a	
	inc	b
	ld	a,6
	cp	b
	jp	nz,_comp_loop
	
	ld	a,b	
	
	
_ptAY_loop:
	out	(c),a
	inc	c
	outi
	dec	c
	inc	a
	cp	13
	jr	nz,_ptAY_loop

	ld	b,a
	ld	a,(hl)
	and	a
	jp	z,_ptAY_noEnv
	out	(c),b
	inc	c
	out 	(c),a
	ld	(hl),0	;reset the envwrite
	
	
_ptAY_noEnv:

	ret

	
