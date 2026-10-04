; --- TT Re-player RAM definitions (Glass compatible) ---
; Define TT_RAM_START before including this file, e.g. TT_RAM_START: equ 0C000h

;================================
; The new replayer.
;
; Persistent RAM unswappable
;
;================================

TRACK_Instrument			equ 0-17
TRACK_Command			equ 1-17
TRACK_MacroPointer		equ 2-17
TRACK_MacroStart			equ 4-17
TRACK_Note				equ 7-17
TRACK_Volume			equ 8-17
TRACK_Waveform			equ 9-17
TRACK_Flags				equ 10-17
	; 0 = note trigger
	; 1 = note active
	; 4 = morph active		;-< for SCC when 1 then waveform is following morph buffer
	; 3 = command trigger
	; 2 = envelope trigger
	; 5 = instrument trigger
	; 6 = waveform trigger
	; 7 = PSG/SCC
TRACK_empty			equ 11-17		; needed for pushing 0 at note start
TRACK_ToneAdd		equ 12-17		; reset after note set
TRACK_VolumeAdd		equ 14-17		; reset after note set
TRACK_Noise			equ 15-17		; reset after note set
TRACK_cmd_VolumeAdd	equ 16-17		; reset after note set - For tremelo
TRACK_cmd_ToneSlideAdd	equ 17-17		; reset after note set
TRACK_cmd_ToneAdd		equ 19-17		; reset after note set

TRACK_cmd_detune		equ 21-17
TRACK_cmd_0			equ 23-17
TRACK_cmd_1			equ 24-17
TRACK_cmd_2			equ 25-17
TRACK_cmd_3			equ 26-17
TRACK_cmd_4_depth		equ 27-17
TRACK_cmd_4_step		equ 29-17
TRACK_cmd_NoteAdd		equ 30-17		; reset after note set
TRACK_cmd_A			equ 31-17		
TRACK_cmd_B			equ 32-17		
TRACK_cmd_E			equ 33-17
TRACK_Timer			equ 34-17		; used for timing by all cmd's
TRACK_Step			equ 35-17		; only for VIBRATO???
TRACK_Delay			equ 36-17		; rows to wait till next data
TRACK_prevDelay		equ 37-17
TRACK_cmd_A_add		equ 38-17	;<< Still in use???

TRACK_REC_SIZE		equ 39


B_TRGNOT			equ 0			; note trigger
B_ACTNOT			equ 1			; note active
B_TRGENV			equ 2			; envelope trigger
B_TRGCMD			equ 3			; command active
B_ACTMOR			equ 4			; morph active
B_TRGINS			equ 5			; instrument trigger
B_TRGWAV			equ 6			; waveform trigger
B_PSGSCC			equ 7			; chip type (PSG or SCC)


_SP_Storage:	equ TT_RAM_START			; to store the SP
_SP_Storage_END:	equ _SP_Storage + 2

replay_trigger:	equ _SP_Storage_END			; trigger byte.
replay_trigger_END:	equ replay_trigger + 1
replay_mainPSGvol:	equ replay_trigger_END			; volume mixer for PSG SCC balance
replay_mainPSGvol_END:	equ replay_mainPSGvol + 2
replay_mainSCCvol:	equ replay_mainPSGvol_END			; volume mixer for PSG SCC balance
replay_mainSCCvol_END:	equ replay_mainSCCvol + 2


; Do not move/reorder these
replay_wavebase:	equ replay_mainSCCvol_END			; pointer to waveform data
replay_wavebase_END:	equ replay_wavebase + 2
replay_insbase:	equ replay_wavebase_END			; pointer to instrument data
replay_insbase_END:	equ replay_insbase + 2
TRACK_pointer1:	equ replay_insbase_END
TRACK_pointer1_END:	equ TRACK_pointer1 + 2
TRACK_pointer2:	equ TRACK_pointer1_END
TRACK_pointer2_END:	equ TRACK_pointer2 + 2
TRACK_pointer3:	equ TRACK_pointer2_END
TRACK_pointer3_END:	equ TRACK_pointer3 + 2
TRACK_pointer4:	equ TRACK_pointer3_END
TRACK_pointer4_END:	equ TRACK_pointer4 + 2
TRACK_pointer5:	equ TRACK_pointer4_END
TRACK_pointer5_END:	equ TRACK_pointer5 + 2
TRACK_pointer6:	equ TRACK_pointer5_END
TRACK_pointer6_END:	equ TRACK_pointer6 + 2
TRACK_pointer7:	equ TRACK_pointer6_END
TRACK_pointer7_END:	equ TRACK_pointer7 + 2
TRACK_pointer8:	equ TRACK_pointer7_END
TRACK_pointer8_END:	equ TRACK_pointer8 + 2
; / Do not move/reorder above

