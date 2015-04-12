Const VERSION$ = "V0.3"
Const DATE$ = "[12-04-2015]"


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



;Global instrument_pointers	=	CreateBank (31*2)
;Global pattern_pointers		= 	CreateBank (128*2)
;Global compressed_patterns	=	CreateBank (128*1024)
;Global order_pointers		=	CreateBank (128*2)
;Global instrument_data_len  = 0
;Global data_offset			= 0






Include ".\TT_compile_init.bb"
Include ".\TT_compile_io.bb"
Include ".\TT_compile_process.bb"

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
				prepare()
;				compile()
;				export()
			ElseIf esource = saveButton
				compile()
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

;loadfile()
;prepare()
;compile()
;End







;Function compile()
;	AddTextAreaText (logging,Chr(10)+"Compiling data."+Chr(10))
;
;	;--- generate instrument pointer list
;	AddTextAreaText (logging,"Generating instrument pointer list :"+Chr(10))
;	v = 0
;	For i = 0 To last_instrument -1
;		PokeShort (instrument_pointers,i*2,v)
;		AddTextAreaText (logging,i+"("+v+"), ")
;		v = v + (PeekByte(samples,(i*131))*4) +3
;		
;	Next
;	
;	instrument_data_len = v
;	
;	AddTextAreaText (logging,Chr(10))
;	;--- generate patternpointers and patterndata
;	
;	; get the highest pattern number in the sequence order data
;	
;	AddTextAreaText (logging,"Generating pattern pointerlist + compressing patterns:"+Chr(10))
;	data_offset = 0
;	
;	For p=0	To last_pattern	
;		; store offset for compressed pattern start
;		PokeShort(pattern_pointers,p*2,data_offset)
;		
;		AddTextAreaText (logging,Chr(10)+"P"+p+"("+data_offset+"), ")	
;	; compile a pattern
;		read_offset = p*(32*64)
;		einde = 0
;		
;		For	l = 0 To 63
;			AddTextAreaText (logging,Chr(10)+LSet("L"+l+": ",5))
;			For t = 0 To 7
;				
;				; compile track row
;				empty = 0
;				If l = 0
;					empty = 1
;				EndIf
;				out$ = " "
;				;--- check note
;				v = PeekByte(patterns,read_offset+(l*32)+(t*4)+0)
;				If (v > 0)
;					PokeByte(compressed_patterns,data_offset,v-1)
;					data_offset = data_offset+1
;					empty = 1
;					out$= "N"
;				EndIf
;				AddTextAreaText (logging,out$)
;				out$ = " "
;
;				;--- check instrument
;				v = PeekByte(patterns,read_offset+(l*32)+(t*4)+1)
;				If v > 0
;					v = v + 96
;					PokeByte(compressed_patterns,data_offset,v)
;					data_offset = data_offset+1
;					empty = 1
;					out$= "I"
;				EndIf
;				AddTextAreaText (logging,out$)
;				out$ = " "
;
;
;				;--- check volume
;				v = PeekByte(patterns,read_offset+(l*32)+(t*4)+2) And $f0
;				If v > 0
;					v = (v Shr 4) +127
;					PokeByte(compressed_patterns,data_offset,v)
;					data_offset = data_offset+1
;					empty = 1
;					out$ = "V"
;				EndIf
;				AddTextAreaText (logging,out$)
;				out$ = "  "
;
;
;				;--- check cmd + cmd params
;				v = PeekByte(patterns,read_offset+(l*32)+(t*4)+2) And $f
;				par = PeekByte(patterns,read_offset+(l*32)+(t*4)+3)
;				;arp
;				If v = 0 And par > 0
;					v = v +144
;					PokeByte(compressed_patterns,data_offset,v)
;					data_offset = data_offset+1
;					PokeByte(compressed_patterns,data_offset,par)
;					data_offset = data_offset+1
;					empty = 1
;					out$="C0"					
;				; pattern end
;				Else If v = $0d
;					einde = 1
;					v =  v+144
;					PokeByte(compressed_patterns,data_offset,v)
;					data_offset = data_offset+1
;					empty = 0	; no wait timer needed
;					out$="D0"
;				; all others								
;				Else If v > 0
;					out$="C"+Right(Hex(v),1)+""
;					If par > 0
;						v = v +144
;						PokeByte(compressed_patterns,data_offset,v)
;						data_offset = data_offset+1
;						PokeByte(compressed_patterns,data_offset,par)
;						data_offset = data_offset+1
;					Else
;						v = v +176
;						PokeByte(compressed_patterns,data_offset,v)
;						data_offset = data_offset+1
;						out$="--"
;					EndIf					
;					
;					empty = 1
;					
;				EndIf
;				AddTextAreaText (logging,out$)
;				out$ = "   "
;
;				
;				;--- if we found something get the rows to wait till next value				
;				If empty > 0
;					wait = 1	
;					If l < 63
;						For q = l+1 To 63
;							;AddTextAreaText (logging,PeekFloat(patterns,read_offset+(q*32)+(t*4)))
;							
;							If PeekFloat(patterns,read_offset+(q*32)+(t*4)) = 0
;								wait = wait + 1
;								;q=63;Exit
;							Else
;								q=63;Exit
;								;wait = wait + 1
;							EndIf
;						Next
;					EndIf
;					PokeByte(compressed_patterns,data_offset,wait+191)
;					data_offset = data_offset+1
;					out$ = LSet("w"+(wait),3)				
;				EndIf
;				AddTextAreaText (logging,out$)
;				
;			AddTextAreaText (logging,"|")
;			Next
;			If (einde = 1) 
;				l = 63;Exit
;			EndIf
;		Next
;	Next	
;	AddTextAreaText (logging,Chr(10)+"Compressed pattern data size: "+data_offset)
;	
;End Function	


