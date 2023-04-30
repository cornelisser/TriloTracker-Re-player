;================================
; The new replayer.
;
; Persistent RAM unswappable
;
;================================

TRACK_Instrument		      equ 0-17
TRACK_Command			equ 1-17
TRACK_MacroPointer		equ 2-17
TRACK_MacroStart		      equ 4-17
TRACK_MacroRestart 		equ 6-17		; no longer needed
TRACK_Note				equ 7-17
TRACK_Volume			equ 8-17
TRACK_Voice				equ 9-17
TRACK_Flags				equ 10-17
	; 0 = note trigger
	; 1 = note active
	; 2 = envelope trigger
	; 3 = command trigger      
	; 4 = Key on 		;-< for FM
	; 5 = Sustain           ;-< for FM
	; 6 = FM voice trigger
	; 7 = PSG/FM
TRACK_empty				equ 11-17		; needed for pushing 0 at note start
TRACK_ToneAdd			equ 12-17		; reset after note set
TRACK_VolumeAdd			equ 14-17		; reset after note set
TRACK_Noise				equ 15-17	;[OBSOLETE]	; reset after note set
TRACK_cmd_VolumeAdd		equ 16-17		; reset after note set
TRACK_cmd_ToneSlideAdd		equ 17-17		; reset after note set
TRACK_cmd_ToneAdd			equ 19-17		; reset after note set

TRACK_cmd_detune			equ 21-17
TRACK_cmd_0				equ 23-17
TRACK_cmd_1				equ 24-17
TRACK_cmd_2				equ 25-17
TRACK_cmd_3				equ 26-17
TRACK_cmd_4_depth			equ 27-17
TRACK_cmd_4_step			equ 29-17
TRACK_cmd_NoteAdd			equ 30-17		;x reset after note set
TRACK_cmd_A				equ 31-17		
TRACK_cmd_B				equ 32-17		
TRACK_cmd_E				equ 33-17
TRACK_Timer				equ 34-17		; used for timing by all cmd's
TRACK_Step				equ 35-17		; only for VIBRATO???
TRACK_Delay				equ 36-17		; rows to wait till next data
TRACK_prevDelay			equ 37-17
TRACK_cmd_A_add			equ 38-17		;<< Still in use???

TRACK_REC_SIZE			equ 39


B_TRGNOT				equ 0			; note trigger
B_ACTNOT				equ 1			; note active
B_TRGENV				equ 2			; envelope trigger
B_TRGCMD				equ 3			; command active
B_KEYON				equ 4			; for fm note trigger
B_SUST				equ 5			; for fm note sustain
B_TRGVOI				equ 6			; custom voice trigger	
B_PSGFM				equ 7			; chip type (PSG or FM)	


_SP_Storage				#2			; to store the SP

replay_trigger			#1			; trigger byte.
replay_mainPSGvol		      #2			; volume mixer for PSG FM balance
replay_mainFMvol		      #2			; volume mixer for PSG FM balance

; Do not move these
replay_voicebase:		      #2			; pointer to custom voice data
replay_drumbase:		      #2			; pointer to drum macro data
replay_insbase:			#2			; pointer to instrument data
TRACK_pointer1			#2
TRACK_pointer2			#2
TRACK_pointer3			#2
TRACK_pointer4			#2
TRACK_pointer5			#2
TRACK_pointer6			#2
TRACK_pointer7			#2
TRACK_pointer8			#2
; / Do not move above


replay_orderpointer:	      #2			; pointer to the order track list pointers
replay_speed 			#1			; speed to replay (get from song)
replay_speed_subtimer 	      #1			; counter for finer speed
replay_speed_timer 		#1 			; counter for speed
replay_mode 			#1			; Replayer status
; mode 0  = no sound output
; mode 1  = replay song 
replay_chan_setup		      #1			; 0 = 2 psg+ 6 fm, 1 = 3psg + 5 fm
replay_arp_speed		      #1			; arpeggio speed ( 0 = fast, $f = slowest)
replay_fade				#1			; Fade active (value = fade speed)
replay_fade_timer		      #1			; Timer for fade
replay_fade_vol			#1			; fade volume to lower the channel volume.

replay_previous_note	      #1			; previous note played
replay_mainvol			#2			; the volume correction.

replay_softvoice			#1	            ; Software voice active
FM_softvoice_req			#1	            ; Software voice requested
replay_tonetable		      #2			; Current tonetable to read from

r800:					#1	            ; CPU mode
count_low:				#1	            ; R800 timer

equalization_freq:		#1	            ; vdp type for correct playback on 60hz 0=50Hx, >0=60Hz
equalization_cnt:		      #1	            ; counter for correct playback on 60hz


