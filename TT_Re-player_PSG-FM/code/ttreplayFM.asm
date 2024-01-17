;=================================
; TriloTracker Re-player FM
; 
; Functions:
; 	replay_init
;	replay_pause
;	replay_resume
;	replay_fade_out
;	replay_set_FM_balance
;	replay_set_PSG_balance
;	replay_equalization_on
;	replay_equalization_off
;	replay_load_song
;================================
FM_WRITE:	equ	0x7c	; port to set fm reg nr.
FM_DATA:	equ	0x7d	; port to set fm data for reg.	
PSG_WRITE:	equ	0xa0	; port to set psg reg nr.
PSG_DATA:	equ	0xa1	; port to set psg data for reg.
;===============================
_REL:		equ	96	; = release
_SUS:		equ	97	; = sustain
_VOL:		equ	98	; = volume 0
_INS:		equ	113+1	; = instrument 1
_CMD:		equ	144+1	; = effect 0
_SPC:		equ	184	; = special commands  [NOT USED]
_EOT:		equ	191	; = end of track
_WAIT:	equ	192	; = wait 1
	
	ALIGN 256
MACROACTIONLIST:
	jp	macro_volume_same		; 0
	nop
	jp  	macro_mixer			; 2
	nop
	jp  	macro_tone_add		; 4			
	nop
	jp  	macro_stop			; 6			
	nop
	jp  	macro_vol_base		; 8
	nop
	jp  	macro_vol_add		; a
	nop
	jp  	macro_vol_sub		; c
	nop
	jp  	macro_noise_base		; e
	nop
	jp  	macro_noise_add		; 10		; unused!!!	
	nop
	jp  	macro_noise_add		; 12		
	nop
	jp  	macro_noise_vol		; 14
	nop
	jp  	macro_voice			; 16
	nop
	jp  	macro_loop			; 18
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
	jp	decode_cmd12_drum
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
	jp	decode_cmd22_brightness	

DRUM_MACRO_LIST:
	jp	_drum_stop		;2
	nop	
	jp	_drum_vol_bd	;4
	nop	
	jp	_drum_vol_sn	;6
	nop	
	jp	_drum_vol_hh	;8
	nop	
	jp	_drum_vol_snhh	;a
	nop	
	jp	_drum_vol_cy	;c
	nop	
	jp	_drum_vol_tt	;e
	nop	
	jp	_drum_vol_cytt	;10
	nop	
	jp	_drum_note_bd	;12
	nop	
	jp	_drum_tone_bd	;14
	nop	
	jp	_drum_note_snhh	;16
	nop	
	jp	_drum_tone_snhh	;18
	nop	
	jp	_drum_note_cytt	;1a
	nop	
	jp	_drum_tone_cytt	;1c
	nop	
	jp	_drum_percussion	;1e

	ALIGN 256

TRACK_Vibrato_sine:	; Sine table used for tremelo and vibrato
      db 	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00		      ; depth 	1
      db 	$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$02,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00		      ; depth 	2
      db 	$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$02,$02,$02,$02,$03,$03,$03,$03,$02,$02,$02,$02,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00		      ; depth 	3
      db 	$00,$00,$00,$00,$00,$01,$01,$01,$01,$02,$02,$02,$03,$03,$04,$04,$04,$04,$03,$03,$02,$02,$02,$01,$01,$01,$01,$00,$00,$00,$00,$00		      ; depth 	4
      db 	$00,$00,$00,$00,$01,$01,$01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$05,$05,$04,$04,$03,$03,$02,$02,$01,$01,$01,$01,$00,$00,$00,$00		      ; depth 	5
      db 	$00,$00,$00,$00,$01,$01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$06,$06,$05,$05,$04,$04,$03,$03,$02,$02,$01,$01,$01,$00,$00,$00,$00		      ; depth 	6
      db 	$00,$00,$00,$01,$01,$01,$02,$02,$03,$04,$04,$05,$06,$06,$07,$08,$08,$07,$06,$06,$05,$04,$04,$03,$02,$02,$01,$01,$01,$00,$00,$00		      ; depth 	7
      db 	$00,$00,$01,$01,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0C,$0D,$0D,$0C,$0A,$09,$08,$07,$06,$05,$04,$03,$02,$01,$01,$01,$00,$00		      ; depth 	8
TRACK_Vibrato_sine_extended:	; Sine table used for tremelo and vibrato	
      db 	$00,$00,$01,$02,$02,$04,$05,$06,$08,$09,$0B,$0D,$0F,$11,$13,$15,$15,$13,$11,$0F,$0D,$0B,$09,$08,$06,$05,$04,$02,$02,$01,$00,$00		      ; depth 	9
      db 	$00,$01,$01,$02,$04,$05,$07,$09,$0B,$0E,$10,$13,$16,$19,$1C,$1F,$1F,$1C,$19,$16,$13,$10,$0E,$0B,$09,$07,$05,$04,$02,$01,$01,$00		      ; depth 	A
      db 	$00,$01,$02,$03,$05,$08,$0B,$0E,$11,$15,$19,$1D,$21,$26,$2B,$2F,$2F,$2B,$26,$21,$1D,$19,$15,$11,$0E,$0B,$08,$05,$03,$02,$01,$00		      ; depth 	B
      db 	$01,$01,$03,$05,$07,$0B,$0E,$12,$17,$1C,$21,$27,$2D,$33,$39,$3F,$3F,$39,$33,$2D,$27,$21,$1C,$17,$12,$0E,$0B,$07,$05,$03,$01,$01		      ; depth 	C



