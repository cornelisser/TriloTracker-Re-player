;=================================
; TriloTracker Re-player SCC v0.14 
;
; Functions:
; 	replay_init
;	replay_pause
;	replay_resume
;	replay_fade_out
;	replay_set_SCC_balance
;	replay_set_PSG_balance
;	replay_equalization
;	replay_load_song
;================================

PSG_WRITE	equ	0xa0	; port to set psg reg nr.
PSG_DATA	equ	0xa1	; port to set psg data for reg.
;===============================
_REL:		equ	96		; = release
_SUS:		equ	97		; = sustain
_VOL:		equ	98		; = volume 0
_INS:		equ	113+1	      ; = instrument 1
_CMD:		equ	144+1	      ; = effect 0
_SPC:		equ	184		; = special commands
_EOT:		equ	191		; = end of track
_WAIT:		equ	192	      ; = wait 1



			ds (-$) & 255

MACROACTIONLIST:
			jp	macro_volume_same		; 0
			nop
			jp	macro_mixer			; 2
			nop
			jp	macro_tone_add		; 4			
			nop
			jp	macro_stop			; 6			
			nop
			jp	macro_vol_base		; 8
			nop
			jp	macro_vol_add		; a
			nop
			jp	macro_vol_sub		; c
			nop
			jp	macro_noise_base		; e
			nop
			jp	macro_noise_add		; 10		; unused!!!	
			nop
			jp	macro_noise_add		; 12		
			nop
			jp	macro_noise_vol		; 14
			nop
			jp	macro_voice			; 16
			nop
			jp	macro_loop			; 18
			nop
			jp	macro_envelope		; 1a
			nop
			jp	macro_envelope_shape	; 1c

PROCESS_CMDLIST:
	; This list only contains the primary commands.
			jp	process_cmd3_port_tone
			nop
			jp	process_cmd5_vibrato_port_tone
			nop
			jp	process_cmd2_port_down
			nop
			jp	process_cmd0_arpeggio
			nop
			jp	process_cmd4_vibrato
			nop
			jp	process_cmd1_port_up
			nop
			jp	process_cmd6_vibrato_vol
			nop
			jp	process_cmd7_vol_slide
			nop
			jp	process_cmd8_tremolo
			nop
			jp	process_cmd9_note_cut
			nop
			jp	process_cmd10_note_delay
			nop
			jp	process_cmd4_vibrato_extended

DECODE_CMDLIST:
	; Primary
			jp	decode_cmd3_port_tone
			nop
			jp	decode_cmd5_vibrato_port_tone
			nop
			jp	decode_cmd2_port_down
			nop
			jp	decode_cmd0_arpeggio
			nop
			jp	decode_cmd4_vibrato
			nop
			jp	decode_cmd1_port_up
			nop
			jp	decode_cmd6_vibrato_vol
			nop
			jp	decode_cmd7_vol_slide
			nop
			jp	decode_cmd8_tremolo
			nop
			jp	decode_cmd9_note_cut
			nop
			jp	decode_cmd10_note_delay
			nop
	; Secondary
			jp	decode_cmd11_command_end
			nop
			jp	decode_cmd12_SCC_morph
			nop
			jp	decode_cmd13_arp_speed
			nop
			jp	decode_cmd14_fine_up
			nop
			jp	decode_cmd15_fine_down
			nop
			jp	decode_cmd16_notelink
			nop
			jp	decode_cmd17_track_detune
			nop
			jp	decode_cmd18_trigger
			nop
			jp	decode_cmd19_speed
			nop
	; SoundChip Specific
			jp	decode_cmd20_envelope_high
			nop
			jp	decode_cmd21_envelope_low
			nop
			jp	decode_cmd22_SCC_reset
			nop
			jp	decode_cmd23_SCC_duty
			nop
			jp	decode_cmd24_SCC_soften
			nop
			jp	decode_cmd25_SCC_waveform
			nop
			jp	decode_cmd26_SCC_morph_copy
			nop
			jp	decode_cmd27_SCC_morph_type
			nop
			jp	decode_cmd28_SCC_morph_speed
			nop
			jp	decode_cmd29_SCC_sample
			nop
			jp	decode_cmdex_transpose


			ds (-$) & 255

TRACK_Vibrato_sine:	; Sine table used for tremelo and vibrato
			db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00		      ; depth 	1
			db	$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$02,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00		      ; depth 	2
			db	$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$02,$02,$02,$02,$03,$03,$03,$03,$02,$02,$02,$02,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00		      ; depth 	3
			db	$00,$00,$00,$00,$00,$01,$01,$01,$01,$02,$02,$02,$03,$03,$04,$04,$04,$04,$03,$03,$02,$02,$02,$01,$01,$01,$01,$00,$00,$00,$00,$00		      ; depth 	4
			db	$00,$00,$00,$00,$01,$01,$01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$05,$05,$04,$04,$03,$03,$02,$02,$01,$01,$01,$01,$00,$00,$00,$00		      ; depth 	5
			db	$00,$00,$00,$00,$01,$01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$06,$06,$05,$05,$04,$04,$03,$03,$02,$02,$01,$01,$01,$00,$00,$00,$00		      ; depth 	6
			db	$00,$00,$00,$01,$01,$01,$02,$02,$03,$04,$04,$05,$06,$06,$07,$08,$08,$07,$06,$06,$05,$04,$04,$03,$02,$02,$01,$01,$01,$00,$00,$00		      ; depth 	7
			db	$00,$00,$01,$01,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0C,$0D,$0D,$0C,$0A,$09,$08,$07,$06,$05,$04,$03,$02,$01,$01,$01,$00,$00		      ; depth 	8
TRACK_Vibrato_sine_extended:	; Sine table used for tremelo and vibrato	
			db	$00,$00,$01,$02,$02,$04,$05,$06,$08,$09,$0B,$0D,$0F,$11,$13,$15,$15,$13,$11,$0F,$0D,$0B,$09,$08,$06,$05,$04,$02,$02,$01,$00,$00		      ; depth 	9
			db	$00,$01,$01,$02,$04,$05,$07,$09,$0B,$0E,$10,$13,$16,$19,$1C,$1F,$1F,$1C,$19,$16,$13,$10,$0E,$0B,$09,$07,$05,$04,$02,$01,$01,$00		      ; depth 	A
			db	$00,$01,$02,$03,$05,$08,$0B,$0E,$11,$15,$19,$1D,$21,$26,$2B,$2F,$2F,$2B,$26,$21,$1D,$19,$15,$11,$0E,$0B,$08,$05,$03,$02,$01,$00		      ; depth 	B
			db	$01,$01,$03,$05,$07,$0B,$0E,$12,$17,$1C,$21,$27,$2D,$33,$39,$3F,$3F,$39,$33,$2D,$27,$21,$1C,$17,$12,$0E,$0B,$07,$05,$03,$01,$01		      ; depth 	C



;===========================================================
; ---	replay_init
; Initialize replayer data
; Only call this on start-up
; Input: none
;===========================================================
replay_init:
			ld	a,4
			call	replay_set_SCC_balance
			ld	a,4
			call	replay_set_PSG_balance

			call	replay_equalization_off

			xor	a
			ld	(replay_mode),a
			ld	(replay_morph_speed),a


	;--- init Mixers
			call	replay_play_no

			ret

;===========================================================
; ---	replay_pause
; Stop/Restart music playback
; 
; Input: none
;===========================================================
replay_pause:
	;-- stop decoding and processing music data
			xor	a
			ld	(replay_mode),a
	;-- set mixers to silence.
			ld	a,0xBF
			ld	(PSG_regMIXER),a
			xor	a
			ld	(SCC_regMIXER),a
			ret


