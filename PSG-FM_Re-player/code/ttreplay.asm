;=================================
; TriloTracker FM-Play v0.3.1
;
; 
; 
;================================
FM_WRITE:	equ	0x7c	; port to set fm reg nr.
FM_DATA:	equ	0x7d	; port to set fm data for reg	
;===============================
; todo:
; - FM find + enable
	
	
;===========================================================
; ---	replay_init
; Initialize replayer data
; Only call this on start-up
; Input: none
;===========================================================
replay_init:
	ld	a,8
	call	replay_set_SCC_balance
	ld	a,8
	call	replay_set_PSG_balance

	xor	a
	ld	(replay_mode),a	
	ld	(equalization_cnt),a
	ld	(equalization_flag),a	
	ld	(equalization_freq),a
	ld	(replay_chan_setup),a	
	
	ret

;===========================================================
; ---	replay_pause
; Stop/Restart music playback
; 
; Input: none
;===========================================================
replay_pause:
	ld	a,(replay_mode)
	and	a
	jp	z,_replay_pause_r
	;-- stop decding and processing music data
	xor	a
	ld	(replay_mode),a
	;-- set mixers to silence.
	ld 	a,0x3F
	ld	(AY_regMIXER),a 
	xor	a
	ld	(FM_regMIXER),a
	ret
_replay_pause_r:	
	;-- enable music decoding and processing
	ld	a,1
	ld	(replay_mode),a
	ret

	
;===========================================================
; ---	replay_fade_out
; Fade out the music. 
; Once the sound is silence the replayer is paused.
;
; in: [A] fade speed (1 - 255)
;===========================================================	
replay_fade_out:
	ld	(replay_fade),a
	ld	(replay_fade_timer),a
	xor	a
	ld	(replay_fade_vol),a
	ret


;===========================================================
; ---	replay_transpose
; Transposes the whole song. 
; TT effect command 'E8y - Global transpose' will undo 
; this effect.
;
; in: [DE] number of halve tones (pos or neg) to transpose. 
;===========================================================
replay_transpose:
	ld	hl,TRACK_ToneTable_PSG
	add	hl,de	
	add	hl,de
	ld	(replay_tonetable_PSG),hl
	ld	hl,TRACK_ToneTable_FM
	add	hl,de	
	add	hl,de
	ld	(replay_tonetable_FM),hl	
	ret
	
;===========================================================
; ---	replay_set_SCC_balance
; Set the main volume for the SCC chip. This enables for
; setting the balance between SCC en PSG as some MSX models 
; default balance differs. 
;
; in: [A] master volume (0-7) 0=halve volume, 7=full volume. 
;===========================================================	
replay_set_SCC_balance:
	call	_getnewbalancebase
	ld	(replay_mainSCCvol),hl	
	ret
	
;===========================================================
; ---	replay_set_PSG_balance
; Set the main volume for the PSG chip. This enables for
; setting the balance between SCC en PSG as some MSX models 
; default balance differs. 
;
; in: [A] master volume (0-7) 0=halve volume, 7=full volume. 
;===========================================================	
replay_set_PSG_balance:
	call	_getnewbalancebase
	ld	(replay_mainPSGvol),hl	
	ret
	
_getnewbalancebase:
	rlca
	rlca
	rlca
	rlca
	ld	hl,_VOLUME_TABLE-128
	and	$f0
	add	a,l
	ld	l,a
	ret 	nc
	inc	h
	ret
	
	
	
	
	
	
;===========================================================
; ---	replay_loadsong
; Initialize a song for playback
; 
; Input [HL] points to start song
;===========================================================
replay_loadsong:
	;--- Get the start speed.
	ld	a,(hl)	
	inc	hl
	ld	(replay_speed),a

	;--- Set custom voice start
	ld	e,(hl)
	inc	hl
	ld 	d,(hl)
	inc	hl
	ld	(replay_voicebase),de

	;--- Set drum macro start
	ld	e,(hl)
	inc	hl
	ld 	d,(hl)
	inc	hl
	ld	(replay_drumbase),de	

	;--- Set the instrument start
	ld	e,(hl)
	inc	hl
	ld 	d,(hl)
	inc	hl
	ld	(replay_insbase),de
	

	;--- Set track pointers to start
	ld	de,TRACK_pointer1
	ld	bc,16
	ldir
	ld	(replay_orderpointer),hl		; store pointer for next set
								; of track pointers
	;--- Initialize replayer variables.
	xor	a
	ld	(replay_speed_subtimer),a
	
	;--- Erase channel data	in RAM
	ld	bc,TRACK_REC_SIZE*8-1
	ld	hl,TRACK_Chan1
	ld	de,TRACK_Chan1+1
	ld	(hl),a
	ldir
	
	;--- Silence the chips
	ld	(FM_regVOLA),a
	ld	(FM_regVOLB),a
	ld	(FM_regVOLC),a
	ld	(FM_regVOLD),a
	ld	(FM_regVOLE),a
	ld	(FM_regVOLF),a
	
	ld	(FM_DRUM_LEN),a
	ld	(FM_DRUM),a	
		
;	ld	(FM_regMIXER),a
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
	ld	hl,TRACK_ToneTable_PSG
	ld	(replay_tonetable_PSG),hl
	ld	hl,TRACK_ToneTable_FM
	ld	(replay_tonetable_FM),hl

	ld	a,1
	ld	(replay_speed_timer),a
	ld	(TRACK_Chan1+17+TRACK_Delay),a	
	ld	(TRACK_Chan2+17+TRACK_Delay),a		
	ld	(TRACK_Chan3+17+TRACK_Delay),a	
	ld	(TRACK_Chan4+17+TRACK_Delay),a	
	ld	(TRACK_Chan5+17+TRACK_Delay),a		
	ld	(TRACK_Chan6+17+TRACK_Delay),a		
	ld	(TRACK_Chan7+17+TRACK_Delay),a		
	ld	(TRACK_Chan8+17+TRACK_Delay),a	
	
	ld	a,254
	ld	(TRACK_Chan1+17+TRACK_Instrument),a	
	ld	(TRACK_Chan2+17+TRACK_Instrument),a		
	ld	(TRACK_Chan3+17+TRACK_Instrument),a	
	ld	(TRACK_Chan4+17+TRACK_Instrument),a	
	ld	(TRACK_Chan5+17+TRACK_Instrument),a		
	ld	(TRACK_Chan6+17+TRACK_Instrument),a		
	ld	(TRACK_Chan7+17+TRACK_Instrument),a		
	ld	(TRACK_Chan8+17+TRACK_Instrument),a	

	ld	a,1
	ld	(TRACK_Chan3+17+TRACK_Voice),a
	ld	(TRACK_Chan4+17+TRACK_Voice),a
	ld	(TRACK_Chan5+17+TRACK_Voice),a
	ld	(TRACK_Chan6+17+TRACK_Voice),a	
	ld	(TRACK_Chan7+17+TRACK_Voice),a	
	ld	(TRACK_Chan8+17+TRACK_Voice),a
	ld	a,128
	ld	(TRACK_Chan3+17+TRACK_Flags),a
	ld	(TRACK_Chan4+17+TRACK_Flags),a
	ld	(TRACK_Chan5+17+TRACK_Flags),a
	ld	(TRACK_Chan6+17+TRACK_Flags),a	
	ld	(TRACK_Chan7+17+TRACK_Flags),a
	ld	(TRACK_Chan8+17+TRACK_Flags),a	
	
	;--- Check if there are 3 psg chans.
