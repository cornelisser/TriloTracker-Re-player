;=================================
; TriloTracker Re-player SMS
; 
; Functions:
; 	replay_init
;	replay_pause
;	replay_fade_out
;================================
FM_WRITE:	equ	0x7c	; port to set fm reg nr.
FM_DATA:	equ	0x7d	; port to set fm data for reg	
;===============================
_REL:		equ	96	; = release
_SUS:		equ	97	; = sustain
_VOL:		equ	98	; = volume 1
_INS:		equ	113	; = instrument 1
_CMD:		equ	144	; = effect 0
_SPC:		equ	184	; = special commands
_EOT:		equ 	191	; = end of track
_WAIT:	equ	192	; = wait 1

	
;===========================================================
; ---	replay_init
; Initialize re-player data
; Only call this on start-up
; Input: none
;===========================================================
replay_init:
	ld	a,7
	call	replay_set_FM_balance
	ld	a,7
	call	replay_set_PSG_balance

	xor	a
	ld	(replay_mode),a	
	ld	(equalization_cnt),a
	ld	(equalization_flag),a	
	ld	(equalization_freq),a
	inc	a
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
	jp	z,_r_pause_disable
_r_pause_enable:
	;-- re-enable music decoding and processing
	ld	a,1
	ld	(replay_mode),a
	ret
	
_r_pause_disable:
	;-- stop decoding and processing music data
	xor	a
	ld	(replay_mode),a	
	ld	(FM_DRUM),a
	;--- Silence the SN7 PSG
	ld	(PSG_regVOLA),a
	ld	(PSG_regVOLB),a
	ld	(PSG_regVOLC),a
	ld	(PSG_regVOLN),a
	; release key on all FM channels
	ld	b,9
	ld	hl,FM_Registers+1
	ld	de,6
	xor	a
_r_pause_loop:
	ld	(hl),a
	add	hl,de
	djnz	_r_pause_loop
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
; ---	replay_set_FM_balance
; Set the main volume for the SCC chip. This enables for
; setting the balance between SCC en PSG as some MSX models 
; default balance differs. 
;
; in: [A] master volume (0-7) 0=halve volume, 7=full volume. 
;===========================================================	
replay_set_FM_balance:
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

	;--- Set voice base, drum base, instrument base and track pointers
	ld 	de,replay_voicebase
	ld	bc,22
	ldir
	ld	(replay_orderpointer),hl		; store pointer for next set
								; of track pointers
	;--- Initialize re-player variables.
	xor	a
	ld	(replay_speed_subtimer),a
	
	;--- Erase channel data	in RAM
	ld	bc,TRACK_REC_SIZE*8-1
	ld	hl,TRACK_Chan1
	ld	de,TRACK_Chan1+1
	ld	(hl),a
	ldir
	
	ld	(replay_arp_speed),a
	ld	(FM_DRUM_LEN),a
	ld	(FM_DRUM),a	
	
	ld	(PSG_regVOLA),a
	ld	(PSG_regVOLB),a	
	ld	(PSG_regVOLC),a
	ld	(PSG_regNOISE),a

;	;--- Set the tone table base
;	ld	hl,TRACK_ToneTable_PSG
;	ld	(replay_tonetable_PSG),hl
;	ld	hl,TRACK_ToneTable_FM
;	ld	(replay_tonetable_FM),hl

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
	ld	(FM_softvoice_req),a	
	ld	(FM_softvoice_set),a

	ld	a,16
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
	ld	a,(replay_chan_setup)
	and	a
	jp	z,99f
	xor 	a
	ld	(TRACK_Chan3+17+TRACK_Flags),a	
99:	

	call	replay_route
	
	; end	is here
	ld	a,1
	ld	(replay_mode),a	
	ret

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
	jr.	z,.PAL               		; if PAL process at any interrupt;

.NTSC:
	ld	hl,equalization_cnt  		; if NTSC call 5 times out of 6
	dec	(hl)
	jr.	nz,.PAL               		; skip music data processing one tic out of 6

	;--- Reset timer and raise equalization flag
	ld	a,6
	ld	(hl),a						
 	ld	(equalization_flag),a		

	call	process_data	
	xor	a
	ld	(equalization_flag),a
	ret
.PAL:                             
	;---- END SPEED EQUALIZATION	

		
	;--- The speed timer
	ld	hl,replay_speed_timer
	dec	(hl)

	jp	nz,_replay_check_patternend	
		
	;--- Re-init Timer == 0
	xor	a
	ld	bc,(replay_speed)		; [b]	sub-timer [c] speed
	srl	c				; bit	0 is halve speed step
	adc	a,a
	xor	b				; alternate	speed	to have halve speed.
	ld	(replay_speed_subtimer),a
	add	c
	ld	(replay_speed_timer),a
		
;===========================================================
; ---	replay_decodedata
; Process the pattern data 
;===========================================================
decode_data:
	;--- process the channels (tracks)
	
	ld	hl,TRACK_ToneTable_PSG			; Set the PSG note table
	ld	(replay_tonetable),hl	
	