;===========================================================
; ---	replay_resume
; Resume music playback
; 
; Input: none
;===========================================================
replay_resume:
	;-- re-enable music decoding and processing
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
; ---	replay_set_SCC_balance
; Set the main volume for the SCC chip. This enables for
; setting the balance between SCC and PSG as some MSX models 
; default balance differs. 
;
; in: [A] master volume (0-4) 0=halve volume, 4=full volume. 
;===========================================================	
replay_set_SCC_balance:
			cp	5	; limit 
			ret	nc
			call	_getnewbalancebase
			ld	(replay_mainSCCvol),hl
			ret

;===========================================================
; ---	replay_set_PSG_balance
; Set the main volume for the PSG chip. This enables for
; setting the balance between SCC and PSG as some MSX models 
; default balance differs. 
;
; in: [A] master volume (0-7) 0=halve volume, 4=full volume. 
;===========================================================	
replay_set_PSG_balance:
			cp	5	; limit 
			ret	nc
			call	_getnewbalancebase
			ld	(replay_mainPSGvol),hl
			ret

_getnewbalancebase:
			add	a,a		; times 16
			add	a,a
			add	a,a
			add	a,a
			ld	hl,_VOLUME_TABLE-64
			add	a,l
			ld	l,a
			ret	nc
			inc	h
			ret

;===========================================================
; ---	replay_equalization_on
; Enables the speed equalization. 
; This to enable same speed playback on 50 and 60Hz. 
;===========================================================	
replay_equalization_on:
			ld	a,1
			ld	(equalization_cnt),a

	if MSX2
	;--- Only enable if in 60Hz mode
			ld	a,($FFE8)	; get mirror of VDP reg# 9
			and	00000010b
			xor	00000010b
	endif
			ld	(equalization_freq),a
			ret

;===========================================================
; ---	replay_equalization_off
; Disables the speed equalization. 
; This to enable same speed playback on 50 and 60Hz. 
;===========================================================	
replay_equalization_off:
			xor	a
			ld	(equalization_freq),a
			inc	a
			ld	(equalization_cnt),a
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
			ld	de,replay_wavebase
			ld	bc,20
			ldir
			ld	(replay_orderpointer),hl		; store pointer for next set
								; of track pointers
	;--- Initialize replayer variables.
			xor	a
			ld	(replay_speed_subtimer),a
			ld	(replay_arp_speed),a
			ld	(replay_fade),a


	;--- Set tonetable here as SCC and PSG share same tonetable
			ld	hl,TRACK_ToneTable_PSG			; Set the PSG note table
			ld	(replay_tonetable),hl

	;--- Silence the chips
			ld	(SCC_regMIXER),a
			ld	(PSG_regVOLA),a
			ld	(PSG_regVOLB),a
			ld	(PSG_regVOLC),a
			ld	(replay_noise),a
			ld	a,0xbf
			ld	(PSG_regMIXER),a
			ld	a,1
			ld	(replay_speed_timer),a
			ld	(replay_morph_type),a

	;--- Erase channel1 data in RAM
			ld	bc,TRACK_REC_SIZE-1
			ld	hl,TRACK_Chan1
			ld	de,TRACK_Chan1+1
			ld	(hl),0
			ldir

      ;--- Get start values instruments
			ld	hl,(replay_insbase)
			ld	a,(hl)
			inc	hl
			ld	h,(hl)
			ld	l,a

	;-- get waveform
			ld	a,(hl)
			inc	hl
			ld	(TRACK_Chan1+17+TRACK_Waveform),a

	;--- Store the macro start
			ld	a,l
			ld	(TRACK_Chan1+17+TRACK_MacroPointer),a
			ld	(TRACK_Chan1+17+TRACK_MacroStart),a
			ld	a,h
			ld	(TRACK_Chan1+17+TRACK_MacroPointer+1),a
			ld	(TRACK_Chan1+17+TRACK_MacroStart+1),a

      ;--- Default values
			ld	a,1
			ld	(TRACK_Chan1+17+TRACK_Delay),a
			ld	(TRACK_Chan1+17+TRACK_Instrument),a
			ld	a,128+64          ; 64 is to trigger a new waveform
			ld	(TRACK_Chan1+17+TRACK_Flags),a
			ld	a,$0f
			ld	(TRACK_Chan1+17+TRACK_Volume),a


      ;--- Copy data from channel1 to chan2 till 8
			ld	de,TRACK_Chan2
			ld	a,7
.replay_loadsong_loop:
			ld	hl,TRACK_Chan1
			ld	bc,TRACK_REC_SIZE
			ldir
			dec	a
			jp	nz,.replay_loadsong_loop

      ;--- Set PSG chan flags
			xor	a
			ld	(TRACK_Chan1+17+TRACK_Flags),a
			ld	(TRACK_Chan2+17+TRACK_Flags),a
			ld	(TRACK_Chan3+17+TRACK_Flags),a

			call	replay_route
			ld	a,1
			ld	(replay_mode),a
			ret


;===========================================================
; Set mixer values to silent.
;===========================================================
replay_play_no:
	; Silence PSG vol to avoid pops in sfx when music is not playing.
			xor	a
			ld	(PSG_regVOLA),a
			ld	(PSG_regVOLB),a
			ld	(PSG_regVOLC),a
	; Set mixers to silence
			ld	(SCC_regMIXER),a
			xor	$bf
			ld	(PSG_regMIXER),a
			ret

;===========================================================
; ---	replay_play
; Decode music data and process instruments and effects. 
; Music chip registers will be prepared for replay_route 
;
; Input none
;===========================================================	
replay_play:
	;---- SPEED EQUALIZATION 
			ld	a,(equalization_freq)		; 0 = 50Hz, otherwise 60Hz
			and	a
			jr	z,PAL			   		; if PAL process at any interrupt;

NTSC:
			ld	a,(equalization_cnt)  		; if NTSC call 5 times out of 6
			dec	a
			ld	(equalization_cnt),a
			jr	nz,PAL			   	; skip music data processing one tic out of 6

	;--- Reset timer and raise equalization flag
			ld	a,6
			ld	(equalization_cnt),a
			ret
PAL:
	;---- END SPEED EQUALIZATION	
			ld	a,(replay_mode)
			and	a
			jr	z,replay_play_no
           		; replay mode = 0	; halted
				; replay mode = 1	; active

	;--- The speed timer
			ld	hl,replay_speed_timer
			dec	(hl)
			jp	z,timer_end

	;--- check for end of pattern
			ld	hl,(TRACK_pointer1)
			ld	a,(hl)
			cp	191
			jp	nz,process_data	

	;--- Only proces when delay is ending next time
	;	Otherwise the loading of new pointers is too early
			ld	a,(TRACK_Chan1+17+TRACK_Delay)
			cp	1
			jp	nz,process_data		

	;---- Pattern end
	;--- Set track pointers to start?
			ld	hl,(replay_orderpointer)
			xor	a
			cp	(hl)
			jr	nz,.no_restart
			inc	hl
			cp	(hl)
			dec	hl
			jr	nz,.no_restart
	;--- next is restart order
			inc	hl
			inc	hl
			ld	a,(hl)
			inc	hl
			ld	h,(hl)
			ld	l,a
			cp	l
			jr	nz,.replay_order_restart
			and	a
			jr	nz,.replay_order_restart
	;--- STOP - There is no restart value
			call	replay_pause

			ret