;	ld	a,(replay_chan_setup)
;	and	a
;	jp	nz,99f
;	xor 	a
;	ld	(TRACK_Chan3+17+TRACK_Flags),a	
99:	
	
;	call FM_reg_update
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

	;--- Set track pointers to start
	ld	hl,(replay_orderpointer)
	xor	a
	cp	(hl)
	jp	nz,.no_restart
	inc	hl
	cp	(hl)
	dec	hl
	jp	nz,.no_restart
	;--- next is restart order
	inc	hl
	inc	hl
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
.no_restart:	
	ld	de,TRACK_pointer1
	ld	bc,16
	ldir
	ld	(replay_orderpointer),hl		; store pointer for next set
								; of strack pointers
	jp	replay_decodedata_NO


;===========================================================
; ---	replay_play
; Decode music data and process instruments and effects. 
; Music chip registers will be prepared for replay_route 
;
; Input none
;===========================================================	
replay_play:
	ld	a,(replay_mode)
	and	a
	ret	z		; replay mode = 0	; halted
				
				; replay mode = 1	; active
	
	;---- SPEED EQUALIZATION 
	ld	a,(equalization_freq)		; 0 = 50Hz, otherwise 60Hz
	and	a
    jr.	z,PAL               		; if PAL process at any interrupt;

NTSC:
    ld	hl,equalization_cnt  		; if NTSC call 5 times out of 6
    dec	(hl)
    jr.	nz,PAL               		; skip music data processing one tic out of 6

	;--- Reset timer and raise equalization flag
	ld	a,6
	ld	(hl),a						
 	ld	(equalization_flag),a		

	call	replay_decodedata_NO	
	xor	a
	ld	(equalization_flag),a
	ret
PAL:                             ; execute the PSG and ayFX core	
	;---- END SPEED EQUALIZATION	

		
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
		
;===========================================================
; ---	replay_decodedata
; Process the patterndata 
;===========================================================
replay_decodedata:
	;--- process the channels (tracks)
	ld 	hl,TRACK_Chan1+17+TRACK_Retrig
	dec	(hl)				;Check if retrig has ended
	jp	nz,.retrig_skip1
	ld	a,(TRACK_Chan1+17+TRACK_Flags)
	res	B_TRGCMD,a
	ld	(TRACK_Chan1+17+TRACK_Flags),a
	
.retrig_skip1:	
	dec	hl
;	ld 	hl,TRACK_Chan1+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode2

	ld	a,(TRACK_Chan1+17+TRACK_Flags)
	and	11111011b		; reset B_TRGENV
	ld	d,a
	ld	a,(TRACK_Chan1+17+TRACK_Note)	
	ld	ix,TRACK_Chan1+17
	ld	bc,(TRACK_pointer1)
	call	replay_decode_chan
	ld	(TRACK_pointer1),bc
	ld	a,d
	ld	(TRACK_Chan1+17+TRACK_Flags),a	

.decode2:	
	ld 	hl,TRACK_Chan2+17+TRACK_Retrig
	dec	(hl)				;Check if retrig has ended
	jp	nz,.retrig_skip2
	ld	a,(TRACK_Chan2+17+TRACK_Flags)
	res	B_TRGCMD,a
	ld	(TRACK_Chan2+17+TRACK_Flags),a
	
.retrig_skip2:	
	dec	hl
;	ld 	hl,TRACK_Chan2+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode3

	ld	a,(TRACK_Chan2+17+TRACK_Flags)
	and	11111011b		; reset B_TRGENV
	ld	d,a
	ld	a,(TRACK_Chan2+17+TRACK_Note)	
	ld	ix,TRACK_Chan2+17
	ld	bc,(TRACK_pointer2)
	call	replay_decode_chan
	ld	(TRACK_pointer2),bc
	ld	a,d				;'
	ld	(TRACK_Chan2+17+TRACK_Flags),a	

.decode3:
	ld 	hl,TRACK_Chan3+17+TRACK_Retrig
	dec	(hl)				;Check if retrig has ended
	jp	nz,.retrig_skip3
	ld	a,(TRACK_Chan3+17+TRACK_Flags)
	res	B_TRGCMD,a
	ld	(TRACK_Chan3+17+TRACK_Flags),a
	
.retrig_skip3:	
	dec	hl
;	ld 	hl,TRACK_Chan3+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode4

	ld	a,(TRACK_Chan3+17+TRACK_Flags)
;	and	11111011b		; reset B_TRGENV
	ld	d,a		;'
	ld	a,(TRACK_Chan3+17+TRACK_Note)	
	ld	ix,TRACK_Chan3+17
	ld	bc,(TRACK_pointer3)
	call	replay_decode_chan
	ld	(TRACK_pointer3),bc
	ld	a,d				;'
	ld	(TRACK_Chan3+17+TRACK_Flags),a	

.decode4:
	ld 	hl,TRACK_Chan4+17+TRACK_Retrig
	dec	(hl)				;Check if retrig has ended
	jp	nz,.retrig_skip4
	ld	a,(TRACK_Chan4+17+TRACK_Flags)
	res	B_TRGCMD,a
	ld	(TRACK_Chan4+17+TRACK_Flags),a
	
.retrig_skip4:	
	dec	hl
;	ld 	hl,TRACK_Chan4+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode5

	ld	a,(TRACK_Chan4+17+TRACK_Flags)
;	and	11111011b		; reset B_TRGENV
	ld 	d,a		;'
	ld	a,(TRACK_Chan4+17+TRACK_Note)	
	ld	ix,TRACK_Chan4+17
	ld	bc,(TRACK_pointer4)
	call	replay_decode_chan
	ld	(TRACK_pointer4),bc
	ld	a,d			;'
	ld	(TRACK_Chan4+17+TRACK_Flags),a	


