;=================================
; TriloTracker Re-player SCC
;
; Functions:
; 	replay_init
;	replay_pause
;	replay_fade_out
;================================
	
;===============================
; todo:
; - add external SCC support through conditional code.
; - add replayer speed up through conditional code.
; - optimize replayer code
; - instructions for external usage of the RAM variables (setting PSG/SCC base volumes etc)
;===============================
_REL:		equ	96	; = release
_SUS:		equ	97	; = sustain
_VOL:		equ	98	; = volume 1
_INS:		equ	113	; = instrument 1
_CMD:		equ	144	; = effect 0
_SPC:		equ	184	; = special commands
_EOT:		equ	191	; = end of track
_WAIT:	equ	192	; = wait 1
	
;define EXTERNAL_SCC 
define INTERNAL_SCC	
	
	
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
	;-- set mixers to silence.
	ld 	a,0x3F
	ld	(PSG_regMIXER),a 
	xor	a
	ld	(SCC_regMIXER),a
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

	;--- Set waveform base, intrument base and track pointers 
	ld 	de,replay_wavebase
	ld	bc,20
	ldir
	ld	(replay_orderpointer),hl		; store pointer for next set
								; of track pointers
	;--- Initialize replayer variables.
	xor	a
	ld	(replay_speed_subtimer),a
;	ld	(replay_morph_active),a
;	ld	(replay_morph_waveform),a
	
	;--- Set tonetable here as SCC and PSG share same tonetable
	ld	hl,TRACK_ToneTable_PSG			; Set the PSG note table
	ld	(replay_tonetable),hl	


	;--- Erase channel data	in RAM
	ld	bc,TRACK_REC_SIZE*8-1
	ld	hl,TRACK_Chan1
	ld	de,TRACK_Chan1+1
	ld	(hl),a
	ldir

	ld	(replay_arp_speed),a
	;--- Silence the chips
	ld	(SCC_regMIXER),a
	ld	(PSG_regVOLA),a
	ld	(PSG_regVOLB),a	
	ld	(PSG_regVOLC),a
	ld	(PSG_regNOISE),a
	ld	a,0x3f
	ld	(PSG_regMIXER),a

	ld	a,1
	ld	(replay_speed_timer),a
;	ld	(replay_morph_timer),a
;	ld	(replay_morph_speed),a
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


IFDEF	EXTERNAL_SCC	
	;--- Init the SCC	(waveforms too)
	ld	a,(SCC_slot)
	ld	h,0x80
	call enaslt
ENDIF
	
	ld	a,255
	ld	(TRACK_Chan4+17+TRACK_Waveform),a
	ld	(TRACK_Chan5+17+TRACK_Waveform),a
	ld	(TRACK_Chan6+17+TRACK_Waveform),a	
	ld	(TRACK_Chan7+17+TRACK_Waveform),a	
	ld	a,128
	ld	(TRACK_Chan4+17+TRACK_Flags),a
	ld	(TRACK_Chan5+17+TRACK_Flags),a
	ld	(TRACK_Chan6+17+TRACK_Flags),a	
	ld	(TRACK_Chan7+17+TRACK_Flags),a	
	
;	call scc_reg_update			; Probably not needed.
	
IFDEF	EXTERNAL_SCC	
	ld	a,(mapper_slot)				
	ld	h,0x80
	call enaslt
ENDIF	

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
	jr.	z,PAL               		; if PAL process at any interrupt;

NTSC:
	ld	hl,equalization_cnt  		; if NTSC call 5 times out of 6
	dec	(hl)
	jr.	nz,PAL               		; skip music data processing one tic out of 6

	;--- Reset timer and raise equalization flag
	ld	a,6
	ld	(hl),a						
 	ld	(equalization_flag),a		

	call	process_data	
	xor	a
	ld	(equalization_flag),a
	ret
PAL:                            
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
; ---	decode_data
; Process the patterndata 
;===========================================================
decode_data:
	;--- process the channels (tracks)
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
; ---	process_data
; Process changes.
; 
; 
;===========================================================
process_data:
	;---- morph routine here