.replay_order_restart:
.no_restart:
			ld	de,TRACK_pointer1
	rept 16
	ldi
	endm
			ld	(replay_orderpointer),hl		; store pointer for next set
								; of strack pointers
			jp	process_data	


timer_end:
	;--- Re-init Timer == 0
			xor	a
			ld	bc,(replay_speed)		; [b]	subtimer [c] speed
			srl	c				; bit	0 is halve speedstep
			adc	a,a
			xor	b				; alternate	speed	to have halve speed.
			ld	(replay_speed_subtimer),a
			add	a,c

			ld	(replay_speed_timer),a

;===========================================================
; ---	decode_data
; Process the patterndata 
;===========================================================
decode_data:
	;--- process the channels (tracks)
.decode1:
			ld	hl,TRACK_Chan1+17+TRACK_Delay
			dec	(hl)
			jr	nz,.decode2

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
			ld	hl,TRACK_Chan2+17+TRACK_Delay
			dec	(hl)
			jr	nz,.decode3

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
			ld	hl,TRACK_Chan3+17+TRACK_Delay
			dec	(hl)
			jr	nz,.decode4

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
			ld	hl,TRACK_Chan4+17+TRACK_Delay
			dec	(hl)
			jr	nz,.decode5

			ld	iyh,$00
			ld	a,(TRACK_Chan4+17+TRACK_Flags)
			ld	d,a		;'
			ld	a,(TRACK_Chan4+17+TRACK_Note)
			ld	ix,TRACK_Chan4+17
			ld	bc,(TRACK_pointer4)
			call	decode_data_chan
			ld	(TRACK_pointer4),bc
			ld	a,d			;'
			ld	(TRACK_Chan4+17+TRACK_Flags),a

.decode5:
			ld	hl,TRACK_Chan5+17+TRACK_Delay
			dec	(hl)
			jr	nz,.decode6

			ld	iyh,$20
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
			ld	hl,TRACK_Chan6+17+TRACK_Delay
			dec	(hl)
			jr	nz,.decode7

			ld	iyh,$40
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
			ld	hl,TRACK_Chan7+17+TRACK_Delay
			dec	(hl)
			jr	nz,.decode8

			ld	iyh,$60
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
			ld	hl,TRACK_Chan8+17+TRACK_Delay
			dec	(hl)
			jr	nz,.decode_end

	if SCC_I
                  ld	iyh,$80
	endif
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
			ld	a,(replay_morph_active)
			and	a
			call	nz,replay_process_morph

	;--- Initialize PSG Mixer and volume
;	xor	a
;	ld	(SCC_regMIXER),a
			ld	iyl,0

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
			jr	nc,.skipa
			ld	(PSG_regToneA),hl
.skipa:
			ld	a,(SCC_regVOLE)
			ld	(PSG_regVOLA),a

	;--------------------
	;--- Process track 2
	;--------------------
			ld	ix,TRACK_Chan2+17
			ld	a,(TRACK_Chan2+17+TRACK_Flags)
			ld	d,a
			call	process_data_chan
			jr	nc,.skipb
			ld	(PSG_regToneB),hl
.skipb:
			ld	a,(SCC_regVOLE)
			ld	(PSG_regVOLB),a

	;--------------------
	;--- Process track 3	
	;--------------------
			ld	ix,TRACK_Chan3+17
			ld	a,(TRACK_Chan3+17+TRACK_Flags)
			ld	d,a
			call	process_data_chan
			jr	nc,.skipc
			ld	(PSG_regToneC),hl
.skipc:
			ld	a,(SCC_regVOLE)
			ld	(PSG_regVOLC),a

	;--- To disable track 3 just comment above lines (9 lines) and enable below 2 lines.
	;	This can be done for all tracks.
;	ld	hl,SCC_regMIXER   
;	srl	(hl)

	;-- Convert mixer to AY
;	ld	a,(SCC_regMIXER)
			ld	a,iyl
			srl	a
			srl	a
			xor	0xbf
			ld	(PSG_regMIXER),a
;	xor	a
;	ld	(SCC_regMIXER),a
			ld	iyl,0

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
			call	process_data_chan
			jr	nc,skipd
			ld	(SCC_regToneA),hl
skipd:
			ld	a,(SCC_regVOLE)
			ld	(SCC_regVOLA),a

	;--------------------
	;--- Process track 5
	;--------------------
			ld	iyh,$20
			ld	ix,TRACK_Chan5+17
			ld	a,(TRACK_Chan5+17+TRACK_Flags)
			ld	d,a
			call	process_data_chan
			jr	nc,.skipe
			ld	(SCC_regToneB),hl
.skipe:
			ld	a,(SCC_regVOLE)
			ld	(SCC_regVOLB),a


	;--------------------
	;--- Process track 6
	;--------------------
			ld	iyh,$40
			ld	ix,TRACK_Chan6+17
			ld	a,(TRACK_Chan6+17+TRACK_Flags)
			ld	d,a
			call	process_data_chan
			jr	nc,.skipf
			ld	(SCC_regToneC),hl
.skipf:
			ld	a,(SCC_regVOLE)
			ld	(SCC_regVOLC),a

	;--------------------
	;--- Process track 7
	;--------------------
			ld	iyh,$60
			ld	ix,TRACK_Chan7+17
			ld	a,(TRACK_Chan7+17+TRACK_Flags)
			ld	d,a
			call	process_data_chan
			jr	nc,.skipg
			ld	(SCC_regToneD),hl
.skipg:
			ld	a,(SCC_regVOLE)
			ld	(SCC_regVOLD),a

	;--------------------
	;--- Process track 8
	;--------------------

	if SCC_I
                  ld	iyh,$80
	endif
							; no waveform for SCC channel 5
			ld	ix,TRACK_Chan8+17
			ld	a,(TRACK_Chan8+17+TRACK_Flags)
			ld	d,a
			call	process_data_chan
			jr	nc,.skiph
			ld	(SCC_regToneE),hl
.skiph:
			ld	a,iyl
			ld	(SCC_regMIXER),a

	;--------------------
	; Fade out processing
	;--------------------
			ld	a,(replay_fade)
			and	a
			ret	z	; if replay fade = 0 then no fade active

	; decrease fade timer
			ld	a,(replay_fade_timer)
			dec	a
			jr	nz,.no_new_step

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
			jr	nc,.no_carry
			xor	a
.no_carry:
			ld	(hl),a
			inc	hl
			djnz	.calc_vol
			ret


;--------------------


;--------------------	

;.no_EOT:
	;--- Check if we need to process data
;	ld 	a,(TRACK_Chan1+17+TRACK_Delay)
;	dec	a
;	jp	nz,process_data

;===========================================================
; ---	decode_data_chan
; Process the channel data
; 
; in BC is the pointer to the	data
;	D contains flags.
;===========================================================
decode_data_chan:

	;--- initialize data
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
			jr	z,_rd_eot			; EOT found  
			ld	(ix+TRACK_Delay),a
			ld	(ix+TRACK_prevDelay),a
			inc	bc

_replay_decode_trigger_porttone_check:
	;--- Check cmd active and note trigger?
			bit	B_TRGNOT,d
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
			ld	a,(ix+TRACK_cmd_3)
			jp	decode_cmd3_port_tone_new_note


_replay_decode_note:
			ld	(ix+TRACK_Note),a
			set	B_TRGNOT,d
;			res	B_ACTMOR,d

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
			inc	bc

			res	B_ACTMOR,d				; reset morph slave mode
			sub	_INS
			cp	(ix+TRACK_Instrument)
			jp	nz,.change
      ;--- Same ins
			ld	a,(bc)
			jp	_rdi