.decode5:
	ld 	hl,TRACK_Chan5+17+TRACK_Retrig
	dec	(hl)				;Check if retrig has ended
	jp	nz,.retrig_skip5
	ld	a,(TRACK_Chan5+17+TRACK_Flags)
	res	B_TRGCMD,a
	ld	(TRACK_Chan5+17+TRACK_Flags),a
	
.retrig_skip5:	
	dec	hl
;	ld 	hl,TRACK_Chan5+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode6

	ld	a,(TRACK_Chan5+17+TRACK_Flags)
;	and	11111011b		; reset B_TRGENV
	ld	d,a		;'
	ld	a,(TRACK_Chan5+17+TRACK_Note)	
	ld	ix,TRACK_Chan5+17
	ld	bc,(TRACK_pointer5)
	call	replay_decode_chan
	ld	(TRACK_pointer5),bc
	ld	a,d			;'
	ld	(TRACK_Chan5+17+TRACK_Flags),a	


.decode6:
	ld 	hl,TRACK_Chan6+17+TRACK_Retrig
	dec	(hl)				;Check if retrig has ended
	jp	nz,.retrig_skip6
	ld	a,(TRACK_Chan6+17+TRACK_Flags)
	res	B_TRGCMD,a
	ld	(TRACK_Chan6+17+TRACK_Flags),a	
.retrig_skip6:	
	dec	hl
;	ld 	hl,TRACK_Chan6+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode7

	ld	a,(TRACK_Chan6+17+TRACK_Flags)
;	and	11111011b		; reset B_TRGENV
	ld	d,a		;'
	ld	a,(TRACK_Chan6+17+TRACK_Note)	
	ld	ix,TRACK_Chan6+17
	ld	bc,(TRACK_pointer6)
	call	replay_decode_chan
	ld	(TRACK_pointer6),bc
	ld	a,d				;'
	ld	(TRACK_Chan6+17+TRACK_Flags),a	


.decode7:
	ld 	hl,TRACK_Chan7+17+TRACK_Retrig
	dec	(hl)				;Check if retrig has ended
	jp	nz,.retrig_skip7
	ld	a,(TRACK_Chan7+17+TRACK_Flags)
	res	B_TRGCMD,a
	ld	(TRACK_Chan7+17+TRACK_Flags),a
	
.retrig_skip7:	
	dec	hl
;	ld 	hl,TRACK_Chan7+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode8

	ld	a,(TRACK_Chan7+17+TRACK_Flags)
;	and	11111011b		; reset B_TRGENV
	ld	d,a		;'
	ld	a,(TRACK_Chan7+17+TRACK_Note)	
	ld	ix,TRACK_Chan7+17
	ld	bc,(TRACK_pointer7)
	call	replay_decode_chan
	ld	(TRACK_pointer7),bc
	ld	a,d				;'
	ld	(TRACK_Chan7+17+TRACK_Flags),a	


.decode8:
	ld 	hl,TRACK_Chan8+17+TRACK_Retrig
	dec	(hl)				;Check if retrig has ended
	jp	nz,.retrig_skip8
	ld	a,(TRACK_Chan8+17+TRACK_Flags)
	res	B_TRGCMD,a
	ld	(TRACK_Chan8+17+TRACK_Flags),a
	
.retrig_skip8:	
	dec	hl
;	ld 	hl,TRACK_Chan8+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode_end

	ld	a,(TRACK_Chan8+17+TRACK_Flags)
;	and	11111011b		; reset B_TRGENV
	ld	d,a		;'
	ld	a,(TRACK_Chan8+17+TRACK_Note)	
	ld	ix,TRACK_Chan8+17
	ld	bc,(TRACK_pointer8)
	call	replay_decode_chan
	ld	(TRACK_pointer8),bc
	ld	a,d				;'
	ld	(TRACK_Chan8+17+TRACK_Flags),a
		
.decode_end:
	; continue to process data
;===========================================================
; ---	replay_decodedata_NO
; Process changes.
; 
; 
;===========================================================
replay_decodedata_NO:
	ld	a,$f0 ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
	out	(0x99),a
	ld	a,7+128
	out	(0x99),a

	ld	b,10
loopy:
	push 	hl
	pop 	hl
	push 	hl
	pop 	hl
	push 	hl
	pop 	hl
	djnz	loopy


;	ld	a,$fa ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
;	out	(0x99),a
;	ld	a,7+128
;	out	(0x99),a



	; Set tone table
	ld	hl,(replay_tonetable_PSG)
	ld	(replay_tonetable),hl

	;--- Initialize PSG Mixer and volume
	xor	a
	ld	(FM_regMIXER),a

	;--- PSG balance
	ld	hl,(replay_mainPSGvol)
	ld	(replay_mainvol),hl
	
	;--------------------
	;--- Process track 1
	;--------------------
	ld	ix,TRACK_Chan1+17
	ld	a,(TRACK_Chan1+17+TRACK_Flags)
	ld	d,a
	call	replay_process_chan_AY
	ld	(AY_regToneA),hl
	ld	a,d
	ld	(TRACK_Chan1+17+TRACK_Flags),a	
	ld	a,(FM_regVOLF)
	ld	(AY_regVOLA),a	

	;--------------------
	;--- Process track 2
	;--------------------
	ld	ix,TRACK_Chan2+17
	ld	a,(TRACK_Chan2+17+TRACK_Flags)
	ld	d,a
	call	replay_process_chan_AY
	ld	(AY_regToneB),hl
	ld	a,d
	ld	(TRACK_Chan2+17+TRACK_Flags),a	
	ld	a,(FM_regVOLF)
	ld	(AY_regVOLB),a	

	ld	a,(replay_chan_setup)
	and	a
	jp	z,_rdd_2psg_6fm

_rdd_3psg_5fm:
	;--------------------
	;--- Process track 3	
	;--------------------
	ld	ix,TRACK_Chan3+17
	ld	a,(TRACK_Chan3+17+TRACK_Flags)
	ld	d,a
	call	replay_process_chan_AY
	ld	(AY_regToneC),hl
	ld	a,d
	ld	(TRACK_Chan3+17+TRACK_Flags),a	
	ld	a,(FM_regVOLF)
	ld	(AY_regVOLC),a

	;-- Convert mixer to AY
	ld	a,(FM_regMIXER)		
	srl	a
	srl	a
;	srl	a
	xor	0x3f
	ld	(AY_regMIXER),a

	; Set tone table
	ld	hl,(replay_tonetable_FM)
	ld	(replay_tonetable),hl
	;--- set SCC balance
	ld	hl,(replay_mainSCCvol)
	ld	(replay_mainvol),hl
	
	jp	_rdd_cont
	
	