TRACK_Chan1				#TRACK_REC_SIZE
TRACK_Chan2				#TRACK_REC_SIZE
TRACK_Chan3				#TRACK_REC_SIZE
TRACK_Chan4				#TRACK_REC_SIZE
TRACK_Chan5				#TRACK_REC_SIZE
TRACK_Chan6				#TRACK_REC_SIZE
TRACK_Chan7				#TRACK_REC_SIZE
TRACK_Chan8				#TRACK_REC_SIZE


REGISTERS_START		#0
IFDEF SFXPLAY_ENABLED

;--- AY SPECIFIC
PSG_registers		#0 
PSG_regToneA 		#2	; Tone A freq low (8bit)
					; Tone A freq high (4bit)
PSG_regToneB 		#2	; Tone B freq low
					; Tone B freq high
PSG_regToneC 		#2	; Tone C freq low
					; Tone C freq high
PSG_regNOISE 		#1	; Noise freq (5bit)
PSG_regMIXER 		#1	; Mixer control (1 = off, 0 = on)
PSG_regVOLA 		#1	; Chan A volume
PSG_regVOLB 		#1	; Chan B volume
PSG_regVOLC  		#1	; Chan C volume
PSG_regEnvL 		#1	; Volume Env Freq low (8bit)	
PSG_regEnvH 		#1	; Volume Env Freq high (4bit)
PSG_regEnvShape 		#1	; Volume Env Shape (4bit)
replay_noise		#1 ; replayer_noise

ELSE

;--- AY SPECIFIC
PSG_registers		#0 
PSG_regToneA 		#2	; Tone A freq low (8bit)
					; Tone A freq high (4bit)
PSG_regToneB 		#2	; Tone B freq low
					; Tone B freq high
PSG_regToneC 		#2	; Tone C freq low
					; Tone C freq high
replay_noise		#0
PSG_regNOISE 		#1	; Noise freq (5bit)
PSG_regMIXER 		#1	;0x38	;x3f	; Mixer control (1 = off, 0 = on)
PSG_regVOLA 		#1	; Chan A volume
PSG_regVOLB 		#1	; Chan B volume
PSG_regVOLC  		#1	; Chan C volume
PSG_regEnvL 		#1	; Volume Env Freq low (8bit)	
PSG_regEnvH 		#1	; Volume Env Freq high (4bit)
PSG_regEnvShape 		#1	; Volume Env Shape (4bit)

ENDIF

;--- FM SPECIFIC
FM_Voicereg:	#16	; software voice + old values

FM_Registers: 	#0	; contains the registers values to write and value previously written
FM_regToneA 	#2	; Tone A freq low (8bit)			; Tone A freq high (1bit)
FM_regToneAb 	#2	; Tone A freq low (8bit)			; Tone A freq high (1bit)
FM_regVOLA		#1	; Chan A volume
FM_regVOLAb		#1	; Chan A volume
FM_regToneB 	#2	; Tone B freq low					; Tone B freq high
FM_regToneBb 	#2	; Tone B freq low					; Tone B freq high
FM_regVOLB		#1	; Chan B volume
FM_regVOLBb		#1	; Chan B volume
FM_regToneC 	#2	; Tone C freq low					; Tone C freq high
FM_regToneCb 	#2	; Tone C freq low					; Tone C freq high
FM_regVOLC	 	#1	; Chan C volume
FM_regVOLCb	 	#1	; Chan C volume
FM_regToneD 	#2	; Tone D freq low					; Tone D freq high
FM_regToneDb 	#2	; Tone D freq low					; Tone D freq high
FM_regVOLD		#1	; Chan D volume
FM_regVOLDb		#1	; Chan D volume
FM_regToneE 	#2	; Tone E freq low					; Tone E freq high
FM_regToneEb 	#2	; Tone E freq low					; Tone E freq high
FM_regVOLE	  	#1	; Chan E volume
FM_regVOLEb	  	#1	; Chan E volume
FM_regToneF 	#2	; Tone F freq low					; Tone F freq high
FM_regToneFb 	#2	; Tone F freq low					; Tone F freq high
FM_regVOLF	  	#1	; Chan F volume
FM_regVOLFb	  	#1	; Chan F volume

DRUM_regToneBD	#2
DRUM_regToneBDb	#2
DRUM_regVolBD	#1
DRUM_regVolBDb	#1
DRUM_regToneSH	#2
DRUM_regToneSHb	#2
DRUM_regVolSH	#1
DRUM_regVolSHb	#1
DRUM_regToneCT	#2
DRUM_regToneCTb	#2
DRUM_regVolCT	#1
DRUM_regVolCTb	#1
FM_DRUM		#1	; Percussion bits
FM_DRUMb		#1

FM_DRUM_ACTIVE		#1	; Is a drum active?
FM_DRUM_MACRO		#2	; Pointer to drum macro data

FM_regMIXER 		#1	; Mixer control (1 = off, 0 = on)

REGISTERS_END		#0

