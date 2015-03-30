Function prepare()

	For x=0 To 30
		PokeByte(used_instruments,x,0)
	Next		


	AddTextAreaText (logging,Chr(10)+"Preparing data for compiling:"+Chr(10))


	;--- Remove unused patterns
	AddTextAreaText (logging,"-Removing unused patterns and renumber sequential..."+Chr(10))
	
	copy_to = 0

	For p = 0 To last_pattern
		found = 0 
		For s = 0 To sequencelen-1	
			If (PeekByte(sequence,s) = p)
				found = 1
				Exit
			EndIf
		Next
		

		If (found = 1)
			If p > copy_to
				AddTextAreaText (logging," "+p+"->"+copy_to+" ")

				;--- rename pattern in sequence
				For x = 0 To sequencelen-1
					If (PeekByte(sequence,x) = p)
						PokeByte(sequence,x,copy_to)
					EndIf
				Next	
				;--- move pattern
				For x = 0 To (64*32)-1
					v = PeekByte(patterns,(p*(64*32))+x)
					PokeByte (patterns,(copy_to*(64*32))+x,v)	
					Next
			EndIf
			copy_to = copy_to + 1		
		EndIf
		
	Next
	;recalculate last pattern
	last_pattern = 0
	For s = 0 To sequencelen
		v = PeekByte(sequence,s)
		If v > last_pattern
			last_pattern = v
		EndIf
	Next



	AddTextAreaText (logging,Chr(10))



	;--- Calculate the pattern lengths
	AddTextAreaText (logging,"-Removing D00 and calculating pattern lengths..."+Chr(10))


	For p = 0 To last_pattern
		length = 63
		;--- each line
		For l = 0 To 63
			;--- each channel
			For c = 0 To 7
				v = PeekByte(patterns,(p*64*32)+(l*32)+(c*4)+2) And $0f
					If (v = $d) And (length = 63)
					length = l
					v = PeekByte(patterns,(p*PATTERN_SIZE)+(l*32)+(c*4)+2) And $f0
					PokeByte (patterns,(p*PATTERN_SIZE)+(l*32)+(c*4)+2,v)
				EndIf
			Next
		Next	
		PokeByte (pattern_lengths,p,length)
		AddTextAreaText (logging," "+p+"("+length+"),")

	Next	
	AddTextAreaText (logging,Chr(10))


	;--- Convert patterns to tracks.
	AddTextAreaText (logging,"-Converting patterns to individual tracks..."+Chr(10))

	temp_track = CreateBank(4*64)
	last_track = 0
	found_dupes = 0 
	dup	= 0	
	

	For	p = 0 To last_pattern	
		For c = 0 To 7
			;--- clear the temp_track data
			For x=0 To (4*64)-1
				PokeByte (temp_track,x,255)
			Next
			For l = 0 To (PeekByte(pattern_lengths,p))
				For b = 0 To 3
					v = PeekByte(patterns,(p*64*32)+(l*32)+(c*4)+b)
					PokeByte(temp_track,(l*4)+b,v)
				Next	 
			Next
			
			;--- Now look for duplicate data
			For t = 0 To last_track
				dup = 1
				For x = 0 To 63
					For b = 0 To 3
						v = PeekByte(temp_track,(x*4)+b)
						w = PeekByte(track_data,(t*(64*4))+(x*4)+b)
						
						If (v <> w)
							dup	= 0
							Exit
						EndIf 	
					Next
					If (dup = 0)
						Exit
					EndIf
				Next
				If (dup = 1)
					PokeShort(track_list,p*16+c*2,t)
					found_dupes = found_dupes+1
					Exit
				EndIf
			Next		
			If (dup = 0)
				PokeShort(track_list,p*16+c*2,last_track)
				For x=0 To 63
					For y = 0 To 3
						v=PeekByte(temp_track,(x*4)+y)
						If y= 1 And v < 255
							PokeByte(used_instruments,(v),1)
						EndIf	
						PokeByte(track_data,(last_track*(64*4))+(x*4)+y,v)
					Next
				Next
				last_track = last_track + 1

			EndIf
		Next
	Next
	
	AddTextAreaText (logging," "+found_dupes+" duplicate tracks found."+Chr(10))
	AddTextAreaText (logging," "+last_track+" unique tracks found."+Chr(10))
	
	
	;--- remove redundant instruments in patterns
	AddTextAreaText (logging,"-Removing redundant instruments and volumes in tracks..."+Chr(10))
	v_found = 0
	i_found = 0
	For t = 0 To last_track
		vol = 255
		ins = 255
		For l = 0 To (64)-1
			b = PeekByte (track_data, (t*(64*4))+(l*4)+2) 
			v = b And $f0
			i = PeekByte (track_data, (t*(64*4))+(l*4)+1)
			
			If (v = vol And v > 0)
				PokeByte (track_data,(t*(64*4))+(l*4)+2,(b And $0f))
				v_found = v_found + 1
			Else If (v > 0 )
				vol = v
			EndIf
			If (i = ins And i > 0)
				PokeByte (track_data,(t*(64*4))+(l*4)+1,0)
				i_found = i_found + 1
			Else If (i > 0)
				ins = i
			EndIf
		Next
	Next
	AddTextAreaText (logging," "+v_found+" duplicate volumes found."+Chr(10))
	AddTextAreaText (logging," "+ins_track+" duplicate instruments found."+Chr(10))
	


	;--- get highest instrument used
	For i= 0 To 31
		If PeekByte(used_instruments,i) > 0
			last_instrument = i
		EndIf
	Next
	;--- get highest waveform used
	For i = 0 To last_instrument 
		wave = PeekByte(samples,(i*(32*4+3))+2)	
		If wave > last_waveform
			last_waveform = wave
		EndIf
	Next
	