.decode1:	
	ld 	hl,TRACK_Chan1+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode2

	ld	a,(TRACK_Chan1+17+TRACK_Flags)
	ld	d,a
	ld	a,(TRACK_Chan1+17+TRACK_Note)	
	ld	ix,TRACK_Chan1+17
	ld	bc,(TRACK_pointer1)
	call	decode_data_chan
	ld	(TRACK_pointer1),bc
	ld	a,d
	ld	(TRACK_Chan1+17+TRACK_Flags),a	

.decode2:	
	ld 	hl,TRACK_Chan2+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode3

	ld	a,(TRACK_Chan2+17+TRACK_Flags)
	ld	d,a
	ld	a,(TRACK_Chan2+17+TRACK_Note)	
	ld	ix,TRACK_Chan2+17
	ld	bc,(TRACK_pointer2)
	call	decode_data_chan
	ld	(TRACK_pointer2),bc
	ld	a,d				;'
	ld	(TRACK_Chan2+17+TRACK_Flags),a	

	;--- Set FM Tone table
	ld	hl,TRACK_ToneTable_FM
	ld	(replay_tonetable),hl


.decode3:
	ld 	hl,TRACK_Chan3+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode4

	ld	a,(TRACK_Chan3+17+TRACK_Flags)
	ld	d,a		;'
	ld	a,(TRACK_Chan3+17+TRACK_Note)	
	ld	ix,TRACK_Chan3+17
	ld	bc,(TRACK_pointer3)
	call	decode_data_chan
	ld	(TRACK_pointer3),bc
	ld	a,d				;'
	ld	(TRACK_Chan3+17+TRACK_Flags),a	

.decode4:
	ld 	hl,TRACK_Chan4+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode5

	ld	a,(TRACK_Chan4+17+TRACK_Flags)
	ld 	d,a		;'
	ld	a,(TRACK_Chan4+17+TRACK_Note)	
	ld	ix,TRACK_Chan4+17
	ld	bc,(TRACK_pointer4)
	call	decode_data_chan
	ld	(TRACK_pointer4),bc
	ld	a,d			;'
	ld	(TRACK_Chan4+17+TRACK_Flags),a	

.decode5:
	ld 	hl,TRACK_Chan5+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode6

	ld	a,(TRACK_Chan5+17+TRACK_Flags)
	ld	d,a		;'
	ld	a,(TRACK_Chan5+17+TRACK_Note)	
	ld	ix,TRACK_Chan5+17
	ld	bc,(TRACK_pointer5)
	call	decode_data_chan
	ld	(TRACK_pointer5),bc
	ld	a,d			;'
	ld	(TRACK_Chan5+17+TRACK_Flags),a	

.decode6:
	ld 	hl,TRACK_Chan6+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode7

	ld	a,(TRACK_Chan6+17+TRACK_Flags)
	ld	d,a		;'
	ld	a,(TRACK_Chan6+17+TRACK_Note)	
	ld	ix,TRACK_Chan6+17
	ld	bc,(TRACK_pointer6)
	call	decode_data_chan
	ld	(TRACK_pointer6),bc
	ld	a,d				;'
	ld	(TRACK_Chan6+17+TRACK_Flags),a	

.decode7:
	ld 	hl,TRACK_Chan7+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode8

	ld	a,(TRACK_Chan7+17+TRACK_Flags)
	ld	d,a		;'
	ld	a,(TRACK_Chan7+17+TRACK_Note)	
	ld	ix,TRACK_Chan7+17
	ld	bc,(TRACK_pointer7)
	call	decode_data_chan
	ld	(TRACK_pointer7),bc
	ld	a,d				;'
	ld	(TRACK_Chan7+17+TRACK_Flags),a	

.decode8:
	ld 	hl,TRACK_Chan8+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode_end

	ld	a,(TRACK_Chan8+17+TRACK_Flags)
	ld	d,a		;'
	ld	a,(TRACK_Chan8+17+TRACK_Note)	
	ld	ix,TRACK_Chan8+17
	ld	bc,(TRACK_pointer8)
	call	decode_data_chan
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
process_data:
	ld	a,$fa ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
	out	(0x99),a
	ld	a,7+128
	out	(0x99),a	



	; Set tone table
	ld	hl,TRACK_ToneTable_PSG
	ld	(replay_tonetable),hl

	;--- Initialize PSG Mixer and volume
	xor	a
	ld	(FM_regMIXER),a
	ld	(PSG_regVOLN),a
	ld	(PSG_regVOLA),a
	ld	(PSG_regVOLB),a
	ld	(PSG_regVOLC),a
	
	;--- PSG balance
	ld	hl,(replay_mainPSGvol)
	ld	(replay_mainvol),hl
	
	;--------------------
	;--- Process track 1
	;--------------------
	ld	ix,TRACK_Chan1+17
	ld	a,(TRACK_Chan1+17+TRACK_Flags)
	ld	d,a
	call	process_data_chan
	ld	(PSG_regToneA),hl
	ld	a,(FM_regVOLF)
	ld	(PSG_regVOLA),a	

	;--------------------
	;--- Process track 2
	;--------------------
	ld	ix,TRACK_Chan2+17
	ld	a,(TRACK_Chan2+17+TRACK_Flags)
	ld	d,a
	call	process_data_chan
	ld	(PSG_regToneB),hl
	ld	a,(FM_regVOLF)
	ld	(PSG_regVOLB),a	

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
	call	process_data_chan
	ld	(PSG_regToneC),hl
	ld	a,(FM_regVOLF)
	ld	(PSG_regVOLC),a

	;-- Convert mixer to AY
	ld	a,(FM_regMIXER)		
	srl	a
	srl	a
	xor	0x3f
	ld	(PSG_regMIXER),a

	; Set tone table
	ld	hl,TRACK_ToneTable_FM
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
	ld	(PSG_regMIXER),a

	; Set tone table
	ld	hl,TRACK_ToneTable_FM
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
	call	process_data_chan
	ld	(FM_regToneA),hl
	ld	a,(FM_regVOLF)
	ld	(FM_regVOLA),a	


