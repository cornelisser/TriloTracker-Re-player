;================================
; The new replayer.
;
; Persistent RAM unswappable
;
;================================

TRACK_Instrument		equ 0-17
TRACK_Waveform		equ 1-17
TRACK_Command		equ 2-17
TRACK_MacroPointer	equ 3-17
TRACK_MacroStart		equ 5-17
TRACK_MacroRestart 	equ 7-17
TRACK_Note			equ 8-17
TRACK_Volume		equ 9-17
TRACK_Flags			equ 10-17
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
TRACK_cmd_VolumeAdd	equ 16-17		; reset after note set
TRACK_cmd_ToneSlideAdd	equ 17-17		; reset after note set
TRACK_cmd_ToneAdd		equ 19-17		; reset after note set

TRACK_cmd_detune		equ 21-17
TRACK_cmd_0			equ 22-17
TRACK_cmd_1			equ 23-17
TRACK_cmd_2			equ 24-17
TRACK_cmd_3			equ 25-17
TRACK_cmd_4_depth		equ 26-17
TRACK_cmd_4_step		equ 27-17
TRACK_cmd_NoteAdd		equ 28-17		;x reset after note set
TRACK_cmd_A			equ 29-17		
TRACK_cmd_B			equ 30-17		
TRACK_cmd_E			equ 31-17
TRACK_Timer			equ 32-17		; used for timing by all cmd's
TRACK_Step			equ 33-17		; only for VIBRATO???
TRACK_Delay			equ 34-17		; rows to wait till next data
TRACK_prevDelay		equ 35-17
TRACK_Retrig		equ 36-17		; rows to retrigger command
TRACK_cmd_A_add		equ 37-17	;<< Still in use???

TRACK_REC_SIZE		equ 38


B_TRGNOT			equ 0			; note trigger
B_ACTNOT			equ 1			; note active
B_TRGENV			equ 2			; envelope trigger
B_TRGCMD			equ 3			; command active
B_ACTMOR			equ 4			; morph active
B_TRGINS			equ 5			; instrument trigger
B_TRGWAV			equ 6			; waveform trigger
B_PSGSCC			equ 7			; chip type (PSG or SCC)


_SP_Storage			#1			; to store the SP

replay_trigger		#1			; trigger byte.
replay_mainPSGvol		#1			; volume mixer for PSG SCC balance
;replay_mainSCCvol		#1			; volume mixer for PSG SCC balance
replay_songbase:		#2			; pointer to song data
replay_wavebase:		#2			; pointer to waveform data
replay_insbase:		#2			; pointer to instrument data
replay_orderpointer:	#2			; pointer to the order track list pointers

replay_speed 		#1			; speed to replay (get from song)
replay_speed_subtimer 	#1			; counter for finer speed
replay_speed_timer 	#1 			; counter for speed
replay_mode 		#1			; Replayer status
; mode 0  = no sound output
; mode 1  = replay song 

replay_previous_note	#1			; previous note played
replay_mainvol		#1			; the volume correction.

replay_vib_table		#2			; pointer to the vibrato table
replay_Tonetable		#2			; ToneTable (affected by transpose);

;replay_morph_active	#1			; flag to indicate morphing is active
;;replay_morph_update	#1			; flag to indicate a new waveform is ready
;replay_morph_timer	#1			; step timer between morphs
;replay_morph_speed	#1 
;replay_morph_counter	#1			; counter till end morph
;replay_morph_buffer	#64			; interleaved buffer with morphed waveform and morph delta values
;replay_morph_waveform	#1 			; waveform we are morphing to.


TRACK_Chan1			#TRACK_REC_SIZE
TRACK_Chan2			#TRACK_REC_SIZE
TRACK_Chan3			#TRACK_REC_SIZE
;TRACK_Chan4			#TRACK_REC_SIZE
;TRACK_Chan5			#TRACK_REC_SIZE
;TRACK_Chan6			#TRACK_REC_SIZE
;TRACK_Chan7			#TRACK_REC_SIZE
;TRACK_Chan8			#TRACK_REC_SIZE

TRACK_pointer1		#2
TRACK_pointer2		#2
TRACK_pointer3		#2
;TRACK_pointer4		#2
;TRACK_pointer5		#2
;TRACK_pointer6		#2
;TRACK_pointer7		#2
;TRACK_pointer8		#2


;--- AY SPECIFIC
AY_registers		#0 
AY_regToneA 		#2	; Tone A freq low (8bit)
					; Tone A freq high (4bit)
AY_regToneB 		#2	; Tone B freq low
					; Tone B freq high
AY_regToneC 		#2	; Tone C freq low
					; Tone C freq high
AY_regNOISE 		#1	; Noise freq (5bit)
AY_regMIXER 		#1	;0x38	;x3f	; Mixer control (1 = off, 0 = on)
AY_regVOLA 			#1	; Chan A volume
AY_regVOLB 			#1	; Chan B volume
AY_regVOLC  		#1	; Chan C volume
AY_regEnvL 			#1	; Volume Env Freq low (8bit)	
AY_regEnvH 			#1	; Volume Env Freq high (4bit)
AY_regEnvShape 		#1	; Volume Env Shape (4bit)

;--- SCC SPECIFIC
;
;_0x9800:	#32			; Waveform data
;_0x9820:	#32
;_0x9840:	#32
;_0x9860:	#32
;SCC_registers 		#0
;SCC_regToneA 		#2	; Tone A freq low (8bit)
;					; Tone A freq high (4bit)
;SCC_regToneB 		#2	; Tone B freq low
;					; Tone B freq high
;SCC_regToneC 		#2	; Tone C freq low
;					; Tone C freq high
;SCC_regToneD 		#2	; Tone D freq low
;					; Tone D freq high
;SCC_regToneE 		#2	; Tone E freq low
;					; Tone E freq high
;SCC_regVOLA 		#1	; Chan A volume
;SCC_regVOLB 		#1	; Chan B volume
;SCC_regVOLC  		#1	; Chan C volume
;SCC_regVOLD 		#1	; Chan D volume
;SCC_regVOLE  		#1	; Chan E volume
SCC_regMIXER 		#1	; x3f	; Mixer control (1 = off, 0 = on)


;/// see to remove this.
;-- SCC registers
;oldregs:	#(32*4)+(3*5)+1		; a way to int the SCC