;	For t = 0 To last_track
		
	
	
End Function





Function compile()
	file$ = RequestFile$("Export file:","asm",True)

	If file$<>""	
		fileout=WriteFile(file$)
		If fileout


			;--- set the correct output format
			

			Select (SelectedGadgetItem (outputSelect))
				Case 0
					l_pre$			= "."
				Case 1
					l_pre$			= "@@"	
			End Select


			compile_header(fileout)
			compile_sequence(fileout)


			WriteLine (fileout, l_pre$+"waveform_start:")
			For w=0 To last_waveform;31
				compile_waveform(fileout,w)
			Next
			WriteLine (fileout, "")

			WriteLine (fileout, l_pre$+"instrument_start:")
			out$ = Chr(9)+"dw "
			For i=1 To last_instrument;31
				out$ = out$ +l_pre$+"ins_"+i
				If i<last_instrument
					out$ = out$ +","
				EndIf
			Next
			WriteLine (fileout, out$)
			
			For i=1 To last_instrument;31
				compile_instrument(fileout,i)
			Next			
			WriteLine (fileout, "")


			
			WriteLine (fileout, "; [ Song track data ]")
			For t = 0 To last_track
				compile_track(fileout,t)
			Next			
		
		
			WriteLine (fileout, "; [ Song sub-track data ]")
			
			
			CloseFile fileout	
		EndIf
	EndIf
End Function




Function compile_header(fileout)

	WriteLine (fileout, "; Compiled using tt_compile.exe "+VERSION$ + " "+ DATE$)
	WriteLine (fileout, "; Copyright 2015 Richard Cornelisse")
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
		
	
	WriteLine (fileout, ";"+Chr(9)+"org $c000")
	WriteLine (fileout, "")


	WriteLine (fileout, "; [ Song start data ]")
;	WriteLine (fileout, Chr(9)+"dw .restart "+Chr(9)+Chr(9)+Chr(9)+"; Restart position (offset from End).")
	WriteLine (fileout, Chr(9)+"db $"+Right(Hex(speed),2)+Chr(9)+Chr(9)+Chr(9)+Chr(9)+"; Initial song speed.")
	WriteLine (fileout, Chr(9)+"dw "+l_pre$+"waveform_start "+Chr(9)+Chr(9)+Chr(9)+"; Start of the waveform data.")
	WriteLine (fileout, Chr(9)+"dw "+l_pre$+"instrument_start "+Chr(9)+Chr(9)+Chr(9)+"; Start of the instrument data.")
	WriteLine (fileout, "")
End Function