_Default_Registers:
	db	$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff	; Voice reg
	db	$00,$00,$ff,$ff,$00,$ff								; Chan A Tone + vol
	db	$00,$00,$ff,$ff,$00,$ff
	db	$00,$00,$ff,$ff,$00,$ff
	db	$00,$00,$ff,$ff,$00,$ff
	db	$00,$00,$ff,$ff,$00,$ff
	db	$00,$00,$ff,$ff,$00,$ff								; Chan F Tone + vol
_DRUM_Default:
IFDEF DRUM_MCABIN
	; values taken from XAK3 intro. Used the most used values as default
	dw	0x04E4		; Bass drum
	dw	0x0000
	db	0x00			; vol
	db	0xee
	dw	0x0120		; Snare + HiHat
	dw	0x0000
	db	0x00			; vol
	db	0xee
	dw	0x00AB		; Cymbal + TomTom
	dw	0x0000
	db	0x00			; vol
	db	0xee
	db	0x20			; FM drm
	db	0x00
ELSE
	; values taken from FM BIOS. 
;	db	01111110b		; 0,1,2 = volume, 5,6,7 = freq
	dw	0x0520		; Bass drum
	dw	0x0000
	db	0x01			; vol
	db	0xee
	dw	0x0550		; Snare + HiHat
	dw	0x0000
	db	0x11			; vol
	db	0xee
	dw	0x01C0		; Cymbal + TomTom
	dw	0x0000
	db	0x11			; vol
	db	0xee
	db	0x20			; FM drm
	db	0x00
ENDIF
;===========================================================
; ---	replay_init
; Initialize re-player data
; Only call this on start-up
; Input: none
;===========================================================
replay_init:
	ld	a,4
	call	replay_set_FM_balance
	ld	a,4
	call	replay_set_PSG_balance

	call	replay_equalization_off

	xor	a
	ld	(replay_mode),a	

	;--- Detect CPU
	ld 	hl,$002D
	ld    a, ($fcc1)              ; (EXPTBL)
	call  $0C                     ; RDSLT

   	cp 	3
   	jr.	c,.z80
	ld	a,1
	ld	(r800),a			; 0 = z80 other is R800
	jp	.init
.z80:
	xor	a
	ld	(r800),a
.init:
	;--- init Mixers
	call	replay_play_no

	;---- init YM2413
	ld	hl,_Default_Registers
	ld	de,FM_Voicereg
	ld	bc,72
	ldir
	ld	a,$ff
	ld	(DRUM_regVolBD),a
	ld	(DRUM_regVolSH),a
	ld	(DRUM_regVolCT),a
	call	replay_route 
	
	ret

;===========================================================
; ---	replay_pause
; Pause music playback
; 
; Input: none
;===========================================================
replay_pause:
	;-- stop decoding and processing music data
	xor	a
	ld	(replay_mode),a	
	;--- Silence the SN7 PSG
	ld	(PSG_regVOLA),a
	ld	(PSG_regVOLB),a
	ld	(PSG_regVOLC),a

	ld	(FM_DRUM),a
	ld	a,$0f
	ld	(FM_regVOLA),a
	ld	(FM_regVOLB),a
	ld	(FM_regVOLC),a
	ld	(FM_regVOLD),a
	ld	(FM_regVOLE),a
	ld	(FM_regVOLF),a


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
; ---	replay_set_FM_balance
; Set the main volume for the FM chip. This enables for
; setting the balance between FM and PSG as some MSX models 
; default balance differs. 
;
; in: [A] master volume (0-4) 0=75% volume, 4=100% volume. 
;===========================================================	
replay_set_FM_balance:
	cp	5	; limit 
	ret	nc
	ld	hl,_VOLUME_TABLE_FM-64
	call	_getnewbalancebase
	ld	(replay_mainFMvol),hl	
	ret
	
;===========================================================
; ---	replay_set_PSG_balance
; Set the main volume for the PSG chip. This enables for
; setting the balance between FM and PSG as some MSX models 
; default balance differs. 
;
; in: [A] master volume (0-8) 0=75% volume, 4=100% volume. 
;===========================================================	
replay_set_PSG_balance:
	cp	5	; limit 
	ret	nc
	ld	hl,_VOLUME_TABLE_PSG-64
	call	_getnewbalancebase
	ld	(replay_mainPSGvol),hl	
	ret
	
_getnewbalancebase:
	add	a		; times 16
	add	a
	add	a
	add	a
	add	a,l
	ld	l,a
	ret 	nc
	inc	h
	ret
	