_rdd_cont:
	;--------------------
	;--- Process track 4
	;--------------------
	ld	ix,TRACK_Chan4+17
	ld	a,(TRACK_Chan4+17+TRACK_Flags)
	ld	d,a
	call	process_data_chan
	ld	(FM_regToneB),hl
	ld	a,(FM_regVOLF)
	ld	(FM_regVOLB),a	

	;--------------------
	;--- Process track 5
	;--------------------	
	ld	ix,TRACK_Chan5+17
	ld	a,(TRACK_Chan5+17+TRACK_Flags)
	ld	d,a
	call	process_data_chan
	ld	(FM_regToneC),hl
	ld	a,(FM_regVOLF)
	ld	(FM_regVOLC),a	

	;--------------------
	;--- Process track 6
	;--------------------
		
	ld	ix,TRACK_Chan6+17
	ld	a,(TRACK_Chan6+17+TRACK_Flags)
	ld	d,a
	call	process_data_chan
	ld	(FM_regToneD),hl
	ld	a,(FM_regVOLF)
	ld	(FM_regVOLD),a	

	;--------------------
	;--- Process track 7
	;--------------------
	ld	ix,TRACK_Chan7+17
	ld	a,(TRACK_Chan7+17+TRACK_Flags)
	ld	d,a
	call	process_data_chan
	ld	(FM_regToneE),hl
;	ld	a,d
;	ld	(TRACK_Chan7+17+TRACK_Flags),a	
	ld	a,(FM_regVOLF)
	ld	(FM_regVOLE),a		

	;--------------------
	;--- Process track 8
	;--------------------		
	ld	ix,TRACK_Chan8+17
	ld	a,(TRACK_Chan8+17+TRACK_Flags)
	ld	d,a
	call	process_data_chan
	ld	(FM_regToneF),hl
	

	;--------------------
	; Fade out processing
	;--------------------
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
	ld	hl,PSG_regVOLA
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



;--------------------
	
	
;--------------------
_replay_check_patternend:
	ld 	a,(TRACK_Chan1+17+TRACK_Delay)
	dec	a
	jp	nz,process_data
	
	ld	hl,(TRACK_pointer1)
	ld	a,(hl)
	
	;--- check for end of pattern
	cp	191	
	jp	nz,process_data

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
	jp	process_data












;===========================================================
; ---	decode_data_chan
; Process the channel data
; 
; in BC is the pointer to the	data
;    D contains flags.
;===========================================================	
decode_data_chan:
	;--- initialize data
	ld	a,(ix+TRACK_Note)
	ld	(replay_previous_note),a

	;=============
	; Note 
	;=============
	ld	a,(bc)
	cp	_REL
	jp	c,_replay_decode_note
	cp	_SUS
	jp	c,_replay_decode_release
	jp	z,_replay_decode_sustain
_rdn2:cp	_INS
	jp	c,_replay_decode_vol
_rdv2:cp	_CMD
	jp	c,_replay_decode_ins
_rdi2:
	cp	_EOT
	jp	nc,_replay_decode_delay
	jp	c,_replaydecode_cmd

_rdn:
	cp	_SUS
	jp	c,_rd_delay
	jp	_rdn2

_rdi:
	cp	_CMD
	jp	c,_rd_delay
	jp	_rdi2

_rdv:
	cp	_INS
	jp	c,_rd_delay
	jp	_rdv2
_rdc:
	inc	bc
_rdc_noinc:	
	ld	a,(bc)
	cp	_EOT
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
	set 	B_KEYON,d

	inc	bc
	ld	a,(bc)
	jp	_rdn
	
_replay_decode_release:
	res	B_ACTNOT,d				; reset note bit to	0
	res	B_SUST,d				; rest sustain
	res	B_KEYON,d				; reset Key on

	inc	bc
	ld	a,(bc)
	jp	_rdn	
	
_replay_decode_sustain:
	res	B_ACTNOT,d				; reset note bit to	0
	set	B_SUST,d				; rest sustain
	res	B_KEYON,d				; reset Key on

	inc	bc
	ld	a,(bc)
	jp	_rdn

_replay_decode_ins:
	sub	_INS
	cp	(ix+TRACK_Instrument)
	jp	z,.skip_ins
	
	;--- instrument change found	
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
	;--- Store the macro start
	ld	(ix+TRACK_MacroPointer),l
	ld	(ix+TRACK_MacroPointer+1),h	
	;--- Store the macro re-start
	ld	(ix+TRACK_MacroStart),l
	ld	(ix+TRACK_MacroStart+1),h		
	;--- Set the software voice (if needed)

	cp	16
	jp	c,.skip_soft
	; software voice found
	sub	16
	ld 	(FM_softvoice_req),a
	xor 	a
	