;	ld	a,(replay_morph_active)
;	and	a
;	call	nz,replay_process_morph

	;--- Initialize PSG Mixer and volume
	xor	a
	ld	(SCC_regMIXER),a

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
	ld	a,(SCC_regVOLE)
	ld	(PSG_regVOLA),a	

	;--------------------
	;--- Process track 2
	;--------------------
	ld	ix,TRACK_Chan2+17
	ld	a,(TRACK_Chan2+17+TRACK_Flags)
	ld	d,a
	ld	hl,PSG_regToneB
	call	process_data_chan
	ld	a,(SCC_regVOLE)
	ld	(PSG_regVOLB),a	

	;--------------------
	;--- Process track 3	
	;--------------------
	ld	ix,TRACK_Chan3+17
	ld	a,(TRACK_Chan3+17+TRACK_Flags)
	ld	d,a
	ld	hl,PSG_regToneC
	call	process_data_chan
	ld	a,(SCC_regVOLE)
	ld	(PSG_regVOLC),a
	
	;--- To disable track 3 just comment above lines (9 lines) and enable below 2 lines.
	;    This can be done for all tracks.
;	ld	hl,SCC_regMIXER   
;	srl	(hl)

	;-- Convert mixer to AY
	ld	a,(SCC_regMIXER)		
	srl	a
	srl	a
	xor	0x3f
	ld	(PSG_regMIXER),a

	;--- set SCC balance
	ld	hl,(replay_mainSCCvol)
	ld	(replay_mainvol),hl

	
	ld	iyh,0			; iyh stores the SCC chan#
					; used for waveform updates
	;--------------------
	;--- Process track 4
	;--------------------
	ld	ix,TRACK_Chan4+17
	ld	a,(TRACK_Chan4+17+TRACK_Flags)
	ld	d,a
	ld	hl,SCC_regToneA
	call	process_data_chan
	ld	a,(SCC_regVOLE)
	ld	(SCC_regVOLA),a	

	;--------------------
	;--- Process track 5
	;--------------------
	ld	iyh,$20
	ld	ix,TRACK_Chan5+17
	ld	a,(TRACK_Chan5+17+TRACK_Flags)
	ld	d,a
	ld	hl,SCC_regToneB
	call	process_data_chan
	ld	a,(SCC_regVOLE)
	ld	(SCC_regVOLB),a	


	;--------------------
	;--- Process track 6
	;--------------------
	ld	iyh,$40
	ld	ix,TRACK_Chan6+17
	ld	a,(TRACK_Chan6+17+TRACK_Flags)
	ld	d,a
	ld	hl,SCC_regToneC
	call	process_data_chan
	ld	a,(SCC_regVOLE)
	ld	(SCC_regVOLC),a	

	;--------------------
	;--- Process track 7
	;--------------------
	ld	iyh,$60
	ld	ix,TRACK_Chan7+17
	ld	a,(TRACK_Chan7+17+TRACK_Flags)
	ld	d,a
	ld	hl,SCC_regToneD
	call	process_data_chan
	ld	a,(SCC_regVOLE)
	ld	(SCC_regVOLD),a		

	;--------------------
	;--- Process track 8
	;--------------------
							; no waveform for SCC channel 5
		
	ld	ix,TRACK_Chan8+17
	ld	a,(TRACK_Chan8+17+TRACK_Flags)
	ld	d,a
	ld	hl,SCC_regToneE
	call	process_data_chan
	

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
	ld	b,5
	ld	hl,SCC_regVOLA

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
	jp	z,_rd_eot			; EOT found  
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
	set	B_ACTNOT,d
;	ld	a,(ix+TRACK_cmd_3)
	jp	decode_cmd3_port_tone_new_note	


_replay_decode_note:
	ld	(ix+TRACK_Note),a
	set 	B_TRGNOT,d
	res	B_ACTMOR,d

	inc	bc
	ld	a,(bc)
	jp	_rdn
	


_replay_decode_release:
_replay_decode_sustain:
	res	B_ACTNOT,d				; reset note bit to	0

	inc	bc
	ld	a,(bc)
	jp	_rdn