;===========================================================
; ---	replay_equalization_on
; Enables the speed equalization. 
; This to enable same speed playback on 50 and 60Hz. 
;===========================================================	
replay_equalization_on:
	ld	a,1
IFDEF MSX2
	;--- Only enable if in 60Hz mode
	ld	a,($FFE8)	; get mirror of VDP reg# 9
	and	00000010b
	xor	00000010b
ENDIF
	ld	(equalization_freq),a
	ld	a,1
	ld	(equalization_cnt),a
	ret	

;===========================================================
; ---	replay_equalization_off
; Disables the speed equalization. 
; This to enable same speed playback on 50 and 60Hz. 
;===========================================================	
replay_equalization_off:
	xor	a
	ld	(equalization_freq),a
	ld	a,1
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

	;--- Get the channel setup
	ld	a,(hl)	
	inc	hl
	ld	(replay_chan_setup),a	

	;--- Set voice base, drum base, instrument base and track pointers
	ld 	de,replay_voicebase
	ld	bc,22
	ldir
	ld	(replay_orderpointer),hl		; store pointer for next set
								; of track pointers
	;--- Initialize re-player variables.
	xor	a
	ld	(replay_speed_subtimer),a
	ld	(FM_softvoice_req),a
	ld	(replay_arp_speed),a
	ld	(replay_fade),a
	ld	(FM_DRUM_ACTIVE),a

	;--- Erase channel data	in RAM
	ld	bc,TRACK_REC_SIZE*8-1
	ld	hl,TRACK_Chan1
	ld	de,TRACK_Chan1+1
	ld	(hl),a
	ldir
	
      ;--- init drum register values
;	ld	a,00100000b			
;	ld	(FM_DRUM+1),a
;     ld    a,10000000b
;	ld	(FM_DRUM),a	      
 
	ld	hl,_Default_Registers
	ld	de,FM_Voicereg
	ld	bc,72
	ldir

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
	ld	(replay_softvoice),a

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
	
	ld	a,1
	ld	(replay_mode),a	
	ret


;===========================================================
; Set mixer values to silent.
;===========================================================
replay_play_no:
	; Silence PSG vol to avoid pops in sfx when music is not playing.
      xor   a
	ld	(PSG_regVOLA),a		
	ld	(PSG_regVOLB),a	
	ld	(PSG_regVOLC),a
	; Set mixers to silence
      ld    (FM_regMIXER),a
      xor   $bf
      ld    (PSG_regMIXER),a
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
	jp	z,PAL               		; if PAL process at any interrupt;

NTSC:
	ld	a,(equalization_cnt)  		; if NTSC call 5 times out of 6
	dec	a
      ld	(equalization_cnt),a
	jp	nz,PAL               		; skip music data processing one tic out of 6

	ld	(FM_DRUM),a			; make sure not to retrigger drums on skip
	;--- Reset keyon flip 
	ld	hl,FM_regToneA+1		; pointer to the backup of reg# $2x
	res	6,(hl)
	ld	hl,FM_regToneB+1		; pointer to the backup of reg# $2x
	res	6,(hl)
	ld	hl,FM_regToneC+1		; pointer to the backup of reg# $2x
	res	6,(hl)
	ld	hl,FM_regToneD+1		; pointer to the backup of reg# $2x
	res	6,(hl)
	ld	hl,FM_regToneE+1		; pointer to the backup of reg# $2x
	res	6,(hl)
	ld	hl,FM_regToneF+1		; pointer to the backup of reg# $2x
	res	6,(hl)

	;--- Reset timer and raise equalization flag
	ld	a,6	
      ld	(equalization_cnt),a
;	ld	a,(replay_mode)
;	and	a
;     jp    z,replay_play_no
	ret
PAL:                             
	;---- END SPEED EQUALIZATION	
	ld	a,(replay_mode)
	and	a
      jp    z,replay_play_no
            		; replay mode = 0	; halted
				; replay mode = 1	; active

	;--- check for end of pattern
	ld	hl,(TRACK_pointer1)
	ld	a,(hl)
	cp	191	
	jp	nz,.skip_EOT

	ld 	a,(TRACK_Chan1+17+TRACK_Delay)
	dec	a
	jp	nz,.skip_EOT
	call	z,_replay_check_patternend	
.skip_EOT:	
	;--- The speed timer
	ld	hl,replay_speed_timer
	dec	(hl)
	jp	nz,process_data	

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
	jp	nz,.setupcheck

	ld	a,(TRACK_Chan2+17+TRACK_Flags)
	ld	d,a
	ld	a,(TRACK_Chan2+17+TRACK_Note)	
	ld	ix,TRACK_Chan2+17
	ld	bc,(TRACK_pointer2)
	call	decode_data_chan
	ld	(TRACK_pointer2),bc
	ld	a,d				;'
	ld	(TRACK_Chan2+17+TRACK_Flags),a	

.setupcheck:
	; 2-5 and 3-5 channel support
	ld	a,(replay_chan_setup)
	and	a
	jp	z,.decode3_35chan