.skip_soft:
	ld	(ix+TRACK_Voice),a

	
.skip_ins:	
	inc	bc
	ld	a,(bc)
	jp	_rdi



_replay_decode_vol:
	sub	_VOL-1
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
	sub	_WAIT-1
	jp	z,_rd_delay		; EOT found
	ld	(ix+TRACK_Delay),a
	ld	(ix+TRACK_prevDelay),a

	inc	bc
	ret




_replaydecode_cmd:
	sub	_CMD
	
	;[Debug]
	cp	22
	jp	c,99f
	di
	halt
99:
	;[Debug end]
	
	ld	e,a				; store command for later
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
	; Primary
	dw	decode_cmd0_arpeggio
	dw	decode_cmd1_port_up
	dw	decode_cmd2_port_down
	dw	decode_cmd3_port_tone
	dw	decode_cmd4_vibrato
	dw	decode_cmd5_vibrato_port_tone
	dw	decode_cmd6_vibrato_vol	
	dw	decode_cmd7_vol_slide
	dw	decode_cmd8_note_cut
	dw	decode_cmd9_note_delay
	; Secondary
	dw	decode_cmd10_command_end
	dw	decode_cmd11_drum
	dw	decode_cmd12_short_arp
	dw	decode_cmd13_fine_up
	dw	decode_cmd14_fine_down
	dw	decode_cmd15_notelink
	dw	decode_cmd16_track_detune
	dw	decode_cmd17_trigger
	dw	decode_cmd18_speed
	; SoundChip Specific
	dw	decode_cmd19_tone_panning
	dw	decode_cmd20_noise_panning
	dw	decode_cmd21_chan_setup	
	

decode_cmd0_arpeggio:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	ld	(ix+TRACK_cmd_0),a
	ld	(ix+TRACK_Command),e
	set	B_TRGCMD,d
	ld	(ix+TRACK_Timer),0
	ld	(ix+TRACK_Step),2
	jp	_rdc


	
decode_cmd1_port_up:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	ld	(ix+TRACK_Command),e
	ld	(ix+TRACK_cmd_1),a
	set	B_TRGCMD,d
	jp	_rdc
	
	 
	 
decode_cmd2_port_down:
	; in:	[A] contains the paramvalue
	; 
	; ! do1_ not change	[BC] this is the data pointer
	;--------------------------------------------------
	ld	(ix+TRACK_Command),e
	ld	(ix+TRACK_cmd_2),a
	set	B_TRGCMD,d
	jp	_rdc


decode_cmd3_port_tone:
	; in:	[A] contains the param value
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	ld	(ix+TRACK_Command),e
	set	B_TRGCMD,d
	set	B_ACTNOT,d
	
	ld	(ix+TRACK_cmd_3),a
	ld	(ix+TRACK_Timer),2

;decode_cmd3_port_tone_cont:
	;--- Check if we have a	note on the	same event
	bit	B_TRGNOT,d
	jp	z,_rdc

	set	B_KEYON,d
	res 	B_TRGNOT,d

_decode_newNote:
	;-- get the	previous note freq
	ld	a,(replay_previous_note)
	add	a

	exx
;	bit	B_PSGFM,d
;	jp	nz,_cmd3_fm
;_cmd3_psg:
;	ld	hl,(replay_tonetable_PSG)	;TRACK_ToneTable
;	jp	99f
;_cmd3_fm:
;	ld	hl,(replay_tonetable_FM)	;TRACK_ToneTable
;
;99:
	ld	hl,(replay_tonetable)
	
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

	
decode_cmd4_vibrato:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; Vibrato with speed x and depth y.	This command 
	; will oscillate the frequency of the current note
	; with a sine wave. 
	;
	; high 3 bits is depth (0-7) (direct offset in sinetable)
	; low 5 bits is the speed. 1-16
	;--- Init values
	ld	(ix+TRACK_Command),e
	ld	e,a
	
	;--- Set the speed
	and	$0f
	jp	z,.depth
	ld	(ix+TRACK_cmd_4_step),a	
	neg	
	ld	(ix+TRACK_Step),a	
	
.depth:
	;-- set the depth
	ld	a,e
	and	$f0
	jp	z,.end		; set depth when 0 only when command was not active.

	sub	16
	ld	hl,TRACK_Vibrato_sine
	add	a,a
	jp	nc,99f
	inc	h
99:	
	add	a,l
	ld 	l,a
	jp	nc,99f
	inc	h
99:
	ld	(ix+TRACK_cmd_4_depth),l
	ld	(ix+TRACK_cmd_4_depth+1),h
	
.end:	
	set	B_TRGCMD,d
	jp	_rdc	


decode_cmd5_vibrato_port_tone:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; portTone	+ volumeslide
	;--- Init values
decode_cmd6_vibrato_vol:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
decode_cmd7_vol_slide:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; slide the	volume up or down	1 step.
	; The	x or y param  set	the delay*2	(x=up,y=down)
	; With A00 the previous	value	is used.
	
	ld	(ix+TRACK_cmd_A),a
	set	B_TRGCMD,d
	jp	_rdc

