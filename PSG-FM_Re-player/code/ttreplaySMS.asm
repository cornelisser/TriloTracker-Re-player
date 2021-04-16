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
_EOT:		equ	191	; = end of track
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
	ret nc
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
	ld	(FM_DRUM_ACTIVE),a
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
;	ld	(FM_softvoice_set),a

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
	ld	hl,PSG_regToneA
	call	process_data_chan
	ld	a,(FM_regVOLF)
	ld	(PSG_regVOLA),a	

	;--------------------
	;--- Process track 2
	;--------------------
	ld	ix,TRACK_Chan2+17
	ld	a,(TRACK_Chan2+17+TRACK_Flags)
	ld	d,a
	ld	hl,PSG_regToneB
	call	process_data_chan
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
	ld	hl,PSG_regToneC
	call	process_data_chan
	ld	a,(FM_regVOLF)
	ld	(PSG_regVOLC),a

	;-- Convert mixer to AY
	ld	a,(FM_regMIXER)		
	srl	a
	srl	a
	xor	0x3f
	ld	(PSG_regMIXER),a
	xor	a
	ld	(FM_regMIXER),a

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
	ld	hl,FM_regToneA
	call	process_data_chan

	ld	a,(FM_regVOLF)
	ld	d,a
	ld	a,(TRACK_Chan3+17+TRACK_Voice)
	and	$f0
	or	d
	ld	(FM_regVOLA),a	


_rdd_cont:
	;--------------------
	;--- Process track 4
	;--------------------
	ld	ix,TRACK_Chan4+17
	ld	a,(TRACK_Chan4+17+TRACK_Flags)
	ld	d,a
	ld	hl,FM_regToneB
	call	process_data_chan
	ld	a,(FM_regVOLF)
	ld	d,a
	ld	a,(TRACK_Chan4+17+TRACK_Voice)
	and	$f0
	or	d
	ld	(FM_regVOLB),a	

	;--------------------
	;--- Process track 5
	;--------------------	
	ld	ix,TRACK_Chan5+17
	ld	a,(TRACK_Chan5+17+TRACK_Flags)
	ld	d,a
	ld	hl,FM_regToneC
	call	process_data_chan
	ld	a,(FM_regVOLF)
	ld	d,a
	ld	a,(TRACK_Chan5+17+TRACK_Voice)
	and	$f0
	or	d
	ld	(FM_regVOLC),a	

	;--------------------
	;--- Process track 6
	;--------------------
		
	ld	ix,TRACK_Chan6+17
	ld	a,(TRACK_Chan6+17+TRACK_Flags)
	ld	d,a
	ld	hl,FM_regToneD
	call	process_data_chan
	ld	a,(FM_regVOLF)
	ld	d,a
	ld	a,(TRACK_Chan6+17+TRACK_Voice)
	and	$f0
	or	d
	ld	(FM_regVOLD),a	

	;--------------------
	;--- Process track 7
	;--------------------
	ld	ix,TRACK_Chan7+17
	ld	a,(TRACK_Chan7+17+TRACK_Flags)
	ld	d,a
	ld	hl,FM_regToneE
	call	process_data_chan
	ld	a,(FM_regVOLF)
	ld	d,a
	ld	a,(TRACK_Chan7+17+TRACK_Voice)
	and	$f0
	or	d
	ld	(FM_regVOLE),a		

	;--------------------
	;--- Process track 8
	;--------------------		
	ld	ix,TRACK_Chan8+17
	ld	a,(TRACK_Chan8+17+TRACK_Flags)
	ld	d,a
	ld	hl,FM_regToneF
	call	process_data_chan
	ld	a,(FM_regVOLF)
	ld	d,a
	ld	a,(TRACK_Chan8+17+TRACK_Voice)
	and	$f0
	or	d	
	ld	(FM_regVOLF),a

	ld	a,$f6 ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
	out	(0x99),a
	ld	a,7+128
	out	(0x99),a	

	;--------------------
	;--- Process Drums
	;--------------------
	call	process_drum




	

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
_rdn2:
	cp	_INS
	jp	c,_replay_decode_vol
_rdv2:
	cp	_CMD
	jp	c,_replay_decode_ins