_replay_decode_ins:
	res	B_ACTMOR,d				; reset morph slave mode
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

	;-- get waveform
	ld	a,(hl)
	inc	hl
	
	cp	(ix+TRACK_Waveform)
	jp	z,.skip_wav_trig
	set	B_TRGWAV,d
	ld	(ix+TRACK_Waveform),a

.skip_wav_trig:
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
	sub	_VOL-1		; Add 1 here as volume 10 becomes 9
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
	cp	27
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
	dw	decode_cmd8_tremelo
	dw	decode_cmd9_note_cut
	dw	decode_cmd10_note_delay
	; Secondary
	dw	decode_cmd11_command_end
	dw	decode_cmd12_morph
	dw	decode_cmd13_arp_speed
	dw	decode_cmd14_fine_up
	dw	decode_cmd15_fine_down
	dw	decode_cmd16_notelink
	dw	decode_cmd17_track_detune
	dw	decode_cmd18_trigger
	dw	decode_cmd19_speed
	; SoundChip Specific
	dw	decode_cmd20_envelope
	dw	decode_cmd21_envelope_multiplier
	dw	decode_cmd22_SCC_reset
	dw	decode_cmd23_SCC_duty
	dw	decode_cmd24_SCC_cut
	dw	decode_cmd25_SCC_waveform




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
	jp 	_rdc
	
	
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
	ld	hl,(replay_tonetable)	;TRACK_ToneTable
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

decode_cmd8_tremelo:
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


decode_cmd12_morph:
	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	jp	_rdc_noinc
	; IMPLEMENT THIS LATER

;_CHIPcmd10_morph_slave:
;	set	B_ACTMOR,d
;	
;	dec 	bc
;	jp	_rdc	
;	
;_CHIPcmd11_morph_start:
;	and	0x0f
;	ld	(replay_morph_speed),a
;	
;	exx
;	;--- load the waveformbuffer
;	ld	a,(ix+TRACK_Waveform)
;;	add	a,a
;;	add	a,a
;;	add	a,a	
;
;	ld	l,a
;	ld	h,0
;	add	hl,hl
;	add	hl,hl
;		
;	ld	de,(replay_wavebase)
;	add	hl,de
;
;	ld	de,replay_morph_buffer
;	ld	a,32
;.loop:
;	ex	af,af'	;'
;	ld	a,(hl)
;	ld	(de),a		; copy value to both wave and delta pos
;	inc	de
;	ld	(de),a
;	inc	hl
;	inc	de
;	ex	af,af'	;'
;	dec	a
;	jp	nz,.loop
;	exx
;	
;	ld	a,(bc)
;
;_CHIPcmd12_morph_cont:
;	;---- init new morph
;	and	0xf0	
;	ld	(replay_morph_waveform),a	; store dest form offset
;	
;	xor	a
;	ld	(replay_morph_counter),a
;	inc	a
;	ld	(replay_morph_timer),a
;
;	;--- calculate the delta's	
;	ld	a,255				; 255 triggers calc init
;	ld	(replay_morph_active),a	
;
;	set	B_ACTMOR,d
;	jp	_rdc		
;	
;



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
	


decode_cmd20_envelope:
	set	B_TRGENV,d
	ld	(PSG_regEnvShape),a
	ld	(ix+TRACK_Timer),1
	jp	_rdc



	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; This command set the envelope frequency using a
	; multiplier value (00-ff)
decode_cmd21_envelope_multiplier:
	ld	d,a
	xor	a
	srl	d
	rra	
	srl	d
	rra		
	srl	d
	rra	
	ld	(PSG_regEnvL),a
	ld	a,d
	ld	(PSG_regEnvH),a
	
	jp	_rdc	



decode_cmd22_SCC_reset:
	set	B_TRGWAV,d
	res	B_ACTMOR,d

	dec 	bc
	jp	_rdc


decode_cmd23_SCC_duty:
decode_cmd24_SCC_cut:
	ld	(ix+TRACK_cmd_B),a
	set	B_TRGCMD,d
	res	B_ACTMOR,d

	jp	_rdc	