.change:
	;--- instrument change found	
			ld	(ix+TRACK_Instrument),a

	;--- set instrument pointer
			add	a,a
			ld	hl,(replay_insbase)
			add	a,l
			ld	l,a
			jr	nc,._replay_decode_ins_skip
			inc	h
._replay_decode_ins_skip:
			ld	a,(hl)
			inc	hl
			ld	h,(hl)
			ld	l,a

	;-- get waveform
			ld	a,(hl)
			inc	hl

			cp	(ix+TRACK_Waveform)
			jr	z,.skip_wav_trig
			set	B_TRGWAV,d
			ld	(ix+TRACK_Waveform),a

.skip_wav_trig:
	;--- Store the macro start
			ld	(ix+TRACK_MacroPointer),l
			ld	(ix+TRACK_MacroPointer+1),h
	;--- Store the macro re-start
			ld	(ix+TRACK_MacroStart),l
			ld	(ix+TRACK_MacroStart+1),h
			ld	a,(bc)
			jp	_rdi



_replay_decode_vol:
			sub	_VOL
			add	a,a
			add	a,a
			add	a,a
			add	a,a

	;--- Set new base	volume (high byte) but keep relative offset (low byte)
;	ld	e,a
;	ld	a,(ix+TRACK_Volume)
;	and	0xf
;	or	e
			ld	(ix+TRACK_Volume),a

			inc	bc
			ld	a,(bc)
			jp	_rdv



_replaydecode_cmd:
			sub	_CMD

			ld	e,a				; store command for later

			ld	hl,DECODE_CMDLIST
			add	a,a
			add	a,a
			add	a,l

			ld	l,a
			inc	bc
			ld	a,(bc)
			jp	(hl)



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

	;--- Check if we have a	note on the	same event
			bit	B_TRGNOT,d
			jp	z,_rdc

			res	B_TRGNOT,d

			call	decode_cmd3_port_tone_new_note
			jp	_rdc

decode_cmd3_port_tone_new_note:
	;-- remove deviation from parameter
			and	$7f
			ex	af,af'		;'
			exx

	;-- get the	previous note freq
			ld	a,(replay_previous_note)
			add	a,a
			ld	hl,(replay_tonetable)	;TRACK_ToneTable
			add	a,l
			ld	l,a
			jr	nc,.decode_cmd3_port_tone_new_note_skip
			inc	h
.decode_cmd3_port_tone_new_note_skip:
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
			add	a,a
			ld	hl,(replay_tonetable)	;TRACK_ToneTable
			add	a,l
			ld	l,a
			jr	nc,.decode_cmd3_port_tone_new_note_skip2
			inc	h
			or	a		; clear carry flag
.decode_cmd3_port_tone_new_note_skip2:
			ld	a,(hl)
			inc	hl
			ld	h,(hl)
			ld	l,a				; destination freq in [hl]

	;--- Calculate the delta
			ex	de,hl
			sbc	hl,de				; results in pos/neg delta

			ld	(ix+TRACK_cmd_ToneSlideAdd),l
			ld	(ix+TRACK_cmd_ToneSlideAdd+1),h

	;--- re-apply deviation
			ex	af,af'			;'
			bit	7,h
			jr	nz,.decode_cmd3_port_tone_new_note_skip3
			or	128
.decode_cmd3_port_tone_new_note_skip3:
			ld	(ix+TRACK_cmd_3),a
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
			jr	z,.depth
			ld	(ix+TRACK_cmd_4_step),a
			neg
			ld	(ix+TRACK_Step),a

.depth:
	;-- set the depth
			ld	a,e
			and	$f0
			jr	z,.decode_cmd4_vibrato_end		; set depth when 0 only when command was not active.

			cp	$90
			jr	c,.skip_extended
	;--- extended
			sub	$80
			ld	e,11
			ld	(ix+TRACK_Command),e

.skip_extended:
			sub	$10
			add	a,a
			ld	(ix+TRACK_cmd_4_depth),a

.decode_cmd4_vibrato_end:
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
			and	$7f
			ld	(ix+TRACK_Timer),a
			set	B_TRGCMD,d
			jp	_rdc


decode_cmd9_note_cut:
			set	B_TRGCMD,d
			ld	(ix+TRACK_Command),e
			ld	(ix+TRACK_Timer),a		; set	the timer to param y
			jp	_rdc


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



decode_cmd13_arp_speed:
			ld	(replay_arp_speed),a		; store the halve not to add
			jp	_rdc



decode_cmd14_fine_up:
			ld	(ix+TRACK_cmd_ToneSlideAdd),a
			ld	(ix+TRACK_cmd_ToneSlideAdd+1),0
			jp	_rdc

decode_cmd15_fine_down:
			ld	(ix+TRACK_cmd_ToneSlideAdd),a
			ld	(ix+TRACK_cmd_ToneSlideAdd+1),$ff
			jp	_rdc


decode_cmd16_notelink:
			res	B_TRGNOT,d
			jp	_rdc_noinc

decode_cmd17_track_detune:
	; This command sets the	detune of the track.
			ld	e,a
			and	0x07		; low	4 bits is value
			bit	3,e		; Center around 8
			jr	z,.decode_cmd17_track_detune_pos
			cpl
			ld	(ix+TRACK_cmd_detune),a
			ld	(ix+TRACK_cmd_detune+1),0xff

			jp	_rdc

.decode_cmd17_track_detune_pos:
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
			adc	a,a				; store carry of shift as subtimer
			ld	(replay_speed_subtimer),a
			add	a,e
			ld	(replay_speed_timer),a

			jp	_rdc



	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; This command set the envelope frequency using a
	; multiplier value (00-ff)
decode_cmd20_envelope_high:
			ld	(PSG_regEnvH),a
			jp	_rdc

	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; This command set the envelope frequency using a
	; multiplier value (00-ff)
decode_cmd21_envelope_low:
			ld	(PSG_regEnvL),a
			jp	_rdc



decode_cmd22_SCC_reset:
			set	B_TRGWAV,d
			res	B_ACTMOR,d

	;--- Look up the waveform form the instrument.
			ld	l,(ix+TRACK_MacroPointer)
			ld	h,(ix+TRACK_MacroPointer+1)
			inc	hl
			inc	hl
			ld	a,(hl)
			ld	(ix+TRACK_Waveform),a
			ret
			jp	_rdc_noinc


decode_cmd23_SCC_duty:
	;=================
	; Waveform PWM / Duty Cycle
	; Do not overwrite [BC] and [D](flags)
	;=================
			res	B_ACTMOR,d			;(ix+TRACK_Flags)	; reset morph
			set	B_TRGWAV,d			;(ix+TRACK_Flags)	; reset normal wave update

			set	0,(ix+TRACK_Waveform)   ; set RAM update

			ld	e,a		; store in length in E for later		
			ex	af,af'
	;get the waveform	start	in [DE]
			ld	hl,_0x9800
			ld	a,iyh		;ixh contains chan#
			add	a,l
			ld	l,a
			jr	nc,.decode_cmd23_SCC_duty_skip
			inc	h
.decode_cmd23_SCC_duty_skip:
			ld	a,e
			ex	af,af'	; store for later
			inc	a
			ld	e,$77		; store for the other loop
.wspw_loop_h:
			ld	(hl),e
			inc	hl
			dec	a
			jp	nz,.wspw_loop_h

			ex	af,af'	; restore the initial length
			sub	31

			ld	e,$87
.wspw_loop_l:
			ld	(hl),e
			inc	hl
			dec	a
			jp	nz,.wspw_loop_l

			jp	_rdc


