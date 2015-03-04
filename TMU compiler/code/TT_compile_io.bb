Function loadfile()
	file$ = RequestFile$("Select file:","tmu")

	If file$<>""	
		filein=ReadFile(file$)
		If filein


			;----- Reading the header
			songversion = ReadByte(filein)
			songtype = songversion And $f0
			songversion = songversion And $0f
			ReadBytes (songname,filein,0,32)
			ReadBytes (songby,filein,0,32)
			speed	= ReadByte(filein)
			sequenceloop = ReadByte(filein)
			sequencelen = ReadByte(filein)
			ReadBytes(sequence,filein,0,sequencelen)
			ReadBytes(instrumentnames,filein,0,31*16)
			

			AddTextAreaText (logging,"Filename:"+Chr(9)+file$+Chr(10)+Chr(13))			
			AddTextAreaText (logging,"TMU version: "+Chr(9)+songversion+Chr(13))
			AddTextAreaText (logging,"TT Chipset: "+Chr(9)+songtype+Chr(13))
			AddTextAreaText (logging,"Song name: "+Chr(9)+Chr(9))
			banktotxt(logging,songname,32)
			AddTextAreaText (logging,Chr(13))
			AddTextAreaText (logging,"Song by: "+Chr(9)+Chr(9))
			banktotxt(logging,songby,32)
			AddTextAreaText (logging,Chr(13))
			AddTextAreaText (logging,"Speed : "+Chr(9)+Chr(9)+speed+Chr(13))
			AddTextAreaText (logging,"Restart : "+Chr(9)+Chr(9)+sequenceloop+Chr(13))
			AddTextAreaText (logging,"Order length : "+Chr(9)+sequencelen+Chr(13))
			AddTextAreaText (logging,"Order sequence : "+Chr(10))
			For x = 0 To sequencelen
				AddTextAreaText (logging, PeekByte(sequence,x)+" ")
			Next
			AddTextAreaText (logging,Chr(10))


			;------ Reading the samples.
			AddTextAreaText (logging,"reading samples :"+Chr(10))
			;--- Read the sample data
			For x = 0 To 31-1
			    
				;read len,restart,waveform
				ReadBytes(samples,filein,x*131,3)
				l = PeekByte(samples,(x*131))*4
				ReadBytes(samples,filein,(x*131)+3,l)
				AddTextAreaText (logging,x+ "(len:"+(l/4)+"), ")
			Next
			AddTextAreaText (logging,Chr(13))
			
			
			;------- Reading the Waveforms
			If (songtype = 0)
			
				AddTextAreaText (logging,"reading waveforms"+Chr(13))
				ReadBytes(waveforms,filein,0,1024)			
			EndIf
		
			;------- Reading the FM Voices (custom)
			If (songtype And $10)
			
				AddTextAreaText (logging,"reading FM voices"+Chr(13))
				ReadBytes(waveforms,filein,0,1024)			
			EndIf			
		
		
			AddTextAreaText (logging,"reading patterns : "+Chr(10))
			;--- Read patterns
			Repeat
				p = ReadByte(filein)
				If	p < 128;255
					; store highest pattern number
					If p > last_pattern
						last_pattern = p
					EndIf
				
					l = ReadShort(filein)
					offset = p*(4*8*64)
					
					AddTextAreaText (logging,p+", ")
					
					
					;--- now extract to bank
					Repeat
						v = ReadByte(filein)
						l = l -1
						If	v > 0
							;--- normal value
							PokeByte(patterns,offset,v)
							offset = offset+1
						Else
							v = ReadByte(filein)
							If v = 0
								Exit
							Else
								For x = 1 To v	
									PokeByte(patterns,offset,0)
									offset = offset+1
								Next
							EndIf	
						EndIf
					
					Until (l =0)
				EndIf
			Until (p = 255) Or (Eof(filein)) 

			AddTextAreaText (logging,Chr(10)+"Loaded TMU file."+Chr(10))
		
		
			CloseFile filein	
		EndIf
	EndIf
End Function