_rdd_2psg_6fm:
	;-- Convert mixer to AY
	ld	a,(FM_regMIXER)		
	srl	a
	srl	a
	srl	a
	xor	0x3f
	ld	(AY_regMIXER),a

	; Set tone table
	ld	hl,(replay_tonetable_FM)
	ld	(replay_tonetable),hl
	;--- set SCC balance
	ld	hl,(replay_mainSCCvol)
	ld	(replay_mainvol),hl

	;--------------------
	;--- Process track 3
	;--------------------
	ld	ix,TRACK_Chan3+17
	ld	a,(TRACK_Chan3+17+TRACK_Flags)
	ld	d,a
	call	replay_process_chan_AY
	ld	(FM_regToneA),hl
	ld	a,d
	ld	(TRACK_Chan3+17+TRACK_Flags),a	
	ld	a,(FM_regVOLF)
	ld	(FM_regVOLA),a	


_rdd_cont:
	;--------------------
	;--- Process track 4
		;--------------------
	ld	ix,TRACK_Chan4+17
	ld	a,(TRACK_Chan4+17+TRACK_Flags)
	ld	d,a
	call	replay_process_chan_AY
	ld	(FM_regToneB),hl
	ld	a,d
	ld	(TRACK_Chan4+17+TRACK_Flags),a	
	ld	a,(FM_regVOLF)
	ld	(FM_regVOLB),a	

	;--------------------
	;--- Process track 5
	;--------------------	
	ld	ix,TRACK_Chan5+17
	ld	a,(TRACK_Chan5+17+TRACK_Flags)
	ld	d,a
	call	replay_process_chan_AY
	ld	(FM_regToneC),hl
	ld	a,d
	ld	(TRACK_Chan5+17+TRACK_Flags),a	
	ld	a,(FM_regVOLF)
	ld	(FM_regVOLC),a	

	;--------------------
	;--- Process track 6
	;--------------------
		
	ld	ix,TRACK_Chan6+17
	ld	a,(TRACK_Chan6+17+TRACK_Flags)
	ld	d,a
	call	replay_process_chan_AY
	ld	(FM_regToneD),hl
	ld	a,d
	ld	(TRACK_Chan6+17+TRACK_Flags),a	
	ld	a,(FM_regVOLF)
	ld	(FM_regVOLD),a	

	;--------------------
	;--- Process track 7
	;--------------------
	ld	ix,TRACK_Chan7+17
	ld	a,(TRACK_Chan7+17+TRACK_Flags)
	ld	d,a
	call	replay_process_chan_AY
	ld	(FM_regToneE),hl
	ld	a,d
	ld	(TRACK_Chan7+17+TRACK_Flags),a	
	ld	a,(FM_regVOLF)
	ld	(FM_regVOLE),a		

	;--------------------
	;--- Process track 8
	;--------------------		
	ld	ix,TRACK_Chan8+17
	ld	a,(TRACK_Chan8+17+TRACK_Flags)
	ld	d,a
	call	replay_process_chan_AY
	ld	(FM_regToneF),hl
	ld	a,d
	ld	(TRACK_Chan8+17+TRACK_Flags),a	

	;-- Fade out processing
	ld	a,(replay_fade)
	and	a
	ret	z	; if replay fade = 0 then no fade active
	
	; decrease fade timer
	ld	a,(replay_fade_timer)
	dec	a
	jp	nz,.no_new_step

	ld	a,(replay_fade_vol)
	inc	a
	cp	16
	jp	c,.cont_fadeing
	xor	a
	ld	(replay_fade),a
	jp	replay_pause
.cont_fadeing:	
	ld	(replay_fade_vol),a
	ld	a,(replay_fade)
.no_new_step:
	ld	(replay_fade_timer),a

	ld	a,(replay_fade_vol)
	ld	c,a
	ld	b,3
	ld	hl,AY_regVOLA
	call	.calc_vol
	ld	b,6
	ld	hl,FM_regVOLA

.calc_vol:	
	ld	a,(hl)
	sub	c
	jp	nc,.no_carry
	xor	a
.no_carry:	
	ld	(hl),a
	inc	hl
	djnz	.calc_vol
	ret


	
replay_decode_chan:
	;--- initialize data
;	ld	a,(ix+TRACK_Note)
	ld	(replay_previous_note),a

;	;--- Check if retrig has ended
;	dec	(ix+TRACK_Retrig)
;	jp	nz,.skip_retrig_reset
;	res 	B_TRGCMD,(ix+TRACK_Flags)
;
;.skip_retrig_reset:
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
	res 	B_KEYON,d
;	res	B_ACTMOR,d

	inc	bc
	ld	a,(bc)
	jp	_rdn
	
_replay_decode_rest:
	res	B_ACTNOT,d				; reset note bit to	0
	res	B_SUST,d				; rest sustain
;	res	B_ACTMOR,d				; reset morph slave mode

	inc	bc
	ld	a,(bc)
	jp	_rdn

_replay_decode_ins:
;	res	B_ACTMOR,d				; reset morph slave mode
	sub	112;97
	cp	(ix+TRACK_Instrument)
	jp	z,.skip_ins
	
	ld	(ix+TRACK_Instrument),a

	;--- set instrument pointer
	add	a
	ld	hl,(replay_insbase)
	add	a,l
	ld	l,a
	jp	nc,.skip
	inc	h
.skip:
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a

	;-- get voice
	ld	a,(hl)
	inc	hl
	
;	ld	e,(hl)
;	inc	hl

	;---- Store the restart offset
;	ld	(ix+TRACK_MacroRestart),e
	;--- Store the macro start
	ld	(ix+TRACK_MacroPointer),l
	ld	(ix+TRACK_MacroPointer+1),h	
	;--- Store the macro re-start
	ld	(ix+TRACK_MacroStart),l
	ld	(ix+TRACK_MacroStart+1),h		
	;--- Set the voiceform  (if needed)
	cp	(ix+TRACK_Voice)
	jp	z,.skip_ins
	
	;--- this is a new waveform
	ld	(ix+TRACK_Voice),a
	set	B_TRGVOI,d
;	set	B_TRGWAV,d
	
.skip_ins:	
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
	jp	z,_rd_delay		; EOT found
	ld	(ix+TRACK_Delay),a
	ld	(ix+TRACK_prevDelay),a

	inc	bc
	ret


_replay_decode_cmd:

	sub	142
	ld	(ix+TRACK_Command),a
	ld	hl,DECODE_CMDLIST
	add	a,a
	add	a,l
	ld	l,a
	jp	nc,.skip
	inc	h
.skip:
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	
	inc	bc
	ld	a,(bc)
	jp	(hl)