decode_cmd8_note_cut:
	set	B_TRGCMD,d
	inc	a
	ld	(ix+TRACK_Timer),a		; set	the timer to param y
	jp 	_rdc


decode_cmd9_note_delay:
	bit	B_TRGNOT,d		; is there a note	in this eventstep?
	jp	z,_rdc

	set	B_TRGCMD,d					; command active
	inc	a
	ld	(ix+TRACK_Timer),a			; set	the timer to param y
	ld	a,(ix+TRACK_Note)
	ld	(ix+TRACK_cmd_E),a			; store the	new note
	ld	a,(replay_previous_note)
	ld	(ix+TRACK_Note),a				; restore the old	note
	res	B_TRGNOT,(ix+TRACK_Flags)		; reset any	triggernote

	jp	_rdc	


decode_cmd10_command_end:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	res	B_TRGCMD,d
	jp	_rdc_noinc
	

decode_cmd11_drum:
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
	

decode_cmd12_short_arp:
	ld	(ix+TRACK_cmd_E),a		; store the halve not to add
	ld	(ix+TRACK_Timer),0

	set	B_TRGCMD,d		; command active
	jp	_rdc	
	
	
decode_cmd13_fine_up:
decode_cmd14_fine_down:
	ld	(ix+TRACK_cmd_E),a
	ld	(ix+TRACK_Timer),2
	set	B_TRGCMD,d		; command active
	jp	_rdc	

decode_cmd15_notelink:
	res	B_TRGNOT,d
	set 	B_KEYON,d
	dec 	bc
	jp	_rdc	

decode_cmd16_track_detune:
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



decode_cmd17_trigger:
	ld	(replay_trigger),a
	jp	_rdc		


decode_cmd18_speed:
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
	
decode_cmd19_tone_panning:
	jp	_rdc	

decode_cmd20_noise_panning:
	jp	_rdc

decode_cmd21_chan_setup:
	jp	_rdc



;===========================================================
; ---replay_route
; Output the data	to the CHIP	registers
; 
; in HL is the current tone freq
; in D is TRACK_FLAGS  
;===========================================================
process_data_chan:

	;-- set the	mixer	right
	ld	hl,FM_regMIXER   
	rrc	(hl)

	;===== 
	; Speed equalization check
	;=====
	ld	a,(equalization_flag)			; check for speed equalization
	and	a
	jp	nz,process_noNoteTrigger		; Only process instruments macro
	
	
	;=====
	; COMMAND
	;=====
	ld	(ix+TRACK_cmd_NoteAdd),0			; Always reset note add
	
	bit	B_TRGCMD,d	;(ix+TRACK_Flags)
	jp	z,process_note

	ld	hl,process_cmd_list
	ld	a,(ix+TRACK_Command)
;[DEBUG]	
	cp	10
	jp	c,99f
	di
1:	halt
	jp	1b

99:
;[/DEBUG]
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


process_commandEND:
process_note:

	;=====
	; NOTE
	;=====
	;--- Check if we need to trigger a new note
	bit	B_TRGNOT,d	;(ix+TRACK_Flags)
	jp	z,process_noNoteTrigger
	

process_triggerNote:	
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

process_noNoteTrigger:
	;Get note freq
	ld	a,(ix+TRACK_Note)
	add	a,(ix+TRACK_cmd_NoteAdd)
	add	a
	ex	af,af'			;'store the	note offset

	;==============
	; Macro instrument
	;==============
	bit	B_ACTNOT,d			
	jp	z,process_noNoteActive
	
	;--- Get the macro len and loop
	ld	l,(ix+TRACK_MacroPointer)
	ld	h,(ix+TRACK_MacroPointer+1)

	ld	e,(hl)				; info byte
	inc	hl
	bit	3,e					; Volume change
	jp	nz,_vol_change
	ld	a,(ix+TRACK_VolumeAdd)
	jp	_noVolumeChange
	
	;--- Volume change
_vol_change:
	ld	a,(hl)
	inc	hl
	
	bit	2,e
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
;	jp	z,_noEnv		; if not set then normal volume calculation
;	ld	a,16			; set volume to 16 == envelope
;	ld	(FM_regVOLF),a
;	jp	_noVolume	
	
_noVolumeChange:
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
	bit 	7,e			; test if noise value
	jp	z,_noNoise

	;--- prevent FM and noise
	ld	a,(hl)		; get the value	
	inc	hl	
	
	bit	B_PSGFM,d		;(ix+TRACK_Flags)
	jp	nz,_noNoise		; Noise and Link not at the same time
	
	;--- Set the mixer for noise
;	ld	a,(FM_regMIXER)
;	or	128
;	ld	(FM_regMIXER),a

;	bit	5,e
;	jp	z,_noLink
;	ld	a,(hl)	; get the deviation	
;	inc	hl
;	bit	6,e
;	jp	z,.skip
;	add	(ix+TRACK_Noise)
;.skip:	
	ld	(PSG_regNOISE),a
	
	