.decode3_26chan:
	ld 	hl,TRACK_Chan3+17+TRACK_Delay
	dec	(hl)
	jp	nz,.decode3_end

	ld	a,(TRACK_Chan3+17+TRACK_Flags)
	ld	d,a		;'
	ld	a,(TRACK_Chan3+17+TRACK_Note)	
	ld	ix,TRACK_Chan3+17
	ld	bc,(TRACK_pointer3)
	call	decode_data_chan
	ld	(TRACK_pointer3),bc
	ld	a,d				;'
	ld	(TRACK_Chan3+17+TRACK_Flags),a
.decode3_end:	
	;--- Set FM Tone table
	ld	hl,TRACK_ToneTable_FM
	ld	(replay_tonetable),hl
	jp	.decode4


.decode3_35chan:	
	;--- Set FM Tone table
	ld	hl,TRACK_ToneTable_FM
	ld	(replay_tonetable),hl

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
	;---- Software voice loading
	ld	a,(FM_softvoice_req)
	cp	2
	jp	c,process_data
	ld	hl,(replay_voicebase)
	add	a
	add	a,l
	ld	l,a
	jp	nc,.skip
	inc	h
.skip:
	ld	de,FM_Voicereg
	ld	bc,$0810
.loop:
	ldi
	inc	de
	djnz	.loop


	; continue to process data
;===========================================================
; ---	replay_decodedata_NO
; Process changes.
; 
; 
;===========================================================
process_data:
	; Set tone table
	ld	hl,TRACK_ToneTable_PSG
	ld	(replay_tonetable),hl

	;--- Initialize PSG Mixer and volume
	xor	a
	ld	(FM_regMIXER),a
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
	jp	nc,.skipa
	ld	(PSG_regToneA),hl
.skipa:
	ld	a,(FM_regVOLF)
	ld	(PSG_regVOLA),a	

	;--------------------
	;--- Process track 2
	;--------------------
	ld	ix,TRACK_Chan2+17
	ld	a,(TRACK_Chan2+17+TRACK_Flags)
	ld	d,a
	call	process_data_chan
	jp	nc,.skipb
	ld	(PSG_regToneB),hl
.skipb:
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
	jp	nc,.skipc
	ld	(PSG_regToneC),hl
.skipc:
	ld	a,(FM_regVOLF)
	ld	(PSG_regVOLC),a

	;-- Convert mixer to AY
	ld	a,(FM_regMIXER)		
	srl	a
	srl	a
	xor	0xbf
	ld	(PSG_regMIXER),a
	xor	a
	ld	(FM_regMIXER),a

	; Set tone table
	ld	hl,TRACK_ToneTable_FM
	ld	(replay_tonetable),hl
	;--- set FM balance
	ld	hl,(replay_mainFMvol)
	ld	(replay_mainvol),hl
	
	jp	_rdd_cont
	
	
_rdd_2psg_6fm:
	;-- Convert mixer to AY
	ld	a,(FM_regMIXER)		
	srl	a
	srl	a
	srl	a
	xor	0xbf
	ld	(PSG_regMIXER),a

	; Set tone table
	ld	hl,TRACK_ToneTable_FM
	ld	(replay_tonetable),hl
	;--- set SCC balance
	ld	hl,(replay_mainFMvol)
	ld	(replay_mainvol),hl

	;--------------------
	;--- Process track 3
	;--------------------
	ld	ix,TRACK_Chan3+17
	ld	a,(TRACK_Chan3+17+TRACK_Flags)
	ld	d,a
	call	process_data_chan
	jp	nc,.skipc
	ld	(FM_regToneA),hl
.skipc:
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
	call	process_data_chan
	jp	nc,.skipd
	ld	(FM_regToneB),hl
.skipd:
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
	call	process_data_chan
	jp	nc,.skipe
	ld	(FM_regToneC),hl
.skipe:
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
	call	process_data_chan
	jp	nc,.skipf
	ld	(FM_regToneD),hl
.skipf:
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
	call	process_data_chan
	jp	nc,.skipg
	ld	(FM_regToneE),hl
.skipg:
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
	call	process_data_chan
	jp	nc,.skiph
	ld	(FM_regToneF),hl
.skiph:
	ld	a,(FM_regVOLF)
	ld	d,a
	ld	a,(TRACK_Chan8+17+TRACK_Voice)
	and	$f0
	or	d	
	ld	(FM_regVOLF),a

	;--------------------
	;--- Process Drums
	;--------------------
	call	process_drum

process_fade:	
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
	ld	b,7
	ld	hl,FM_regVOLA
.calc_vol_FM:
	ld	a,(hl)
	call	.calc_vol_FM_cmn
	ld	d,a
	ld	a,(hl)
	and	$f0
	or	d
	ld	(hl),a
	ld	a,6
	add	a,l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	djnz	.calc_vol_FM
	ld	b,2