DECODE_CMDLIST:
	; These effects are only processed 1 once in decoding
	dw	_CHIPcmd0_env_mul			;0
	dw	0					;1	CHAN 3-5
	dw	0					;2	CHAN 2-6
	dw	_CHIPcmdCd_drum			;3	FM DRUM
	dw	_CHIPcmd11_sustain_on		;4	SUSTAIN ON	
	dw	_CHIPcmd12_sustain_off		;5	SUSTAIN OFF
	dw	_CHIPcmd16_vib_ctrl		;6
	dw	_CHIPcmd17_track_detune		;7
	dw	_CHIPcmd18_transpose		;8
	dw	_CHIPcmd1A_trigger		;9
	dw	_CHIPcmd1B_speed			;a
	dw	_CHIPcmd1C_notelink		;b
;	dw	_CHIPcmd1C_call			;b	
	dw	_CHIPcmd1D_ret			;c
	
	; These effects are also processed in the processing
	dw	0					;d	DELETE
	dw	0					;e	DELETE
	dw	0					;f	DELETE
	dw	_CHIPcmd13_short_arp		;10
	dw	_CHIPcmd14_fine_up		;11
	dw	_CHIPcmd15_fine_down		;12
	dw	_CHIPcmd19_note_delay		;13
	dw	_CHIPcmdXX_note_cut		;14

	; These effects can be retriggered
	dw	_CHIPcmd0_arpeggio		;15
	dw	_CHIPcmd2_port_down		;16
	dw	_CHIPcmd1_port_up			;17
	dw	_CHIPcmd3_port_tone		;18
	dw	_CHIPcmd4_vibrato			;19
	dw	_CHIPcmd5_vibrato_port_tone	;1a
	dw	_CHIPcmd6_vibrato_vol		;1b
	dw	_CHIPcmd7_vol_slide		;1c
	dw	_CHIPcmd8_macro_offset		;1d
	dw	_CHIPcmd9_env_shape		;1e

	dw	_CHIPcmd0_RE_arpeggio		;1f
	dw	_CHIPcmd2_RE_port_down		;20
	dw	_CHIPcmd1_RE_port_up		;21
	dw	_CHIPcmd3_RE_port_tone		;22
	dw	_CHIPcmd4_RE_vibrato		;23
	dw	_CHIPcmd5_RE_vibrato_port_tone ;24
	dw	_CHIPcmd6_RE_vibrato_vol	;25
	dw	_CHIPcmd7_RE_vol_slide		;26
	dw	_CHIPcmd8_RE_macro_offset	;27
	dw	_CHIPcmd9_RE_env_shape		;28



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
	ld	(ix+TRACK_Timer),0
	ld	(ix+TRACK_Retrig),1
	jp	_rdc
	
_CHIPcmd1_port_up:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; This will	slide	up the pitch of the current note
	; being played by	the given speed. 
	bit 	B_PSGFM,d
	jp	nz,_cmd2_psg		; swap cmd 1 en 2 for psg
_cmd1_psg:
	ld	(ix+TRACK_cmd_1),a
	set	B_TRGCMD,d
	ld	(ix+TRACK_Retrig),1
	jp	_rdc
	
	
	 
_CHIPcmd2_port_down:
	; in:	[A] contains the paramvalue
	; 
	; ! do1_ not change	[BC] this is the data pointer
	;--------------------------------------------------
	; This will	slide	down the pitch of	the current	note
	; being played by	the given speed.	
	bit 	B_PSGFM,d
	jp	nz,_cmd1_psg		; swap cmd 1 en 2 for psg
_cmd2_psg:
	ld	(ix+TRACK_cmd_2),a
	set	B_TRGCMD,d
	ld	(ix+TRACK_Retrig),1
	jp	_rdc
	

_CHIPcmd3_RE_port_tone:
	ld	(ix+TRACK_Retrig),a
	jp	_CHIPcmd3_port_tone_cont	
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
	ld	(ix+TRACK_Retrig),1
_CHIPcmd3_port_tone_cont:
	set	B_TRGCMD,d
	set	B_ACTNOT,d
	;--- Check if we have a	note on the	same event
	bit	B_TRGNOT,d
	jp	z,_rdc

	;-- get the	previous note freq
	ld	a,(replay_previous_note)
	add	a

	exx
	bit	B_PSGFM,d
	jp	nz,_cmd3_fm
_cmd3_psg:
	ld	hl,(replay_tonetable_PSG)	;TRACK_ToneTable
	jp	99f
_cmd3_fm:
	ld	hl,(replay_tonetable_FM)	;TRACK_ToneTable

99:
	push	hl			; store address for later
	add	a,l
	ld	l,a
	jp	nc,.skip
	inc	h
.skip:
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
	;ld	hl,(replay_Tonetable)	;TRACK_ToneTable
	pop 	hl
	add	a,l
	ld	l,a
	jp	nc,.skip2
	inc	h
.skip2:
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
	ld	(ix+TRACK_Retrig),1
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
	
	ld	(ix+TRACK_cmd_A),a
	set	B_TRGCMD,d
	ld	(ix+TRACK_Timer),1
	ld	(ix+TRACK_Retrig),1
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
	; NOT SUPPORTED ANYMORE
	jp	_rdc




_CHIPcmd9_env_shape:
;	set	B_TRGENV,d
	ld	(AY_regEnvShape),a
	ld	(ix+TRACK_Retrig),1
	jp	_rdc


	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; This command set the envelope frequency using a
	; multiplier value (00-ff)
_CHIPcmd0_env_mul:
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
	
	jp	_rdc	

_CHIPcmd11_sustain_on:
	set	B_SUST,d
	dec	bc
	jp	_rdc	
	
_CHIPcmd12_sustain_off:
	res	B_SUST,d
	dec	bc
	jp	_rdc	
	
	

_CHIPcmdCd_drum:
	and 	a		; drum reset not supported
	jr 	z,0f
	
	; Get the base addres of the drum list
	add 	a 
	ld	hl,(replay_drumbase)
	add	a,l 
	ld	l,a
	jp	nc,99f
	inc	h 
99:
	ld	l,a
	; Get the start of the drum macro
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	
	; Store the length
	ld	a,(hl)
	ld	(FM_DRUM_LEN),a
	inc	hl
	; Store the address
	ld	a,l
	ld 	(FM_DRUM_MACRO),a
	ld	a,h
	ld	(FM_DRUM_MACRO+1),a
	jp	_rdc		
0:
	dec	bc
	jp	_rdc		
	

_CHIPcmd13_short_arp:
	ld	(ix+TRACK_cmd_E),a		; store the halve not to add
	ld	(ix+TRACK_Timer),0

	set	B_TRGCMD,d		; command active
	ld	(ix+TRACK_Retrig),1
	jp	_rdc	
	
	