_rdi2:
	cp	_EOT
	jp	c,_replaydecode_cmd
	jp	_replay_decode_delay

_rdn:
	cp	_SUS+1		
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
	jp	_replay_decode_trigger_porttone_check

_rd_eot:
	inc	a
	ld	(ix+TRACK_Delay),a
	jp	_replay_decode_trigger_porttone_check

_replay_decode_delay:
	sub	_WAIT-1
	jp	z,_rd_eot		; EOT found
	ld	(ix+TRACK_Delay),a
	ld	(ix+TRACK_prevDelay),a
	inc	bc
	
_replay_decode_trigger_porttone_check:	
	;--- Check cmd active and note trigger?
	bit 	B_TRGNOT,d
	ret	z
	bit	B_TRGCMD,d
	ret	z
	;--- Check for cmd3 or cmd5 (value 0 or 1) to continue
	ld	a,(ix+TRACK_Command)
	cp	2
	ret	nc
	;-- trigger CMD
	res	B_TRGNOT,d
	ld	a,0010010b		;B_ACTNOT B_KEYON
	or	d
	ld 	d,a
	ld	a,(ix+TRACK_cmd_3)
	jp	decode_cmd3_port_tone_new_note	
	;ret

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
;	res	B_ACTNOT,d				; reset note bit to	0
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
		
	;--- Set the software voice (if needed)
	and	a
	jp	nz,.skip_soft
	;--- software voice found
	
	ld	a,(hl)		; value is the offset in the soft voice data (8bytes)
	inc	hl
	ld 	(FM_softvoice_req),a
	xor 	a

.skip_soft:
	ld	(ix+TRACK_Voice),a

	;--- Store the macro start
	ld	(ix+TRACK_MacroPointer),l
	ld	(ix+TRACK_MacroPointer+1),h	
	;--- Store the macro re-start
	ld	(ix+TRACK_MacroStart),l
	ld	(ix+TRACK_MacroStart+1),h

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



_replaydecode_cmd:
	sub	_CMD
	
	;[Debug]
	cp	23
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
	dw	decode_cmd3_port_tone
	dw	decode_cmd5_vibrato_port_tone
	dw	decode_cmd2_port_down
	dw	decode_cmd0_arpeggio
	dw	decode_cmd4_vibrato
	dw	decode_cmd1_port_up
	dw	decode_cmd6_vibrato_vol	
	dw	decode_cmd7_vol_slide
	dw	decode_cmd8_tremolo
	dw	decode_cmd9_note_cut
	dw	decode_cmd10_note_delay
	; Secondary
	dw	decode_cmd11_command_end
	dw	decode_cmd12_drum
	dw	decode_cmd13_arp_speed
	dw	decode_cmd14_fine_up
	dw	decode_cmd15_fine_down
	dw	decode_cmd16_notelink
	dw	decode_cmd17_track_detune
	dw	decode_cmd18_trigger
	dw	decode_cmd19_speed
	; SoundChip Specific
	dw	decode_cmd20_tone_panning
	dw	decode_cmd21_noise_panning
	dw	decode_cmd22_chan_setup	
	

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
	; ! do not change	[BC] this is the data pointer
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
	
	call	decode_cmd3_port_tone_new_note
	jp	_rdc
	
decode_cmd3_port_tone_new_note:
	;-- remove deviation from parameter
	and 	$7f
	ex	af,af'		;'
	exx

	;-- get the	previous note freq
	ld	a,(replay_previous_note)
	add	a
	ld	hl,(replay_tonetable)
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
	ld	hl,(replay_tonetable)	;TRACK_ToneTable
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
	
	;--- re-apply deviation
	ex	af,af'			;'
	bit	7,h
	jp	nz,99f
	or 	128
99:
	ld 	(ix+TRACK_cmd_3),a
	
	exx					; restore flags in D
	ret
	
	
decode_cmd8_tremolo:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
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

