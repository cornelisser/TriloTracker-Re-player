Const VERSION$ = "V0.3.1"
Const DATE$ = "[04-09-2016]"
Const PSG = 0
Const SCC = 1
Const FM = 2
Const SN = 3



Global	patterns 		= CreateBank ((((4*8))*64)*128)
Global	pattern_lengths	= CreateBank (128)
Global	samples			= CreateBank (32*(3+(32*4)))
Global	waveforms		= CreateBank (1024)
Global  instrumentnames	= CreateBank (31*16)

Global  track_data		= CreateBank (((4*64)*8)*128)			; individual tracks
Global	track_list		= CreateBank ((8*2)*128)				; 8 track#'s per pattern
Global 	last_track      = 0


Global	last_pattern	= 0
Global 	last_instrument = 0	; starting at 0
Global	last_waveform	= 0	; starting at 0
Global	used_instruments= CreateBank(32)
Global  used_waveforms  = CreateBank(32)


Global 	songname 		= CreateBank (32)
Global 	songby 			= CreateBank (32)
Global 	speed			= 0
Global 	sequence		= CreateBank (128)
Global 	sequenceloop	= 0
Global 	sequencelen		= 0
Global	songversion		= 0
Global 	songtype		= 0

Global	l_pre$			= "@@";"."	

Global REMOVE_Redundancy_Tracks = True



;- for sfx export
Global	replay_speed_subtimer
Global 	replay_speed_timer
Global 	replay_line


Global	TRACK_Chip
Global	TRACK_Instrument
Global	TRACK_Command
Global	TRACK_MacroStep
Global  TRACK_MacroLength
Global  TRACK_MacroRestart
Global	TRACK_Waveform


Global	TRACK_Note
Global	TRACK_Previous_note
Global	TRACK_Volume
Global	TRACK_Flag_0	; note trigger
Global	TRACK_Flag_1	; note active
Global	TRACK_Flag_2	; morph active
Global	TRACK_Flag_3	; command trigger
Global	TRACK_Flag_4	; envelope trigger
Global	TRACK_Flag_5	; instrument trigger
Global	TRACK_Flag_6	; waveform trigger
Global	TRACK_Flag_7	; type of chip

Global 	TRACK_ToneAdd
Global 	TRACK_VolumeAdd
Global 	TRACK_Noise
Global 	TRACK_cmd_ToneSlideAdd
Global 	TRACK_cmd_NoteAdd
Global 	TRACK_cmd_ToneAdd
Global 	TRACK_cmd_VolumeAdd
Global 	TRACK_cmd_0
Global 	TRACK_cmd_1
Global 	TRACK_cmd_2
Global 	TRACK_cmd_3
Global 	TRACK_cmd_4_depth
Global 	TRACK_cmd_4_step
Global 	TRACK_cmd_detune
Global 	TRACK_cmd_9
Global 	TRACK_cmd_A
Global 	TRACK_cmd_B
Global 	TRACK_cmd_E
Global 	TRACK_Timer
Global 	TRACK_Step


Global	regTone
Global	regNOISE
Global 	regMIXER
Global 	regVOL
Global	regEnv
Global	regEnvShape

Global	old_regTone
Global	old_regNOISE
Global 	old_regMIXER
Global 	old_regVOL
Global	old_regEnv
Global	old_regEnvShape


Dim chipname$(4)
chipname(0) = "PSG"
chipname(1) = "SCC"
chipname(2) = "FM"
chipname(3) = "SN"

;Konami values found in	nemesis 2 replayer.
;db	0x6a,	0x64,	0x5e,	0x59,	0x54,	0x4f,	0x4a,	0x46,	0x42,	0x3f,	0x3b,	0x38,	0x35
Const C_PER		=	$6a*32	
Const C1_PER	=	$64*32
Const D_PER		=	$5e*32
Const D1_PER	=	$59*32
Const E_PER		=	$54*32
Const F_PER		=	$4f*32
Const F1_PER	=	$4a*32
Const G_PER		=	$46*32
Const G1_PER	=	$42*32
Const A_PER		=	$3f*32
Const A1_PER	=	$3b*32
Const B_PER		=	$38*32