decode_cmd24_SCC_soften:
	;=================
	; Waveform Soften
	; Do not overwrite [BC] and [D](flags)
	;=================
			res	B_ACTMOR,d			;(ix+TRACK_Flags)	; reset morph
			set	B_TRGWAV,d			;(ix+TRACK_Flags)	; reset normal wave update

			ld	a,d			; Preserve flags
			ex	af,af'

	;get the waveform	start	in [hl]
			ld	l,(ix+TRACK_Waveform)
			set	0,(ix+TRACK_Waveform)
			ld	h,0
			add	hl,hl
			add	hl,hl



			ld	de,(replay_wavebase)
			add	hl,de

	;get the waveform destination address in [DE]
			ld	de,_0x9800
			ld	a,iyh		;ixh contains chan#
			add	a,e
			ld	e,a
			jr	nc,.decode_cmd24_SCC_soften_skip
			inc	d
.decode_cmd24_SCC_soften_skip:
			ld	iyl,32
.softloop:
			ld	a,(hl)
			sra	a
			ld	(de),a
			inc	hl
			inc	de
			dec	iyl
			jp	nz,.softloop
.decode_cmd24_SCC_soften_end:
			ex	af,af'
			ld	d,a		; restore flags
			jp	_rdc_noinc

	;=================
	; Waveform Set
	; Do not overwrite [BC] and [D](flags)
	;=================
decode_cmd25_SCC_waveform:
			ld	(ix+TRACK_Waveform),a
			set	B_TRGWAV,d
			res	B_ACTMOR,d
			jp	_rdc


	;=================
	; Waveform Morph
	; Do not overwrite [BC] and [D](flags)
	;=================
decode_cmd12_SCC_morph:
			push	bc			; Preserve pointer

			ld	(replay_morph_waveform),a
			xor	a
			ld	(replay_morph_counter),a
			inc	a
			ld	(replay_morph_timer),a
			ld	a,(replay_morph_type)
                  cp    1
                  jp    c,.morph_fromtrack      
                  jp    z,.morph_fromregister   

.morph_chorus: 
                  ld	a,ixl
                  sub	7
                  ld	(replay_morph_flags),a
                  ld	a,0
                  sbc	a,ixh

                  ld	(replay_morph_flags+1),a

			ld	l,(ix+TRACK_Waveform)
			ld	h,0
			add	hl,hl
			add	hl,hl

			ld	bc,(replay_wavebase)
			add	hl,bc

			ld	bc,replay_morph_buffer
			ld	a,32
.loop44_1:
			ex	af,af'	;'
			ld	a,(hl)
                  sra   a
                  sra   a
			ld	(bc),a
			inc	hl
			inc	bc		; copy to value (skip delta value byte)
			inc	bc
			ex	af,af'	;'
			dec	a
			jp	nz,.loop44_1
			jp	.morph_copy


.morph_fromregister:
	if EXTERNAL_SCC
	;--- Init the SCC	(waveforms too)
			ld	a,(SCC_slot)
			ld	h,0x80
			call	enaslt
	if SCC_I
	            ; --- SCC+ enable
	            ld   a, 0x20
	            ld   (0xBFFE), a      ; Unlock waveform RAM for writing
	            ld   a,0x80
	            ld   (0xB000), a      ; Map SCC-I registers into page 3

	else
			ld	a,03Fh				; enable SCC
			ld	(0x9000),a
	endif
	endif

	if SCC_I
	;--- Set HL to the buffer of the last written waveform
			ld	h,$B8
	else
	;--- Set HL to the buffer of the last written waveform
			ld	h,$98
	endif
			ld	a,iyh
			ld	l,a

			ld	bc,replay_morph_buffer
			ld	a,32
.loop44_2:
			ex	af,af'	;'
			ld	a,(hl)
			inc	bc		; copy to value (skip delta value byte)
			ld	(bc),a
			inc	hl
			inc	bc
			ex	af,af'	;'
			dec	a
			jp	nz,.loop44_2

	if EXTERNAL_SCC
			ld	a,(mapper_slot)
			ld	h,0x80
			call	enaslt
	endif
			jp	.morph_copy


.morph_fromtrack:
	;--- Set HL to the waveform set by instrument or B1y or B2y
			ld	l,(ix+TRACK_Waveform)
			ld	h,0
			add	hl,hl
			add	hl,hl

			ld	bc,(replay_wavebase)
			add	hl,bc

			ld	bc,replay_morph_buffer
			ld	a,32
.loop44_3:
			ex	af,af'	;'
			ld	a,(hl)
			inc	bc		; copy to value (skip delta value byte)
			ld	(bc),a
			inc	hl
			inc	bc
			ex	af,af'	;'
			dec	a
			jp	nz,.loop44_3

.morph_copy:
	;--- calculate the delta's	
			ld	a,255				; 255 triggers calc init
			ld	(replay_morph_active),a
			set	B_ACTMOR,d
			pop	bc			; Restore the pointer
			jp	_rdc


	;================= 
	; Waveform Morph copy /follow
	; Do not overwrite [BC] and [D](flags)
	;=================
decode_cmd26_SCC_morph_copy:
			set	B_ACTMOR,d
			jp	_rdc_noinc


	;=================
	; Waveform Morph type
	; Do not overwrite [BC] and [D](flags)
	;=================
decode_cmd27_SCC_morph_type:
			ld	(replay_morph_type),a
			jp	_rdc


	;=================
	; Waveform Morph speed
	; Do not overwrite [BC] and [D](flags)
	;=================
decode_cmd28_SCC_morph_speed:
			ld	(replay_morph_speed),a
			jp	_rdc

	;=================
	; Waveform Morph
	; Do not overwrite [BC] and [D](flags)
	;=================
decode_cmd29_SCC_sample:
			jp	_rdc


	; in:	[A] contains the paramvalue
	; 
	; ! do not change	[BC] this is the data pointer
	;--------------------------------------------------
	; This command set global tone table base
	;
decode_cmdex_transpose:
			ld	e,a
	;--- save the flags in D
			ld	a,d
			ex	af,af'

			inc	bc
			ld	a,(bc)
			ld	d,a

			ld	hl,TRACK_ToneTable_PSG
			add	hl,de
			ld	(replay_tonetable),hl

	;--- restore the flag is D
			ex	af,af'
			ld	d,a
			jp	_rdc





;===========================================================
; ---process_data_chan
; Process the cmd/instrument/note and vol data 
; 
; in HL is the current tone freq
; in D is TRACK_FLAGS  
;===========================================================
process_data_chan:
	;-- set the	mixer	right
;	ld	hl,SCC_regMIXER   
;	rrc	(hl)
			ld	a,iyl
			rrc	a
			ld	iyl,a

	;=====
	; COMMAND
	;=====
			ld	(ix+TRACK_cmd_NoteAdd),0			; Always reset note add
			bit	B_TRGCMD,d	;(ix+TRACK_Flags)
			jr	z,process_note

			ld	h,PROCESS_CMDLIST>>8
			ld	a,(ix+TRACK_Command)
			add	a,a
			add	a,a
			add	a,PROCESS_CMDLIST&255

			ld	l,a
			jp	hl

process_note:
process_commandEND:

	;=====
	; Note
	;=====
	;--- Check if we need to trigger a new note
			bit	B_TRGNOT,d	;(ix+TRACK_Flags)
			jr	z,process_noNoteTrigger