replay_orderpointer:	equ TRACK_pointer8_END			; pointer to the order track list pointers
replay_orderpointer_END:	equ replay_orderpointer + 2

replay_speed:	equ replay_orderpointer_END			; speed to replay (get from song)
replay_speed_END:	equ replay_speed + 1
replay_speed_subtimer:	equ replay_speed_END			; counter for finer speed
replay_speed_subtimer_END:	equ replay_speed_subtimer + 1
replay_speed_timer:	equ replay_speed_subtimer_END			; counter for speed
replay_speed_timer_END:	equ replay_speed_timer + 1
replay_mode:	equ replay_speed_timer_END			; Replayer status
replay_mode_END:	equ replay_mode + 1
	; mode 0  = no sound output
	; mode 1  = replay song 
replay_arp_speed:	equ replay_mode_END			; arpeggio speed ( 0 = fast, $f = slowest)
replay_arp_speed_END:	equ replay_arp_speed + 1
replay_fade:	equ replay_arp_speed_END			; Fade active (value = fade speed)
replay_fade_END:	equ replay_fade + 1
replay_fade_timer:	equ replay_fade_END			; Timer for fade
replay_fade_timer_END:	equ replay_fade_timer + 1
replay_fade_vol:	equ replay_fade_timer_END			; fade volume to lower the channel volume.
replay_fade_vol_END:	equ replay_fade_vol + 1

replay_previous_note:	equ replay_fade_vol_END			; previous note played
replay_previous_note_END:	equ replay_previous_note + 1
replay_mainvol:	equ replay_previous_note_END			; the volume correction.
replay_mainvol_END:	equ replay_mainvol + 2
replay_tonetable:	equ replay_mainvol_END			; ToneTable (affected by transpose);
replay_tonetable_END:	equ replay_tonetable + 2
replay_morph_active:	equ replay_tonetable_END			; flag to indicate morphing is active
replay_morph_active_END:	equ replay_morph_active + 1
replay_morph_timer:	equ replay_morph_active_END			; step timer between morphs
replay_morph_timer_END:	equ replay_morph_timer + 1
replay_morph_type:	equ replay_morph_timer_END			; Type of morph from set (0) or from buffer (1)
replay_morph_type_END:	equ replay_morph_type + 1
replay_morph_speed:	equ replay_morph_type_END			; tics to wait between steps.
replay_morph_speed_END:	equ replay_morph_speed + 1
replay_morph_counter:	equ replay_morph_speed_END			; counter till end morph
replay_morph_counter_END:	equ replay_morph_counter + 1
replay_morph_buffer:	equ replay_morph_counter_END			; interleaved buffer with morphed waveform and morph delta values
replay_morph_buffer_END:	equ replay_morph_buffer + 64
replay_morph_waveform:	equ replay_morph_buffer_END			; waveform we are morphing to.
replay_morph_waveform_END:	equ replay_morph_waveform + 1
replay_morph_flags:	equ replay_morph_waveform_END
replay_morph_flags_END:	equ replay_morph_flags + 2

SCC_slot:	equ replay_morph_flags_END			; Only used for external SCC
SCC_slot_END:	equ SCC_slot + 1
mapper_slot:	equ SCC_slot_END			; Only used for external SCC
mapper_slot_END:	equ mapper_slot + 1

equalization_freq:	equ mapper_slot_END	; vdp type for correct playback on 60hz 0=50Hx, >0=60Hz
equalization_freq_END:	equ equalization_freq + 1
equalization_cnt:	equ equalization_freq_END	; counter for correct playback on 60hz
equalization_cnt_END:	equ equalization_cnt + 1