;Function export()
;
;	file$ = RequestFile$("Export file:","ttm",True)
;
;	If file$<>""	
;		fileout=WriteFile(file$)
;		If fileout
;			AddTextAreaText (logging,Chr(10)+"Writing header."+Chr(10))
;			; write header
;;			WriteByte (fileout,$03)	; 0000 00 1 1
;
;			; order restart pos
;			WriteByte (fileout,sequenceloop)
;			; write speed
;			WriteByte (fileout,speed)		
;			; Write nr of waveforms
;			WriteByte(fileout,last_waveform+1)
;			; Write waveforms
;			For w = 0 To last_waveform
;				WriteBytes waveforms, fileout, w*32,32
;			Next
;			
;			; write nr of instruments			
;			WriteByte(fileout,last_instrument)
;			
;			; write instrument pointer list
;			
;			offset = 1+1								;speed + restart
;			offset = offset + 1+((last_waveform+1)*32)		;waveform nr + data
;			AddTextAreaText logging,"Start addr instr pointer:"+Right(Hex(offset),4)+Chr(10)
;			offset = offset + 1+((last_instrument)*2)	;instrument nr+ pointers
;			AddTextAreaText logging,"Start addr order pointers:"+Right(Hex(offset),4)+Chr(10)
;			offset = offset + ((sequencelen+1)*2)		;pattern order pointer list + delimiter
;			AddTextAreaText logging,"Start addr instruments:"+Right(Hex(offset),4)+Chr(10)
;			For i = 0 To last_instrument-1
;				v = PeekShort(instrument_pointers,i*2)
;				v = v + offset
;				WriteShort(fileout,v)
;			Next
;
;			offset = offset + instrument_data_len
;			AddTextAreaText logging,"Start pattern data:"+Right(Hex(offset),4)+Chr(10)
;
;			;- write order pointer list
;			For p = 0 To sequencelen-1
;				v = PeekByte(sequence,p)
;				w = PeekShort(pattern_pointers,v*2)
;				w = w + offset
;				WriteShort(fileout,w)
;			Next		
;				
;			;- write order qequence delimiter
;			WriteShort (fileout,$ffff)
;			
;			
;			
;			;- write instrument data
;			For i = 0 To last_instrument-1
;				l = PeekByte(samples,(i*131))
;				;AddTextAreaText (logging,"instr"+i+"len"+l+Chr(10))
;				l = (l*4)+ 3
;				WriteBytes samples,fileout,((i*131)),l
;			Next
;			
;			;-- write compressed patterndata
;			WriteBytes compressed_patterns,fileout,0,data_offset
;			
;			
;			CloseFile fileout	
;		EndIf
;	EndIf
;End Function






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