.calc_vol_rythm:
	ld	a,(hl)
	call	.calc_vol_FM_cmn
	ld	d,a
	ld	a,(hl)
	rrca
	rrca
	rrca
	rrca
	call	.calc_vol_FM_cmn
	rlca
	rlca
	rlca
	rlca
	and	$f0
	or	d
	ld	(hl),a
	ld	a,6
	add	a,l
	ld	l,a
	jp	nc,99f
	inc	h
99:
	djnz	.calc_vol_rythm
	ret

.calc_vol_FM_cmn:
	and	$0f
	add	c
	cp	16
	ret	c
	ld	a,15
	ret

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
	cp	l
	jp	nz,.restart
	and	a
	jp	nz,.restart
	;--- STOP - There is no restart value
	call	replay_pause
	pop	af	;--- skip return to processing 
	ret		

.restart:
.no_restart:	
	ld	de,TRACK_pointer1
	ld	bc,16
	ldir
	ld	(replay_orderpointer),hl		; store pointer for next set
								; of strack pointers
	ret






;===========================================================
; ---	decode_data_chan
; Process the channel data
; 
; in BC is the pointer to the	data
;    D contains flags.
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

	;--- skipsoft value for PSG
	bit	B_PSGFM,d
	jp	z,.skip_soft_psg		

	;--- software voice found
	ld	e,(hl)		; value is the offset in the soft voice data (8bytes)
	ld	a,(replay_softvoice)
	cp	e
	jp	z,.skip_soft_update

	ld	a,e
	ld	(replay_softvoice),a
	ld 	(FM_softvoice_req),a
.skip_soft_update:
	xor 	a
.skip_soft_psg:
	inc	hl
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
	sub	_VOL
	
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
	
	ld	e,a				; store command for later

	ld	hl,DECODE_CMDLIST
	add	a
	add	a
	add	l
	ld	l,a
	inc	bc
	ld	a,(bc)
	jp	hl


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
	ex	de,hl
	sbc	hl,de				; results in pos/neg delta
	
	ld	(ix+TRACK_cmd_ToneSlideAdd),l
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),h
	
	;--- re-apply deviation
	ex	af,af'			;'
	bit	7,h
	jp	nz,.skip3
	or 	128
.skip3:
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

	cp	$90
	jp	c,.skip_extended
	;--- extended
	sub	$80
	ld	e,11
	ld	(ix+TRACK_Command),e

.skip_extended:
	sub	$10
	add	a,a
	ld	(ix+TRACK_cmd_4_depth),a
	
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
	; Get the base addres of the drum list
	ld	hl,(replay_drumbase)
	add	a,l 
	ld	l,a
	jp	nc,99f
	inc	h 
99:
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
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),0
	jp	_rdc
	
decode_cmd15_fine_down:
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),$ff
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

decode_cmd22_brightness:
	ld	l,a
	ld	a,(FM_Voicereg+4)
	ld	h,a
	add	a,l
	and	00111111b
	ld	l,a
	ld	a,h
	and	11000000b
	or	l
	ld	(FM_Voicereg+4),a
	ld	a,1
	ld	(FM_softvoice_req),a
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
	ld	hl,FM_regMIXER   
	rrc	(hl)

	;=====
	; COMMAND
	;=====
	ld	(ix+TRACK_cmd_NoteAdd),0			; Always reset note add
	bit	B_TRGCMD,d	;(ix+TRACK_Flags)
	jp	z,process_note

	ld	h,PROCESS_CMDLIST >> 8
	ld	a,(ix+TRACK_Command)
	add	a
	add	a
	add	PROCESS_CMDLIST & 255
	ld	l,a
	jp	hl


process_commandEND:
process_note:

	;=====
	; Note
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

	ld	(_SP_Storage),sp
	ld	sp,ix
	pop	af
	pop	af
	ld	hl,0
	push	hl
	push	hl		
	push	hl
	push	hl
	push	hl
	ld	sp,(_SP_Storage)
	ld	iyl,64			; keyon flip trigger
	jp	process_instrument

process_noNoteTrigger:
	ld	iyl,0				; keyon flip trigger
	;==============
	; Macro instrument
	;==============
process_instrument:
	bit	B_ACTNOT,d		
	ld	(ix+TRACK_Flags),d	
	jp	z,process_noNoteActive
	
	;--- Get the macro len and loop
	ld	e,(ix+TRACK_MacroPointer)
	ld	d,(ix+TRACK_MacroPointer+1)

	ld	h,MACROACTIONLIST >> 8
      ;-- Important: Make sure not to change register H in the macro handling 
process_macro:
	ld	a,(de)
	inc	de
	add	a
	ld	l,a
	jp	hl


macro_mixer:
	ld  a,(de)
	inc	de
	ld	b,a
	ld	a,(FM_regMIXER)   
	or	b
	ld	(FM_regMIXER),a
	jp  process_macro

macro_tone_add:
	ld	a,(de)
	inc   de
	add   (ix+TRACK_ToneAdd)
	ld	(ix+TRACK_ToneAdd),a
	ld	a,(de)
	adc   (ix+TRACK_ToneAdd+1)
	ld	(ix+TRACK_ToneAdd+1),a
	inc	de
	jp	process_macro