process_triggerNote:
	;--- get new Note
			res	B_TRGNOT,d		;(ix+TRACK_Flags)		; reset trigger note flag
			set	B_ACTNOT,d		;(ix+TRACK_Flags)		; set	note active	flag

			ld	l,(ix+TRACK_MacroStart)
			ld	h,(ix+TRACK_MacroStart+1)
;	;--- Store the macro start	
			ld	(ix+TRACK_MacroPointer),l
			ld	(ix+TRACK_MacroPointer+1),h


			ld	(_SP_Storage),sp
			ld	sp,ix
			pop	af				; Move just after TRACK_cmd_ToneAdd			
			pop	af

			ld	hl,0
			push	hl				; clear TRACK_cmd_ToneAdd	
			push	hl				; clear TRACK_cmd_ToneSlideAdd
			push	hl				; clear TRACK_cmd_VolumeAdd + TRACK_Noise	
			push	hl				; clear TRACK_VolumeAdd +TRACK_ToneAdd (high)
			push	hl				; clear TRACK_ToneAdd(low)+ TRACK_empty
			ld	sp,(_SP_Storage)

process_noNoteTrigger:
	;==============
	; Macro instrument
	;==============
			bit	B_ACTNOT,d			;(ix+TRACK_Flags)
			ld	(ix+TRACK_Flags),d
			jp	z,process_noNoteActive

	;--- Get the macro len and loop
			ld	e,(ix+TRACK_MacroPointer)
			ld	d,(ix+TRACK_MacroPointer+1)

			ld	h,MACROACTIONLIST>>8
      ;-- Important: Make sure not to change register H in the macro handling 
process_macro:
			ld	a,(de)
			inc	de
			add	a,a
			ld	l,a
			jp	hl

macro_mixer:
			ld	a,(de)
			inc	de
;	ld	b,a
;	ld	a,(SCC_regMIXER)   
;	or	b
;	ld	(SCC_regMIXER),a
			or	iyl
			ld	iyl,a
			jp	process_macro


macro_tone_add:
			ld	a,(de)
			inc	de
			add	a,(ix+TRACK_ToneAdd)

			ld	(ix+TRACK_ToneAdd),a
			ld	a,(de)
			adc	a,(ix+TRACK_ToneAdd+1)

			ld	(ix+TRACK_ToneAdd+1),a
			inc	de
			jp	process_macro


macro_noise_base:
			ld	a,(de)
			inc	de
			ld	(ix+TRACK_Noise),a
			ld	(replay_noise),a
			jp	process_macro

;macro_noise_sub:
macro_noise_add:
			ld	a,(de)
			inc	de
			add	a,(ix+TRACK_Noise)

			ld	(ix+TRACK_Noise),a
			ld	(replay_noise),a
			jp	process_macro

macro_noise_vol:
			inc	de
			jp	process_macro


macro_voice:
			ld	a,(de)
			inc	de
			ld	(ix+TRACK_Waveform),a
	;---- check this code perhaps this needs more checks.
			set	B_TRGWAV,(ix+TRACK_Flags)
			res	B_ACTMOR,(ix+TRACK_Flags)
			jp	process_macro


macro_envelope_shape:
			ld	a,(de)
			inc	de
			ld	(PSG_regEnvShape),a

macro_envelope:
			ld	a,16			; set volume to 16 == envelope
			ld	(SCC_regVOLE),a
			jp	_macro_end


macro_loop:
			ex	de,hl
			ld	c,(hl)
			ld	b,$ff
			add	hl,bc
			ex	de,hl
			jp	process_macro

macro_stop:
			res	B_ACTNOT,(ix+TRACK_Flags)
     ; continue into volume same
macro_volume_same:
			ld	a,(ix+TRACK_VolumeAdd)
			jp	_macro_set_volume


macro_vol_base:
			ld	a,(de)
			inc	de
			ld	(ix+TRACK_VolumeAdd),a
			jp	_macro_set_volume


macro_vol_add:
			ld	a,(de)
			inc	de
			add	a,(ix+TRACK_VolumeAdd)

			cp	16
			jr	c,.macro_vol_add_nolimit
			ld	a,$0f
.macro_vol_add_nolimit:
			ld	(ix+TRACK_VolumeAdd),a
			jp	_macro_set_volume


macro_vol_sub:
			ld	a,(de)
			ld	h,a
			inc	de
			ld	a,(ix+TRACK_VolumeAdd)
			sub	h
			jr	nc,.macro_vol_sub_nolimit
			xor	a
.macro_vol_sub_nolimit:
			ld	(ix+TRACK_VolumeAdd),a

;-- Set the output volume directly after any update
_macro_set_volume:
			or	(ix+TRACK_Volume)

	if TREMOLO_OFF
	else
			ld	b,(ix+TRACK_cmd_VolumeAdd)
			sub	b

			jr	nc,._macro_set_volume_skip2
			add	a,b
			and	0x0f
	endif
._macro_set_volume_skip2:
	;--- apply main volume balance
			ld	bc,(replay_mainvol)
			add	a,c
			ld	c,a
			jr	nc,._macro_set_volume_skip
			inc	b
._macro_set_volume_skip:
			ld	a,(bc)
	; Test which CHIP.
			bit	B_PSGSCC,(ix+TRACK_Flags)
			jr	nz,._macro_set_volume_skip3
			rra
			rra
			rra
			rra
._macro_set_volume_skip3:
			and	0x0f
			ld	(SCC_regVOLE),a

_macro_end:
	;--- Store macro pointer
			ld	(ix+TRACK_MacroPointer),e		;--- store pointer for next time
			ld	(ix+TRACK_MacroPointer+1),d

	;-- Get the current note
			ld	a,(ix+TRACK_Note)
			add	a,(ix+TRACK_cmd_NoteAdd)
			add	a,a

			ld	hl,(replay_tonetable)
			add	a,l
			ld	l,a
			jr	nc,._macro_end_skip
			inc	h
._macro_end_skip:
			ld	a,(hl)	;--- Store the note tone value in hl
			inc	hl
			ld	h,(hl)
			ld	l,a

	; NOTE Check deze BC nog eens goed na.	
			ld	c,(ix+TRACK_ToneAdd)
			ld	b,(ix+TRACK_ToneAdd+1)
			add	hl,bc		;--- Store tone deviation		


	;-- set the detune.
			ld	(_SP_Storage),sp
			ld	sp,ix
			pop	bc		; cmd_ToneSlideAdd
			add	hl,bc
			pop	bc		; cmd_ToneAdd

	;--- Fix SCC persiod offset
			bit	B_PSGSCC,(ix+TRACK_Flags)
			jr	z,.tonePSG
.toneSCC:
			dec	bc		; SCC tone is -1 of PSG tone
.tonePSG:
			add	hl,bc
			pop	bc		; TRACK_cmd_detune
			add	hl,bc
			ld	sp,(_SP_Storage)

	;--- Return the tone register value
			scf		; no cary is update the register value
			ret


process_noNoteActive:
	;-- Silence
			xor	a			; also clears the carry flag.
			ld	(SCC_regVOLE),a
			ret




process_cmd0_arpeggio:
			ld	a,(ix+TRACK_Timer)
			and	a
			jp	z,.nextNote

			dec	a
			ld	(IX+TRACK_Timer),a
			ld	a,(ix+TRACK_Step)
			and	a
			jr	z,.process_cmd0_arpeggio_skip
			ld	a,(IX+TRACK_cmd_0)
			and	$0f
			ld	(ix+TRACK_cmd_NoteAdd),a
			jp	process_commandEND
.process_cmd0_arpeggio_skip:
			ld	(ix+TRACK_cmd_NoteAdd),0
			jp	process_commandEND

