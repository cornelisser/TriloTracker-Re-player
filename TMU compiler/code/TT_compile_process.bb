Function prepare()
	; - Removes unused patterns en renumber them sequential
	; - Calculate pattern lengths	
	; - Remove redundant instrument in tracks
	; - Set volume first pattern to max if none is set for tracks
	; - Convert patterns to tracks and find duplicates
	; - Remove unused waveforms and renumber sequential if set.


	For x=0 To 30
		PokeByte(used_instruments,x,0)
		PokeByte(used_waveforms,x,255)
		PokeByte(used_drums,x,255)
	Next	
	For x= 0 To 255
		PokeByte(used_customvoices,x,255)
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
					v = PeekByte(patterns,(p*64*32)+(l*32)+(c*4)+2) And $f0
					PokeByte (patterns,(p*64*32)+(l*32)+(c*4)+2,v)
				EndIf
			Next
		Next	
		PokeByte (pattern_lengths,p,length)
		AddTextAreaText (logging," "+p+"("+length+"),")

	Next	
	AddTextAreaText (logging,Chr(10))


	;--- remove redundant instruments in patterns
	AddTextAreaText (logging,"-Removing redundant instruments and volumes in patterns..."+Chr(10))
	v_found = 0
	i_found = 0
	For p = 0 To last_pattern
		For c = 0 To 7
			vol = 255
			ins = 255
			For l = 0 To (PeekByte(pattern_lengths,p))
				b = PeekByte (patterns, (p*64*32)+(l*32)+(c*4)+2) 
				v = b And $f0
				i = PeekByte (patterns, (p*64*32)+(l*32)+(c*4)+1)
				
				If (v = vol And v > 0)
					PokeByte (patterns,(p*64*32)+(l*32)+(c*4)+2,(b And $0f))
					v_found = v_found + 1
				Else If (v > 0 )
					vol = v
				EndIf
				If (i = ins And i > 0)
					PokeByte (patterns,(p*64*32)+(l*32)+(c*4)+1,0)
					i_found = i_found + 1
				Else If (i > 0)
					ins = i
				EndIf
			Next
		Next
	Next
	AddTextAreaText (logging," "+v_found+" duplicate volumes found."+Chr(10))
	AddTextAreaText (logging," "+ins_track+" duplicate instruments found."+Chr(10))


	;--- Check volume setting on first pattern. Add volume F if none is set.
	p = PeekByte(sequence,0)	
	For c = 0 To 7
		found=0
		For l = 0 To (PeekByte(pattern_lengths,p))
			v = PeekByte(patterns,(p*64*32)+(l*32)+(c*4)+2)	And $f0
			If (v > 0)
				found = 1
			EndIf	
		Next
		If (found = 0)
			v = PeekByte(patterns,(p*64*32)+(c*4)+2)
			v = (v And $0f) + $f0
			PokeByte(patterns,(p*64*32)+(c*4)+2,v)
		EndIf
	Next
	





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
						
						If ((v <> w) Or REMOVE_Redundancy_Tracks = False)
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
						;--- count instruments used
						If y= 1 And v < 255
							t = PeekByte (used_instruments,v)
							PokeByte(used_instruments,(v),1)		
						EndIf	
						;--- count waveforms used by Bxy
						If	y=2 And	((v And $0f) = $0B)
							w = PeekByte(temp_track,(x*4)+y+1)
							e = w And $f0
							w = w And $0f
							If (e = $20 Or e=$40 Or e=$b0) 
							Else If (e = $30 Or e=$50 Or e=$c0)	; upper 16
								w = w +16
							Else
								w=255
							EndIf
							If w  <255
								PokeByte(used_waveforms,w,1)
							EndIf
		 				EndIf
						;--- count waveforms used by Cxy
						If	y=2 And	((v And $0f) = $0C)		
							w = PeekByte(temp_track,(x*4)+y+1)
							w = (w Shr 4) And $0f
							PokeByte(used_waveforms,w,1)
						EndIf		
						;--- count drums used by Cxy
						If	y=2 And	((v And $0f) = $0C)		
							w = PeekByte(temp_track,(x*4)+y+1)
							;AddTextAreaText (logging,"drum "+w+Chr(10))
							If (w < 20)
								PokeByte(used_drums,w,1)
							EndIf
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
	
	
	AddTextAreaText (logging,"-Calculating and renumbering waveform,custom voices and drum usage."+Chr(10))
	
	;--- get highest instrument used
	For i= 1 To 31
		v = PeekByte(used_instruments,i)
		If v > 0
			last_instrument = i
			wave = PeekByte(samples,((i-1)*(32*4+3))+2)	

			If (songtype = 0)
				PokeByte (used_waveforms,wave,1)
			Else If (wave > 15)
				PokeByte (used_customvoices,wave-16,1)
			;	AddTextAreaText (logging," Wave "+(wave)+" Instrument"+i+Chr(10))
			EndIf 
		EndIf
	Next
	;--- Renumber waveforms 
	waveform = 0
	For i = 0 To 31
		v = PeekByte(used_waveforms,i)
		If v <255
			PokeByte(used_waveforms,i,waveform)
			waveform = waveform + 1
		EndIf
	Next
	;--- Renumber custom voices 
	voice = 0
	For i = 0 To 255
		v = PeekByte(used_customvoices,i)
		If v <255
			PokeByte(used_customvoices,i,voice)
			voice = voice + 1
		EndIf
	Next
	;--- Renumber drums 
	drum = 1
	For i = 0 To 31-1
		v = PeekByte(used_drums,i)
		If v <255
			PokeByte(used_drums,i,drum)
			drum = drum + 1
		EndIf
	Next
	If (songtype = 0)
		AddTextAreaText (logging," used waveforms:"+wave+Chr(10))
	Else
		AddTextAreaText (logging," used custom voices:"+voice+Chr(10))	
		AddTextAreaText (logging," used drums:"+(drum-1)+Chr(10))
		last_drum = drum -1
	EndIf 
	;--- undo renumbering if there is no waveform included (but external)
	If Not (ButtonState(includeWave))
		For i = 0 To 31
			PokeByte(used_waveforms,i,i)
		Next
	EndIf
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


			If (ButtonState(includeWave) And songtype = 0)
				WriteLine (fileout, l_pre$+"waveform_start:")
				For w=0 To 31
					If (PeekByte(used_waveforms,w) < 255)
						compile_waveform(fileout,w)
					EndIf
				Next
				WriteLine (fileout, "")
			EndIf
			
			If (songtype > 0)
				WriteLine (fileout, l_pre$+"customvoice_start:")
				For w=0 To 255
					If (PeekByte(used_customvoices,w) < 255)
						compile_customvoice(fileout,w)
					EndIf
				Next
				WriteLine (fileout, "")
			EndIf				
			
			If (songtype > 0)
				WriteLine (fileout, l_pre$+"drummacro_start:")
				For i=1 To last_drum;31
					WriteLine (fileout, Chr(9)+"dw "+l_pre$+"drm_"+i)
