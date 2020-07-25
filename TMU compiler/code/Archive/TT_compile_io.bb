Function loadfile()
	file$ = RequestFile$("Select file:","tmu")

	If file$<>""	
		filein=ReadFile(file$)
		If filein

			;---- clear the track data.
			For x=0 To (((4*64)*8)*128)-1
				PokeByte (track_data,x,255)
			Next

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
			AddTextAreaText (logging,"TMU version: "+Chr(9)+Hex$(songversion)+Chr(13))
			AddTextAreaText (logging,"TT Chipset: "+Chr(9)+Hex$(songtype)+Chr(13))
			AddTextAreaText (logging,"Song name: "+Chr(9)+Chr(9))
			banktotxt(logging,songname,0,32)
			AddTextAreaText (logging,Chr(13))
			AddTextAreaText (logging,"Song by: "+Chr(9)+Chr(9))
			banktotxt(logging,songby,0,32)
			AddTextAreaText (logging,Chr(13))
			AddTextAreaText (logging,"Speed : "+Chr(9)+Chr(9)+speed+Chr(13))
			AddTextAreaText (logging,"Restart : "+Chr(9)+Chr(9)+sequenceloop+Chr(13))
			AddTextAreaText (logging,"Order length : "+Chr(9)+sequencelen+Chr(13))
			AddTextAreaText (logging,"Order sequence : "+Chr(10))
			For x = 0 To sequencelen-1
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
			
			;- init the default custom voices
			Restore voiceData
			For x= 0 To (177-1)*8
				Read v
				PokeByte(customvoices,x,v)
			Next		
				AddTextAreaText (logging,"reading FM voices"+Chr(13))
				ReadBytes(customvoices,filein,(177*8),8*16)			
			EndIf			
			;------- Reading the FM Drum macros
			If (songtype And $10)
				AddTextAreaText (logging,"reading Drum macros"+Chr(13))
				ReadBytes(drumnames,filein,0,20*16)
				For x= 0 To 19-1
					d_off = x*((16*7)+1)
					ReadBytes(drummacros,filein,d_off,1)
					l = PeekByte(drummacros,d_off)*7
					AddTextAreaText (logging,x+ "(len:"+(l/7)+"), ")
					ReadBytes(drummacros,filein,d_off+1,l)
										
				Next
				AddTextAreaText (logging,Chr(13))			
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