.nextNote:
	; re-init the speed.
			ld	a,(replay_arp_speed)
			ld	(IX+TRACK_Timer),a

			ld	a,(ix+TRACK_Step)
			and	a
			jr	nz,.process_cmd0_arpeggio_skip1
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
			jp	process_commandEND

.process_cmd0_arpeggio_skip1:
			dec	a
			jr	nz,.process_cmd0_arpeggio_skip2
	;--- set y
			ld	(ix+TRACK_Step),2
			ld	a,(ix+TRACK_cmd_0)
			rlca
			rlca
			rlca
			rlca
			ld	(ix+TRACK_cmd_0),a
			and	0x0f
			jr	nz,.process_cmd0_arpeggio_zero
		;--- if zero then skip this note and set step to start
			ld	(ix+TRACK_Step),0
.process_cmd0_arpeggio_zero:
			ld	(ix+TRACK_cmd_NoteAdd),a
			jp	process_commandEND

.process_cmd0_arpeggio_skip2:
	;--- set none
			ld	(ix+TRACK_Step),0
			ld	(ix+TRACK_cmd_NoteAdd),0
			jp	process_commandEND



process_cmd1_port_up:
			ld	a,(ix+TRACK_cmd_ToneSlideAdd)
			sub	(ix+TRACK_cmd_1)
			ld	(ix+TRACK_cmd_ToneSlideAdd),a
			jp	nc,process_commandEND
			dec	(ix+TRACK_cmd_ToneSlideAdd+1)
			jp	process_commandEND

process_cmd2_port_down:
			ld	a,(ix+TRACK_cmd_ToneSlideAdd)
			add	a,(ix+TRACK_cmd_2)

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
			jp	nc,.process_cmd3_add_skip
			inc	h
.process_cmd3_add_skip:
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
			res	B_TRGCMD,d		;(ix+TRACK_Flags)
			ld	(ix+TRACK_cmd_ToneSlideAdd),0
			ld	(ix+TRACK_cmd_ToneSlideAdd+1),0
			jp	process_commandEND



process_cmd8_tremolo:
	if TREMOLO_OFF
	else
	;=================================
	;
	; tremolo	
	;
	;=================================	
			ld	h,TRACK_Vibrato_sine>>8
	;--- Get next step
			ld	a,(IX+TRACK_Step)
			add	a,(ix+TRACK_cmd_4_step)

			and	$3F			; max	64
			ld	(ix+TRACK_Step),a
			sra	a			; devide step by 2

			add	a,(ix+TRACK_cmd_4_depth)

			ld	l,a
			ld	a,(hl)
			add	a,a
			add	a,a
			add	a,a
			add	a,a
			ld	(ix+TRACK_cmd_VolumeAdd),a
	endif
			jp	process_commandEND


	;=================================
	;
	; Vibrato	
	;
	;=================================
process_cmd4_vibrato_extended:
			ld	h,TRACK_Vibrato_sine_extended>>8
			jp	process_cmd4_vibrato_ext
	;=================================
	;
	; Vibrato	
	;
	;=================================
process_cmd4_vibrato:
			ld	h,TRACK_Vibrato_sine>>8
process_cmd4_vibrato_ext:
	;--- Get next step
			ld	a,(IX+TRACK_Step)
			add	a,(ix+TRACK_cmd_4_step)

			and	$3F			; max	64
			ld	(ix+TRACK_Step),a

			bit	5,a			; step 32-63 the neg	
			jr	z,.process_cmd4_vibrato_pos

.neg:
			and	$1f	; make it 32 steps again
			add	a,(ix+TRACK_cmd_4_depth)

			ld	l,a
			ld	a,(hl)
			neg
			jp	z,.process_cmd4_vibrato_zero			; $ff00 gives strange result ;)	
			ld	(ix+TRACK_cmd_ToneAdd),a
			ld	(ix+TRACK_cmd_ToneAdd+1),0xff
			jp	process_commandEND

.process_cmd4_vibrato_pos:
			add	a,(ix+TRACK_cmd_4_depth)

			ld	l,a
			ld	a,(hl)
.process_cmd4_vibrato_zero:
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

			ld	a,(IX+TRACK_Volume)
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
			add	a,$10

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
			set	B_TRGNOT,d		      ; set	trigger note flag
			res	B_TRGCMD,d	      	; reset trigger cmd flag

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
			ld	hl,PSG_registers+13
			ld	bc,$0c00+PSG_DATA			; 12 seq reg updates + port $a1

	;--- Envelope shape R#13
			ld	a,(hl)
			and	a				; Value to write?
			jr	z,_ptAY_noEnv
			ld	d,a
			ld	a,$0d
			out	(PSG_WRITE),a
			out	(c),d
			ld	(hl),0			;reset the envwrite	
_ptAY_noEnv:
			dec	hl
			ld	a,$0c				; Start at reg $0c 

	;--- Rolled out psg update 6 times
			out	(PSG_WRITE),a			; reg c
			dec	a
			outd
			out	(PSG_WRITE),a			; reg b
			dec	a
			outd
			out	(PSG_WRITE),a			; reg	a
			dec	a
			outd
			out	(PSG_WRITE),a			; reg	9
			dec	a
			outd
			out	(PSG_WRITE),a			; reg 8
			dec	a
			outd
			out	(PSG_WRITE),a			; reg 7
			dec	a
			outd
			out	(PSG_WRITE),a			; reg 6
			outd
			dec	a
			ld	d,$ff
_ptAY_loop:
			dec	a
			out	(PSG_WRITE),a
			out	(c),d
			inc	a
			out	(PSG_WRITE),a
			outd
			dec	a
			out	(PSG_WRITE),a
			outd
			dec	a
			jp	p,_ptAY_loop
;--------------
; S C	C 
;--------------
	if EXTERNAL_SCC
	;--- Init the SCC	(waveforms too)
			ld	a,(SCC_slot)
			ld	h,0x80
			call	enaslt
	endif
	if SCC_I
	            ; --- SCC+ enable
	            ld   a,0x80
	            ld   (0xB000), a      ; Map SCC-I registers into page 3

	            ld   a, 0x20
	            ld   (0xBFFE), a      ; Unlock waveform RAM for writing

	else
			ld	a,03Fh				; enable SCC
			ld	(0x9000),a
	endif
	;--- Set the waveforms
			ld	hl,TRACK_Chan4+17+TRACK_Flags
			bit	B_TRGWAV,(hl)
			jr	z,._ptAY_loop_skip1

	;--- set wave form
	if SCC_I      
			ld	de,0xB800
	else
			ld	de,0x9800
	endif
			call	_write_SCC_wave_NEW
._ptAY_loop_skip1:
			ld	hl,TRACK_Chan5+17+TRACK_Flags
			bit	B_TRGWAV,(hl)
			jr	z,._ptAY_loop_skip2

	;--- set wave form
	if SCC_I
			ld	de,0xB820
	else
			ld	de,0x9820
	endif
			call	_write_SCC_wave_NEW
._ptAY_loop_skip2:
			ld	hl,TRACK_Chan6+17+TRACK_Flags
			bit	B_TRGWAV,(hl)
			jr	z,._ptAY_loop_skip3

	;--- set wave form
	if SCC_I
			ld	de,0xB840
	else
			ld	de,0x9840
	endif
			call	_write_SCC_wave_NEW
._ptAY_loop_skip3:
			ld	hl,TRACK_Chan7+17+TRACK_Flags
			bit	B_TRGWAV,(hl)
			jr	z,.skip4

	;--- set wave form
	if SCC_I      
			ld	de,0xB860
	else
			ld	de,0x9860
	endif
			call	_write_SCC_wave_NEW