_CHIPcmd14_fine_up:
_CHIPcmd15_fine_down:
	ld	(ix+TRACK_cmd_E),a
	ld	(ix+TRACK_Timer),2
	set	B_TRGCMD,d		; command active
	ld	(ix+TRACK_Retrig),1
	jp	_rdc	


_CHIPcmd16_vib_ctrl:
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
	; This command sets the	detune of the track.
	ld	e,a
	and	0x07		; low	4 bits is value
	bit	3,e		; Center around 8
	jp	z,.pos
	inc	a
	neg			; make correct value
	ld	(ix+TRACK_cmd_detune),a
	ld	(ix+TRACK_cmd_detune+1),0xff

	jp	_rdc	

.pos:
	ld	(ix+TRACK_cmd_detune),a
	ld	(ix+TRACK_cmd_detune+1),0x00	

	jp	_rdc	


; This command sets the	detune of the track.	
_CHIPcmd18_transpose:
	ld	e,a
	add	a
	
	bit	B_PSGFM,d
	jp	nz,_cmd18_fm
_cmd18_psg:
	ld	hl,(replay_tonetable_PSG)	;TRACK_ToneTable
	jp	99f
_cmd18_fm:
	ld	hl,(replay_tonetable_FM)	;TRACK_ToneTable
99:	
	and	15		; low	4 bits is value
	bit	3,e		; Center around 8
	jp	z,.pos

	;neg	
	neg	
	add	a,l
	ld	l,a
	jp	nc,.skip
	dec	h
	jp 	.skip
	; pos
.pos:	
	add	a,l
	ld	l,a
	jp	nc,.skip
	inc	h
.skip:
	bit	B_PSGFM,d
	jp	nz,_cmd18b_fm
_cmd18b_psg:
	ld	(replay_tonetable_PSG),hl	;TRACK_ToneTable
	jp	_rdc
_cmd18b_fm:
	ld	(replay_tonetable_FM),hl	;TRACK_ToneTable
	jp	_rdc

_CHIPcmdXX_note_cut:
	set	B_TRGCMD,d
	ld	(ix+TRACK_Retrig),1
	inc	a
	ld	(ix+TRACK_Timer),a		; set	the timer to param y
	jp 	_rdc


_CHIPcmd19_note_delay:
	bit	B_TRGNOT,d		; is there a note	in this eventstep?
	jp	z,_rdc

	set	B_TRGCMD,d					; command active
	ld	(ix+TRACK_Retrig),1
	inc	a
	ld	(ix+TRACK_Timer),a			; set	the timer to param y
	ld	a,(ix+TRACK_Note)
	ld	(ix+TRACK_cmd_E),a			; store the	new note
	ld	a,(replay_previous_note)
	ld	(ix+TRACK_Note),a				; restore the old	note
	res	B_TRGNOT,(ix+TRACK_Flags)		; reset any	triggernote

	jp	_rdc	



_CHIPcmd1A_trigger:
	ld	(replay_trigger),a
	jp	_rdc		


_CHIPcmd1B_speed:
	ld	(replay_speed),a
	;--- Reset Timer == 0
	srl	a				; divide speed with 2
	ld	e,a
	ld	a,0				
	adc	a				; store carry of shift as subtimer
	ld	(replay_speed_subtimer),a
	add	a,e
	ld	(replay_speed_timer),a

	jp	_rdc	
	
_CHIPcmd1C_notelink:
	res	B_TRGNOT,d
	set 	B_KEYON,d
	dec 	bc
	jp	_rdc	
_CHIPcmd1C_call:
_CHIPcmd1D_ret:
	;< not implemented yet>
	dec 	bc
	jp	_rdc	




_CHIPcmd0_RE_arpeggio:
	ld	(ix+TRACK_Timer),0
	
_CHIPcmd1_RE_port_up:	
_CHIPcmd2_RE_port_down:
_CHIPcmd4_RE_vibrato:
	set	B_TRGCMD,d
	ld	(ix+TRACK_Retrig),a
	jp	_rdc		
	
_CHIPcmd5_RE_vibrato_port_tone:
_CHIPcmd6_RE_vibrato_vol:
_CHIPcmd7_RE_vol_slide:
	set	B_TRGCMD,d
	ld	(ix+TRACK_Timer),1
	ld	(ix+TRACK_Retrig),a
	jp	_rdc
		
_CHIPcmd8_RE_macro_offset:	
	set	B_TRGCMD,d
	ld	(ix+TRACK_Timer),2
	ld	(ix+TRACK_Retrig),a
	jp	_rdc			

_CHIPcmd9_RE_env_shape:
;	set	B_TRGENV,d
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
	ld	hl,FM_regMIXER   
	rrc	(hl)

	;===== 
	; Speed equalization check
	;=====
	ld	a,(equalization_flag)			; check for speed equalization
	and	a
	jp	nz,_pcAY_noNoteTrigger			; Only process instruments
	
	
	;=====
	; COMMAND
	;=====
	bit	B_TRGCMD,d	;(ix+TRACK_Flags)
	jp	z,_pcAY_noCommand
	
	ld	a,$f6 ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
	out	(0x99),a
	ld	a,7+128
	out	(0x99),a	

	
	
	ld	hl,_pcAY_cmdlist-26
	ld	a,(ix+TRACK_Command)
	add	a
	add	a,l
	ld	l,a
	jp	nc,.skip
	inc	h
.skip:
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a	
	jp	(hl)
	
_pcAY_noCommand:	
_pcAY_commandEND:
	ld	a,$fe ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
	out	(0x99),a
	ld	a,7+128
	out	(0x99),a	
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
	
	;--- Get the macro len and loop
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
	jp	nc,.skip
	ld	a,$0f
	jp	_vol_base
.skip:	
	xor	a
	
_vol_base:
	ld	(ix+TRACK_VolumeAdd),a

	;---- envelope check
	; is done here to be able to continue
	; macro volume values.
;	bit	B_TRGENV,d		;'(IX+TRACK_Flags)
	jp	z,_noEnv		; if not set then normal volume calculation
	ld	a,16			; set volume to 16 == envelope
	ld	(FM_regVOLF),a
	jp	_noVolume	
	
_noEnv:
	or	(ix+TRACK_Volume)
	ld	c,a			; store volume add

	ld 	a,(ix+TRACK_cmd_VolumeAdd)
	rla				; shift to detect shift
	jp 	c,.sub_Vadd		
.add_Vadd:  
	add	a,c
	jp	nc,_Vadd
	ld	a,c
	or	0xf0
	jp	_Vadd	
.sub_Vadd:	
	ld	b,a
	xor	a
	sub 	b
	ld	b,a
	ld	a,c
	sub	a,b
	jp 	nc,.skip2
	ld	a,c
 	and	0x0f