decode_cmd25_SCC_waveform:
	ld	(ix+TRACK_Waveform),a
	set	B_TRGWAV,d
	res	B_ACTMOR,d

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
	ld	hl,SCC_regMIXER   
	srl	(hl)


	;===== 
	; Speed equalization check
	;=====
	ld	a,(equalization_flag)			; check for speed equalization
	and	a
	jp	nz,process_noNoteTrigger		; Only process instruments
	
	
	;=====
	; COMMAND
	;=====
	ld	(ix+TRACK_cmd_NoteAdd),0			; Always reset note add
	
	bit	B_TRGCMD,d	;(ix+TRACK_Flags)
	jp	z,process_note
	
	ld	hl,PROCESS_CMDLIST
	ld	a,(ix+TRACK_Command)
;[DEBUG]	
	cp	11
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
	
process_note:	
process_commandEND:

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
	bit	B_ACTNOT,d			;(ix+TRACK_Flags)
	jp	z,process_noNoteActive
	
	;--- Get the macro len and loop
	ld	l,(ix+TRACK_MacroPointer)
	ld	h,(ix+TRACK_MacroPointer+1)

	ld	e,(hl)				; info byte
	inc	hl
	bit	2,e					; Volume change
	jp	nz,_vol_change
	ld	a,(ix+TRACK_VolumeAdd)
	jp	_noVolumeChange
	
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
	bit	B_TRGENV,d		;'(IX+TRACK_Flags)
	jp	z,_noEnv		; if not set then normal volume calculation
	ld	a,16			; set volume to 16 == envelope
	ld	(SCC_regVOLE),a
	jp	_noVolume	

_noEnv:	
_noVolumeChange:
	or	(ix+TRACK_Volume)
	ld	c,a			; store volume add

	ld 	a,(ix+TRACK_cmd_VolumeAdd)
;	rla				; shift to detect shift
;	jp 	c,.sub_Vadd		
;.add_Vadd:  
;	add	a,c
;	jp	nc,_Vadd
;	ld	a,c
;	or	0xf0
;	jp	_Vadd	
;.sub_Vadd:	
	ld	b,a
;	xor	a
;	sub 	b
;	ld	b,a
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
	bit	B_PSGSCC,d		;(ix+TRACK_Flags)
	jp	nz,.skip2
	rra
	rra
	rra
	rra
.skip2:
	and	0x0f
	ld	(SCC_regVOLE),a

_noVolume:
	;-------------------------------
	;
	; NOISE
	;
	;-------------------------------
	bit 	7,e			; test if noise
	jp	z,_noNoise
	
	;--- prevent SCC and noise
	bit	B_PSGSCC,d		;(ix+TRACK_Flags)
	jp	nz,_noNoise

	;--- Set the mixer for noise
	ld	a,(SCC_regMIXER)
	or	128
	ld	(SCC_regMIXER),a

	bit	6,e
	jp	z,_noNoise
	ld	a,(hl)	; get the deviation	
	inc	hl
	bit	5,e
	jp	z,.skip
	add	(ix+TRACK_Noise)
.skip:	
	ld	(ix+TRACK_Noise),a
	ld	(PSG_regNOISE),a
	
_noNoise:
	;-------------------------------
	;
	; TONE
	;
	;-------------------------------
	bit	4,e
	JP	z,process_noToneAdd

	;-- enable tone output
	ld	a,(SCC_regMIXER)
	or	16
	ld	(SCC_regMIXER),a

	ld	b,(ix+TRACK_ToneAdd)	; get	the current	deviation	
	ld	c,(ix+TRACK_ToneAdd+1)

	bit	3,e		; do we have toneupdate?
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
	pop	bc		; cmd_ToneSlideAdd
	add	hl,bc
	pop	bc		; cmd_ToneAdd
	add	hl,bc
	pop	bc		; cmd_detune
	add	hl,bc
	ld	sp,(_SP_Storage)

	; replace the last pushed value on stack
	pop	de
	ex	de,hl
	ld	(hl),e
	inc	hl
	ld	(hl),d

	ret

	
	