.skip4:
	if SCC_I
			ld	hl,TRACK_Chan8+17+TRACK_Flags
			bit	B_TRGWAV,(hl)
			jr	z,.skip5
	;--- set wave form
			ld	de,0xB880
			call	_write_SCC_wave_NEW
.skip5:
	endif

scc_reg_update:

	if SCC_I
			ld	de,$B8A0
			ld	bc,0xB8A0+(3*5) 
	else
			ld	de,$9880
			ld	bc,0x9880+(3*5)
	endif


;    ;--- Update changed SCC registers.
			ld	hl,oldregs+(3*5)
			ld	de,SCC_registers+(3*5)
            ld    iyh,(3*5)+1

.scc_reg_update_loop:
			ld	a,(de)
			cp	(hl)
			jr	z,.scc_reg_update_skip
			ld	(hl),a
			ld	(bc),a                         ; update scc    registers
.scc_reg_update_skip:
			dec	de
			dec	hl
			dec	bc
                  dec   iyh
			jp	nz,.scc_reg_update_loop


	if EXTERNAL_SCC
			ld	a,(mapper_slot)
			ld	h,0x80
			call	enaslt
	endif
			ret



;==================
; _write_SCC_wave
;
; Writes waveform	data.	[DE] contains location for data
; [A]	contains waveform	number + flags for special actions
; Data is not written to SCC but into RAM	shadow registers.
;==================
_write_SCC_wave_NEW:
			res	B_TRGWAV,(hl)
			bit	B_ACTMOR,(hl)
			jp	nz,.bufferwave
			dec	hl

			ld	a,(hl)
			bit	0,a               ; bit 0 and 1 indicate type of wave update
			jp	z,.normalwave    ; x0 = normal wave from song data
	if SFXPLAY_ENABLED
;-- This code is needed when SFX are played on PSG and SCC 
;      bit   1,a               
;      jp    z,.ramwave        ; 01 = wave update from channel buffer
;.sfxwave:                     ; 11 = wave update from sfx data
;	and	11111000b
;	ld	l,a
;	ld	h,0
;	add	hl,hl
;	add	hl,hl
;		
;	ld	bc,SFX_WAVEBASE
;	add	hl,bc
;	jp	.copy_wave_fast
	endif
;--- Wave update from channel wave buffer *(soften, dutycycle, etc)
.ramwave:
			and	$fe
			ld	(hl),a

			ld	hl,_0x9800
			ld	a,e
			add	a,l
			ld	l,a
			jr	nc,._write_SCC_wave_NEW_skip
			inc	h
._write_SCC_wave_NEW_skip:
			jp	.copy_wave_fast


;--- Wave update from song data
.normalwave:
			ld	l,a
			ld	h,0
			add	hl,hl
			add	hl,hl

			ld	bc,(replay_wavebase)
			add	hl,bc
.copy_wave_fast:
	;--- Fastest way to copy waveform to SCC
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi		; 8
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi		; 16
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi		; 24
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi
			ldi		; 32

			ret



;--- wave update from generic buffer (morph)
.bufferwave:
			ld	hl,replay_morph_buffer
_wss_l:
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			inc	hl
			ldi
			ret




;=============
; in [A] the morph active status	
replay_process_morph:
			ld	hl,replay_morph_timer
			dec	(hl)
			ret	nz

	;--- trigger any waveform updates
	if SCC_I
			ld	b,5
	else
                  ld    b,4
	endif
			ld	de,TRACK_REC_SIZE
			ld	hl,TRACK_Chan4+17+TRACK_Flags
.replay_process_morph_loop:
			bit	B_ACTMOR,(hl)
			jr	z,.replay_process_morph_skip
			set	B_TRGWAV,(hl)
.replay_process_morph_skip:
			add	hl,de
			djnz	.replay_process_morph_loop

	ld	a,(replay_morph_type)
	cp	2
	jp	c,.morph
	jp	z,.chorus_cont
.chorus:
	;--- Test to restart effect
	ld	bc,(replay_morph_flags)
	ld	a,(bc)
	bit	B_TRGNOT,a
	jp	z,.chorus_cont
	xor	a
	ld	(replay_morph_counter),a

.chorus_cont:	
	ld	a,(replay_morph_speed)
	ld	(replay_morph_timer),a

	;--- Increase the step
	ld	a,(replay_morph_counter)
	inc	a
      and   31
	ld	(replay_morph_counter),a
	ld	b,a	

	ld	a,(replay_morph_waveform)
	ld	l,a
	ld	h,0
	add	hl,hl
	add	hl,hl
	ld	de,(replay_wavebase)
	add	hl,de
	ld	de,replay_morph_buffer
	ex	de,hl

	push	de		;--- safe addres for second loop

	ld	a,b
	add	a,e
	ld	e,a
	jr	nc,.skip99
	inc	d
.skip99:
	;--- set number of loops 1st run
	ld	a,32
	sub	b

	ld	hl,replay_morph_buffer
	;--- Check if step == 0 (chorus wave offset is at begining)
	cp	32
	jp	z,.loop_skip	; then only do 2 loop

.loop1_add:	
	ex	af,af'
	ld	a,(de)
	sra	a
	add	a,(hl)

	inc	hl
	ld	(hl),a
	inc	hl
	inc	de
	ex	af,af'
	dec	a
	jp	nz,.loop1_add

	;--- set number of loop 2nd run
	ld	a,(replay_morph_counter)
.loop_skip:
	pop	de

.loop2_add:	
	ex	af,af'
	ld	a,(de)
	sra	a
	add	a,(hl)

	inc	hl
	ld	(hl),a
	inc	hl
	inc	de
	ex	af,af'
	dec	a
	jp	nz,.loop2_add
.loop_end:
	ret

.morph:
			ld	a,(replay_morph_active)
	;---- timer ended.
			inc	a
			jp	nz,_rpm_next_step		; if status was !=255 then skip init
	;---- calculate offset
			inc	a
			ld	(replay_morph_active),a		; set status to 1
			ld	a,(replay_morph_speed)
			inc	a
			ld	(replay_morph_timer),a

	;--- calculate the delta's
			ld	a,(replay_morph_waveform)
			ld	l,a
			ld	h,0
			add	hl,hl
			add	hl,hl
			ld	de,(replay_wavebase)
			add	hl,de
			ld	de,replay_morph_buffer


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
			inc	a
			ld	(replay_morph_timer),a

	;-- apply the delta's
			ld	a,(replay_morph_counter)
			ld	c,a
			add	a,16

			ld	(replay_morph_counter),a
			jr	nz,._rpm_next_step_skip
	;--- end morph
			ld	(replay_morph_active),a

._rpm_next_step_skip:
			dec	c
			ld	hl,replay_morph_buffer
			ld	b,32
_rpm_ns_loop:
			ld	a,(hl)
			bit	4,a
			jp	z,_rmp_ns_add
_rmp_ns_sub:
	;--- handle corection
			and	$ef
			cp	c		; correction < counteR?
			jr	c,._rmp_ns_sub_skip
			inc	a		; if smaller C was set
._rmp_ns_sub_skip:
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
			jr	c,._rmp_ns_add_skip
			inc	a		; if smaller C was set
._rmp_ns_add_skip:
			and	00011111b	; keep lower 5 bits
			inc	hl
			add	a,(hl)		; subtract waveform value
			ld	(hl),a	; load new value
			inc	hl
			djnz	_rpm_ns_loop
			ret