macro_noise_base:
	ld	a,(de)
	inc   de
	ld	(ix+TRACK_Noise),a
	ld	(replay_noise),a
	jp	process_macro
macro_noise_sub:
macro_noise_add:
	ld	a,(de)
	inc   de
	add   (ix+TRACK_Noise)
	ld	(ix+TRACK_Noise),a
	ld	(replay_noise),a
	jp	process_macro

macro_noise_vol:
	inc	de
	jp	process_macro

macro_voice:
	ld	a,(de)
	inc	de
	ld	(ix+TRACK_Voice),a	
	jp	process_macro

macro_envelope_shape:
	ld	a,(de)
	inc	de
	ld	(PSG_regEnvShape),a

macro_envelope:
	ld	a,16			; set volume to 16 == envelope
	ld	(FM_regVOLF),a
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
	inc   de
	ld	(ix+TRACK_VolumeAdd),a
	jp	_macro_set_volume


macro_vol_add:
	ld	a,(de)
	inc   de
	add   (ix+TRACK_VolumeAdd)
	cp	16
	jp	c,.nolimit
	ld	a,$0f
.nolimit:	  
	ld	(ix+TRACK_VolumeAdd),a
	jp	_macro_set_volume


macro_vol_sub:
	ld	a,(de)
	ld	b,a
	inc   de
	ld	a,(ix+TRACK_VolumeAdd)
	sub   b
	jp	nc,.nolimit
	xor   a
.nolimit:
	ld	(ix+TRACK_VolumeAdd),a

;-- Set the output volume directly after any update
_macro_set_volume:
	or	(ix+TRACK_Volume)

IFDEF tremolo_OFF
ELSE	
	ld 	b,(ix+TRACK_cmd_VolumeAdd)
	sub	a,b
	jp 	nc,.skip2
	add	a,b
 	and	0x0f
ENDIF
.skip2:
	;--- apply main volume balance
	ld	bc,(replay_mainvol)
	add	a,c
	ld	c,a
	jp	nc,.skip
	inc	b
.skip:
	ld	a,(bc)	
	ld	(FM_regVOLF),a

_macro_end:
	;--- Store macro pointer
	ld	(ix+TRACK_MacroPointer),e		;--- store pointer for next time
	ld	(ix+TRACK_MacroPointer+1),d	


	;-- Get the current note
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

	ld	e,(ix+TRACK_ToneAdd)
	ld	d,(ix+TRACK_ToneAdd+1)	
	add	hl,de		;--- Store tone deviation

	;-- set the detune. 
	ld	(_SP_Storage),sp
	ld	sp,ix
	pop	de		; cmd_ToneSlideAdd
	add	hl,de
	pop	bc		; cmd_ToneAdd
	add	hl,bc
	pop	bc		; TRACK_cmd_detune
	add	hl,bc
	ld	sp,(_SP_Storage)

	;-----------------
	; FM Octave wrapper
	; enable slides over multiple octaves.
	; [DE] still contains tone slide add.
	;-----------------
_wrap:
	bit	B_PSGFM,(ix+TRACK_Flags)
	jp	z,_wrap_PSG			; skip wrapper for PSG

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
	;--- set octave higher
	ld	a,h
	and	$fe
	add	$02
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
	cp	$9b		; $ad is the strict limit
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
	ld	a,h			; reset keyon and sustain
	and	$0f
	ld	h,a
	ld	a,(ix+TRACK_Flags)	; Add the sustain and key bits.
	and	16+32
	or	h
	or	iyl			; iyl is 64 if there is a note trigger
	ld	h,a

_wrap_PSG:
	;--- Return the tone register value
	scf		; no cary is update the register value
	ret



process_noNoteActive:
	;-- Silence
	bit	B_PSGFM,d
	jp	z,.psg
.fm:
	ld	a,$0f
	ld	(FM_regVOLF),a
	ret
.psg:
	xor	a			; also clears the carry flag.
	ld	(FM_regVOLF),a
	ret 	
	
			
process_cmd0_arpeggio:
	ld	a,(ix+TRACK_Timer)
	and	a
	jp	z,.nextNote
	
	dec	a
	ld	(IX+TRACK_Timer),a
	ld	a,(ix+TRACK_Step)
	and	a
	jp	z,.skip
	ld	a,(IX+TRACK_cmd_0)
	and	$0f
	ld	(ix+TRACK_cmd_NoteAdd),a	
	jr.	process_commandEND
.skip:
	ld	(ix+TRACK_cmd_NoteAdd),0	
	jr.	process_commandEND
	

.nextNote:
	; re-init the speed.
	ld	a,(replay_arp_speed)
	ld	(IX+TRACK_Timer),a
	
	ld	a,(ix+TRACK_Step)
	and	a
	jr.	nz,.skip1

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
	
.skip1:
	dec	a
	jr.	nz,.skip2

	;--- set y
		ld	(ix+TRACK_Step),2
		ld	a,(ix+TRACK_cmd_0)
		rlca
		rlca
		rlca
		rlca		
		ld	(ix+TRACK_cmd_0),a			
		and	0x0f
		jp	nz,.zero
		;--- if zero then skip this note and set step to start
		ld	(ix+TRACK_Step),0