_noNoise:
	;-------------------------------
	;
	; NOISE volume
	;
	;-------------------------------
	bit 	6,e			; test if noise volume
	jp	z,_noNoiseVol
	
	;--- prevent FM and noise
	ld	a,(hl)		; get the volume	
	inc	hl
	
	bit	B_PSGFM,d		;(ix+TRACK_Flags)
	jp	nz,_noLink		; Noise and Link not at the same time
	
	or	(ix+TRACK_Volume)
	;--- apply main volume balance
	ld	bc,(replay_mainvol)
	add	a,c
	ld	c,a
	jp	nc,.skip
	inc	b
.skip:
	ld	a,(bc)
	ld	(PSG_regVOLN),a
	jp	_noLink


_noNoiseVol
	;-------------------------------
	;
	; VoiceLink
	;
	;-------------------------------
	bit 	1,e
	jp	z,_noLink

	ld	a,(hl)					; get the new hw voice	
	inc	hl
	
	set 	B_TRGVOI,(ix+TRACK_Flags)
	ld	(ix+TRACK_Voice),a			; set new voice to be loaded



_noLink
	;-------------------------------
	;
	; TONE 
	;
	;-------------------------------


	ld	b,(ix+TRACK_ToneAdd)	; get	the current	deviation	
	ld	c,(ix+TRACK_ToneAdd+1)

	bit 	4,e
	jp	z,process_noToneAdd
	
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
	
	
process_noToneAdd:	
	;---- check for macro end
	bit	0,e		
	jp	z,.noend
	
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a

.noend:
	;--- Set the mixer bit (T)
	bit	5,e		; do we have tone?
	jp	z,process_noToneBit

	;-- enable tone output
	ld	a,(FM_regMIXER)
	or	16
	ld	(FM_regMIXER),a
	
process_noToneBit:	
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

	ld	a,d
	ld	(ix+TRACK_Flags),d
	; set	the detune.
	ld	(_SP_Storage),sp
	ld	sp,ix
	pop	de		; cmd detune
	add	hl,de
	pop	bc		; cmd toneadd
	add	hl,bc
	pop	bc		; cmd tone slide add
	add	hl,bc
	ld	sp,(_SP_Storage)

	;-----------------
	; FM Octave wrapper
	; enable slides over multiple octaves.
	; [DE] still contains tone slide add.
	;-----------------
	bit	B_PSGFM,a			;(ix+TRACK_Flags)
	ret	z				; skip wrapper for PSG

	bit	0,h
	jp	z,_wrap_lowcheck
_wrap_highcheck:
	ld	a,l
	cp	$5a				; $5a is the strict limit
	jp	c,_wrap_skip		; stop if smaller	
	
	push	hl
	push	de
	
	;--- Set new tone value for same note 1 octave lower
	srl	a
	bit 	0,h		; test 9th bit
	jp	z,99f
	add	128
99:
	ld	e,a
;	ld	d,0
	;--- set octave higher
	ld	a,h
	and	$fe
	add	$02
;	add	d		; merge with tone value
	ld	d,a
	;--- get difference between now and new
	ex	de,hl
	xor	a		; reset carry flag
	sbc	hl,de
	;--- add difference to current slide
	pop	de		; restore slide
	add	hl,de
	ld	(ix+TRACK_cmd_ToneSlideAdd),l
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),h	
	pop	hl	
	jr.	_wrap_skip
	
_wrap_lowcheck:
	ld	a,l
	cp	$3b		; $ad is the strict limit
	jr.	nc,_wrap_skip		; stop if smaller


	push 	hl		; store freq
	push	de		; store slide
	;--- set new tone value for same note (but octave lower)
	add	a,a		; multiply by 2 in de 
	ld	e,a
	ld	d,0
	jp	nc,99f
	inc	d	
99:
	;--- set octave higher
	ld	a,h
	and	$fe
	sub	$02
	add	d		; merge with tone value
	ld	d,a
	;--- get difference between now and new
	ex	de,hl
	xor	a		; reset carry flag
	sbc	hl,de
	;--- add difference to current slide
	pop	de		; restore slide
	add	hl,de	
	
	ld	(ix+TRACK_cmd_ToneSlideAdd),l
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),h	
	pop	hl	
	
_wrap_skip:
	; replace the last pushed value on stack
	pop	de
	ex	de,hl
	ld	(hl),e
	inc	hl
	ld	a,d	; reset key on and sustain
	and	$0f
	ld	d,a
	ld	a,(ix+TRACK_Flags)	; Add the sustain and key bits.
	and	16+32	
	or	d
	ld	(hl),a
	ret
	
	
process_noNoteActive:
	xor	a
	ld	(FM_regVOLF),a
	ld	(ix+TRACK_Flags),d
	ret	

;---- This is for debugging only	
;stop_debug:
;	halt
;	jp	stop_debug	
;	
;PROCESS_CMDLIST:	
;[13]	dw 	stop_debug

process_cmd_list:
	; This list only contains the primary commands.
	dw	process_cmd0_arpeggio		
	dw	process_cmd1_port_up		
	dw	process_cmd2_port_down		
	dw	process_cmd3_port_tone		
	dw	process_cmd4_vibrato		
	dw	process_cmd5_vibrato_port_tone	
	dw	process_cmd6_vibrato_vol		
	dw	process_cmd7_vol_slide		
	dw	process_cmd8_note_cut		
	dw	process_cmd9_note_delay		

			
process_cmd0_arpeggio:
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
	jp	process_commandEND

	
