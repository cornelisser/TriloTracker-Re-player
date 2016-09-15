


Function compile_sfx()

	file$ = RequestFile$("Export file:","asm",True)

	If file$<>""	
		fileout=WriteFile(file$)
		If fileout


			;--- set the correct output format (sjasm or asMSX)
			Select (SelectedGadgetItem (outputSelect))
				Case 0
					l_pre$			= "."
				Case 1
					l_pre$			= "@@"	
			End Select


			compile_sfx_header(fileout)
			compile_sfx_sequence(fileout)


			If (ButtonState(includeWave))
				WriteLine (fileout, l_pre$+"waveform_start:")
				For w=0 To 31
					If (PeekByte(used_waveforms,w) < 255)
						compile_waveform(fileout,w)
					EndIf
				Next
				WriteLine (fileout, "")
			EndIf
			
			
			WriteLine (fileout, "; [ SFX data ]")

			For t = 0 To last_track
				If (empty_sfx_track(t) > 0)
					compile_sfx_track(fileout,t)
				EndIf
			Next
			WriteLine (fileout, out$)	
				

			CloseFile fileout	
		EndIf
	EndIf
End Function


Function compile_sfx_header(fileout)

	WriteLine (fileout, "; Compiled using tt_compile.exe "+VERSION$ + " "+ DATE$)
	WriteLine (fileout, "; Copyright 2016 Richard Cornelisse")
	WriteLine (fileout, "")
	
	out$ = "; Song: "
	For x=0 To 31
		out$ = out$ + Chr(PeekByte(songname,x))
	Next
	WriteLine (fileout, out$)
	out$ = "; By:   "
	For x=0 To 31
		out$ = out$ + Chr(PeekByte(songby,x))
	Next
	WriteLine (fileout, out$)
	WriteLine (fileout, "")
		
	

	WriteLine (fileout, "; [ sfx start data ]")
	If ButtonState(includeWave)
		WriteLine (fileout, Chr(9)+"dw "+l_pre$+"waveform_start "+Chr(9)+Chr(9)+"; Start of the waveform data.")
	Else
		WriteLine (fileout, Chr(9)+"dw $0000"+Chr(9)+Chr(9)+Chr(9)+Chr(9)+"; Waveform data is external.")
	EndIf	
	WriteLine (fileout, "")
End Function




Function empty_sfx_track(t)
	value = 0
	
	For l=0 To 63
		note = PeekByte (track_data,(t*64*4)+(l*4))
		If note = 255
			Exit
		EndIf
		
		value = value Or note 
		If value >0 
			Exit
		EndIf
	Next
	
	
	;AddTextAreaText (logging,Chr(10)+"Empty track value: "+t+"="+value+Chr(10))
			

	Return value
End Function







Function compile_sfx_sequence(fileout)

	WriteLine (fileout, "; [ sfx order pointer list ]")
	WriteLine (fileout, l_pre$+"sfxlist:")
	For s = 0 To sequencelen-1
		p = PeekByte(sequence,s)
		out$ = Chr(9)+"dw "+ l_pre$+"sfx_"+s
		WriteLine (fileout, out$)
		
	Next
	
;	WriteLine (fileout, Chr(9)+Chr(9)+"dw 0x0000, "+l_pre$+"restart"+Chr(9)+Chr(9)+Chr(9)+"; End of sequence delimiter + restart address.") 
	WriteLine (fileout, "")
	
	
		
	For s = 0 To sequencelen-1
		p = PeekByte(sequence,s)
		out$ = l_pre$+"sfx_"+s+":"+Chr(9)+"; sfx "+ s + " /pattern "+p
		WriteLine (fileout, out$)
		
		For x=0 To 7
			out$ = Chr(9)+"db "
			
			
			t= PeekShort(track_list,(p*16)+(x*2))
			If (empty_sfx_track(t) >0)
				; Type of sfx PSG or other
				get_chiptype(t)
				out$ = out$ + (TRACK_Chip+1)+Chr(9)+Chr(9)+"; "+chipname(TRACK_Chip)
				
				WriteLine (fileout, out$)
				out$ = Chr(9)+"dw "
				out$ = out$ + l_pre$+"sfxtrack_"+PeekShort(track_list,(p*16)+(x*2))
				WriteLine (fileout, out$)
			EndIf
		Next	
		out$ = Chr(9)+"db 0        ; End of SFX"		
		WriteLine (fileout, out$)			
	Next
	