.noteData:	
Data C_PER/1	,C1_PER/1  ,D_PER/1  ,D1_PER/1  ,E_PER/1	,F_PER/1  ,F1_PER/1  ,G_PER/1	 ,G1_PER/1	,A_PER/1  ,A1_PER/1  ,B_PER/1
Data C_PER/2	,C1_PER/2  ,D_PER/2  ,D1_PER/2  ,E_PER/2	,F_PER/2  ,F1_PER/2  ,G_PER/2	 ,G1_PER/2	,A_PER/2  ,A1_PER/2  ,B_PER/2
Data C_PER/4	,C1_PER/4  ,D_PER/4  ,D1_PER/4  ,E_PER/4	,F_PER/4  ,F1_PER/4  ,G_PER/4	 ,G1_PER/4	,A_PER/4  ,A1_PER/4  ,B_PER/4
Data C_PER/8	,C1_PER/8  ,D_PER/8  ,D1_PER/8  ,E_PER/8	,F_PER/8  ,F1_PER/8  ,G_PER/8	 ,G1_PER/8	,A_PER/8  ,A1_PER/8  ,B_PER/8
Data C_PER/16	,C1_PER/16 ,D_PER/16 ,D1_PER/16 ,E_PER/16	,F_PER/16 ,F1_PER/16 ,G_PER/16 	,G1_PER/16	,A_PER/16 ,A1_PER/16 ,B_PER/16
Data C_PER/32	,C1_PER/32 ,D_PER/32 ,D1_PER/32 ,E_PER/32	,F_PER/32 ,F1_PER/32 ,G_PER/32 	,G1_PER/32	,A_PER/32 ,A1_PER/32 ,B_PER/32
Data C_PER/64	,C1_PER/64 ,D_PER/64 ,D1_PER/64 ,E_PER/64	,F_PER/64 ,F1_PER/64 ,G_PER/64 	,G1_PER/64	,A_PER/64 ,A1_PER/64 ,B_PER/64
Data C_PER/128	,C1_PER/128,D_PER/128,D1_PER/128,E_PER/128	,F_PER/128,F1_PER/128,G_PER/128	,G1_PER/128	,A_PER/128,A1_PER/128,B_PER/128


Dim notes(8*12)
Restore noteData
For x = 0 To (8*12)-1
	Read v
	notes(x) = v
Next

.combinedvolumes
Data	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
Data	$00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$10,$11
Data	$00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$10,$20,$20,$21,$22
Data	$00,$00,$00,$10,$10,$10,$10,$10,$20,$20,$20,$20,$20,$31,$32,$33
Data	$00,$00,$10,$10,$10,$10,$20,$20,$20,$20,$30,$30,$31,$32,$43,$44
Data	$00,$00,$10,$10,$10,$20,$20,$20,$30,$30,$30,$31,$42,$43,$54,$55
Data	$00,$00,$10,$10,$20,$20,$20,$30,$30,$40,$41,$42,$53,$54,$65,$66
Data	$00,$00,$10,$10,$20,$20,$30,$30,$40,$41,$52,$53,$64,$65,$76,$77
Data	$00,$10,$10,$20,$20,$20,$30,$40,$41,$52,$53,$54,$65,$76,$77,$88
Data	$00,$10,$10,$20,$20,$30,$40,$41,$52,$53,$64,$65,$76,$87,$88,$99
Data	$00,$10,$10,$20,$30,$30,$41,$52,$53,$64,$75,$76,$87,$98,$99,$aa
Data	$00,$10,$10,$20,$30,$41,$42,$53,$64,$75,$76,$77,$98,$a9,$aa,$bb
Data	$00,$10,$20,$20,$31,$42,$53,$64,$65,$76,$87,$88,$a9,$aa,$bb,$cc
Data	$00,$10,$20,$31,$32,$43,$54,$65,$76,$87,$98,$99,$aa,$bb,$cc,$dd
Data	$00,$10,$21,$32,$43,$54,$65,$76,$77,$88,$99,$9a,$bb,$cc,$dd,$ee
Data	$00,$11,$22,$33,$44,$55,$66,$77,$88,$99,$aa,$bb,$cc,$dd,$ee,$ff

Dim volumes(16*16)
Restore combinedvolumes
For x= 0 To (16*16)-1
	Read v
	volumes(x) = v
Next





;Global instrument_pointers	=	CreateBank (31*2)
;Global pattern_pointers		= 	CreateBank (128*2)
;Global compressed_patterns	=	CreateBank (128*1024)
;Global order_pointers		=	CreateBank (128*2)
;Global instrument_data_len  = 0
;Global data_offset			= 0






Include ".\TT_compile_init.bb"
Include ".\TT_compile_io.bb"
Include ".\TT_compile_process.bb"
Include ".\TT_compile_sfx.bb" 

;/////////////////////////////////////////////////////
;
;
; Main routine
;
;
;//////////////////////////////////////////////////////
Repeat
	eid = WaitEvent()
	edata = EventData()
	esource = EventSource()

	Select eid
	
	
		;/////////////////////////////////////////////////////
		; Gadget handle
		; (Sliders/buttons etc.)
		;/////////////////////////////////////////////////////
		Case $401;	gadget action	
			If esource = loadButton
				SetTextAreaText logging,""
				loadfile()
				
;				compile()
;				export()
			ElseIf esource = saveButton
				REMOVE_Redundancy_Tracks = True
				prepare()
				compile()
			ElseIf esource = sfxButton
				REMOVE_Redundancy_Tracks = False
				prepare()
				compile_sfx()
			EndIf

		;/////////////////////////////////////////////////////
		; Mouse down
		; (Canvases)
		;/////////////////////////////////////////////////////			
		Case $201; mouse down

			
		;/////////////////////////////////////////////////////
		; Mouse over canvas
		; (Canvases)
		;/////////////////////////////////////////////////////						
		Case $203;	

	End Select		
Until eid = $803  And esource = mainWin

;api_ExitProcess (uExitCode%)	
End



Function banktotxt(txt,bank,s,l)
		For w = s To l-1
			v = PeekByte(bank,w)
			; extra check that removed special character that could mess up assembler compilers.
			If v <32
				v = 32
				PokeByte (bank,w,v)
			EndIf
			AddTextAreaText (txt,Chr(v))
		Next

End Function