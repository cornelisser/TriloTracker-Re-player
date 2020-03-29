;================================
; The new replayer.
;
; Persistent RAM unswappable
;
;================================

TRACK_Instrument		.equ 0-17
TRACK_Command		.equ 1-17
TRACK_MacroPointer	.equ 2-17
TRACK_MacroStart		.equ 4-17
TRACK_MacroRestart 	.equ 6-17		; no longer needed
TRACK_Note			.equ 7-17
TRACK_Volume		.equ 8-17
TRACK_Waveform		.equ 9-17
TRACK_Flags			.equ 10-17
	; 0 = note trigger
	; 1 = note active
	; 4 = morph active		;-< for SCC when 1 then waveform is following morph buffer
	; 3 = command trigger
	; 2 = envelope trigger
	; 5 = instrument trigger
	; 6 = waveform trigger
	; 7 = PSG/SCC
TRACK_empty			.equ 11-17		; needed for pushing 0 at note start
TRACK_ToneAdd		.equ 12-17		; reset after note set
TRACK_VolumeAdd		.equ 14-17		; reset after note set
TRACK_Noise			.equ 15-17		; reset after note set
TRACK_cmd_VolumeAdd	.equ 16-17		; reset after note set
TRACK_cmd_ToneSlideAdd	.equ 17-17		; reset after note set
TRACK_cmd_ToneAdd		.equ 19-17		; reset after note set

TRACK_cmd_detune		.equ 21-17
TRACK_cmd_0			.equ 22-17
TRACK_cmd_1			.equ 23-17
TRACK_cmd_2			.equ 24-17
TRACK_cmd_3			.equ 25-17
TRACK_cmd_4_depth		.equ 26-17
TRACK_cmd_4_step		.equ 27-17
TRACK_cmd_NoteAdd		.equ 28-17		;x reset after note set
TRACK_cmd_A			.equ 29-17		
TRACK_cmd_B			.equ 30-17		
TRACK_cmd_E			.equ 31-17
TRACK_Timer			.equ 32-17		; used for timing by all cmd's
TRACK_Step			.equ 33-17		; only for VIBRATO???
TRACK_Delay			.equ 34-17		; rows to wait till next data
TRACK_Retrig		.equ 35-17		; rows to retrigger command
TRACK_prevDelay		.equ 36-17
TRACK_cmd_A_add		.equ 37-17	;<< Still in use???

TRACK_REC_SIZE		.equ 38


B_TRGNOT			.equ 0			; note trigger
B_ACTNOT			.equ 1			; note active
B_TRGENV			.equ 2			; envelope trigger
B_TRGCMD			.equ 3			; command active
B_ACTMOR			.equ 4			; morph active
B_TRGINS			.equ 5			; instrument trigger
B_TRGWAV			.equ 6			; waveform trigger
B_PSGSCC			.equ 7			; chip type (PSG or SCC)


_SP_Storage:		.ds 2			; to store the SP

replay_trigger:		.ds 1			; trigger byte.
replay_mainPSGvol:	.ds 2			; volume mixer for PSG SCC balance
replay_mainSCCvol:	.ds 2			; volume mixer for PSG SCC balance
;replay_songbase:		.ds 2			; pointer to song data
replay_wavebase:		.ds 2			; pointer to waveform data
replay_insbase:		.ds 2			; pointer to instrument data
replay_orderpointer:	.ds 2			; pointer to the order track list pointers

replay_speed: 		.ds 1			; speed to replay (get from song)
replay_speed_subtimer: 	.ds 1			; counter for finer speed
replay_speed_timer: 	.ds 1 			; counter for speed
replay_mode: 		.ds 1			; Replayer status
; mode 0  = no sound output
; mode 1  = replay song 
replay_fade:		.ds 1			; Fade active (value = fade speed)
replay_fade_timer:		.ds 1			; Timer for fade
replay_fade_vol:		.ds 1			; fade volume to lower the channel volume.