;	WriteLine (fileout, Chr(9)+Chr(9)+"dw 0x0000, "+l_pre$+"restart"+Chr(9)+Chr(9)+Chr(9)+"; End of sequence delimiter + restart address.") 
	WriteLine (fileout, "")


End Function



Function compile_sfx_track(fileout,t)

	; make sure first register updates are processed.
	old_regTone = -1
	old_regNOISE = -1
	old_regMIXER = -1
	old_regVOL = -1
	old_regEnv = -1
	old_regEnvShape = -1

	
	; header
	;------------------------
	get_chiptype(t)
	out$ = l_pre$+"sfxtrack_"+t+":"+Chr(9)+Chr(9)+";Chip:"+chipname(TRACK_Chip)
	WriteLine (fileout, out$)	

	; initialization
	; -----------------------
	replay_speed_subtimer = 0
	replay_speed_timer = 1
	replay_line = -1
	
	TRACK_Waveform = 255
	TRACK_Instrument = 255
	
		
;	loop = True
	; initialization
	While  replay_line < 64
		;--- speed timer
		replay_speed_timer = replay_speed_timer -1
;		WriteLine (fileout, replay_speed_timer)
		If (replay_speed_timer > 0)			; Process no new data
			compile_decodedata_NO(fileout,t)
		Else								; Process new data
			replay_speed_subtimer = replay_speed_subtimer + (speed And 1)
			replay_speed_timer = speed /2
			If (replay_speed_subtimer = 2)
				replay_speed_timer = replay_speed_timer + 1
				replay_speed_subtimer = 0
			EndIf
			
			replay_line = replay_line + 1
		;	If (replay_line  63)
		;		loop = False
		;	Else
				compile_decodedata(fileout,t)
				compile_decodedata_NO(fileout,t)

		;	EndIf
		EndIf
		compile_reg_updates(fileout)
	Wend
	
	;--- End delimiter
	Select TRACK_Chip
		Case 0	; PSG
			WriteLine (fileout, Chr(9)+"db 64"+Chr(9)+Chr(9)+"; End delimiter PSG")	
		Case 1	; SCC
			WriteLine (fileout, Chr(9)+"db 128"+Chr(9)+Chr(9)+"; End delimiter SCC")	
	End Select
	
	WriteLine (fileout, " ")
End Function



Function compile_reg_updates(fileout)

	Select TRACK_Chip
		Case 0	; PSG
			
		Case 1	; SCC
			byte1 = regVOL
			byte1 = byte1 + (regMIXER And 16) 	; Tone active
			If (regTone <> old_regTone)			; Tone update
				byte1 = byte1 Or 32
			EndIf	
			Stop		
			If (TRACK_Flag_6)
				byte1 = byte1 Or 64		; Waveform flag
			EndIf
			out$ = Chr(9)+"db $"+Right(Hex(byte1),2)
			
			If (regTone <> old_regTone)			; Tone update
				byte2 = regTone And $ff
				byte3 = (regTone Shr 8) And $ff
				out$ = out$ +", $"+Right(Hex(byte2),2)+", $"+Right(Hex(byte3),2)
			EndIf
			
			If (TRACK_Flag_6)
				byte4 = TRACK_Waveform
				out$ = out$ +", $"+Right(Hex(byte4),2)
			EndIf
			
			TRACK_Flag_6 = False
			
			old_regTone = regTone
			old_regNOISE = regNOISE
			old_regMIXER = regMIXER
			old_regVOL = regVOL
			old_regEnv = regEnv
			old_regEnvShape = regEnvShape			

			WriteLine (fileout,out$)
	End Select
End Function	

			