;	sub	16
	ld	hl,TRACK_Vibrato_sine-16
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
	ld	(ix+TRACK_Command),e
	ld	(ix+TRACK_cmd_A),a
	set	B_TRGCMD,d
	
	;-- Check if new note
	bit	B_TRGNOT,d
	jp	z,_rdc
	
	;-- Set new port tone value
	set	B_KEYON,d
	res	B_TRGNOT,d
	ld	a,(ix+TRACK_cmd_3)
	jp	decode_cmd3_port_tone_new_note
	
	
	
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
	ld	(ix+TRACK_Command),e	
	ld	(ix+TRACK_cmd_A),a
	and  	$7f
	ld	(ix+TRACK_Timer),a
	set	B_TRGCMD,d
	jp	_rdc


decode_cmd9_note_cut:
	set	B_TRGCMD,d
	ld	(ix+TRACK_Command),e
	ld	(ix+TRACK_Timer),a		; set	the timer to param y
	jp 	_rdc


decode_cmd10_note_delay:
	bit	B_TRGNOT,d		; is there a note	in this eventstep?
	jp	z,_rdc

	set	B_TRGCMD,d					; command active
	res	B_TRGNOT,d					; reset any	trigger note
	ld	(ix+TRACK_Command),e
	
	ld	(ix+TRACK_Timer),a			; set	the timer to param y
	ld	a,(ix+TRACK_Note)
	ld	(ix+TRACK_cmd_E),a			; store the	new note
	ld	a,(replay_previous_note)
	ld	(ix+TRACK_Note),a				; restore the old	note
	jp	_rdc	


decode_cmd11_command_end:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	res	B_TRGCMD,d
	jp	_rdc_noinc
	

decode_cmd12_drum:
;	and 	a		; drum reset not supported
;	jr 	z,0f
	

	; Get the base addres of the drum list
	;add 	a 
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
	
	; Store the address
	ld 	(FM_DRUM_MACRO),hl
	ld	a,h
	ld	(FM_DRUM_ACTIVE),a
	jp	_rdc		
		
	


decode_cmd13_arp_speed:
	ld	(replay_arp_speed),a		; store the halve not to add
	jp	_rdc	
	
	

decode_cmd14_fine_up:
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	xor	a
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),a
	jp	_rdc
	
decode_cmd15_fine_down:
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	ld	a,$ff
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),a
	jp	_rdc


decode_cmd16_notelink:
	res	B_TRGNOT,d
	set 	B_KEYON,d
	jp	_rdc_noinc	

decode_cmd17_track_detune:
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



decode_cmd18_trigger:
	ld	(replay_trigger),a
	jp	_rdc		


decode_cmd19_speed:
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
	
decode_cmd20_tone_panning:
	jp	_rdc	

decode_cmd21_noise_panning:
	jp	_rdc

decode_cmd22_chan_setup:
	jp	_rdc



;===========================================================
; ---process_data_chan
; Process the cmd/instrument/note and vol data 
; 
; in HL is the current tone freq
; in D is TRACK_FLAGS  
;===========================================================
process_data_chan:
	push	hl

	;-- set the	mixer	right
	ld	hl,FM_regMIXER   
	rrc	(hl)


	;===== 
	; Speed equalization check
	;=====
;	ld	a,(equalization_flag)			; check for speed equalization
;	and	a
;	jp	nz,process_noNoteTrigger		; Only process instruments macro
	
	
	;=====
	; COMMAND
	;=====
	ld	(ix+TRACK_cmd_NoteAdd),0			; Always reset note add
	bit	B_TRGCMD,d	;(ix+TRACK_Flags)
	jp	z,process_note

	ld	hl,PROCESS_CMDLIST
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

	bit	B_PSGFM,d		; Only reset note trigger for PSG
	jp	nz,99f
	res	B_TRGNOT,d		;(ix+TRACK_Flags)		; reset trigger note flag
99:
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
;	ld	a,(ix+TRACK_Note)
;	add	a,(ix+TRACK_cmd_NoteAdd)
;	add	a
;	ex	af,af'			;'store the	note offset


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
	; Apply Tone bit to volume (as SN7 and opll have no mixer)
	; Check only for SMS PSG and FM!
	bit	5,e		; do we have tone?
	jp	nz,_tone_on

	bit 	B_PSGFM,d
	jp	nz,99f
;psg:
	xor	a
	jp	_tone_off
99:
	ld	a,15
	jp	_tone_off