;					out$ = out$ +l_pre$+"ins_"+i
;					If i<last_instrument
;						out$ = out$ +","
;					EndIf
				Next
				WriteLine (fileout,"")

				For w=0 To 20-1
					If (PeekByte(used_drums,w) < 255)
						compile_drum(fileout,w)
					EndIf
				Next
				WriteLine (fileout, "")
			EndIf				
			
			
			
			If (ButtonState(includeIns))
				WriteLine (fileout, l_pre$+"instrument_start:")
;				out$ = Chr(9)+"dw "
				For i=1 To last_instrument;31
					WriteLine (fileout, Chr(9)+"dw "+l_pre$+"ins_"+i)
;					out$ = out$ +l_pre$+"ins_"+i
;					If i<last_instrument
;						out$ = out$ +","
;					EndIf
				Next
;				WriteLine (fileout, out$)
			
				For i=1 To last_instrument;31
					compile_instrument(fileout,i)
				Next			
				WriteLine (fileout, "")
			EndIf

			
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
		
	
	WriteLine (fileout, ";"+Chr(9)+"org $c000")
	WriteLine (fileout, "")


	WriteLine (fileout, "; [ Song start data ]")
;	WriteLine (fileout, Chr(9)+"dw .restart "+Chr(9)+Chr(9)+Chr(9)+"; Restart position (offset from End).")
	WriteLine (fileout, Chr(9)+"db $"+Right(Hex(speed),2)+Chr(9)+Chr(9)+Chr(9)+Chr(9)+"; Initial song speed.")

	If (songtype = 0)
		If (ButtonState(includeWave))
			WriteLine (fileout, Chr(9)+"dw "+l_pre$+"waveform_start "+Chr(9)+Chr(9)+"; Start of the waveform data.")
		Else
			WriteLine (fileout, Chr(9)+"dw $0000"+Chr(9)+Chr(9)+Chr(9)+Chr(9)+"; Waveform data is external.")
		EndIf	
	Else 
		WriteLine (fileout, Chr(9)+"dw "+l_pre$+"customvoice_start "+Chr(9)+Chr(9)+"; Start of the custom voices data.")
		WriteLine (fileout, Chr(9)+"dw "+l_pre$+"drummacro_start "+Chr(9)+Chr(9)+"; Start of the drum macro data.")
	EndIf
	If ButtonState(includeIns)		
			WriteLine (fileout, Chr(9)+"dw "+l_pre$+"instrument_start "+Chr(9)+Chr(9)+"; Start of the instrument data.")
		Else
		WriteLine (fileout, Chr(9)+"dw $0000"+Chr(9)+Chr(9)+Chr(9)+Chr(9)+"; Instruments are external.")
	EndIf


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
Const CMD_Cd  = SINGLE_BASE+3;		  // FM drum
Const CMD_Cs  = SINGLE_BASE+3;
Const CMD_Cm  = SINGLE_BASE+4;
Const CMD_E7OFF=SINGLE_BASE+4;		// Sustain off
Const CMD_Cc  = SINGLE_BASE+5;
Const CMD_E7ON= SINGLE_BASE+5;		// Sustain on
Const CMD_E4  = SINGLE_BASE+6;
Const CMD_E6  = SINGLE_BASE+7;
Const CMD_E8  = SINGLE_BASE+8;
Const CMD_EF  = SINGLE_BASE+9;
Const CMD_F   = SINGLE_BASE+10;
Const CMD_E5  = SINGLE_BASE+11;		 // note link
;Const CMD_CALL= SINGLE_BASE+11;       /// Call to a re-occurring part
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
Const CMD_9   = MULTIPLE_BASE+8;       /// Macro offsetCMD_Cd
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
						WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_0),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; arpegio")
				
					Case 1		; slide up
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_1),2)+", $"+Right(Hex(rep),2)+Chr(9)+Chr(9)+"; slide-up rep")
						Else
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_1),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; slide-up")
						EndIf	
					Case 2		; slide down
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_2),2)+", $"+Right(Hex(rep),2)+Chr(9)+Chr(9)+"; slide-down rep")
						Else
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_2),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; slide-down")
						EndIf					
					Case 3		; tone slide
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_3),2)+", $"+Right(Hex(rep),2)+Chr(9)+Chr(9)+"; tone-slide rep")
						Else
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_3),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; tone-slide")
						EndIf				
					Case 4		; vibrato
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_4),2)+", $"+Right(Hex(rep),2)+Chr(9)+Chr(9)+";[CMD vibrato] rep")
						Else
							tmp = 8 - (par And $07)
							tmp = tmp + (par And $F0)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_4),2)+", $"+Right(Hex(tmp),2)+Chr(9)+Chr(9)+";[CMD vibrato]")
						EndIf						
					Case 5		; tone slide + vol slide
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_5),2)+", $"+Right(Hex(rep),2)+Chr(9)+Chr(9)+"; tone slide + vol slide rep")
						Else
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_5),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; tone slide + vol slide")
						EndIf				
					Case 6		; vibrato + vol slide
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_6),2)+", $"+Right(Hex(rep),2)+Chr(9)+Chr(9)+"; tone slide + vol slide rep")
						Else
							; no vibrato translation needed?
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_6),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; tone slide + vol slide")
						EndIf			
					Case 8		; envelope multiplier
						WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_8),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; envelope multiplier")
					Case 9		; macro offset
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_9),2)+", $"+Right(Hex(rep),2)+Chr(9)+Chr(9)+"; macro offset rep")
						Else
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_9),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; macro offset")
						EndIf			
					Case $a		; volume slide
						If (par = 0)
							rep = getCmdRepeat(t,l,cmd,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(RETRIG_START+CMD_A),2)+", $"+Right(Hex(rep),2)+Chr(9)+Chr(9)+"; volume slide rep")
						Else
							If (par < 16)
								tmp = par+128
							Else
								tmp = (par Shr 4) 
							EndIf
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_A),2)+", $"+Right(Hex(tmp),2)+Chr(9)+Chr(9)+"; volume slide")
						EndIf					

					Case $b		
						If (songtype = 0); SCC commands
							sub = (par  And $f0)/16
							par = par And $f
							wav = PeekByte(used_waveforms,par)
							Select sub
								Case 0		; reset waveform to instrument original
									WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_B0),2)+Chr(9)+"; reset waveform")
								Case 1		; duty cycle
									WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_B1),2)+", $"+Right(Hex(par),2)+"; duty cycle")
								Case 2		; waveform cut
									WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_B2),2)+", $"+Right(Hex(wav*8),2)+"; waveform cut")
								Case 4		; waveform compress
									WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_B4),2)+", $"+Right(Hex(wav*8),2)+"; waveform compress")
								Case $b		; set waveform
									WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_BB),2)+", $"+Right(Hex(wav*8),2)+"; set waveform")
								Case $c		; set waveform + 16
									WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_BB),2)+", $"+Right(Hex((wav+16)*8),2)+"; set waveform + 16")
							End Select
						Else If (par < 19) 			; FM drum
						;	WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_Cd),2)+", $"+Right(Hex(par),2)+"; FM drum macro")
						EndIf
					Case $c		; SCC morph
						If (songtype = 0)	
							sub = (par  And $f0)/16
							par = par And $f						
							wav = PeekByte(used_waveforms,sub)
						
							If (sub = 0 ) ;--- Slave command
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_Cs),2)+Chr(9)+"; Morph slave")
							Else If (par = 0)	;--- continue morph from current
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_Cc),2)+", $"+Right(Hex(wav*8),2)+Chr(9)+"; continue from current")
							Else		; --- New morph from instrument
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_Cm),2)+", $"+Right(Hex(par+(wav*16)),2)+Chr(9)+"; new morph from instrument")
							EndIf
						Else If (par < 19) 			; FM drum
							d = PeekByte(used_drums,par)
							WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_Cd),2)+", $"+Right(Hex(d),2)+Chr(9)+Chr(9)+";[FM drum] "+par)
						EndIf
								
					Case $e		; Extended events
						sub = (par  And $f0)/16
						par = par And $f					
					
						Select sub
							Case 0	; short arp
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E0),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; short arp")
							Case 1	; fine slide up
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E1),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; fine slide up")
							Case 2	; fine slide down
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E2),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; fine slide down")
							Case 4	; Vibrato control
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E4),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; vibrato control")
							Case 5	; Note link
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E5),2)+Chr(9)+Chr(9)+";Note link")
							Case 6	; Track detune
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E6),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; track detune")
							Case 7	; FM Sustain
								If (par = 0) 
									WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E7OFF),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; [Sustain] OFF")
								Else		
									WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E7ON),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; [Sustain] ON")
								EndIf
							Case 8	; Global detune
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_E8),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; global detune")
							Case $c	; note note
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_EC),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; note cut")
							Case $d	; note delay
								WriteLine (fileout, Chr(9)+"db $"+Right(Hex(COMMAND_START+CMD_ED),2)+", $"+Right(Hex(par),2)+Chr(9)+Chr(9)+"; note delay")
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

	WriteLine (fileout, result$+Chr(9)+"; Waveform "+PeekByte(used_waveforms,w)+" (was "+w+")")