process_noNoteActive:
	pop	hl
	;-- Silence
	xor	a
	ld	(SCC_regVOLE),a
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
	dw	process_cmd8_tremelo
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
	dec	(ix+TRACK_cmd_ToneSlideAdd+1)
	jp	process_commandEND
	
process_cmd2_port_down:
	ld	a,(ix+TRACK_cmd_2)
	ld	b,a
	ld	a,(ix+TRACK_cmd_ToneSlideAdd)
	add	b
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	jp	nc,process_commandEND
	inc	(ix+TRACK_cmd_ToneSlideAdd+1)
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



process_cmd8_tremelo:
	;=================================
	;
	; Tremelo	
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





process_cmdc_wave_duty:
	;=================
	; Waveform PWM / Duty Cycle
	;=================
	res	B_TRGCMD,d			;(ix+TRACK_Flags)	; reset command
	set	B_TRGWAV,d			;(ix+TRACK_Flags)	; reset normal wave update

	;get the waveform	start	in [DE]
	ld	hl,_0x9800
	ld	a,iyh		;ixh contains chan#
;	rrca			; a mac value is 4 so
;	rrca			; 3 times rrca is	X32
;	rrca			; max	result is 128.
	add	a,l
	ld	l,a
	jp	nc,.skip
	inc	h
.skip:
	ld	b,(ix+TRACK_cmd_B)
	inc	b

	ld	c,77	
	ld	a,32
	sub	b
_wspw_loop_h:
	ld	(hl),c
	inc	hl
	djnz	_wspw_loop_h
	
	and	a
	jp	z,process_commandEND
	
	ld	c,-87
	ld	b,a
_wspw_loop_l:
	ld	(hl),c
	inc	hl
	djnz	_wspw_loop_l

	jp	process_commandEND
	
	
	
process_cmdd_wave_cut:
	;=================
	; Waveform Cut
	;=================
	res	B_TRGCMD,d		;(ix+TRACK_Flags)	; reset command
	set	B_TRGWAV,d		;(ix+TRACK_Flags)	; reset normal wave update
	ld	a,d
	ex	af,af'		;'

	;get the waveform	start	in [DE]
	ld	de,_0x9800
	ld	a,iyh		;ixh contains chan#
;	rrca			; a mac value is 4 so
;	rrca			; 3 times rrca is	X32
;	rrca			; max	result is 128.
	add	a,e
	ld	e,a
	jp	nc,.skip
	inc	d
.skip:
	ld	a,(ix+TRACK_Waveform)
	
	inc	a	
	ld	(ix+TRACK_Waveform),a
	dec	a

;	add	a,a
;	add	a,a
;	add	a,a	

	ld	l,a
	ld	h,0
	add	hl,hl
	add	hl,hl
		
	ld	  bc,(replay_wavebase)
	add	  hl,bc

	ld	a,(ix+TRACK_cmd_B)
;	inc	a
;	add	a
	ld	c,a
	ld	b,0
	ldir
	
	EX	DE,HL

	
	sub	32
	neg	
	ld	b,a
	EX	AF,AF'		;'
	LD	D,A
	jp	z,process_commandEND	
	
	xor	a
_wsc_l:
	ld	(HL),a
	inc	HL
	djnz	_wsc_l
	
	jp	process_commandEND
		
	
	
process_cmde_wave_compr:
	;=================
	; Waveform Compress
	;=================
	res	B_TRGCMD,d	;(ix+TRACK_Flags)	; reset command
	set	B_TRGWAV,d	;(ix+TRACK_Flags)	; reset normal wave update
	ld	a,d
	ex	af,af'	;'
	
	;get the waveform	start	in [DE]
	ld	de,_0x9800
	ld	a,iyh		;ixh contains chan#
;	rrca			; a mac value is 4 so
;	rrca			; 3 times rrca is	X32
;	rrca			; max	result is 128.
	add	a,e
	ld	e,a
	jp	nc,.skip
	inc	d
.skip:
	ld	a,(ix+TRACK_Waveform)
	inc	a
	ld	(ix+TRACK_Waveform),a
	dec	a