Function compile_sequence(fileout)
	WriteLine (fileout, "; [ Song order pointer list ]")
	
	For s = 0 To sequencelen-1
		If (s = sequenceloop)
			WriteLine(fileout,l_pre$+"restart:")
		EndIf
		out$ = Chr(9)+Chr(9)+"dw "
		p = PeekByte(sequence,s)
		For x=0 To 7
			out$ = out$ + l_pre$+"track_"+PeekShort(track_list,(p*16)+(x*2))
			If x < 7 
				out$ = out$ + ","
			EndIf
		Next
		
		out$ = out$ + Chr(9)+Chr(9)+"; Sequence step "+ s + " /pattern "+p
		WriteLine (fileout, out$)
	Next
	
	WriteLine (fileout, Chr(9)+Chr(9)+"dw 0x0000, "+l_pre$+"restart"+Chr(9)+Chr(9)+Chr(9)+"; End of sequence delimiter + restart address.") 
	WriteLine (fileout, "")


End Function

;--- constants
Const VOLUME_START = 97
Const INSTRUMENT_START = VOLUME_START + 14
Const COMMAND_START = INSTRUMENT_START + 31

Const SINGLE_BASE = 0
Const MULTIPLE_BASE = 21
Const RETRIG_START = 10 + COMMAND_START      ;/// Start # of retrig command.

Const CMD_8   = SINGLE_BASE+0;        ///HW envelope multiplier
Const CMD_B0  = SINGLE_BASE+1;
Const CMD_BB  = SINGLE_BASE+2;
Const CMD_Cs  = SINGLE_BASE+3;
Const CMD_Cm  = SINGLE_BASE+4;
Const CMD_Cc  = SINGLE_BASE+5;
Const CMD_E4  = SINGLE_BASE+6;
Const CMD_E6  = SINGLE_BASE+7;
Const CMD_E8  = SINGLE_BASE+8;
Const CMD_EF  = SINGLE_BASE+9;
Const CMD_F   = SINGLE_BASE+10;
Const CMD_CALL= SINGLE_BASE+11;       /// Call to a re-occurring part
Const CMD_RET = SINGLE_BASE+12;       /// Return from call to original track.

Const CMD_B1  = SINGLE_BASE+13;
Const CMD_B2  = SINGLE_BASE+14;
Const CMD_B4  = SINGLE_BASE+15;
Const CMD_E0  = SINGLE_BASE+16;
Const CMD_E1  = SINGLE_BASE+17;
Const CMD_E2  = SINGLE_BASE+18;
Const CMD_ED  = SINGLE_BASE+19;
Const CMD_EC  = SINGLE_BASE+20;
;///- retriggable commands
Const CMD_0   = MULTIPLE_BASE+0;        ///arp
Const CMD_1   = MULTIPLE_BASE+1;        ///slide up
Const CMD_2   = MULTIPLE_BASE+2;        ///slide down
Const CMD_3   = MULTIPLE_BASE+3;        ///slide note
Const CMD_4   = MULTIPLE_BASE+4;        ///vibrato
Const CMD_5   = MULTIPLE_BASE+5;        ///slide tone + volume slide
Const CMD_6   = MULTIPLE_BASE+6;        ///vibrato + volume slide
Const CMD_A   = MULTIPLE_BASE+7;        ///volume slide up
Const CMD_9   = MULTIPLE_BASE+8;       /// Macro offset
Const CMD_EE  = MULTIPLE_BASE+9;       ///HE envelope shape



Const CMD_EOT = 191;       /// CMD  end of track