.zero:		
		ld	(ix+TRACK_cmd_NoteAdd),a	
		jr.	process_commandEND
	
.skip2:
	;--- set none
	ld	(ix+TRACK_Step),0
	ld	(ix+TRACK_cmd_NoteAdd),0		
	jr.	process_commandEND
		

	

	
process_cmd1_port_up:
	ld	a,(ix+TRACK_cmd_ToneSlideAdd)
	sub	(ix+TRACK_cmd_1)
	ld	(ix+TRACK_cmd_ToneSlideAdd),a
	jp	nc,process_commandEND
	dec	(ix+TRACK_cmd_ToneSlideAdd+1)
	jp	process_commandEND

	
process_cmd2_port_down:	
	ld	a,(ix+TRACK_cmd_ToneSlideAdd)
	add	(ix+TRACK_cmd_2)
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
	ld	(ix+TRACK_cmd_ToneSlideAdd),0
	ld	(ix+TRACK_cmd_ToneSlideAdd+1),0	
	jp	process_commandEND


process_cmd8_tremolo:
IFDEF tremolo_OFF
ELSE	
	;=================================
	;
	; tremolo	
	;
	;=================================	
	ld	h,TRACK_Vibrato_sine >> 8

	;--- Get next step
	ld	a,(IX+TRACK_Step)
	add	(ix+TRACK_cmd_4_step)
	and	$3F			; max	64
	ld	(ix+TRACK_Step),a
	sra	a			; devide step by 2	

	add	(ix+TRACK_cmd_4_depth)
	ld	l,a
	ld	a,(hl)
	add	a
	add	a
	add	a
	add	a
	ld	(ix+TRACK_cmd_VolumeAdd),a
ENDIF
	jp	process_commandEND	




	;=================================
	;
	; Vibrato	
	;
	;=================================
	; FIXME Remove this when implemented semitones in instruments
process_cmd4_vibrato_extended:
	ld	h,TRACK_Vibrato_sine_extended >> 8	
	jp	process_cmd4_vibrato.ext
	;=================================
	;
	; Vibrato	
	;
	;=================================
process_cmd4_vibrato:
	ld	h,TRACK_Vibrato_sine >> 8	
.ext:
	;--- Get next step
	ld	a,(IX+TRACK_Step)
	add	(ix+TRACK_cmd_4_step)
	and	$3F			; max	64
	ld	(ix+TRACK_Step),a

	bit	5,a			; step 32-63 the neg	
	jp	z,.pos	
	
.neg:
	and	$1f	; make it 32 steps again
	add	(ix+TRACK_cmd_4_depth)
	ld	l,a
	ld	a,(hl)
	neg
	jp	z,.zero			; $ff00 gives strange result ;)	
	ld	(ix+TRACK_cmd_ToneAdd),a
	ld	(ix+TRACK_cmd_ToneAdd+1),0xff
	jp	process_commandEND	

.pos:
	add	(ix+TRACK_cmd_4_depth)
	ld	l,a
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
	set	B_TRGNOT,d	            ; set	trigger note flag
	res	B_TRGCMD,d	      	; reset trigger cmd flag
	
	jp	process_commandEND	



;============================================================================
; process_drum
;
;
;
;============================================================================
process_drum:
	ld	a,(FM_DRUM_ACTIVE)
	and	a
	jp	nz,.yes
	;--- Nothing to play
	ld	(FM_DRUM),a
	ret
.yes:	
	;-- Retrieve the next action
	ld	bc,(FM_DRUM_MACRO)


_process_drum_loop:
	ld	hl,DRUM_MACRO_LIST-4
	ld	a,(bc)
	add	a
	add	l
	ld	l,a
	inc	bc
	jp	hl

_drum_stop:			;2
	xor	a
	ld	(FM_DRUM_ACTIVE),a
	ld	(FM_DRUM),a	
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
.end:
	ld	(FM_DRUM_MACRO),bc
	ret	




;===========================================================
; ---replay_route
; Output the data	to the CHIP	registers
; 
; 
;===========================================================
replay_route:
;---------------
; P S G 
;---------------
	;--- Push values to AY HW
	ld	hl,PSG_registers+13
	ld	bc,$0c00+PSG_DATA		; 12 seq reg updates + port $a1

	;--- Envelope shape R#13
	ld	a,(hl)
	and	a				; Value to write?
	jp	z,_ptAY_noEnv	
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
		
	



;---------------
; F M
;---------------
route_FM:
	;--- 	Write FM channel registers
	;--- Store CPU type for later.
	ld	a,(r800)
	ld	e,a
	and	a
	jp	z,.skipcount
	;--- init the r800 wait timer
	in	a,($e6)
	ld	(count_low),a
.skipcount:
	;--- Check if we need to update the voice regs
	ld	a,(FM_softvoice_req)
	and	a
	jp	z,.channels

	;--- update the voice registers
	ex	af,af'
	xor	a
	ld	(FM_softvoice_req),a
	ld	hl,FM_Voicereg
	ld	bc,$0800		; 8 values, base register 0