_tone_on:
	or	(ix+TRACK_Volume)
	ld	c,a			; store volume add
	ld 	b,(ix+TRACK_cmd_VolumeAdd)
;	ld	b,a
;	ld	a,c
	sub	a,b
	jp 	nc,.skip2
	ld	a,c
 	and	0x0f
.skip2:

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
_tone_off:
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



	;--- calculate end volume
	or	(ix+TRACK_Volume)
	ld	c,a			; store volume add
	ld 	a,(ix+TRACK_cmd_VolumeAdd)
	ld	b,a
	ld	a,c
	sub	a,b
	jp 	nc,.skip2
	ld	a,c
 	and	0x0f
.skip2:

_NVadd:
	;--- apply main volume balance
	ld	bc,(replay_mainvol)
	add	a,c
	ld	c,a
	jp	nc,.skip
	inc	b
.skip:
	ld	a,(bc)	
	rra
	rra
	rra
	rra
.skip2:
	and	0x0f
	ld	(PSG_regVOLN),a
	jp	_noLink

	or	(ix+TRACK_Volume)
	;--- apply main volume balance
	ld	bc,(replay_mainvol)
	add	a,c
	ld	c,a
	jp	nc,.skip3
	inc	b
.skip3:
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

	;-- Get current note
	ld	a,(ix+TRACK_Note)
	add	a,(ix+TRACK_cmd_NoteAdd)
	add	a

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
	jp	z,_wrap_skip		; skip wrapper for PSG

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
	pop	hl
	
	;-- for FM add key and sustain bits to tone
	inc	hl
	ld	a,d
	and	16+32	; keep key and sustain flags
	ld	b,a
	ld	a,(hl)
	and 	$0f
	or 	b
	ld	(hl),a
	
	;-- Silence
	xor	a
	ld	(FM_regVOLF),a
	ld	(ix+TRACK_Flags),d
	ret	

PROCESS_CMDLIST:
	; This list only contains the primary commands.
	dw	process_cmd3_port_tone
	dw	process_cmd5_vibrato_port_tone
	dw	process_cmd2_port_down		
	dw	process_cmd0_arpeggio			
	dw	process_cmd4_vibrato		
	dw	process_cmd1_port_up	
	dw	process_cmd6_vibrato_vol		
	dw	process_cmd7_vol_slide
	dw	process_cmd8_tremolo
	dw	process_cmd9_note_cut		
	dw	process_cmd10_note_delay		

			
process_cmd0_arpeggio:
	ld	a,(ix+TRACK_Timer)
	and	a
	jp	z,.nextNote
	
	dec	a
	ld	(IX+TRACK_Timer),a
	ld	a,(ix+TRACK_Step)
	and	a
	jp	z,99f
	ld	a,(IX+TRACK_cmd_0)
	and	$0f
	ld	(ix+TRACK_cmd_NoteAdd),a	
	jr.	process_commandEND
99:
	ld	(ix+TRACK_cmd_NoteAdd),0	
	jr.	process_commandEND
	

.nextNote:
	; re-init the speed.
	ld	a,(replay_arp_speed)
	ld	(IX+TRACK_Timer),a
	
	ld	a,(ix+TRACK_Step)
	and	a
	jr.	nz,99f

	;--- set x
		ld	(ix+TRACK_Step),1
		ld	a,(ix+TRACK_cmd_0)
		rlca
		rlca
		rlca
		rlca		
		ld	(ix+TRACK_cmd_0),a	
		and	$0f
		ld	(ix+TRACK_cmd_NoteAdd),a
		jr.	process_commandEND
	
99:
	dec	a
	jr.	nz,99f

	;--- set y
		ld	(ix+TRACK_Step),2
		ld	a,(ix+TRACK_cmd_0)
		rlca
		rlca
		rlca
		rlca		
		ld	(ix+TRACK_cmd_0),a			
		and	0x0f
		jp	nz,0f
		;--- if zero then skip this note and set step to start
		ld	(ix+TRACK_Step),0
0:		
		ld	(ix+TRACK_cmd_NoteAdd),a	
		jr.	process_commandEND
	
99:
	;--- set none
	ld	(ix+TRACK_Step),0
	ld	(ix+TRACK_cmd_NoteAdd),0		
	jr.	process_commandEND
		

	

	