Function compile_track(fileout,t)
	WriteLine (fileout, l_pre$+"track_"+t+":")
	prev_wait = 255
	
	For l=0 To 63
		note = PeekByte (track_data,(t*64*4)+(l*4))
		ins = PeekByte (track_data,(t*64*4)+(l*4)+1)		
		vol = PeekByte (track_data,(t*64*4)+(l*4)+2) And $f0		
		cmd = PeekByte (track_data,(t*64*4)+(l*4)+2) And $0f		
		par = PeekByte (track_data,(t*64*4)+(l*4)+3)		
		
		
		If (l=0  Or (note+ins+vol+cmd+par >0))

			;--- end delimiter (255 in note)
			If (note = 255)
				;WriteLine (fileout, Chr(9)+"db $"+Right(Hex(CMD_EOT),2)+Chr(9)+Chr(9)+"; End Of Track")
				Exit
			EndIf


			;-- compile note
			If (note > 0 And note < 98)
				WriteLine (fileout, Chr(9)+"db $"+Right(Hex(note -1),2)+Chr(9)+Chr(9)+";[Note] "+note)
			EndIf
		
			;-- compile volume
			If (vol > 0)
				WriteLine (fileout, Chr(9)+"db $"+Right(Hex(((vol/16)-1)+VOLUME_START),2)+Chr(9)+Chr(9)+";[Volume] "+(vol/16))
			EndIf	

			;-- compile instrument
			If (ins > 0)
				WriteLine (fileout, Chr(9)+"db $"+Right(Hex((ins)+INSTRUMENT_START),2)+Chr(9)+Chr(9)+";[Instrument] "+ins)
			EndIf	

			
			;--- compile command
			If (cmd > 0 Or par > 0)
				Select cmd
					Case 0		; arpegio
						WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_0),2)+", $"+Right(Hex(par),2)+"; arpegio")
				
					Case 1		; slide up
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_1),2)+", $"+Right(Hex(rep),2)+"; slide-up rep")
						Else
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_1),2)+", $"+Right(Hex(par),2)+"; slide-up")
						EndIf	
					Case 2		; slide down
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_2),2)+", $"+Right(Hex(rep),2)+"; slide-down rep")
						Else
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_2),2)+", $"+Right(Hex(par),2)+"; slide-down")
						EndIf					
					Case 3		; tone slide
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_3),2)+", $"+Right(Hex(rep),2)+"; tone-slide rep")
						Else
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_3),2)+", $"+Right(Hex(par),2)+"; tone-slide")
						EndIf				
					Case 4		; vibrato
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_4),2)+", $"+Right(Hex(rep),2)+Chr(9)+";[CMD vibrato] rep")
						Else
							tmp = 8 - (par And $07)
							tmp = tmp + (par And $F0)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_4),2)+", $"+Right(Hex(tmp),2)+Chr(9)+";[CMD vibrato]")
						EndIf						
					Case 5		; tone slide + vol slide
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_5),2)+", $"+Right(Hex(rep),2)+"; tone slide + vol slide rep")
						Else
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_5),2)+", $"+Right(Hex(par),2)+"; tone slide + vol slide")
						EndIf				
					Case 6		; vibrato + vol slide
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_6),2)+", $"+Right(Hex(rep),2)+"; tone slide + vol slide rep")
						Else
							; no vibrato translation needed?
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_6),2)+", $"+Right(Hex(par),2)+"; tone slide + vol slide")
						EndIf			
					Case 8		; envelope multiplier
						WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_8),2)+", $"+Right(Hex(par),2)+"; envelope multiplier")
					Case 9		; macro offset
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_9),2)+", $"+Right(Hex(rep),2)+"; macro offset rep")
						Else
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_9),2)+", $"+Right(Hex(par),2)+"; macro offset")
						EndIf			
					Case $a		; volume slide
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_A),2)+", $"+Right(Hex(rep),2)+"; volume slide rep")
						Else
							If (par < 16)
								tmp = (par Shl 1)+128
							Else
								tmp = (par Shr 3)
							EndIf
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_A),2)+", $"+Right(Hex(tmp),2)+"; volume slide")
						EndIf					

					Case $b		; SCC commands
						sub = (par  And $f0)/16
						par = par And $f
						Select sub
							Case 0		; reset waveform to instrument original
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_B0),2)+Chr(9)+"; reset waveform")
							Case 1		; duty cycle
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_B1),2)+", $"+Right(Hex(par),2)+"; duty cycle")
							Case 2		; waveform cut
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_B2),2)+", $"+Right(Hex(par),2)+"; waveform cut")
							Case 4		; waveform compress
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_B4),2)+", $"+Right(Hex(par),2)+"; waveform compress")
							Case $b		; set waveform
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_BB),2)+", $"+Right(Hex(par),2)+"; set waveform")
							Case $c		; set waveform + 16
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_BB),2)+", $"+Right(Hex(par+16),2)+"; set waveform + 16")
						End Select
					Case $c		; SCC morph	
						sub = (par  And $f0)/16
						par = par And $f						
						
						If (par = 0 ) ;--- Slave command
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_Cs),2)+Chr(9)+"; Morph slave")
						Else If (sub = 0)	;--- continue morph from current
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_Cc),2)+", $"+Right(Hex(par/16),2)+Chr(9)+"; continue from current")
						Else		; --- New morph from instrument
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_Cm),2)+", $"+Right(Hex(par),2)+Chr(9)+"; new morph from instrument")
						EndIf	
					Case $e		; Extended events
						sub = (par  And $f0)/16
						par = par And $f					
					
						Select sub
							Case 0	; short arp
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E0),2)+", $"+Right(Hex(par),2)+Chr(9)+"; short arp")
							Case 1	; fine slide up
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E1),2)+", $"+Right(Hex(par),2)+Chr(9)+"; fine slide up")
							Case 2	; fine slide down
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E2),2)+", $"+Right(Hex(par),2)+Chr(9)+"; fine slide down")
							Case 4	; Vibrato control
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E4),2)+", $"+Right(Hex(par),2)+Chr(9)+"; vibrato control")
							Case 6	; Track detune
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E6),2)+", $"+Right(Hex(par),2)+Chr(9)+"; track detune")
							Case 8	; Global detune
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E8),2)+", $"+Right(Hex(par),2)+Chr(9)+"; global detune")
							Case $c	; note note
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_EC),2)+", $"+Right(Hex(par),2)+Chr(9)+"; note cut")
							Case $d	; note delay
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_ED),2)+", $"+Right(Hex(par),2)+Chr(9)+"; note delay")
							Case $e	; Envelope shape
								If (par = 0)
									rep = getCmdRepeat(t,l,cmd,(par+(sub*16)))
									WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_EE),2)+", $"+Right(Hex(rep),2)+"; envelope shape retrig")
								Else
									WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_EE),2)+", $"+Right(Hex(par),2)+Chr(9)+"; envelope shape")
								EndIf
						End Select
					Case $f		; speed
						WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_F),2)+", $"+Right(Hex(par),2)+Chr(9)+"; Speed ")

				End Select 
			EndIf

			;---- Get the delay
			d = 0
			For x = l+1 To 63
				t_note = PeekByte (track_data,(t*64*4)+(x*4))
				t_ins = PeekByte (track_data,(t*64*4)+(x*4)+1)		
				t_vol = PeekByte (track_data,(t*64*4)+(x*4)+2)			
				t_par = PeekByte (track_data,(t*64*4)+(x*4)+3)	
				
		
				If (t_note =0 And t_ins =0 And t_vol = 0 And t_par =0)
					d = d + 1
				Else
					Exit
				EndIf	
			Next			
			If (d = prev_wait)
				y = 0
				z = 0
				t_cmd = t_vol And $0f
				t_vol = t_vol And $f0
				If (note > 0) y=1
				If (ins > 0) y=2
				If (vol > 0) y=3
				If (cmd Or par > 0) y=4
				
				If (t_cmd Or t_par > 0) z=4
				If (t_vol > 0) z=3
				If (t_ins > 0) z=2
				If (t_note > 0) z=1
		
				If (y < z)			
					WriteLine (fileout, Chr(9)+"db $"+Right(Hex(192+d),2)+Chr(9)+Chr(9)+";[Wait..] "+(d+1))
				Else
					WriteLine (fileout, Chr(9)+Chr(9)+Chr(9)+Chr(9)+";[Skip delay] "+(d+1))
				EndIf
			Else
				WriteLine (fileout, Chr(9)+"db $"+Right(Hex(192+d),2)+Chr(9)+Chr(9)+";[Wait] "+(d+1))
			EndIf
			prev_wait = d
		
		EndIf
	Next
	WriteLine (fileout, Chr(9)+"db $"+Right(Hex(CMD_EOT),2)+Chr(9)+Chr(9)+";[End-Of-Track]")
	