Function compile_decodedata_NO(fileout,t)

	 

	regMIXER = 0
	; ld	hl,AY_regToneA	


	; Command
	;===============
	If (TRACK_Flag_3)
		Select TRACK_Command
			Case 0
				If (TRACK_Timer And 1)
					TRACK_Timer = 2
					TRACK_cmd_NoteAdd = (TRACK_cmd_0 And $f0) Shr 4
				Else If (TRACK_Timer And 2)
					TRACK_Timer = 0
					TRACK_cmd_NoteAdd = TRACK_cmd_0 And $f
				Else
					TRACK_Timer = 1
				EndIf
			Case 1
				TRACK_cmd_ToneSlideAdd = TRACK_cmd_ToneSlideAdd - TRACK_cmd_1
			Case 2
				TRACK_cmd_ToneSlideAdd = TRACK_cmd_ToneSlideAdd + TRACK_cmd_2
			Case 3
				If (TRACK_cmd_ToneSlideAdd < 0)
					; add
					TRACK_cmd_ToneSlideAdd = TRACK_cmd_ToneSlideAdd + TRACK_cmd_3
					If (TRACK_cmd_ToneSlideAdd >= 0)
						TRACK_Flag_3 = False
						TRACK_cmd_ToneSlideAdd = 0
					EndIf
				Else
					; sub
					TRACK_cmd_ToneSlideAdd = TRACK_cmd_ToneSlideAdd - TRACK_cmd_3
					If (TRACK_cmd_ToneSlideAdd < 0)
						TRACK_Flag_3 = False
						TRACK_cmd_ToneSlideAdd = 0
					EndIf

				EndIf
			Case 4
			Case 5
			Case 5
			Case 7
		End Select		
	EndIf				
		
		
	; NOTE
	;================
	If (TRACK_Flag_0)		; if note trigger flag

		TRACK_Flag_0 = False
		TRACK_Flag_1 = True		; note active
			
		TRACK_MacroStep = 0
		TRACK_ToneAdd = 0
		TRACK_VolumeAdd = 0
		TRACK_cmd_ToneAdd = 0
		TRACK_cmd_VolumeAdd = 0
		TRACK_Noise = 0
		TRACK_cmd_ToneSlideAdd = 0
	EndIf
	
	n = TRACK_Note + TRACK_cmd_NoteAdd
	TRACK_cmd_NoteAdd = 0
	
	If (TRACK_Flag_1)
		; check macro loop
		If (TRACK_MacroStep = TRACK_MacroLength)
			TRACK_MacroStep = TRACK_MacroRestart
		EndIf
		
		ins	= TRACK_Instrument -1
		byte1 = PeekByte(samples,(ins*(32*4+3))+3+(TRACK_MacroStep*4))
		byte2 = PeekByte(samples,(ins*(32*4+3))+3+(TRACK_MacroStep*4)+1)
		byte3 = PeekByte(samples,(ins*(32*4+3))+3+(TRACK_MacroStep*4)+2)
		byte4 = PeekByte(samples,(ins*(32*4+3))+3+(TRACK_MacroStep*4)+3)
		
		; check tone flag
		If (byte2 And 128)
			regMIXER = regMIXER Or 16
		EndIf
		
		; tone deviation
		If (byte2 And 64)
			TRACK_ToneAdd = TRACK_ToneAdd - (byte3 + (byte4*256))
		Else
			TRACK_ToneAdd = TRACK_ToneAdd + (byte3 + (byte4*256))
		EndIf
		regTone = notes(n) + TRACK_ToneAdd + TRACK_cmd_detune + TRACK_cmd_ToneAdd + TRACK_cmd_ToneSlideAdd
		
		; check noise flag
		If (TRACK_Chip  = PSG) 	; but not for SCC or FM
			If (byte1 And 128)
				regMIXER = regMIXER Or 128
			EndIf
		
			Select byte1 And 96
				Case 0	;base
					TRACK_Noise = byte1 And $1f
	
				Case 32	; base
					TRACK_Noise = byte1 And $1f
		
		 		Case 64	; add
					TRACK_Noise = TRACK_Noise + (byte1 And $1f)
					
		 		Case 96	; sub
					TRACK_Noise = TRACK_Noise - (byte1 And $1f)	
			End Select
			regNOISE = TRACK_Noise
		EndIf
		
		; volume					
		Select byte2 And 48
			Case 0	;base
				v = byte2 And $0f
			Case 16 ;base
				v = byte2 And $0f
			Case 32	; add 
				v = TRACK_VolumeAdd + (byte2 And $0f)
				If v > 15
					v = 15
				EndIf
				
			Case 48 ; sub		
				v = TRACK_VolumeAdd - (byte2 And $0f)
				If v < -15 
					v = -15
				EndIf
		End Select
		TRACK_VolumeAdd = v		
		
		; Envelope check here (but unsopported)	
		
		
		
		; track volume
		v = v Or TRACK_Volume
		v2 = v + TRACK_cmd_VolumeAdd
		If v2 < 0 
			v2 = v And $0f
		Else If v2> 255 
			v2 = v Or $f0
		EndIf
		
		;calculate volumes
		
		If (TRACK_Chip = PSG)	; SCC/FM
			regVOL = (volumes(v2) Shr 4) And $0f
			
		Else
			regVOL = volumes(v2) And $0f
			
		EndIf
		
		
		TRACK_MacroStep = TRACK_MacroStep + 1		
		
	Else
		regVOL = 0
	EndIf
		