process_cmd1_port_up:
	ld	a,(ix+TRACK_cmd_1)	

	ld	b,a
	ld	a,(ix+TRACK_cmd_ToneSlideAdd)
	sub	b
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	jp	nc,process_commandEND
	inc	(ix+TRACK_cmd_ToneSlideAdd+1)
	jp	process_commandEND

	
process_cmd2_port_down:	
	ld	a,(ix+TRACK_cmd_2)
	ld	b,a
	ld	a,(ix+TRACK_cmd_ToneSlideAdd)
	add	b
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
	jp	nc,.skip
	inc	h					
.skip:
	bit	7,h
	jp	z,process_cmd3_stop			; delta turned pos ?
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),h
	jp	process_commandEND
process_cmd3_sub:
	;negative slide	
	and	$7f
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
;	res	B_TRGCMD,d		;(ix+TRACK_Flags)
	ld	(ix+TRACK_cmd_ToneSlideAdd),0
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),0	
	jp	process_commandEND


process_cmd8_tremolo:
	;=================================
	;
	; tremolo	
	;
	;=================================	
	ld	l,(ix+TRACK_cmd_4_depth)
	ld	h,(ix+TRACK_cmd_4_depth+1)

	;--- Get next step
	ld	a,(IX+TRACK_Step)
	add	(ix+TRACK_cmd_4_step)
	and	$1F			; max	32
	ld	(ix+TRACK_Step),a

	add	a,l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	ld	a,(hl)
	sla	a
	sla	a	
	sla	a	
	sla	a
	ld	(ix+TRACK_cmd_VolumeAdd),a
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

	ld	a,(ix+TRACK_Volume)
	bit	7,c
	jp	z,process_cmda_inc
process_cmda_dec:
	and	a
	ret	z
	sub	$10
	ld	(ix+TRACK_Volume),a
	ret
	
process_cmda_inc:
	cp	$f0
	ret	nc
	add	$10	
	ld	(ix+TRACK_Volume),a
	ret



process_cmd9_note_cut:
	dec	(ix+TRACK_Timer)
	jp	nz,process_commandEND
	
	; stop note
	res	B_TRGCMD,d	; set	note bit to	0
	res	B_ACTNOT,d
	jp	process_commandEND		
	
process_cmd10_note_delay:
	; note delay
	dec	(ix+TRACK_Timer)
	jp	nz,process_commandEND	; no delay yet

	; trigger note
	ld	a,(ix+TRACK_cmd_E)		
	ld	(ix+TRACK_Note),a		; set	the note val
	set	B_TRGNOT,d	;(ix+TRACK_Flags)		; set	trigger note flag
	res	B_TRGCMD,d	;(ix+TRACK_Flags)		; reset trigger cmd flag
	
	jp	process_commandEND	





_process_drum_none:
	ld	(FM_DRUM_ACTIVE),a
	ret
;============================================================================
; process_drum
;
;
;
;============================================================================
process_drum:
	ld	a,(FM_DRUM_ACTIVE)
	and	a
	;jp	z,_process_drum_none
	ret	z
	;-- Retrieve the next action
	ld	bc,(FM_DRUM_MACRO)

_process_drum_loop:
	ld	hl,DRUM_MACRO_LIST-2
	ld	a,(bc)
	inc	bc
	and	a
	jp	z,.end
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

.end:
	ld	(FM_DRUM_MACRO),bc
	ret


DRUM_MACRO_LIST:
	dw	_drum_stop		;2
	dw	_drum_vol_bd	;4
	dw	_drum_vol_sn	;6
	dw	_drum_vol_hh	;8
	dw	_drum_vol_snhh	;a
	dw	_drum_vol_cy	;c
	dw	_drum_vol_tt	;e
	dw	_drum_vol_cytt	;10
	dw	_drum_note_bd	;12
	dw	_drum_tone_bd	;14
	dw	_drum_note_snhh	;16
	dw	_drum_tone_snhh	;18
	dw	_drum_note_cytt	;1a
	dw	_drum_tone_cytt	;1c
	dw	_drum_percussion	;1e