.skip2:

	
	;-- next is _Vadd
_Vadd:
	;--- apply main volume balance
	ld	bc,(replay_mainvol)
	add	a,c
	ld	c,a
	jp	nc,.skip
	inc	b
.skip:
	ld	a,(bc)	
	; Test which CHIP.
	bit	B_PSGFM,d		;(ix+TRACK_Flags)
	jp	nz,.skip2
	rra
	rra
	rra
	rra
.skip2:
	and	0x0f
	ld	(FM_regVOLF),a

_noVolume:
	;-------------------------------
	;
	; NOISE
	;
	;-------------------------------
	bit 	7,e			; test if noise
	jp	z,_noNoise
	
	;--- prevent FM and noise
	bit	B_PSGFM,d		;(ix+TRACK_Flags)
	jp	nz,_noLink		; Noise and Link not at the same time

	;--- Set the mixer for noise
	ld	a,(FM_regMIXER)
	or	128
	ld	(FM_regMIXER),a

	bit	5,e
	jp	z,_noLink
	ld	a,(hl)	; get the deviation	
	inc	hl
	bit	6,e
	jp	z,.skip
	add	(ix+TRACK_Noise)
.skip:	
	ld	(ix+TRACK_Noise),a
	ld	(AY_regNOISE),a
	jp	_noLink
	
_noNoise:
	;-------------------------------
	;
	; VoiceLink
	;
	;-------------------------------
	ld	a,$60		; Mask only the noise bits
	and	e
	cp	$40		; 0100 000 is link value
	jp	nz,_noLink

	ld	a,(hl)				; get the new hw voice	
	inc	hl	
	set 	B_TRGVOI,(ix+TRACK_Flags)
	ld	(ix+TRACK_Voice),a			; set new voice to be loaded

_noLink
	;-------------------------------
	;
	; TONE
	;
	;-------------------------------
	bit	4,e		; do we have tone?
	jp	z,_pcAY_noTone

	;-- enable tone output
	ld	a,(FM_regMIXER)
	or	16
	ld	(FM_regMIXER),a
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
	jp	nc,.skip
	inc	b
.skip:
	ld	a,(hl)
	inc	hl
	add	b
	ld	b,a
	ld	(ix+TRACK_ToneAdd),b
_pcAY_noToneAdd:	
	;---- check for macro end
	bit	3,e		
	jp	z,.noend
	
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	

.noend:
	ld	(ix+TRACK_MacroPointer),l	;--- store pointer for next time
	ld	(ix+TRACK_MacroPointer+1),h	

	ex	af,af'			;';restore note offset
	ld	hl,(replay_tonetable)
	add	a,l
	ld	l,a
	jp	nc,.skip
	inc	h
.skip:
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

	;-----------------
	; FM Octave wrapper
	; enable slides over multiple octaves.
	; [BC] still contains tone slide add.
	;-----------------
	bit	B_PSGFM,d			;(ix+TRACK_Flags)
	ret	z				; skip wrapper for PSG
	
	bit	0,h
	jp	z,_wrap_lowcheck
_wrap_highcheck:
	ld	a,l
	cp	$60				; $46 is the strict limit
	ret	c				; stop if smaller	
	
	push	hl
	;--- Set 12 notes (1 octave) higher
	ld	a,(ix+TRACK_Note)
	add	12
	cp	96
	jr.	c,99f
	add	160		; wrap notes
99:
	ld	(ix+TRACK_Note),a
	;--- Set new ToneSlide Add
	rr	h
	rr	l			
	ld	h,0
	xor	a
	;--- shuffle regs
	ld	c,d		; store flags
	ld	d,b		; load DE with BC
	ld	e,c
	ex	de,hl
	sbc	hl,de				; subtract new wraped base tone - note tone to get delta slide add.
	ld	(ix+TRACK_cmd_ToneSlideAdd),l
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),h	
	pop	hl	
	;-- restore flags
	ld	d,c
	ret
	
_wrap_lowcheck:
	ld	a,l
	cp	$90				; $ad is the strict limit
	ret	nc				; stop if smaller	
	push	hl
	;--- Set 12 notes (1 octave) lower
	ld	a,(ix+TRACK_Note)
	sub	12
	cp	96
	jr.	c,99f
	sub	160				; wrap notes
99:
	ld	(ix+TRACK_Note),a
	;--- Set new ToneSlide Add	
	ld	h,0
	add	hl,bc	
	
	ld	(ix+TRACK_cmd_ToneSlideAdd),l
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),h	
	pop	hl	
	ret

	
_pcAY_noNoteActive:
	xor	a
	ld	(FM_regVOLE),a
	ret	

;---- This is for debugging only	
;stop_debug:
;	halt
;	jp	stop_debug	
;	
;PROCESS_CMDLIST:	
;[13]	dw 	stop_debug

_pcAY_cmdlist:
	dw	0					;d
	dw	0					;e
	dw	0					;f
	dw	_pcAY_cmd13_short_arp		;10
	dw	_pcAY_cmd14_fine_up		;11
	dw	_pcAY_cmd15_fine_down		;12
	dw	_pcAY_cmd19_note_delay		;13
	dw	_pcAY_cmdXX_note_cut		;14
	
	dw	_pcAY_cmd0_arpeggio		;15
	dw	_pcAY_cmd2_port_down		;16
	dw	_pcAY_cmd1_port_up		;17
	dw	_pcAY_cmd3_port_tone		;18
	dw	_pcAY_cmd4_vibrato		;19
	dw	_pcAY_cmd5_vibrato_port_tone	;1a
	dw	_pcAY_cmd6_vibrato_vol		;1b
	dw	_pcAY_cmd7_vol_slide		;1c
	dw	_pcAY_cmd8_macro_offset		;1d
	dw	0	;env shape

	dw	_pcAY_cmd0_arpeggio		;1e
	dw	_pcAY_cmd2_port_down		;1f
	dw	_pcAY_cmd1_port_up		;20
	dw	_pcAY_cmd3_port_tone		;21
	dw	_pcAY_cmd4_vibrato
	dw	_pcAY_cmd5_vibrato_port_tone
	dw	_pcAY_cmd6_vibrato_vol
	dw	_pcAY_cmd7_vol_slide
	dw	_pcAY_cmd8_macro_offset

			
_pcAY_cmd0_arpeggio:
	ld	a,(ix+TRACK_Timer)
	bit	0,a
	jp	z,.step2

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

	
.step2:
	bit	1,a
	jp	z,.step3

	;--- set y
	ld	(ix+TRACK_Timer),0
	ld	a,(ix+TRACK_cmd_0)
	and	0x0f
	ld	(ix+TRACK_cmd_NoteAdd),a		
	jp	_pcAY_commandEND
	