;	WriteLine (fileout,"MIX"+ regMIXER+"   TONE"+regTone+"   VOL"+regVOL+"  NOISE"+regNOISE)


End Function






















Function compile_decodedata(fileout,t)

	out$ = Chr(9)+"; "

	l = replay_line
	
	TRACK_Previous_note = TRACK_Note
	TRACK_Flag_2 = False		; reset envelope
	
	note = PeekByte (track_data,(t*64*4)+(l*4))
	ins = PeekByte (track_data,(t*64*4)+(l*4)+1)		
	vol = PeekByte (track_data,(t*64*4)+(l*4)+2) And $f0 		
	cmd = PeekByte (track_data,(t*64*4)+(l*4)+2) And $0f		
	par = PeekByte (track_data,(t*64*4)+(l*4)+3)		



	; NOTE 
	;=========
	If (note = 0)
		Goto dc_noNote
	ElseIf (note = 97)
		Goto dc_restNote	
	ElseIf (note > 97)
		replay_line = 64
		Return
	EndIf
	
	;--- note found
	TRACK_Note = note
	TRACK_Flag_0 = True		; set note trigger
	TRACK_Flag_4 = False	; reset morph slave
	
	
	out$ = out$ + "Note: "+note+"  "
				
.dc_noNote

	; INSTRUMENT
	;==============
	If (ins = 0)
		Goto dc_noInstr
	EndIf
	
	TRACK_Flag_4 = False	; reset morph slave
	TRACK_Flag_5 = True		; set instrument trigger
	TRACK_Instrument = ins	
	TRACK_MacroStep = 0
	
	; get instrument data
	ins = ins -1
	wave = PeekByte(samples,(ins*(32*4+3))+2)
	wave2 = PeekByte(used_waveforms,wave)			; translate number
	restart = PeekByte(samples,(ins*(32*4+3))+1)
	length = PeekByte(samples,(ins*(32*4+3)))
	ins = ins +1
	
	TRACK_MacroRestart = restart
	TRACK_MacroLength = length
	
	
	out$ = out$ +"Ins: "+ins+"  "
	
	Stop
	If (TRACK_Waveform <> wave2)
		
		TRACK_Waveform = wave2
		TRACK_Flag_6 = True					; set waveform trigger
		
		out$ = out$ +"Wav: "+wave2+"  "
	EndIf

.dc_noInstr

	; VOLUME
	; ============
	If (vol <> 0)
		TRACK_Volume = vol
		
		out$ = out$ +"Vol: "+vol+"  "		
	EndIf
	
	; COMMAND
	; ============
			If (cmd > 0 Or par > 0)
				TRACK_Command = cmd
				out$ = out$ + "Cmd: "+cmd+" Par: "+par+"  "
				Select cmd
					Case 0		; arpegio
						If (par = 0 )
							TRACK_Flag_3 = False	; Reset CMD trigger
						Else
							TRACK_cmd_0 = par
							TRACK_Flag_3 = True 	; set CMD trigger						
						EndIf
						
					Case 1		; slide up
						If (par <> 0)
							TRACK_cmd_1 = par
						EndIf
						TRACK_Flag_3 = True
			
					Case 2		; slide down
						If (par <> 0)
							TRACK_cmd_2 = par
						EndIf
						TRACK_Flag_3 = True
						
					Case 3		; tone slide
						TRACK_Flag_3 = True			; set command trigger
						TRACK_Flag_1 = True			; set note active
						
						If (par <> 0)
							TRACK_cmd_3 = par
							TRACK_Timer = 2
						EndIf
						
						If (Not TRACK_Flag_0)			; if note trigger (also note on the line)
							TRACK_cmd_ToneSlideAdd = notes(TRACK_Note) - (TRACK_cmd_ToneSlideAdd + notes(TRACK_Previous_note))
							TRACK_Flag_0 = False		; reset note trigger 
						EndIf	
								
					Case 4		; vibrato
						If (par <> 0)
							TRACK_cmd_4_depth = 8 - (par And 7)
							TRACK_cmd_4_step = (par Shr 4) And $0f 
							TRACK_Step = 0 - TRACK_cmd_4_step
						EndIf
						TRACK_Flag_3 = True
						
							
					Case 5		; tone slide + vol slide
						If (par = 0)
;							rep = getCmdRepeat(t,l,cmd,par)
;							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_5),2)+", $"+Right(Hex(rep),2)+"; tone slide + vol slide rep")
						Else