End Function


Function compile_waveform(fileout,w)
	result$ = Chr(9)+"db "
	
	For x=0 To 31
		v = PeekByte(waveforms,(w*32)+x)
		result$ = result$ + "$"+Right(Hex(v),2)
		If x < 31
			result$ = result$ +","
		EndIf
	Next

	WriteLine (fileout, result$+Chr(9)+"; Waveform "+w)

End Function



Function compile_instrument(fileout,ins)
	ins = ins -1
	
	wave = PeekByte(samples,(ins*(32*4+3))+2)
	restart = PeekByte(samples,(ins*(32*4+3))+1)
	length = PeekByte(samples,(ins*(32*4+3)))
	
	ins = ins +1
	
	out$ = Chr(9)+Chr(9)+Chr(9)+Chr(9)+Chr(9)+Chr(9)+"; "
	For x=0 To 15
		out$ = out$ + Chr(PeekByte(instrumentnames,x+((ins-1)*16)))
	Next
	
	
	WriteLine (fileout, l_pre$+"ins_"+(ins)+":"+out$)
	
	If (PeekByte(used_instruments,ins) = 0)
		Return	
	EndIf	
	
	
	WriteLine (fileout, Chr(9)+Chr(9)+"db "+wave+Chr(9)+Chr(9)+Chr(9)+Chr(9)+Chr(9)+"; Waveform")
	WriteLine (fileout, Chr(9)+Chr(9)+"db "+l_pre$+"rst_i"+ins+"-("+l_pre$+"ins_"+ins+" +2)"+Chr(9)+Chr(9)+"; Restart")
	
	
	For r = 0 To length-1
		If (r = restart)
			WriteLine (fileout, l_pre$+"rst_i"+ins+":")
		EndIf
		
		
		If r= length-1
			compile_instrument_row(fileout,ins,r,8)
		Else
			compile_instrument_row(fileout,ins,r,0)
		EndIf
	Next
	
	