.step3:
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
	;DEBUG disabled
	jp	_pcAY_commandEND

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
	add	a,l
	ld	l,a
	jp	nc,.skip
	inc	h
.skip:
	ld	a,(hl)
	;apply depth
	ld	b,(ix+TRACK_cmd_4_depth)
.loop:
	srl	a
	djnz	.loop
;	and	$0f

	neg
	jp	z,_pcAY_cmd4_zero			; $ff00 gives strange result ;)	
	ld	(ix+TRACK_cmd_ToneAdd),a
	ld	(ix+TRACK_cmd_ToneAdd+1),0xff
	jp	_pcAY_commandEND

_pcAY_cmd4pos:	
;	and	$1f
	add	a,l
	ld	l,a
	jp	nc,.skip
	inc	h
.skip:
	ld	a,(hl)
	;apply depth
	ld	b,(ix+TRACK_cmd_4_depth)
.loop:
	srl	a
	djnz	.loop
_pcAY_cmd4_zero:
	ld	(ix+TRACK_cmd_ToneAdd),a
	ld	(ix+TRACK_cmd_ToneAdd+1),0
	jp	_pcAY_commandEND
		
	

_pcAY_cmd5_vibrato_port_tone:
	call	_pcAY_cmdasub
	jp	_pcAY_cmd3_port_tone
	
_pcAY_cmd6_vibrato_vol:
	call	_pcAY_cmdasub
	jp	_pcAY_cmd4_vibrato	

_pcAY_cmd7_vol_slide:
	call	_pcAY_cmdasub
	jp	_pcAY_commandEND

_pcAY_cmdasub:
	dec	(ix+TRACK_Timer)
	ret	nz
		
	; vol	slide
	ld	a,(ix+TRACK_cmd_A)
	ld	c,a
	and	$7f
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


_pcAY_cmdXX_note_cut:
	dec	(ix+TRACK_Timer)
	jp	nz,_pcAY_commandEND
	
	; stop note
	res	B_TRGCMD,d	; set	note bit to	0
	res	B_TRGNOT,d
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
;---------------
; F M
;---------------
	ld 	b,6	; 6 channels
	ld 	hl,TRACK_Chan3+17+TRACK_Flags
ptFM_voice_loop:
	bit 	B_TRGVOI,(hl)
	jp	z,0f
	;-- new voice	
	res 	B_TRGVOI,(hl)
	dec 	hl
	ld	a,(hl)
	cp	16
	jp	c,_ptFM_noSoftware
	
	;-- Check if same software voice is loaded.
	ld	c,a
	ld	a,(FM_SoftVoice)
	cp	c
	ld	a,c
	jp	z,_ptFM_noSoftware
	
	;--- Load a softwarevoice	
	ld	(FM_SoftVoice),a		; Store softvoice#
	ex 	de,hl
	ld	hl,(replay_voicebase)
	sub	16
	
	add	a		; x2
	add	a		; x4
	add	a		; x8
	add	a,l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	;--- copy data to FM custom voice register
	ld	c,8
	ld	a,$0
_tt_voice_fmloop:
	out	(FM_WRITE),a
	inc	a			; 4 cycles
	ex	af,af'		; 4 cycles	'
	ld	a,(hl)		; 7 cycles    the low byte
	out	(FM_DATA),a
	
	;--- delay
	push 	ix
	pop	ix
	nop
	nop	
	inc	hl
	ex	af,af'		
	dec	c
	jr.	nz,_tt_voice_fmloop	
	
	ex	de,hl
	xor	a			; Voice 0
_ptFM_noSoftware:
	ld	(hl),a		; Store the (HW)voice (0-15)
	inc	hl
0:
	; next channel
	ld	a,TRACK_REC_SIZE
	add	a,l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	djnz	ptFM_voice_loop
	

	;--- write volume register
	ld	de,FM_regVOLA
	ld	hl,TRACK_Chan3+17+TRACK_Voice
	ld	b,6		; 5 tracks
	ld	a,$30
;	ex	af,af'	;'
_tt_route_fmvol:
	ex	af,af'	; '
	ld	a,(hl)
	rla
	rla
	rla
	rla
	and	$f0
	ld	c,a
	
	ld	a,(de)	
	push	hl
	ld	hl,FM_regMIXER

	bit	7,(hl)
	jr	nz,33f
	ld	a,$0f			; silentio
33:
	rrc	(hl)
	pop	hl	
	
	and	0x0f
	or	c
	ex	af,af'		;'
	out	(FM_WRITE),a
	inc	a			; 4 cycles
	ex	af,af'		; 4 cycles	 '
	inc	de			; 6 cycles
	out	(FM_DATA),a

	ld	a,TRACK_REC_SIZE
	add	a,l
	ld	l,a
	jr.	nc,99f
	inc	h
99:
	ex	af,af'		;	'


	djnz	_tt_route_fmvol


	

	;--- write tone register
	ld	hl,FM_registers
	ld	de,TRACK_Chan3+17+TRACK_Flags
	ld	b,6		; 5 tracks
	ld	a,$10
;	ex	af,af'	;'
_tt_route_fmtone:

	out	(FM_WRITE),a
	ex	af,af'		; 4 cycles 	'
	ld	a,(hl)		; 13 cycles  	the low byte
	out	(FM_DATA),a
	inc	hl
	ld	a,(de)		; the flags (bit 4 has key)
	ld	c,a
	and	48			; preserve key and sustain

	;--- check for new note (keyon is off '0')
	bit	4,a
	jp	nz,99f		; skip if no keyoff

	or	(hl)
	ex	af,af'		;'
	add	a,$10
	out	(FM_WRITE),a
	ex	af,af'		; 4 cycles '
	out 	(FM_DATA),a

	or	16			; set keyon on '1'
	ld	(de),a		; store keyon
	ex	af,af'		;'
	jp 	88f	
			
	


99:
	or	(hl)			; add the tone high byte

	ex	af,af'		;'
	add	a,$10
	
	;--- delay to get 84 cycles at least
;	push ix
;	pop ix
;	nop
	
	
	
88:	out	(FM_WRITE),a
	ex	af,af'		; 4 cycles '
	inc	hl			; 6 cycles 
	out 	(FM_DATA),a
	ld	a,16
	or	c
	ld	(de),a		; write key flag enabled to disable retrigger of note
	ld	a,TRACK_REC_SIZE
	add	a,e
	ld	e,a
	jr.	nc,99f
	inc	d
99:
	ex	af,af'		;'
	sub	$f
	djnz	_tt_route_fmtone

	ret

	
	

	

	