;	add	a,a
;	add	a,a
;	add	a,a	
	ld	l,a
	ld	h,0
	add	hl,hl
	add	hl,hl
		
	ld	  bc,(replay_wavebase)
	add	  hl,bc

	ld	a,(ix+TRACK_cmd_B)
	ld	bc,0x0040
	rrca	; x32
	rrca
	rrca
	add	31
	ld	iyl,a		; fraction
	xor	a	
_wcomp_loop:
	ldi			
	dec	c
	jp	z,.skip
	add	iyl
	jp	nc,_wcomp_loop
	inc	hl
	inc	b
	dec	c
	dec	c
	jp	nz,_wcomp_loop
	
	;--- remaining data
.skip:
	dec	hl
	ld	a,(hl)
.loop:
	ld	(de),a
	inc	de
	djnz	.loop
	
	EX	AF,AF'		;'
	LD	D,A	
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
	;--- Push values to AY HW
	ld	b,0
	ld	c,0xa0
	ld	hl,PSG_registers
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
;--------------
; S C	C 
;--------------
	ld  a,03Fh				; enable SCC
	ld  (0x9000),a

	
	;--- This for the ttsfxplayer!!!
;	ld	a,(sfx_SCC_WAVE)
;	cp	255
;	jp	z,.nosfx		; if a == 255 there is no waveform
;
;	ld	de,0x9800
;	call	_write_SFX_wave	
;	jp	.skip	
	
.nosfx:	
	;--- Set the waveforms
	ld	hl,TRACK_Chan4+17+TRACK_Flags
	bit	B_TRGWAV,(hl)
	jp	z,.skip
	;--- set wave form
	res	B_TRGWAV,(hl)
	ld	a,(TRACK_Chan4+17+TRACK_Waveform)
	ld	de,0x9800
	call	_write_SCC_wave
.skip:
	ld	hl,TRACK_Chan5+17+TRACK_Flags
	bit	B_TRGWAV,(hl)
	jp	z,.skip2
	;--- set wave form
	res	B_TRGWAV,(hl)
	ld	a,(TRACK_Chan5+17+TRACK_Waveform)
	ld	de,0x9820
	call	_write_SCC_wave
.skip2:
	ld	hl,TRACK_Chan6+17+TRACK_Flags
	bit	B_TRGWAV,(hl)
	jp	z,.skip3
	;--- set wave form
	res	B_TRGWAV,(hl)
	ld	a,(TRACK_Chan6+17+TRACK_Waveform)
	ld	de,0x9840
	call	_write_SCC_wave
.skip3:
	ld	hl,TRACK_Chan7+17+TRACK_Flags
	bit	B_TRGWAV,(hl)
	jp	z,.skip4
	;--- set wave form
	res	B_TRGWAV,(hl)
	ld	a,(TRACK_Chan7+17+TRACK_Waveform)
	ld	de,0x9860
	call	_write_SCC_wave
.skip4:

scc_reg_update:

	ld  a,03Fh				; enable SCC
	ld  (0x9000),a

	;--- Update changed SCC registers.
	ld hl,oldregs
	ld de,SCC_registers
	ld bc,0x9880
	ld a,3*5+1
loop:
	ex af,af'	;'
	ld a,(de)
	cp (hl)
	jr z,.skip
	ld (hl),a	     ; update old	registers in ram
	ld (bc),a	     ; update scc	registers
.skip:	    
	inc hl
	inc de
	inc bc
	ex af,af'		;'
	dec a
	jr nz, loop
	ret

	
	
;==================
; _write_SCC_wave
;
; Writes waveform	data.	[DE] contains location for data
; [A]	contains waveform	number + flags for special actions
; Data is not written to SCC but into RAM	shadow registers.
;==================
_write_SCC_wave:
	bit	B_ACTMOR,(hl)
	jp	nz,_write_SCC_special
	
	bit	0,a
	jp	nz,.ramwave
;	add	a,a
;	add	a,a
;	add	a,a

.normalwave:
	ld	l,a
	ld	h,0
	add	hl,hl
	add	hl,hl
		
	ld	  bc,(replay_wavebase)
	add	  hl,bc
	ld	  bc,32
	ldir
	ret
	
	