_drum_stop:			;2
	xor	a
	ld	(FM_DRUM_ACTIVE),a
	ret

_drum_vol_bd:		;4
	ld	a,(bc)
	inc	bc
	ld	(DRUM_regVolBD),a
	jp	_process_drum_loop

_drum_vol_sn:		;6
	ld	a,(DRUM_regVolSH)
	and	0xf0
	ld	d,a
	ld	a,(bc)
	inc	bc
	or	d
	ld	(DRUM_regVolSH),a
	jp	_process_drum_loop

_drum_vol_hh:		;8
	ld	a,(DRUM_regVolSH)
	and	0x0f
	ld	d,a
	ld	a,(bc)
	inc	bc
	or	d
	ld	(DRUM_regVolSH),a
	jp	_process_drum_loop

_drum_vol_snhh:	;a
	ld	a,(bc)
	inc	bc
	ld	(DRUM_regVolSH),a
	jp	_process_drum_loop


_drum_vol_cy:		;6
	ld	a,(DRUM_regVolCT)
	and	0xf0
	ld	d,a
	ld	a,(bc)
	inc	bc
	or	d
	ld	(DRUM_regVolCT),a
	jp	_process_drum_loop

_drum_vol_tt:		;8
	ld	a,(DRUM_regVolCT)
	and	0x0f
	ld	d,a
	ld	a,(bc)
	inc	bc
	or	d
	ld	(DRUM_regVolCT),a
	jp	_process_drum_loop

_drum_vol_cytt:	;a
	ld	a,(bc)
	inc	bc
	ld	(DRUM_regVolCT),a
	jp	_process_drum_loop

_drum_note_bd:	;12
	ld	a,(bc)
	inc	bc
	ld	(DRUM_regToneBD),a
	ld	a,(bc)
	inc	bc
	ld	(DRUM_regToneBD+1),a
	jp	_process_drum_loop

_drum_tone_bd:	;14
	ld	hl,(DRUM_regToneBD)
	ld	a,(bc)
	ld	e,a
	inc	bc
	ld	a,(bc)
	inc	bc
	ld	d,a
	add	hl,de
;	ld	(DRUM_regToneBD),hl
	jp	_process_drum_loop

_drum_note_snhh:	;16
	ld	a,(bc)
	inc	bc
	ld	(DRUM_regToneSH),a
	ld	a,(bc)
	inc	bc
	ld	(DRUM_regToneSH+1),a
	jp	_process_drum_loop

_drum_tone_snhh:	;18
	ld	hl,(DRUM_regToneSH)
	ld	a,(bc)
	ld	e,a
	inc	bc
	ld	a,(bc)
	inc	bc
	ld	d,a
	add	hl,de
	ld	(DRUM_regToneSH),hl
	jp	_process_drum_loop

_drum_note_cytt:	;1a
	ld	a,(bc)
	inc	bc
	ld	(DRUM_regToneCT),a
	ld	a,(bc)
	inc	bc
	ld	(DRUM_regToneCT+1),a
	jp	_process_drum_loop

_drum_tone_cytt:	;1c
	ld	hl,(DRUM_regToneCT)
	ld	a,(bc)
	ld	e,a
	inc	bc
	ld	a,(bc)
	inc	bc
	ld	d,a
	add	hl,de
	ld	(DRUM_regToneCT),hl
	jp	_process_drum_loop

_drum_percussion:	;1e
	ld	a,(bc)
	inc	bc
	ld	(FM_DRUM),a
	jp	_process_drum_loop
	










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
	or	11100000b
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








;---------------
; F M
;---------------
route_FM:
	; Check if we need to load a software voice
	ld	hl,FM_softvoice_req
	ld	a,(hl)
	inc	hl
	cp	(hl)
	jp	z,.noVoice
	
	ld	(hl),a

	call	load_softwarevoice
	
.noVoice:
	;------------------------------------------
	;---- Update the tone and drum registers
	;------------------------------------------
	ld 	hl,FM_Registers
	ld	de,TRACK_Chan3+17+TRACK_Flags
	ld	a,$10		; Register $10
	ld	b,9		; 6(tone)+3(drum) channels to update