replay_previous_note:	.ds 1			; previous note played
replay_mainvol:		.ds 2			; the volume correction.

replay_vib_table:		.ds 2			; pointer to the vibrato table
replay_Tonetable:		.ds 2			; ToneTable (affected by transpose);

replay_morph_active:	.ds 1			; flag to indicate morphing is active
;replay_morph_update:	.ds 1			; flag to indicate a new waveform is ready
replay_morph_timer:	.ds 1			; step timer between morphs
replay_morph_speed:	.ds 1 
replay_morph_counter:	.ds 1			; counter till end morph
replay_morph_buffer:	.ds 64			; interleaved buffer with morphed waveform and morph delta values
replay_morph_waveform:	.ds 1 			; waveform we are morphing to.


TRACK_Chan1:		.ds TRACK_REC_SIZE
TRACK_Chan2:		.ds TRACK_REC_SIZE
TRACK_Chan3:		.ds TRACK_REC_SIZE
TRACK_Chan4:		.ds TRACK_REC_SIZE
TRACK_Chan5:		.ds TRACK_REC_SIZE
TRACK_Chan6:		.ds TRACK_REC_SIZE
TRACK_Chan7:		.ds TRACK_REC_SIZE
TRACK_Chan8:		.ds TRACK_REC_SIZE

TRACK_pointer1:		.ds 2
TRACK_pointer2:		.ds 2
TRACK_pointer3:		.ds 2
TRACK_pointer4:		.ds 2
TRACK_pointer5:		.ds 2
TRACK_pointer6:		.ds 2
TRACK_pointer7:		.ds 2
TRACK_pointer8:		.ds 2


;--- AY SPECIFIC
AY_registers:		.ds 0 
AY_regToneA: 		.ds 2	; Tone A freq low (8bit)
					; Tone A freq high (4bit)
AY_regToneB: 		.ds 2	; Tone B freq low
					; Tone B freq high
AY_regToneC: 		.ds 2	; Tone C freq low
					; Tone C freq high
AY_regNOISE: 		.ds 1	; Noise freq (5bit)
AY_regMIXER: 		.ds 1	;0x38	;x3f	; Mixer control (1 = off, 0 = on)
AY_regVOLA:		.ds 1	; Chan A volume
AY_regVOLB:		.ds 1	; Chan B volume
AY_regVOLC:  		.ds 1	; Chan C volume
AY_regEnvL:		.ds 1	; Volume Env Freq low (8bit)	
AY_regEnvH:		.ds 1	; Volume Env Freq high (4bit)
AY_regEnvShape: 		.ds 1	; Volume Env Shape (4bit)

;--- SCC SPECIFIC

_0x9800:	.ds 32			; Waveform data
_0x9820:	.ds 32
_0x9840:	.ds 32
_0x9860:	.ds 32
SCC_registers: 		.ds 0
SCC_regToneA: 		.ds 2	; Tone A freq low (8bit)
					; Tone A freq high (4bit)
SCC_regToneB: 		.ds 2	; Tone B freq low
					; Tone B freq high
SCC_regToneC: 		.ds 2	; Tone C freq low
					; Tone C freq high
SCC_regToneD: 		.ds 2	; Tone D freq low
					; Tone D freq high
SCC_regToneE: 		.ds 2	; Tone E freq low
					; Tone E freq high
SCC_regVOLA: 		.ds 1	; Chan A volume
SCC_regVOLB: 		.ds 1	; Chan B volume
SCC_regVOLC:  		.ds 1	; Chan C volume
SCC_regVOLD: 		.ds 1	; Chan D volume
SCC_regVOLE:  		.ds 1	; Chan E volume
SCC_regMIXER: 		.ds 1	; x3f	; Mixer control (1 = off, 0 = on)


;/// see to remove this.
;-- SCC registers
oldregs:	.ds (32*4)+(3*5)+1		; a way to int the SCC