End Function


Function compile_customvoice(fileout,w)
	result$ = Chr(9)+"db "
	
	For x=0 To 7
		v = PeekByte(customvoices,(w*8)+x)
		result$ = result$ + "$"+Right(Hex(v),2)
		If x < 7
			result$ = result$ +","
		EndIf
	Next

	WriteLine (fileout, result$+Chr(9)+"; Custom voice "+PeekByte(used_customvoices,w)+"(was "+(w)+")")


End Function



Function compile_drum(fileout,w)
	drm = PeekByte(used_drums,w)
	
	;--- Drum label and name
	out$ = Chr(9)+Chr(9)+Chr(9)+Chr(9)+Chr(9)+Chr(9)+"; "
;	For x=0 To 15
;		out$ = out$ + (PeekByte(drumnames,x+((w)*16)))
;	Next
	WriteLine (fileout, l_pre$+"drm_"+(drm)+":"+out$+" (was "+w+")")

;	;--- length
;	result$ = Chr(9)+"db "

;	WriteLine (fileout, result$+Right(Hex(v),2)+"; Drum macro "+PeekByte(used_drums,w)+"(was "+w+")")


	;--- drum data
	
	WriteLine(fileout,Chr(9)+";  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC")
	drm_off = (((16*7)+1)*(w-1))+1
	l = PeekByte (drummacros,(drm_off-1))

	For r = 0 To 16
		out$ = ""
		result$ = Chr(9)+"db "
		skip$ = "    "
		p = PeekByte (drummacros,drm_off+(r*7)+0)	; percusion
		t1= PeekByte (drummacros,drm_off+(r*7)+1)	; tone 1
		v1= PeekByte (drummacros,drm_off+(r*7)+2)	; volume 1
		t2= PeekByte (drummacros,drm_off+(r*7)+3)	; tone 2 etc
		v2= PeekByte (drummacros,drm_off+(r*7)+4)
		t3= PeekByte (drummacros,drm_off+(r*7)+5)	
		v3= PeekByte (drummacros,drm_off+(r*7)+6)
		flag = 0									; indicator for updates
		
		If (r = l-1)
			flag = flag + 1							; set bit 0	
		EndIf	
		If p > 0
			flag = flag + 128						; set bit 7
			out$ = out$ + ",$"+Right(Hex(p),2)
		Else 
			out$ = out$ + skip$	
		EndIf
		If t1 > 0 
			flag = flag + 64						; set bit 6
			out$ = out$ + ",$"+Right(Hex(t1),2)	
		Else 
			out$ = out$ + skip$	
		EndIf
		If v1 > 0 
			flag = flag + 32						; set bit 5
			out$ = out$ + ",$"+Right(Hex(v1),2)	
		Else 
			out$ = out$ + skip$	
		EndIf
		If t2 > 0 
			flag = flag + 16						; set bit 4
			out$ = out$ + ",$"+Right(Hex(t2),2)	
		Else 
			out$ = out$ + skip$	
		EndIf
		If v2 > 0 
			flag = flag + 8							; set bit 3
			out$ = out$ + ",$"+Right(Hex(v2),2)	
		Else 
			out$ = out$ + skip$	
		EndIf
		If t3 > 0 
			flag = flag + 4							; set bit 2
			out$ = out$ + ",$"+Right(Hex(t3),2)	
		Else 
			out$ = out$ + skip$	
		EndIf
		If v3 > 0 
			flag = flag + 2							; set bit 1
			out$ = out$ + ",$"+Right(Hex(v3),2)	
		Else 
			out$ = out$ + skip$	
		EndIf

		
		result$ = result$ + "$"+Right(Hex(flag),2)+out$+Chr(9)+Chr(9)+"; "+Right(Bin(flag),8)		; write flags first

		WriteLine (fileout, result$)	
		
		
		;--- stop if we reached drm end
		If (r = l-1)
			Exit
		EndIf
		
	Next