.voiceloop:
	ld	a,(hl)
	inc	hl
	cp	(hl)
	jp	z,.skipvoicereg
	ld	d,a
	ld	a,c
	call	_writeFM	
.skipvoicereg:
	inc	hl
	inc	c
	djnz	.voiceloop


.channels:
	ld	bc, $0930			; 9 channels, start reg# is $10
	ld	hl,FM_regToneA+1		; pointer to the backup of reg# $2x
.channel_loop:
;	;--- Check if channel is active
	ld	a,(hl)
	cp	64		; test bit 6	1 = note trigger
	jp	c,.noKeyOnSwitch

.keyOnSwitch:
	;--- Flip KeyOn bit
	; It needs to be a full off-on sequence to work on all instruments.
	inc	hl
	inc	hl
	ld	a,(hl)
	;--- Check if Key is already OFF
	bit	4,a
	jp	z,99f		      ; skip if key was not set
	and	00101111b		; reset keyon bit
	ld	d,a
	ld	a,-16 ; $10
	add	c
	call	_writeFM
	jp	99f

.noKeyOnSwitch:
	inc	hl
	inc	hl
99:	inc	hl

	;--- Write reg $1x
	ld	a,(hl)
	inc	hl
	cp	(hl)
	jp	z,99f			; No change in value
	ld	d,a			; Store value in D
	ld	a,c			; Store reg# in C
	call	_writeFM
99:
	ld	a,l
	sub	5
	jp	nc,1f
	dec	h
1:
	ld	l,a

	;--- Write reg $2x
	ld	a,(hl)
	inc	hl
	inc	hl
	cp	(hl)
	jp	z,99f			; No change in value
	ld	d,a			; Store value in D
	ld	a,-32 ; $10
	add	a,c			; Store reg# in C+10
	call	_writeFM
99:
	dec	hl	
	;--- Write reg $3x
	ld	a,(hl)
	inc	hl
	inc	hl
	cp	(hl)
	jp	z,99f			; No change in value
	ld	d,a			; Store value in D
	ld	a,-16 ; $20
	add	c			; Store reg# in C
	call	_writeFM
99:
	ld	a,l
	add	4
	jp	nc,1f
	inc	h
1:
	ld	l,a
.continue:	
	inc	c			; increase base register with 1
	djnz	.channel_loop

	;--- write rythm register
.rythm:	
	dec	hl
	ld	a,(hl)
	and	a			; no drums
	ret	z

	inc	hl
	ld	b,(hl)
	ld	c,a			; save new

	xor	b
	or	00100000b		; enable rythm
	ld	d,a
	ld	a,$0e			
	call	_writeFM

	ld	a,c
	or	b
	ld	d,a
	call	_writeFM_data
	ret


.notActive:
	ld	de,6
	add	hl,de
	jp	.continue
	;--- Points to start address of next chan



; [A] reg#
; [D] value
; [E] R800	(0=Z80, 1 = R800)
; [HL] points to previous value
_writeFM:
	bit	0,e				;  8 cycles
	jp	nz,_writeFM_R800		; 10 cycles
	out	(FM_WRITE),a		; 11 cycles
	ld	a,d				;  4 cycles
_writeFM_cont:
	ld	(hl),a			;  7 cycles	
	out	(FM_DATA),a			; 11 cycles
	ret					; 10 cycles

; [D] value
; [E] R800	(0=Z80, 1 = R800)
; [HL] points to previous value
_writeFM_data:
	bit	0,e				;  8 cycles
	jp	nz,_writeFM_data_R800	; 10 cycles
	push	bc				; 11 cycles	Dummy for write delay
	pop	bc				; 11 cycles	Dummy for write delay
	jp	_writeFM_cont		; 10 cycles

; [A] reg#
; [D] value
; [HL] points to previous value
_writeFM_R800:		
	;--- wait to write
	push	de
	ex	af,af'
	ld	a,(count_low)
	ld	d,a
.loop_long:
	in	a,($e6)
	sub	d
	cp	6
	jp	c,.loop_long

	pop	de
	ex	af,af'
	;-- write address
	out	(FM_WRITE),a		; 11 cycles

	in	a,($e6)
	;--- wait to write
	push	de
	ld	d,a
.loop_short
	in	a,($e6)
	sub	d
	cp	1
	jp	c,.loop_short
	pop	de
_writeFM_R800_cont:
	;--- write data
	ld	a,d				;  4 cycles
	ld	(hl),d			;  7 cycles	
	out	(FM_DATA),a			; 11 cycles
	in	a,($e6)
	ld	(count_low),a
	ret					; 10 cycles

; [D] value
; [HL] points to previous value
_writeFM_data_R800:
	;--- wait to write
	push	de
	ld	a,(count_low)
	ld	d,a
.loop_long:
	in	a,($e6)
	sub	d
	cp	6
	jp	c,.loop_long
	pop	de
	jp	_writeFM_R800_cont
	;--- end