.ramwave:
	dec	hl		; reset the special flag in the wave form number
	and	$fe
	ld	(hl),a

	ld	hl,_0x9800
	ld	a,e
	add	a,l
	ld	l,a
	jp	nc,.skip
	inc	h
.skip:
	ld	  bc,32
	ldir
	ret	
	
	
	


_write_SCC_special:
	ld	hl,replay_morph_buffer+1
	ld	b,32
_wss_l:
	ld	a,(hl)
	ld	(de),a
	inc	hl
	inc	hl
	inc	de
	djnz	_wss_l
	 
	
	ret

	
;=============
; in [A] the morph active status	
replay_process_morph:
	ld	hl,replay_morph_timer
	dec	(hl)
	ret	nz
	
	;---- not sure what to do with this.
	; trigger any waveform updates
	ld	b,4
	ld	de,TRACK_REC_SIZE
	ld	hl,TRACK_Chan4+17+TRACK_Flags
.loop:	
	bit 	B_ACTMOR,(hl)
	jp	z,.skip
	set	B_TRGWAV,(hl)
.skip:
	add	hl,de
	djnz	.loop	
	
	
	;---- timer ended.
	inc	a
	jp	nz,_rpm_next_step		; if status was !=255 then skip init

	;---- calculate offset
	inc	a		
	ld	(replay_morph_active),a		; set status to 1
;	ld	(replay_morph_update),a		; after this update the waveforms of the SCC

	ld	a,(replay_morph_speed)
	ld	(replay_morph_timer),a
	

	;--- calculate the delta's
	ld	de,replay_morph_buffer
	ld	hl,(replay_wavebase)
	ld	a,(replay_morph_waveform)
	add	a
	jp	nc,.skip2
	inc	h
.skip2:
	add	a,l
	ld	l,a
	jp	nc,.skip3
	inc	h
.skip3:	
	;---- start calculating
	ld	b,32		; 32 values
_rpm_loop:	
	inc	de
	ld	a,(de)
	dec	de
	add	a,128
	ld	c,a
	ld	a,(hl)
	add	a,128
	cp	c
	jp	c,_rpm_smaller		; dest is smaller

	
_rpm_larger:
	sub	c
	rrca
	rrca
	rrca
	rrca
	and	$ef		; reset bit 5
	ld	(de),a
	
	inc	de
	inc	de
	inc	hl
	djnz	_rpm_loop
	ret	
	
_rpm_smaller:
	sub	c
	neg	
	rrca
	rrca
	rrca
	rrca
	or	$10		; set bit 5
	ld	(de),a
	
	inc	de
	inc	de
	inc	hl
	djnz	_rpm_loop
	ret		
	
;============================
_rpm_next_step:
	ld	a,(replay_morph_speed)
	ld	(replay_morph_timer),a

	;-- apply the delta's
	ld	a,(replay_morph_counter)
	ld	c,a
	add	16
	ld	(replay_morph_counter),a
	jp	nz,.skip
	;--- end morph
	ld	(replay_morph_active),a

.skip:
	dec c
	ld	hl,replay_morph_buffer
	ld	b,32
_rpm_ns_loop:	
	ld	a,(hl)
	bit 	4,a
	jp	z,_rmp_ns_add
_rmp_ns_sub:
	;--- handle corection
	and	$ef
	cp	c		; correction < counteR?
	jp	c,.skip
	inc	a		; if smaller C was set
.skip:
	and	00011111b	; keep lower 5 bits
	inc	hl
	ld	d,a
	ld	a,(hl)
	sub	d
	ld	(hl),a	; load new value
	inc	hl
	djnz	_rpm_ns_loop
	ret	
_rmp_ns_add:
	;--- handle corection
	cp	c		; correction < counter?
	jp	c,.skip
	inc	a		; if smaller C was set
.skip:
	and	00011111b	; keep lower 5 bits
	inc	hl
	add	(hl)		; subtract waveform value
	ld	(hl),a	; load new value
	inc	hl
	djnz	_rpm_ns_loop
	ret		
	