End Function


Function compile_instrument_row(fileout,ins,r,e)
	ins = ins-1
	byte1 = PeekByte(samples,(ins*(32*4+3))+3+(r*4))
	byte2 = PeekByte(samples,(ins*(32*4+3))+3+(r*4)+1)
	
	byte3 = PeekByte(samples,(ins*(32*4+3))+3+(r*4)+2)
	byte4 = PeekByte(samples,(ins*(32*4+3))+3+(r*4)+3)

	result1 = byte1 And $80						; Set the noise active bit
	result1 = result1 + ((byte2 Shr 3) And $10)	; Set the tone active bit
	result1 = result1 + e						; Set the END macro bit

	result2 = byte2 And $0f			; volume value
	result3 = 0;byte1 And $1f			; noise value

	result4 = byte3
	result5 = byte4

	;Calculate noise
	If (byte1 And $80 > 0)
		result3 = byte1 And $1f			; noise value
		If ((byte1 And $40) = 0)
			; base noise
			result1 = result1 +$20
		Else If (result3 > 0)
			If ((byte1 And $60) = $40)
				; add noise
				result1 = result1 + $60
			Else If ((byte1 And $60) = $60)
				; min noise
				result1 = result1 + $40
				result3 = (255-result3)+1
			EndIf
		EndIf
	EndIf

	; calculate volume
	If ((byte2 And $20) = $00)
		;base volume
		result1 = result1 + $01
	Else If (((byte2 And $30) = $20) And (result2 > 0))
		; add volume
		result1 = result1 + $03
	Else If (result2 > 0)
		;min volume
		result1 = result1 + $03
		result2 = (255-result2)+1
	EndIf
	
	
	; calculate tone
	If (result4 + result5 > 0)
		If ((byte2 And $40) = $40)
			; min
			result4 = ($ffff - (byte3 + (byte4*256)) +1) And $ff
			result5 = (($ffff - (byte3 + (byte4*256)) + 1) Shr 8) And $ff
		EndIf
		result1 = result1 + $04
	EndIf
	
	; calculate output
	out$ = Chr(9)+Chr(9)+"db $"+Right(Hex(result1),2)
	If ((result1 And $03) > 0)
		out$ = out$ + ",$"+Right(Hex(result2),2)
	EndIf
	If ((result1 And $60) > 0)
		out$ = out$ +",$"+Right(Hex(result3),2)
	EndIf
	If ((result1 And $04) > 0)
		out$ = out$ + ",$"+Right(Hex(result4),2)
		out$ = out$ + ",$"+Right(Hex(result5),2)
	EndIf
	WriteLine (fileout, out$)


End Function 



Function getCmdRepeat(t,l,cmd,par)
	result = 1
	
	For r = l+1 To 63
		If (PeekByte(track_data,(t*64*4)+(r*4)) = 255)
			Exit
		Else
			t_cmd = PeekByte(track_data,(t*64*4)+(r*4)+2) And $0f
			t_par = PeekByte(track_data,(t*64*4)+(r*4)+3)
			
			If (t_cmd = cmd) And (t_par = par)
				result = result + 1
				v =PeekByte (track_data,(t*64*4)+(r*4)+2) And $f0
				PokeByte (track_data,(t*64*4)+(r*4)+2,v)
			Else
				Exit
			EndIf
		EndIf
	Next
	

	Return result
End Function