End Function



Function compile_instrument(fileout,ins)
	ins = ins -1
	
	wave = PeekByte(samples,(ins*(32*4+3))+2)
	If (songtype = 0)
		wave2 = PeekByte(used_waveforms,wave)			; translate number
	Else If wave >16
		wave2 = PeekByte(used_customvoices,wave-16)+16		; translate voices > 15 (software voice)
	Else 
		wave2 = wave									; do not translate hw voices
	EndIf
	restart = PeekByte(samples,(ins*(32*4+3))+1)
	length = PeekByte(samples,(ins*(32*4+3)))
	
	ins = ins +1
	
	out$ = Chr(9)+Chr(9)+Chr(9)+Chr(9)+"; "
	For x=0 To 15
		out$ = out$ + Chr(PeekByte(instrumentnames,x+((ins-1)*16)))
	Next
	
	
	WriteLine (fileout, l_pre$+"ins_"+(ins)+":"+out$)
	If (PeekByte(used_instruments,ins) = 0)
		Return	
	EndIf	
	
	If (songtype = 0)
		WriteLine (fileout, Chr(9)+Chr(9)+"db "+(wave2*8)+Chr(9)+Chr(9)+Chr(9)+Chr(9)+Chr(9)+"; Waveform (was "+wave+")")
	Else If wave>15
		WriteLine (fileout, Chr(9)+Chr(9)+"db "+(wave2)+Chr(9)+Chr(9)+Chr(9)+Chr(9)+Chr(9)+"; Custom voice (was "+(wave-16)+")")
	Else
		WriteLine (fileout, Chr(9)+Chr(9)+"db "+(wave2)+Chr(9)+Chr(9)+Chr(9)+Chr(9)+Chr(9)+"; Hardware voice")
	EndIf