.step2:
	bit	1,a
	jp	z,.step3

	;--- set y
	ld	(ix+TRACK_Timer),0
	ld	a,(ix+TRACK_cmd_0)
	and	0x0f
	ld	(ix+TRACK_cmd_NoteAdd),a		
	jp	process_commandEND
	
.step3:
	;--- set none
	ld	(ix+TRACK_Timer),1
	jp	process_commandEND
	

	
process_cmd1_port_up:
	ld	a,(ix+TRACK_cmd_1)	

	ld	b,a
	ld	a,(ix+TRACK_cmd_ToneSlideAdd)
	add	b
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	jp	nc,process_commandEND
	inc	(ix+TRACK_cmd_ToneSlideAdd+1)
	jp	process_commandEND

	
process_cmd2_port_down:	
	ld	a,(ix+TRACK_cmd_2)
	ld	b,a
	ld	a,(ix+TRACK_cmd_ToneSlideAdd)
	sub	b
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	jp	nc,process_commandEND
	dec	(ix+TRACK_cmd_ToneSlideAdd+1)
	jp	process_commandEND
	

process_cmd3_port_tone:
	ld	a,(ix+TRACK_cmd_3)
	ld	l,(ix+TRACK_cmd_ToneSlideAdd)
	ld	h,(ix+TRACK_cmd_ToneSlideAdd+1)
	bit	7,h
	jp	z,process_cmd3_sub
process_cmd3_add:
	;pos slide
	add	a,l
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	jp	nc,process_commandEND
	inc	h					
	bit	7,h
	jp	z,process_cmd3_stop			; delta turned pos ?
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),h
	jp	process_commandEND
process_cmd3_sub:
	;negative slide	
	ld	c,a
	xor	a
	ld	b,a
	sbc	hl,bc
	bit	7,h
	jp	nz,process_cmd3_stop			; delta turned neg ?
	ld	(ix+TRACK_cmd_ToneSlideAdd),l
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),h
	jp	process_commandEND
process_cmd3_stop:	
	res	B_TRGCMD,d		;(ix+TRACK_Flags)
	ld	(ix+TRACK_cmd_ToneSlideAdd),0
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),0	
	jp	process_commandEND

	;=================================
	;
	; Vibrato	
	;
	;=================================
process_cmd4_vibrato:
	ld	l,(ix+TRACK_cmd_4_depth)
	ld	h,(ix+TRACK_cmd_4_depth+1)

	;--- Get next step
	ld	a,(IX+TRACK_Step)
	add	(ix+TRACK_cmd_4_step)
	and	$3F			; max	64
	ld	(ix+TRACK_Step),a
	
	bit	5,a			; step 32-63 the neg	
	jp	z,.pos	
	
.neg:
	and	$1f	; make it 32 steps again
	add	a,l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	ld	a,(hl)
	neg
	jp	z,.zero			; $ff00 gives strange result ;)	
	ld	(ix+TRACK_cmd_ToneAdd),a
	ld	(ix+TRACK_cmd_ToneAdd+1),0xff
	jp	process_commandEND	

.pos:
	add	a,l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	ld	a,(hl)
.zero:	
	ld	(ix+TRACK_cmd_ToneAdd),a
	ld	(ix+TRACK_cmd_ToneAdd+1),0
	jp	process_commandEND	


;	ld	hl,(replay_vib_table)
;	;--- Get next step
;	ld	a,(IX+TRACK_Step)
;	add	(ix+TRACK_cmd_4_step)
;	and	$3F			; max	64
;	ld	(ix+TRACK_Step),a
;	
;	bit	5,a			; step 32-63 the neg	
;	jp	z,process_cmd4pos
;
;; neg	
;	and	$1f
;	add	a,l
;	ld	l,a
;	jp	nc,.skip
;	inc	h
;.skip:
;	ld	a,(hl)
;	;apply depth
;	ld	b,(ix+TRACK_cmd_4_depth)
;.loop:
;	srl	a
;	djnz	.loop
;;	and	$0f
;
;	neg
;	jp	z,process_cmd4_zero			; $ff00 gives strange result ;)	
;	ld	(ix+TRACK_cmd_ToneAdd),a
;	ld	(ix+TRACK_cmd_ToneAdd+1),0xff
;	jp	process_commandEND
;
;process_cmd4pos:	
;;	and	$1f
;	add	a,l
;	ld	l,a
;	jp	nc,.skip
;	inc	h
;.skip:
;	ld	a,(hl)
;	;apply depth
;	ld	b,(ix+TRACK_cmd_4_depth)
;.loop:
;	srl	a
;	djnz	.loop
;process_cmd4_zero:
;	ld	(ix+TRACK_cmd_ToneAdd),a
;	ld	(ix+TRACK_cmd_ToneAdd+1),0
;	jp	process_commandEND
		
	

process_cmd5_vibrato_port_tone:
	call	process_cmdasub
	jp	process_cmd3_port_tone
	
process_cmd6_vibrato_vol:
	call	process_cmdasub
	jp	process_cmd4_vibrato	

process_cmd7_vol_slide:
	call	process_cmdasub
	jp	process_commandEND