.voiceData
Data $21,$22,$52,$45,$e1,$d3,$f4,$f6 ;KEYS:
Data $01,$01,$12,$03,$e3,$e3,$f3,$f6
Data $11,$11,$08,$04,$fa,$b2,$20,$f4
Data $33,$31,$d0,$03,$91,$91,$82,$85
Data $60,$61,$89,$00,$f2,$f1,$5a,$1a
Data $13,$11,$11,$00,$fa,$f2,$21,$f4
Data $00,$00,$12,$03,$e3,$e3,$f3,$f6
Data $30,$11,$0e,$01,$d9,$b2,$11,$f4
Data $30,$11,$0e,$05,$d9,$b2,$11,$f4
Data $30,$10,$0f,$04,$d9,$b2,$10,$f3
Data $60,$20,$1a,$85,$f3,$f3,$24,$37
Data $33,$11,$0c,$03,$f1,$f3,$58,$c9
Data $19,$53,$0c,$00,$c7,$f5,$11,$03
Data $03,$09,$11,$06,$d2,$b4,$f4,$f4
Data $21,$03,$0b,$05,$90,$d4,$02,$f5
Data $13,$10,$18,$06,$f7,$f3,$56,$85 ;Chromatic Percussion
Data $12,$11,$18,$06,$f7,$f3,$56,$8c
Data $14,$11,$23,$06,$f7,$f3,$56,$8c
Data $72,$71,$8f,$86,$b6,$b2,$43,$b7
Data $44,$61,$99,$07,$f9,$f5,$2a,$ed
Data $f9,$f1,$db,$00,$f5,$f3,$74,$f2
Data $f3,$f1,$db,$00,$f5,$f3,$74,$f7
Data $f9,$f1,$db,$00,$f3,$f2,$74,$f2
Data $25,$60,$1e,$05,$fa,$c3,$fc,$87
Data $17,$52,$18,$00,$88,$d9,$66,$24
Data $32,$30,$94,$05,$f1,$f1,$21,$31
Data $b5,$b1,$15,$87,$96,$d8,$63,$22
Data $6b,$63,$1a,$07,$c5,$96,$f5,$f4
Data $3e,$32,$57,$00,$f5,$f4,$74,$f3
Data $43,$40,$92,$07,$f4,$f2,$aa,$aa
Data $19,$53,$15,$07,$e7,$95,$21,$03
Data $73,$71,$16,$04,$a9,$80,$11,$34 ;Organ
Data $73,$e0,$57,$81,$86,$c2,$66,$96
Data $73,$e2,$4d,$81,$86,$c2,$66,$96
Data $f0,$f1,$12,$04,$f8,$ff,$3f,$0f
Data $71,$74,$10,$05,$ff,$5f,$02,$07
Data $71,$f4,$1b,$07,$73,$3f,$02,$06
Data $b3,$b1,$52,$04,$f3,$f2,$a8,$e9 ;Guitar
Data $f3,$f1,$a0,$07,$b3,$d2,$a6,$e6
Data $b3,$b1,$16,$04,$f3,$f2,$a8,$e9
Data $61,$65,$40,$04,$f4,$f6,$1a,$7d
Data $31,$12,$10,$06,$f0,$f1,$67,$95
Data $70,$f0,$16,$07,$f3,$ff,$02,$06
Data $01,$11,$40,$04,$c2,$d1,$ff,$ff
Data $20,$71,$0d,$06,$c1,$d5,$56,$06
Data $10,$14,$00,$04,$f1,$f1,$f1,$11
Data $32,$22,$0c,$40,$f2,$f2,$10,$56
Data $41,$64,$41,$03,$f4,$ff,$22,$1f
Data $12,$1a,$06,$00,$a1,$80,$21,$62
Data $11,$18,$00,$03,$ef,$f1,$12,$20
Data $31,$21,$19,$80,$f2,$f2,$10,$56 ;Bass
Data $21,$e2,$d1,$00,$86,$88,$37,$17
Data $21,$01,$0a,$03,$f5,$f5,$f5,$fa
Data $01,$02,$07,$00,$cb,$e3,$36,$25
Data $61,$31,$94,$07,$e4,$c1,$1b,$eb
Data $71,$01,$95,$04,$98,$d4,$65,$56
Data $61,$31,$15,$06,$f3,$f3,$bb,$ec
Data $41,$61,$54,$00,$f6,$f2,$74,$59
Data $31,$32,$0f,$05,$f2,$f4,$23,$99
Data $21,$02,$0f,$03,$f5,$f5,$f5,$f5
Data $01,$01,$46,$02,$e5,$f5,$f4,$f7
Data $21,$01,$08,$00,$96,$b2,$49,$f8
Data $31,$31,$17,$06,$d3,$e1,$bb,$eb
Data $01,$41,$12,$04,$94,$f2,$f9,$e8
Data $41,$61,$54,$06,$f6,$f2,$74,$59
Data $01,$10,$0e,$07,$ca,$e6,$44,$24
Data $61,$61,$1b,$07,$94,$54,$14,$06 ;Strings
Data $61,$b2,$0f,$47,$6d,$4c,$30,$06
Data $42,$64,$17,$47,$a1,$a2,$33,$25
Data $71,$71,$18,$07,$9f,$30,$14,$06
Data $61,$61,$22,$07,$94,$54,$14,$06
Data $42,$42,$00,$06,$fe,$fd,$41,$01
Data $61,$62,$8f,$07,$f5,$f2,$2f,$fe
Data $71,$71,$18,$07,$f1,$41,$14,$16
Data $61,$a1,$0a,$05,$76,$54,$12,$07
Data $32,$b1,$29,$07,$f4,$d2,$34,$f3
Data $51,$72,$94,$07,$41,$62,$24,$02 ;Brass
Data $71,$31,$1c,$07,$51,$71,$24,$26
Data $71,$71,$19,$07,$32,$44,$35,$2a
Data $30,$70,$19,$07,$42,$62,$26,$24
Data $72,$72,$19,$07,$63,$8f,$15,$0e
Data $71,$71,$15,$07,$63,$8f,$15,$0e
Data $60,$61,$1d,$07,$f1,$71,$1a,$da
Data $31,$61,$1a,$07,$e1,$c1,$1f,$1f
Data $72,$72,$18,$07,$a5,$c0,$28,$26
Data $51,$61,$17,$07,$50,$f1,$5c,$dc  
Data $70,$70,$20,$07,$41,$6f,$15,$0e
Data $70,$70,$14,$04,$42,$4f,$63,$07
Data $31,$71,$16,$00,$51,$52,$26,$24
Data $72,$31,$97,$05,$51,$6f,$75,$09 ;Reed
Data $70,$30,$4d,$03,$42,$6f,$25,$06
Data $71,$76,$93,$05,$40,$4f,$f4,$07
Data $70,$b0,$87,$04,$6f,$52,$03,$25
Data $61,$61,$0e,$04,$81,$75,$f5,$05
Data $60,$60,$40,$04,$81,$75,$f5,$05
Data $61,$71,$26,$05,$61,$50,$75,$f6 ;Pipe
Data $24,$22,$24,$01,$a8,$9f,$17,$07
Data $62,$71,$25,$07,$64,$43,$12,$26
Data $61,$61,$5c,$05,$56,$44,$1d,$0c
Data $72,$31,$17,$00,$f9,$61,$61,$53
Data $22,$e1,$15,$87,$a4,$62,$b3,$94
Data $62,$72,$26,$00,$61,$50,$75,$f6
Data $60,$20,$11,$85,$f3,$f3,$24,$35 ;Synth Lead
Data $60,$22,$0d,$85,$f3,$f3,$24,$35
Data $72,$74,$09,$00,$f1,$f1,$72,$a2
Data $00,$41,$53,$07,$e0,$82,$f8,$98
Data $61,$61,$15,$00,$91,$91,$14,$16
Data $f1,$32,$0a,$04,$80,$81,$30,$42
Data $40,$42,$0b,$04,$94,$b0,$33,$f6
Data $40,$40,$8a,$05,$74,$e1,$f6,$f6
Data $32,$a1,$16,$07,$c0,$c0,$20,$17
Data $72,$31,$92,$07,$51,$6f,$75,$09
Data $61,$61,$20,$47,$21,$31,$22,$02 ;Synth Pad
Data $62,$22,$19,$05,$54,$12,$08,$d6
Data $60,$21,$09,$85,$f3,$f3,$24,$34
Data $f1,$f2,$15,$86,$72,$f1,$24,$74
Data $51,$42,$13,$00,$13,$10,$42,$01
Data $72,$32,$19,$05,$84,$42,$01,$25
Data $60,$60,$17,$00,$f0,$40,$00,$05
Data $12,$12,$16,$07,$50,$40,$10,$1a
Data $60,$76,$09,$00,$12,$21,$72,$21
Data $60,$72,$0d,$00,$12,$21,$72,$21
Data $51,$42,$10,$02,$03,$10,$42,$01
Data $71,$75,$06,$00,$f1,$f1,$72,$a2 ;Ethnic
Data $31,$36,$0d,$05,$f2,$f4,$23,$99
Data $73,$b1,$4d,$00,$e4,$f4,$84,$94
Data $13,$11,$0c,$06,$fc,$d2,$33,$83
Data $b3,$b2,$28,$07,$f3,$f2,$92,$b4
Data $f0,$f3,$15,$86,$72,$f1,$24,$74
Data $02,$03,$09,$07,$cb,$ff,$39,$06 ;Percussive
Data $20,$20,$09,$00,$fa,$f6,$ff,$ff
Data $00,$01,$07,$06,$cb,$e3,$36,$25
Data $43,$61,$41,$00,$f9,$f6,$fc,$fc
Data $03,$00,$04,$00,$f9,$f4,$f0,$fa
Data $61,$61,$0d,$03,$f5,$f4,$f5,$f5
Data $61,$61,$07,$03,$f6,$f5,$f5,$f5
Data $72,$31,$06,$00,$f4,$f2,$fa,$fd
Data $52,$41,$2c,$00,$45,$99,$fa,$fa
Data $20,$00,$00,$07,$f1,$f7,$00,$b8
Data $61,$61,$00,$08,$c5,$96,$e5,$f6
Data $2f,$2f,$00,$07,$f1,$a9,$00,$48
Data $2f,$0f,$00,$07,$f1,$99,$00,$b8
Data $01,$03,$0b,$07,$ba,$d9,$25,$06
Data $00,$21,$01,$07,$da,$f6,$5f,$ff
Data $01,$08,$0d,$07,$78,$f8,$7f,$f9
Data $30,$00,$41,$02,$f1,$f1,$a0,$f7 ;Other
Data $f0,$31,$0a,$04,$80,$81,$30,$45
Data $30,$00,$41,$02,$f1,$f1,$a0,$f7
Data $01,$01,$11,$06,$c0,$b4,$01,$f6
Data $40,$00,$00,$00,$fa,$d9,$37,$04
Data $24,$28,$4a,$01,$f2,$f1,$44,$56
Data $73,$31,$0f,$06,$c1,$f2,$cf,$4e
Data $a5,$c1,$04,$02,$67,$61,$b8,$a5
Data $f1,$32,$07,$04,$80,$81,$30,$49
Data $00,$20,$00,$13,$f2,$ff,$f2,$04
Data $61,$61,$1b,$07,$c5,$96,$f5,$f6
Data $61,$61,$18,$07,$c5,$96,$f5,$f6
Data $61,$61,$1f,$07,$c5,$96,$f5,$f6
Data $61,$78,$0d,$00,$85,$f2,$14,$03
Data $20,$a0,$10,$08,$01,$f4,$b6,$fa
Data $42,$64,$1f,$47,$a4,$72,$33,$24
Data $62,$41,$40,7  ,$FA,$F6,$AF,$FF 	;--- micro cabin voices
Data $44,$71,$87,$27,$FA,$F5,$2A,$FD 
Data $47,$62,$24,8  ,$F3,$F3,$F9,$FC
Data $63,$62,$15,$0F,$F0,$F3,$FF,$FF
Data $67,$60,$14,$27,$F7,$F2,$8A,$FA
Data $61,$62,$0E,6  ,$F5,$F2,$0F,$FE 
Data $12,$12,$1B,7  ,$0 ,$40,$10,$1A
Data $60,$61,$8A,$20,$F3,$F1,$3A,$FA
Data $66,$64,$15,6  ,$50,$83,$FA,$FA
Data $E1,$62,5  ,3  ,$D0,$72,$2B,$FB
Data $61,$65,$40,4  ,$F4,$F4,$1A,$AC
Data $6C,$22,$59,6  ,$E3,$D2,$23,$4D
Data $62,$62,$3F,7  ,$96,$76,$2A,$0A
Data $61,$61,$5C,0  ,$56,$44,$1D,$0C
Data $61,$62,$63,$26,$36,$54,$1D,$0C
Data 441,$41,$21,$27,$F7,$50,3  ,$E5