;	WriteLine (fileout, Chr(9)+Chr(9)+"db "+l_pre$+"rst_i"+ins+"-("+l_pre$+"ins_"+ins+" +2)"+Chr(9)+Chr(9)+"; Restart")
	
	WriteLine(fileout, Chr(9)+Chr(9)+";  Flg,Vol,Noi,Lnk,Tone")
	
	For r = 0 To length-1
		If (r = restart)
			WriteLine (fileout, l_pre$+"rst_i"+ins+":")
		EndIf
		
		
		If r= length-1
			compile_instrument_row(fileout,ins,r,8)
			;compile_instrument_row2(fileout,ins,r,8)
		Else
			compile_instrument_row(fileout,ins,r,0)
			;compile_instrument_row2(fileout,ins,r,0)
		EndIf
	Next
	WriteLine (fileout, Chr(9)+Chr(9)+"dw "+l_pre$+"rst_i"+ins)
	WriteLine (fileout, "")
	
End Function


Function compile_instrument_row2(fileout,ins,r,e)

	; THIS IS A WIP FOR SUPPORT FOR SMS PSG !!!

	;-- flags
	F_loop = $01
	F_vlink = $02
	F_tvol = $04
	F_tupdate = $08
	F_tone = $10
	F_nvol = $20
	F_nupdate = $40
	F_noise = $80
	
	;-- read data	
	ins = ins -1
	byte1 = PeekByte(samples,(ins*(32*4+3))+3+(r*4))
	byte2 = PeekByte(samples,(ins*(32*4+3))+3+(r*4)+1)
	
	byte3 = PeekByte(samples,(ins*(32*4+3))+3+(r*4)+2)
	byte4 = PeekByte(samples,(ins*(32*4+3))+3+(r*4)+3)

	;--- output
	resultFlag = 0
	resultNu = 0
	resultTvol = 0
	resultT1 = 0
	resultT2 = 0

	out$ = ""


	;- loop flag
	If e > 0 
		resultFlag = resultFlag Or F_loop
		
	EndIf
	;- noise flag
	If (byte1 And $80 > 0)
		result = result Or F_noise
	EndIf
	
	;- noise value update
	If ((byte1 And $60) = $40)					; add noise 
		resultNu =  (byte1 And $1f) 		
	Else If ((byte1 And $60) = $60)	
		resultNu =  (255-(byte1 And $1f))+1		; neg noise
	Else 
		resultNu = (byte1 And $1f) Or $40		; bit 7=0 and bit 6=1 to indicate base
	EndIf
	If (byte1 And $1f) > 0
		resultFlag = resultFlag Or F_nupdate
		out$ = out$ + ",$"+Right(Hex(resultNu),2)
	Else
		out$ = out$ + "    "
	EndIf
	
	;- noise volume update
	
	; todo
	
	
	;- tone flag
	If (byte2 And $80)
		resultFlag = resultFlag Or F_tone		
	EndIf

	;- tone update
	If ((byte2 And $40) = $40)					; min
		resultT1 = ($ffff - (byte3 + (byte4*256)) +1) And $ff
		resultT2 = (($ffff - (byte3 + (byte4*256)) +1) Shr 8) And $ff
	Else 
		resultT1 = byte3
		resultT2 = byte4
	EndIf
	If (resultT1 > 0 Or resultT2 > 0)
		resultFlag = resultFlag Or F_tupdate
		out$ = out$ + ",$"+Right(Hex(resultT1),2)
		out$ = out$ + ",$"+Right(Hex(resultT2),2)
	Else
		out$ = out$ + "    "
		out$ = out$ + "    "
	EndIf

	
	
	; tone volume update
	If ((byte2 And $20) = $00)						;base volume
		resultTvol = (byte2 And $0f) Or $40			;bit 7=0 And bit 6=1 To indicate base
	Else If ((byte2 And $30) = $20)
		resultTvol = (byte2 And $0f)				; add volume
	Else 
		resultTvol = (255-(byte2 And $0f))+1		; neg volume
	EndIf	
	If (byte2 And $0f) > 0
		resultFlag = resultFlag Or F_tvol
		out$ = out$ + ",$"+Right(Hex(resultTvol),2)
	Else
		out$ = out$ + "    "
	EndIf
	
	
	
	;-- voice link
	
	; todo 
	
	
	WriteLine (fileout,Chr(9)+Chr(9)+"db $"+Right(Hex(resultFlag),2)+out$+Chr(9)+Chr(9)+"; "+Right(Bin(resultFlag),8))
	
	
	
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
	result3 = 0;byte1 And $1f			; noise value / voicelink

	result4 = byte3
	result5 = byte4 And $7f			; tone without voicelink bit
	
	voicelink = byte4 And $80		; voicelink bit


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
				;result1 = result1 + $40		Be aware changed this as only an add is needed as value is negative
				result1 = result1 + $60
				result3 = (255-result3)+1
			EndIf
		EndIf
	EndIf
	
	If (voicelink > 0)
		result3 = byte1 And $0f			; voice value
		result1 = result1 + $40
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
	Else 
		out$ = out$ + "    "
	EndIf
	
	If (result3 > 0)
		If (voicelinke > 0)
			out$ = out$ + "    "
			out$ = out$ +",$"+Right(Hex(result3),2)
		Else
			
			out$ = out$ +",$"+Right(Hex(result3),2)
			out$ = out$ + "    "
		EndIf
	Else 
		out$ = out$ + "        "
	EndIf
	If ((result1 And $04) > 0)
		out$ = out$ + ",$"+Right(Hex(result4),2)
		out$ = out$ + ",$"+Right(Hex(result5),2)
	Else 
		out$ = out$ + "        "	
	EndIf
	out$ = out$ +Chr(9)+Chr(9)+"; "+Right(Bin(result1),8)
	

	
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