;							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_5),2)+", $"+Right(Hex(par),2)+"; tone slide + vol slide")
						EndIf				
					Case 6		; vibrato + vol slide
						If (par = 0)
;							rep = getCmdRepeat(t,l,cmd,par)
;							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_6),2)+", $"+Right(Hex(rep),2)+"; tone slide + vol slide rep")
						Else
							; no vibrato translation needed?
;							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_6),2)+", $"+Right(Hex(par),2)+"; tone slide + vol slide")
						EndIf			
					Case 8		; envelope multiplier

					Case 9		; macro offset
;						If (par = 0)
;							rep = getCmdRepeat(t,l,cmd,par)
;							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_9),2)+", $"+Right(Hex(rep),2)+"; macro offset rep")
;						Else
;							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_9),2)+", $"+Right(Hex(par),2)+"; macro offset")
;						EndIf			
					Case $a		; volume slide
						If (par <> 0)
							If (par < 16)
								TRACK_cmd_A = par + 128
							Else
								TRACK_cmd_A = (par Shr 4) And $0f
							EndIf
							TRACK_Timer = 1
						EndIf
						TRACK_Flag_3 = True
						

					Case $b		; SCC commands
;						sub = (par  And $f0)/16
;						par = par And $f
;						wav = PeekByte(used_waveforms,par)
;						Select sub
;							Case 0		; reset waveform to instrument original
;								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_B0),2)+Chr(9)+"; reset waveform")
;							Case 1		; duty cycle
;								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_B1),2)+", $"+Right(Hex(par),2)+"; duty cycle")
;							Case 2		; waveform cut
;								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_B2),2)+", $"+Right(Hex(wav*8),2)+"; waveform cut")
;							Case 4		; waveform compress
;								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_B4),2)+", $"+Right(Hex(wav*8),2)+"; waveform compress")
;							Case $b		; set waveform
;								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_BB),2)+", $"+Right(Hex(wav*8),2)+"; set waveform")
;							Case $c		; set waveform + 16
;								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_BB),2)+", $"+Right(Hex((wav+16)*8),2)+"; set waveform + 16")
;						End Select
					Case $c		; SCC morph	
;						sub = (par  And $f0)/16
;						par = par And $f						
;						wav = PeekByte(used_waveforms,sub)
;						
;						If (sub = 0 ) ;--- Slave command
;							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_Cs),2)+Chr(9)+"; Morph slave")
;						Else If (par = 0)	;--- continue morph from current
;							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_Cc),2)+", $"+Right(Hex(wav*8),2)+Chr(9)+"; continue from current")
;						Else		; --- New morph from instrument
;							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_Cm),2)+", $"+Right(Hex(par+(wav*16)),2)+Chr(9)+"; new morph from instrument")
;						EndIf	
					Case $e		; Extended events
						sub = (par  And $f0)/16
						par = par And $f					
					
						Select sub
							Case 0	; short arp
								TRACK_cmd_E = par
								TRACK_Timer = 0
								TRACK_Flag_3 = True
								TRACK_Command = $10
							Case 1	; fine slide up
								TRACK_cmd_E = par
								TRACK_Timer = 2
								TRACK_Flag_3 = True
								TRACK_Command = $11
							Case 2	; fine slide down
								TRACK_cmd_E = par
								TRACK_Timer = 2
								TRACK_Flag_3 = True
								TRACK_Command = $12
							Case 4	; Vibrato control
							
							Case 5	; Note link
								TRACK_Flag_0 = False	; reset the note trigger
								
							Case 6	; Track detune

							Case 8	; Global detune

							Case $c	; note cut

							Case $d	; note delay

							Case $e	; Envelope shape
						End Select
					Case $f		; speed
						replay_speed = par
						replay_speed_subtimer = par And 1
						replay_speed_timer = par /2
					
				End Select 
			Else
				TRACK_Flag_3 = False
			EndIf

	Goto dc_End


.dc_restNote
	TRACK_Flag_1 = False		; reset note active 
	TRACK_Flag_4 = False		; reset morph slave
	
	TRACK_Note = TRACK_Previous_note
	
	
	out$ = out$ +"-R-: "	
	Goto dc_noNote




.dc_End
	WriteLine (fileout, out$)
End Function



Function get_chiptype(t)

	;--- get the CHIPtype
	If (t < 3)
		TRACK_Chip = PSG
	Else
		TRACK_Chip = SCC
	EndIf

End Function