.channel_loop:	
	; Tone low
	call	_route_FM_reg16_update
	dec	hl
	add	a,$10	; Register# $20

	ex	af,af'

	ld	a,b	;-- Only do this check for first 6 chans. Other are drum
	cp	4
	jp	c,0f

	;-- Check if we need to toggle key to start a new note
	ld	a,(de)
	bit	0,a
	jp	z,99f	; no notetrigger
	
	res	0,a		; reset trigger
	ld	(de),a
	bit	4,a
	call	nz,_route_FM_keyOff_update
99:
	ld	a,TRACK_REC_SIZE
	add	a,e
	ld	e,a
	jp	nc,99f
	inc	d
99:	
0:
	ex	af,af'
	
	; Tone High + key & sustain
	call	_route_FM_reg16_update
	inc	hl
	add	a,$10	; Register# $30
	
	; Volume + voice
	call	_route_FM_reg8_update
	inc	hl
	add	a,-$1F	; Register# = channel + $10
	djnz	.channel_loop

	;------------------------------------------
	;---- Process Drum macro
	;------------------------------------------
_route_FM_drum_update:
	ld	a,(FM_DRUM)
	and	00011111b		; erase bit 5
	ret	z			; no drums to play
	
	ld	b,a
	ld	a,0x0e
	;-- load the new values
	out	(FM_WRITE),a	; Select rythm register
	
	ld	a,b			; 5 cycles
	ld	a,b			; 5 cycles	; dummy code for delay
	out	(FM_DATA),a		

	push	ix			; 17 cycles	dummy code to implement delay
	pop	ix			; 17 cycles
	ld	b,a
	xor	a
	ld	(FM_DRUM),a
	ld	a,b

	or	100000b		; set the percussion bit
	out	(FM_DATA),a
	ret
	

;------- Writes safe to the FM chip
; in :
;	[a]	Register# to write
;	[HL]	point to register (previous value is next in RAM)
;
; out:
;	[HL] points to previous value
;	[A]	contains register# written
;-----------
_route_FM_reg8_update:
	ex	af,af'
	ld	a,(hl)
	jp	_rfr_cont
	
	
;------- Writes safe to the FM chip
; in :
;	[a]	Register# to write
;	[HL]	point to register (previous value is next in RAM)
;
; out:
;	[HL] points to previous value
;	[A]	contains register# written
;-----------
_route_FM_reg16_update:
	ex	af,af'
	ld	a,(hl)
	inc	hl
_rfr_cont:
	inc	hl
	cp	(hl)	
	jp	z,99f		; no change in tone low value
	ex	af,af'	
	out	(FM_WRITE),a
	ex	af,af'
	ld	(hl),a
	out	(FM_DATA),a	
99:	ex	af,af'
;	dec	hl	
	ret
	
;------- Writes a keyoff to the existing tone high register 
; in :
;	[A']	register# to write
;	[HL]	point to register (previous value is next in RAM)
;
; out:
;	[HL] points to same location
;	[A']	contains register# written
;-----------
_route_FM_keyOff_update:
	ex	af,af'
	out	(FM_WRITE),a
	ex	af,af'		; 4 cycles	 '
	ld	a,(hl)
	and	11101111b	; erase keyON bit.
	out	(FM_DATA),a	
	inc	hl
	inc	hl
	ld	(hl),a		; make sure to change old value to trigger update
	dec	hl
	dec	hl
	ret



load_softwarevoice:
	;-- Set the software voice data address
	ld 	hl,(replay_voicebase)
	ld	e,a
	ld	d,0
	add	hl,de
	add	hl,de
	xor	a		; set reg# 0



.voiceupd_loop:

	out	(FM_WRITE),a
	ex	af,af'		; 4 cycles	 '
	ld	a,(hl)		; 4 cycles 	
	inc	hl			; 6 cycles
	out	(FM_DATA),a	

	ex	af,af' 		; 4 cycles	'
	inc	a			; 4 cycles
	
	cp	8 			; 7 cycles
	;--- delay
	push 	ix			; 15 cycles
	pop	ix			; 14 cycles
	push 	ix			; 15 cycles
	pop	ix			; 14 cycles
		
	jp	c,.voiceupd_loop 	; 10 cycles
	ret

	

	