process_cmdasub:
	dec	(ix+TRACK_Timer)
	ret	nz
		
	; vol	slide
	ld	a,(ix+TRACK_cmd_A)
	ld	c,a
	and	$7f
	ld	(ix+TRACK_Timer),a

	ld	a,(IX+TRACK_cmd_VolumeAdd)
	bit	7,c
	jp	z,process_cmda_inc
process_cmda_dec:
	cp	0x88
	ret	z
	sub	8
	ld	(ix+TRACK_cmd_VolumeAdd),a
	ret
process_cmda_inc:
	cp	0x78
	ret	z
	add	8	
	ld	(ix+TRACK_cmd_VolumeAdd),a
	ret


process_cmd8_note_cut:
	dec	(ix+TRACK_Timer)
	jp	nz,process_commandEND
	
	; stop note
	res	B_TRGCMD,d	; set	note bit to	0
	res	B_TRGNOT,d
	jp	process_commandEND		
	
process_cmd9_note_delay:
	; note delay
	dec	(ix+TRACK_Timer)
	jp	nz,process_commandEND	; no delay yet

	; trigger note
	ld	a,(ix+TRACK_cmd_E)		
	ld	(ix+TRACK_Note),a		; set	the note val
	set	B_TRGNOT,d	;(ix+TRACK_Flags)		; set	trigger note flag
	res	B_TRGCMD,d	;(ix+TRACK_Flags)		; reset tiggger cmd flag
	
	jp	process_commandEND	



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
route_SN:
;	ld	a,(_CONFIG_PSGPORT)
	ld	c,$3f
99:	
	; vol chan 1
	ld	a,(PSG_regVOLA)
	inc	a
	neg
	and	$0f
	or	10010000b
	out	(c),a	
	
	; vol chan 2
	ld	a,(PSG_regVOLB)
	inc	a
	neg
	and	$0f
	or	10110000b
	out	(c),a		
		
;	;-- check if we need 3rd psg
;	ld	a,10110000b
;	cp	b
;	jp	z,99f
		
	; vol chan 3
	ld	a,(PSG_regVOLC)
	inc	a
	neg
	and	$0f
	or	11010000b 
	out	(c),a			

;99:	
	;--- next reg
	; vol noise
	ld	a,(PSG_regVOLN)
	inc	a
	neg
	and	$0f
	or	11110000b

	out	(c),a	

	; noise chan 
	ld	hl,PSG_regNOISEold
	ld	a,(PSG_regNOISE)
	cp	(hl)
	jp	z,0f
	ld	(hl),a
	ld	a,11100000b
	;or	11100000b
	out	($3f),a
0:
	; tone chan a
	ld	bc,(PSG_regToneA)
	ld	a,c
	and	$0f
	or	10000000b
	out	($3f),a	
	rl	c
	rl	b
	rl	c
	rl	b
	rl	c
	rl	b
	rl	c
	rl	b
	ld	a,00111111b
	and	b
	out	($3f),a		
	
	
	; tone chan b
	ld	bc,(PSG_regToneB)
	ld	a,c
	and	$0f
	or	10100000b
	out	($3f),a	
	rl	c
	rl	b
	rl	c
	rl	b
	rl	c
	rl	b
	rl	c
	rl	b
	ld	a,00111111b
	and	b
	out	($3f),a	
	
	; tone chan c
	ld	bc,(PSG_regToneC)
	ld	a,c
	and	$0f
	or	11000000b
	out	($3f),a	
	rl	c
	rl	b
	rl	c
	rl	b
	rl	c
	rl	b
	rl	c
	rl	b
	ld	a,00111111b
	and	b
	out	($3f),a	

route_gg:
	;==== output the GG stereo panning
	ld	a,(GG_panning)
;	out	($06),a






;	;--- Push values to AY HW
;	ld	b,0
;	ld	c,0xa0
;	ld	hl,PSG_registers
;_comp_loop:	
;	out	(c),b
;	ld	a,(hl)
;	add	1
;	out	(0xa1),a
;	inc	hl
;	ld	a,(hl)
;	adc	a,0
;	inc	b
;	out	(c),b	
;	inc	hl
;	out	(0xa1),a	
;	inc	b
;	ld	a,6
;	cp	b
;	jp	nz,_comp_loop
;	
;	ld	a,b	
;	
;	
;_ptPSG_loop:
;	out	(c),a
;	inc	c
;	outi
;	dec	c
;	inc	a
;	cp	13
;	jr	nz,_ptPSG_loop
;
;	ld	b,a
;	ld	a,(hl)
;	and	a
;	jp	z,_ptPSG_noEnv
;	out	(c),b
;	inc	c
;	out 	(c),a
;	ld	(hl),0	;reset the envwrite
;	
;	
;_ptPSG_noEnv:




;---------------
; F M
;---------------

	; Check if we need to load a software voice
	ld	hl,FM_softvoice_req
	ld	a,(hl)
	inc	hl
	cp	(hl)
	jp	z,_tt_route_fm_novoice
	
	ld	(hl),a

	ld	hl,(replay_voicebase)
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
	



_tt_route_fm_novoice:
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
	ld	hl,FM_Registers
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

	;--- check for new note (key on is off '0')
	bit	4,a
	jp	nz,99f		; skip if no key off

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
debug:
	ret

	
	

	

	