TRACK_Chan1:	equ equalization_cnt_END
TRACK_Chan1_END:	equ TRACK_Chan1 + TRACK_REC_SIZE
TRACK_Chan2:	equ TRACK_Chan1_END
TRACK_Chan2_END:	equ TRACK_Chan2 + TRACK_REC_SIZE
TRACK_Chan3:	equ TRACK_Chan2_END
TRACK_Chan3_END:	equ TRACK_Chan3 + TRACK_REC_SIZE
TRACK_Chan4:	equ TRACK_Chan3_END
TRACK_Chan4_END:	equ TRACK_Chan4 + TRACK_REC_SIZE
TRACK_Chan5:	equ TRACK_Chan4_END
TRACK_Chan5_END:	equ TRACK_Chan5 + TRACK_REC_SIZE
TRACK_Chan6:	equ TRACK_Chan5_END
TRACK_Chan6_END:	equ TRACK_Chan6 + TRACK_REC_SIZE
TRACK_Chan7:	equ TRACK_Chan6_END
TRACK_Chan7_END:	equ TRACK_Chan7 + TRACK_REC_SIZE
TRACK_Chan8:	equ TRACK_Chan7_END
TRACK_Chan8_END:	equ TRACK_Chan8 + TRACK_REC_SIZE


	if SFXPLAY_ENABLED
;--- AY SPECIFIC (SFX enabled layout)
PSG_registers:	equ TRACK_Chan8_END
PSG_regToneA:	equ TRACK_Chan8_END
PSG_regToneB:	equ PSG_regToneA + 2
PSG_regToneC:	equ PSG_regToneB + 2
PSG_regNOISE:	equ PSG_regToneC + 2
PSG_regMIXER:	equ PSG_regNOISE + 1
PSG_regVOLA:	equ PSG_regMIXER + 1
PSG_regVOLB:	equ PSG_regVOLA + 1
PSG_regVOLC:	equ PSG_regVOLB + 1
PSG_regEnvL:	equ PSG_regVOLC + 1
PSG_regEnvH:	equ PSG_regEnvL + 1
PSG_regEnvShape:	equ PSG_regEnvH + 1
replay_noise:	equ PSG_regEnvShape + 1
PSG_registers_END:	equ replay_noise + 1
	else
;--- AY SPECIFIC (Standard layout)
PSG_registers:	equ TRACK_Chan8_END
PSG_regToneA:	equ TRACK_Chan8_END
PSG_regToneB:	equ PSG_regToneA + 2
PSG_regToneC:	equ PSG_regToneB + 2
replay_noise:	equ PSG_regToneC + 2
PSG_regNOISE:	equ PSG_regToneC + 2
PSG_regMIXER:	equ PSG_regNOISE + 1
PSG_regVOLA:	equ PSG_regMIXER + 1
PSG_regVOLB:	equ PSG_regVOLA + 1
PSG_regVOLC:	equ PSG_regVOLB + 1
PSG_regEnvL:	equ PSG_regVOLC + 1
PSG_regEnvH:	equ PSG_regEnvL + 1
PSG_regEnvShape:	equ PSG_regEnvH + 1
PSG_registers_END:	equ PSG_regEnvShape + 1
	endif

;--- SCC SPECIFIC
ttsfx_waveform:	equ PSG_registers_END
_0x9800:	equ ttsfx_waveform + 2
_0x9820:	equ _0x9800 + 32
_0x9840:	equ _0x9820 + 32
_0x9860:	equ _0x9840 + 32
_0x9860_END:	equ _0x9860 + 32

	if SCC_I
_0x9880:	equ _0x9860_END
SCC_registers:	equ _0x9880 + 32
	else
SCC_registers:	equ _0x9860_END
	endif

SCC_regToneA:	equ SCC_registers
SCC_regToneB:	equ SCC_regToneA + 2
SCC_regToneC:	equ SCC_regToneB + 2
SCC_regToneD:	equ SCC_regToneC + 2
SCC_regToneE:	equ SCC_regToneD + 2
SCC_regVOLA:	equ SCC_regToneE + 2
SCC_regVOLB:	equ SCC_regVOLA + 1
SCC_regVOLC:	equ SCC_regVOLB + 1
SCC_regVOLD:	equ SCC_regVOLC + 1
SCC_regVOLE:	equ SCC_regVOLD + 1
SCC_regMIXER:	equ SCC_regVOLE + 1
SCC_registers_END:	equ SCC_regMIXER + 1

	if SCC_I
oldregs:	equ SCC_registers_END
TT_RAM_END:	equ oldregs + (32*5)+(3*5)+1
	else
oldregs:	equ SCC_registers_END
TT_RAM_END:	equ oldregs + (32*4)+(3*5)+1
	endif

TT_RAM_TOTAL_SIZE:	equ TT_RAM_END - TT_RAM_START
