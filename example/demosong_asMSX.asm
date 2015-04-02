; Compiled using tt_compile.exe V0.2.1 [30-03-2015]
; Copyright 2015 Richard Cornelisse

; Song: Usas Stage1        - Konami     
; By:   Arr. by Gryzor87        (c) 2013

;	org $c000

; [ Song start data ]
	db $09				; Initial song speed.
	dw @@waveform_start 		; Start of the waveform data.
	dw @@instrument_start 		; Start of the instrument data.

; [ Song order pointer list ]
@@restart:
		dw @@track_0,@@track_1,@@track_2,@@track_3,@@track_4,@@track_5,@@track_6,@@track_7		; Sequence step 0 /pattern 0
		dw @@track_8,@@track_9,@@track_10,@@track_11,@@track_12,@@track_13,@@track_14,@@track_15		; Sequence step 1 /pattern 1
		dw @@track_16,@@track_17,@@track_18,@@track_19,@@track_20,@@track_21,@@track_22,@@track_23		; Sequence step 2 /pattern 2
		dw @@track_16,@@track_24,@@track_25,@@track_26,@@track_27,@@track_28,@@track_29,@@track_30		; Sequence step 3 /pattern 3
		dw @@track_8,@@track_31,@@track_32,@@track_33,@@track_34,@@track_35,@@track_36,@@track_37		; Sequence step 4 /pattern 4
		dw @@track_38,@@track_39,@@track_40,@@track_41,@@track_42,@@track_43,@@track_44,@@track_45		; Sequence step 5 /pattern 5
		dw 0x0000, @@restart			; End of sequence delimiter + restart address.

@@waveform_start:
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00	; Waveform 0(was 0)
	db $80,$B0,$C0,$10,$1A,$2A,$2C,$1A,$00,$E0,$D0,$E0,$22,$53,$70,$75,$70,$31,$EA,$80,$88,$8A,$8C,$8E,$00,$7F,$75,$73,$62,$00,$C0,$90	; Waveform 1(was 1)
	db $30,$50,$50,$30,$00,$00,$10,$40,$60,$70,$60,$30,$F0,$E0,$E0,$00,$20,$20,$10,$C0,$A0,$90,$A0,$C0,$00,$00,$D0,$B0,$B0,$D0,$00,$00	; Waveform 2(was 2)
	db $17,$77,$47,$5F,$27,$E7,$A7,$2F,$6F,$B7,$FF,$E7,$1F,$0F,$4F,$DF,$EF,$F7,$E7,$CF,$E7,$67,$47,$DF,$17,$97,$B7,$EF,$DF,$D7,$E7,$FF	; Waveform 3(was 4)
	db $00,$40,$7F,$40,$01,$C0,$81,$C0,$01,$40,$7F,$40,$01,$C0,$01,$40,$01,$E0,$01,$20,$01,$F0,$01,$10,$01,$FF,$FF,$FF,$FF,$40,$40,$40	; Waveform 4(was 5)
	db $00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$00,$E0,$C0,$A0,$80,$A0,$C0,$E0,$00,$20,$40,$60,$7F,$60,$40,$20	; Waveform 5(was 6)
	db $00,$4E,$62,$6D,$75,$7A,$7D,$7E,$7F,$7E,$7D,$7A,$75,$6D,$62,$4E,$00,$B1,$9D,$92,$8A,$85,$82,$81,$80,$81,$82,$85,$8A,$92,$9D,$B1	; Waveform 6(was 7)
	db $00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$7F,$70,$60,$50,$40,$30,$20,$10	; Waveform 7(was 10)
	db $01,$2A,$40,$50,$5C,$68,$70,$78,$7F,$78,$70,$68,$5C,$50,$40,$2A,$FF,$D6,$C0,$B0,$A4,$98,$90,$88,$81,$88,$90,$98,$A4,$B0,$C0,$D6	; Waveform 8(was 11)
	db $4F,$5F,$67,$6F,$77,$77,$77,$77,$77,$6F,$5F,$4F,$3F,$27,$17,$07,$F7,$E7,$D7,$C7,$AF,$97,$87,$87,$87,$87,$87,$87,$8F,$97,$9F,$AF	; Waveform 9(was 12)
	db $00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$70,$60,$50,$40,$30,$20,$10	; Waveform 10(was 14)
	db $00,$F8,$F0,$E8,$E0,$D8,$D0,$C8,$C0,$B8,$B0,$A8,$A0,$98,$90,$20,$00,$E0,$C0,$A0,$80,$A0,$C0,$E0,$00,$20,$40,$60,$7F,$60,$40,$20	; Waveform 11(was 16)
	db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$11,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF	; Waveform 12(was 31)

@@instrument_start:
	dw @@ins_1
	dw @@ins_2
	dw @@ins_3
	dw @@ins_4
	dw @@ins_5
	dw @@ins_6
	dw @@ins_7
	dw @@ins_8
	dw @@ins_9
	dw @@ins_10
	dw @@ins_11
	dw @@ins_12
	dw @@ins_13
	dw @@ins_14
	dw @@ins_15
	dw @@ins_16
	dw @@ins_17
	dw @@ins_18
	dw @@ins_19
	dw @@ins_20
	dw @@ins_21
	dw @@ins_22
	dw @@ins_23
	dw @@ins_24
	dw @@ins_25
	dw @@ins_26
	dw @@ins_27
	dw @@ins_28
	dw @@ins_29
	dw @@ins_30
	dw @@ins_31
@@ins_1:						; BD POW Solid    
		db 0					; Waveform (was 0)
		db @@rst_i1-(@@ins_1 +2)		; Restart
		db $11,$0F
@@rst_i1:
		db $89,$00
@@ins_2:						; SD POW Solid    
		db 0					; Waveform (was 0)
		db @@rst_i2-(@@ins_2 +2)		; Restart
		db $11,$0F
		db $85,$0F,$FF,$FF
		db $A5,$0E,$07,$FF,$FF
		db $85,$0D,$FF,$FF
		db $A5,$0D,$09,$FF,$FF
		db $85,$0C,$FF,$FF
		db $85,$0C,$FF,$FF
		db $85,$0B,$07,$00
		db $81,$0B
		db $81,$0A
		db $81,$0A
		db $81,$08
		db $81,$06
		db $81,$05
@@rst_i2:
		db $89,$02
@@ins_3:						; HH close So HI  
		db 0					; Waveform (was 0)
		db @@rst_i3-(@@ins_3 +2)		; Restart
		db $91,$0E
		db $91,$06
@@rst_i3:
		db $99,$00
@@ins_4:						; HH open Solid   
		db 0					; Waveform (was 0)
		db @@rst_i4-(@@ins_4 +2)		; Restart
		db $91,$0E
		db $91,$0E
		db $91,$0C
@@rst_i4:
		db $9B,$FF
@@ins_5:						; Ride Cymbal     
@@ins_6:						; Tom             
		db 0					; Waveform (was 0)
		db @@rst_i6-(@@ins_6 +2)		; Restart
		db $15,$0F,$2F,$00
		db $15,$0E,$2F,$00
@@rst_i6:
		db $14,$2F,$00
		db $1F,$FF,$2F,$00
@@ins_7:						; PSG Attack      
		db 0					; Waveform (was 0)
		db @@rst_i7-(@@ins_7 +2)		; Restart
		db $11,$0E
		db $11,$0C
		db $11,$0C
		db $11,$0C
		db $11,$0C
		db $11,$0C
		db $11,$0C
		db $11,$0A
@@rst_i7:
		db $11,$09
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $19,$0A
@@ins_8:						; PSG Lead        
		db 0					; Waveform (was 0)
		db @@rst_i8-(@@ins_8 +2)		; Restart
		db $11,$0A
		db $11,$0B
		db $11,$0C
		db $11,$0D
		db $11,$0E
		db $11,$0F
		db $11,$0F
		db $11,$0F
@@rst_i8:
		db $19,$0F
@@ins_9:						; PGS String snake
		db 0					; Waveform (was 0)
		db @@rst_i9-(@@ins_9 +2)		; Restart
		db $11,$0A
		db $11,$0B
		db $11,$0C
		db $11,$0D
		db $11,$0E
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0E
		db $11,$0E
		db $11,$0E
		db $11,$0E
		db $11,$0E
		db $11,$0D
		db $11,$0D
		db $11,$0D
@@rst_i9:
		db $15,$0D,$01,$00
		db $11,$0D
		db $15,$0D,$01,$00
		db $11,$0D
		db $15,$0D,$01,$00
		db $11,$0D
		db $15,$0D,$FF,$FF
		db $11,$0D
		db $15,$0D,$FF,$FF
		db $11,$0D
		db $15,$0D,$FF,$FF
		db $19,$0D
@@ins_10:						; SC Bass         
		db 1					; Waveform (was 1)
		db @@rst_i10-(@@ins_10 +2)		; Restart
		db $11,$0F
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$07
		db $11,$07
		db $11,$07
		db $11,$07
		db $11,$06
		db $11,$05
		db $11,$04
		db $11,$03
@@rst_i10:
		db $19,$02
@@ins_11:						; SC Piano        
		db 2					; Waveform (was 2)
		db @@rst_i11-(@@ins_11 +2)		; Restart
		db $11,$0F
		db $11,$0E
		db $11,$0D
		db $11,$0D
		db $11,$0D
		db $11,$0D
		db $11,$0D
		db $11,$0C
		db $11,$0C
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $11,$09
		db $11,$08
		db $11,$07
		db $11,$06
		db $11,$05
		db $11,$04
		db $11,$03
@@rst_i11:
		db $19,$02
@@ins_12:						; SC Lead         
		db 7					; Waveform (was 10)
		db @@rst_i12-(@@ins_12 +2)		; Restart
		db $11,$0A
		db $11,$0B
		db $11,$0C
		db $11,$0D
		db $11,$0E
		db $11,$0F
		db $11,$0F
		db $11,$0F
@@rst_i12:
		db $19,$0F
@@ins_13:						; SC Bell         
		db 3					; Waveform (was 4)
		db @@rst_i13-(@@ins_13 +2)		; Restart
		db $11,$0F
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$08
		db $11,$07
		db $11,$06
		db $11,$05
		db $11,$04
@@rst_i13:
		db $19,$03
@@ins_14:						; SC Pad LOW      
		db 4					; Waveform (was 5)
		db @@rst_i14-(@@ins_14 +2)		; Restart
		db $11,$03
		db $11,$05
		db $11,$08
		db $11,$0A
		db $11,$0A
		db $11,$0B
		db $11,$0B
		db $11,$0B
@@rst_i14:
		db $19,$0B
@@ins_15:						; SC PianoBell    
		db 5					; Waveform (was 6)
		db @@rst_i15-(@@ins_15 +2)		; Restart
		db $11,$0F
		db $11,$08
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$08
		db $11,$07
		db $11,$06
		db $11,$05
		db $11,$04
		db $11,$03
@@rst_i15:
		db $19,$02
@@ins_16:						; SC Flute        
		db 9					; Waveform (was 12)
		db @@rst_i16-(@@ins_16 +2)		; Restart
		db $11,$0A
		db $11,$0B
		db $11,$0D
		db $11,$0C
		db $11,$0E
		db $11,$0E
		db $11,$0E
		db $11,$0E
@@rst_i16:
		db $19,$0E
@@ins_17:						; SC Flute2       
@@ins_18:						; SC HI HITS      
		db 4					; Waveform (was 5)
		db @@rst_i18-(@@ins_18 +2)		; Restart
		db $11,$0F
		db $11,$0C
		db $11,$0C
		db $11,$0A
		db $11,$09
		db $11,$07
		db $11,$06
		db $11,$04
		db $11,$02
@@rst_i18:
		db $19,$02
@@ins_19:						; SC Sawlead      
@@ins_20:						; SC Brass        
		db 7					; Waveform (was 10)
		db @@rst_i20-(@@ins_20 +2)		; Restart
		db $11,$0F
		db $11,$0D
		db $11,$0D
		db $11,$0D
		db $11,$0D
		db $11,$0D
		db $11,$0D
		db $11,$0D
@@rst_i20:
		db $19,$0D
@@ins_21:						; SD Tom          
		db 8					; Waveform (was 11)
		db @@rst_i21-(@@ins_21 +2)		; Restart
		db $15,$0F,$2A,$00
		db $15,$0C,$2A,$00
@@rst_i21:
		db $14,$2A,$00
		db $1F,$FF,$2A,$00
@@ins_22:						; SC Bass         
@@ins_23:						; SC Snake OD Gtr 
@@ins_24:						; SC SlowStringsnk
		db 6					; Waveform (was 7)
		db @@rst_i24-(@@ins_24 +2)		; Restart
		db $11,$06
		db $11,$07
		db $11,$08
		db $11,$09
		db $11,$0A
		db $11,$0A
		db $11,$0B
		db $11,$0B
		db $11,$0C
		db $11,$0D
		db $11,$0E
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0F
		db $11,$0F
@@rst_i24:
		db $15,$0F,$01,$00
		db $15,$0F,$01,$00
		db $15,$0F,$01,$00
		db $15,$0F,$01,$00
		db $15,$0F,$01,$00
		db $15,$0F,$FF,$FF
		db $15,$0F,$FF,$FF
		db $15,$0F,$FF,$FF
		db $15,$0F,$FF,$FF
		db $1D,$0F,$FF,$FF
@@ins_25:						; SC String solid 
@@ins_26:						; SC Piano3       
		db 11					; Waveform (was 16)
		db @@rst_i26-(@@ins_26 +2)		; Restart
		db $11,$0F
		db $11,$0E
		db $11,$0D
		db $11,$0D
		db $11,$0D
		db $11,$0D
		db $11,$0D
		db $11,$0C
		db $11,$0C
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $11,$09
		db $11,$08
		db $11,$07
		db $11,$06
		db $11,$05
		db $11,$04
		db $11,$03
@@rst_i26:
		db $19,$02
@@ins_27:						; SC Piano solid  
		db 3					; Waveform (was 4)
		db @@rst_i27-(@@ins_27 +2)		; Restart
		db $11,$0F
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$09
@@rst_i27:
		db $39,$09,$0B
@@ins_28:						; SC Piano sol LOW
@@ins_29:						; SC Pian SnakeLOW
@@ins_30:						; SC Mantabrass sn
@@ins_31:						; SC Brass Snend  
		db 10					; Waveform (was 14)
		db @@rst_i31-(@@ins_31 +2)		; Restart
		db $11,$0F
		db $11,$0D
		db $11,$0C
		db $11,$0C
		db $11,$0A
		db $11,$08
@@rst_i31:
		db $19,$08

; [ Song track data ]
@@track_0:
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $12		;[Note] 19
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $12		;[Note] 19
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $23		;[Note] 36
	db $6F		;[Volume] 15
	db $75		;[Instrument] 6
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
	db $C0		;[Wait] 1
	db $15		;[Note] 22
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_1:
	db $18		;[Note] 25
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $95, $00	; track detune
	db $C0		;[Wait] 1
	db $94, $01	; vibrato control
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $16		;[Note] 23
	db $C2		;[Wait] 3
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $11		;[Note] 18
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $C0		;[Wait] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_2:
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
	db $78		;[Instrument] 9
	db $95, $00	; track detune
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $94, $01	; vibrato control
	db $C4		;[Wait] 5
	db $24		;[Note] 37
	db $C9		;[Wait] 10
	db $1F		;[Note] 32
	db $C7		;[Wait] 8
	db $26		;[Note] 39
	db $C5		;[Wait] 6
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $09		;[Note] 10
	db $76		;[Instrument] 7
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $05		;[Note] 6
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $05		;[Note] 6
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $07		;[Note] 8
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $07		;[Note] 8
	db $C0		;[Wait] 1
	db $07		;[Note] 8
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_3:
	db $18		;[Note] 25
	db $6F		;[Volume] 15
	db $79		;[Instrument] 10
	db $95, $00	; track detune
	db $C0		;[Wait] 1
	db $94, $01	; vibrato control
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $16		;[Note] 23
	db $C3		;[Wait] 4
	db $16		;[Note] 23
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $11		;[Note] 18
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $C0		;[Wait] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_4:
	db $28		;[Note] 41
	db $68		;[Volume] 8
	db $89		;[Instrument] 26
	db $95, $00	; track detune
	db $C0		;[Wait] 1
	db $94, $01	; vibrato control
				;[Skip delay] 1
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $28		;[Note] 41
	db $C3		;[Wait] 4
	db $24		;[Note] 37
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $29		;[Note] 42
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $24		;[Note] 37
	db $C0		;[Wait] 1
	db $1D		;[Note] 30
				;[Skip delay] 1
	db $18		;[Note] 25
	db $C0		;[Wait..] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6A		;[Volume] 10
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $C0		;[Wait] 1
	db $21		;[Note] 34
				;[Skip delay] 1
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $23		;[Note] 36
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $23		;[Note] 36
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_5:
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $87		;[Instrument] 24
	db $95, $00	; track detune
	db $C0		;[Wait] 1
	db $94, $01	; vibrato control
	db $C4		;[Wait] 5
	db $2B		;[Note] 44
	db $C4		;[Wait..] 5
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $22		;[Note] 35
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $C4		;[Wait] 5
	db $29		;[Note] 42
	db $C4		;[Wait..] 5
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $24		;[Note] 37
	db $68		;[Volume] 8
	db $8E		;[Instrument] 31
	db $C1		;[Wait] 2
	db $A5, $05; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $A5, $05; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $21		;[Note] 34
				;[Skip delay] 4
	db $18		;[Note] 25
	db $C2		;[Wait] 3
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
@@track_6:
	db $60		;[Note] 97
	db $95, $00	; track detune
	db $C0		;[Wait] 1
	db $94, $01	; vibrato control
	db $C2		;[Wait] 3
	db $32		;[Note] 51
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $C0		;[Wait] 1
	db $34		;[Note] 53
	db $A6, $10; tone-slide
				;[Skip delay] 1
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $37		;[Note] 56
	db $C2		;[Wait] 3
	db $64		;[Volume] 4
	db $C0		;[Wait] 1
	db $37		;[Note] 56
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $37		;[Note] 56
	db $C2		;[Wait] 3
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $35		;[Note] 54
	db $6F		;[Volume] 15
	db $C0		;[Wait] 1
	db $34		;[Note] 53
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6D		;[Volume] 13
	db $C2		;[Wait] 3
	db $A7, $56	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $66		;[Volume] 6
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $A5, $10; slide-down
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $32		;[Note] 51
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $30		;[Note] 49
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $C4		;[Wait] 5
	db $68		;[Volume] 8
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $67		;[Volume] 7
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $62		;[Volume] 2
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
@@track_7:
	db $60		;[Note] 97
	db $95, $08	; track detune
	db $C5		;[Wait] 6
	db $32		;[Note] 51
	db $65		;[Volume] 5
	db $7B		;[Instrument] 12
	db $C0		;[Wait] 1
	db $34		;[Note] 53
	db $A6, $10; tone-slide
				;[Skip delay] 1
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $37		;[Note] 56
	db $C3		;[Wait] 4
	db $37		;[Note] 56
	db $C1		;[Wait] 2
	db $37		;[Note] 56
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C0		;[Wait] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $32		;[Note] 51
	db $C9		;[Wait] 10
	db $28		;[Note] 41
	db $6D		;[Volume] 13
	db $95, $00	; track detune
	db $C1		;[Wait] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $29		;[Note] 42
	db $C0		;[Wait] 1
	db $29		;[Note] 42
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C4		;[Wait] 5
	db $67		;[Volume] 7
	db $C0		;[Wait] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $62		;[Volume] 2
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
@@track_8:
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $12		;[Note] 19
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $12		;[Note] 19
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6B		;[Volume] 11
	db $72		;[Instrument] 3
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $C0		;[Wait] 1
	db $1F		;[Note] 32
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_9:
	db $18		;[Note] 25
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $16		;[Note] 23
	db $C2		;[Wait] 3
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $11		;[Note] 18
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $C0		;[Wait] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_10:
	db $1F		;[Note] 32
	db $6C		;[Volume] 12
	db $78		;[Instrument] 9
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $C4		;[Wait] 5
	db $24		;[Note] 37
	db $C9		;[Wait] 10
	db $1F		;[Note] 32
	db $C7		;[Wait] 8
	db $26		;[Note] 39
	db $C5		;[Wait] 6
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $09		;[Note] 10
	db $76		;[Instrument] 7
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $05		;[Note] 6
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $05		;[Note] 6
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $07		;[Note] 8
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $07		;[Note] 8
	db $C0		;[Wait] 1
	db $07		;[Note] 8
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_11:
	db $18		;[Note] 25
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $16		;[Note] 23
	db $C3		;[Wait] 4
	db $16		;[Note] 23
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $11		;[Note] 18
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $C0		;[Wait] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_12:
	db $24		;[Note] 37
	db $6A		;[Volume] 10
	db $81		;[Instrument] 18
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $89		;[Instrument] 26
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $28		;[Note] 41
	db $C3		;[Wait] 4
	db $24		;[Note] 37
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $29		;[Note] 42
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $3C		;[Note] 61
	db $6F		;[Volume] 15
	db $7C		;[Instrument] 13
	db $C0		;[Wait] 1
	db $39		;[Note] 58
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $34		;[Note] 53
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $30		;[Note] 49
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $24		;[Note] 37
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $24		;[Note] 37
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_13:
	db $24		;[Note] 37
	db $69		;[Volume] 9
	db $87		;[Instrument] 24
	db $C5		;[Wait] 6
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
	db $C4		;[Wait] 5
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $22		;[Note] 35
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $C4		;[Wait] 5
	db $29		;[Note] 42
	db $C4		;[Wait..] 5
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $68		;[Volume] 8
	db $C7		;[Wait] 8
	db $2F		;[Note] 48
				;[Skip delay] 8
	db $34		;[Note] 53
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $68		;[Volume] 8
	db $C1		;[Wait] 2
	db $69		;[Volume] 9
	db $C2		;[Wait] 3
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
@@track_14:
	db $2B		;[Note] 44
	db $6F		;[Volume] 15
	db $84		;[Instrument] 21
	db $95, $00	; track detune
	db $C1		;[Wait] 2
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6C		;[Volume] 12
	db $7B		;[Instrument] 12
				;[Skip delay] 1
	db $34		;[Note] 53
	db $A6, $10; tone-slide
				;[Skip delay] 1
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $37		;[Note] 56
	db $C2		;[Wait] 3
	db $64		;[Volume] 4
	db $C0		;[Wait] 1
	db $37		;[Note] 56
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $37		;[Note] 56
	db $C2		;[Wait] 3
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $35		;[Note] 54
	db $6F		;[Volume] 15
	db $C0		;[Wait] 1
	db $34		;[Note] 53
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6D		;[Volume] 13
	db $C2		;[Wait] 3
	db $A7, $56	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $66		;[Volume] 6
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $A5, $10; slide-down
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $32		;[Note] 51
	db $C0		;[Wait] 1
	db $A7, $55	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $39		;[Note] 58
	db $C2		;[Wait] 3
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $A5, $10; slide-down
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $AF, $01; slide-down rep
	db $C1		;[Wait] 2
	db $65		;[Volume] 5
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
@@track_15:
	db $60		;[Note] 97
	db $95, $08	; track detune
	db $C5		;[Wait] 6
	db $32		;[Note] 51
	db $65		;[Volume] 5
	db $7B		;[Instrument] 12
	db $C0		;[Wait] 1
	db $34		;[Note] 53
	db $A6, $10; tone-slide
				;[Skip delay] 1
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $37		;[Note] 56
	db $C3		;[Wait] 4
	db $37		;[Note] 56
	db $C1		;[Wait] 2
	db $37		;[Note] 56
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C0		;[Wait] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $32		;[Note] 51
	db $C9		;[Wait] 10
	db $28		;[Note] 41
	db $6D		;[Volume] 13
	db $95, $00	; track detune
	db $C1		;[Wait] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $C2		;[Wait] 3
	db $6E		;[Volume] 14
	db $C4		;[Wait] 5
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $A5, $10; slide-down
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $AF, $01; slide-down rep
	db $C1		;[Wait] 2
	db $65		;[Volume] 5
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
@@track_16:
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
				;[Skip delay] 1
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $25		;[Note] 38
	db $6F		;[Volume] 15
	db $75		;[Instrument] 6
	db $C0		;[Wait] 1
	db $25		;[Note] 38
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $1E		;[Note] 31
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6B		;[Volume] 11
	db $72		;[Instrument] 3
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $C0		;[Wait] 1
	db $1F		;[Note] 32
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_17:
	db $15		;[Note] 22
	db $76		;[Instrument] 7
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C0		;[Wait] 1
	db $15		;[Note] 22
				;[Skip delay] 1
	db $18		;[Note] 25
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C1		;[Wait..] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $11		;[Note] 18
				;[Skip delay] 1
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $10		;[Note] 17
	db $C1		;[Wait..] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
	db $C0		;[Wait] 1
	db $17		;[Note] 24
	db $A6, $20; tone-slide
				;[Skip delay] 1
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
@@track_18:
	db $2D		;[Note] 46
	db $77		;[Instrument] 8
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C1		;[Wait..] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $C2		;[Wait] 3
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C4		;[Wait] 5
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $28		;[Note] 41
	db $A6, $10; tone-slide
				;[Skip delay] 1
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $26		;[Note] 39
	db $C1		;[Wait..] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $28		;[Note] 41
	db $C1		;[Wait] 2
	db $23		;[Note] 36
	db $C2		;[Wait] 3
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
@@track_19:
	db $15		;[Note] 22
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C0		;[Wait] 1
	db $15		;[Note] 22
				;[Skip delay] 1
	db $18		;[Note] 25
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C1		;[Wait..] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $11		;[Note] 18
				;[Skip delay] 1
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $10		;[Note] 17
	db $C1		;[Wait..] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
	db $C0		;[Wait] 1
	db $17		;[Note] 24
	db $A6, $20; tone-slide
				;[Skip delay] 1
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
@@track_20:
	db $28		;[Note] 41
	db $6A		;[Volume] 10
	db $89		;[Instrument] 26
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $24		;[Note] 37
				;[Skip delay] 4
	db $23		;[Note] 36
				;[Skip delay] 4
	db $24		;[Note] 37
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $32		;[Note] 51
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $2F		;[Note] 48
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $28		;[Note] 41
	db $6A		;[Volume] 10
	db $89		;[Instrument] 26
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $24		;[Note] 37
				;[Skip delay] 4
	db $23		;[Note] 36
				;[Skip delay] 4
	db $28		;[Note] 41
	db $81		;[Instrument] 18
	db $95, $01	; track detune
	db $C0		;[Wait] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2F		;[Note] 48
	db $A6, $20; tone-slide
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $C0		;[Wait..] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $68		;[Volume] 8
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
@@track_21:
	db $24		;[Note] 37
	db $69		;[Volume] 9
	db $87		;[Instrument] 24
	db $C5		;[Wait] 6
	db $21		;[Note] 34
	db $6A		;[Volume] 10
	db $C4		;[Wait] 5
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $C4		;[Wait] 5
	db $26		;[Note] 39
	db $C4		;[Wait..] 5
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $68		;[Volume] 8
	db $C7		;[Wait] 8
	db $2F		;[Note] 48
				;[Skip delay] 8
	db $34		;[Note] 53
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $28		;[Note] 41
	db $81		;[Instrument] 18
	db $95, $08	; track detune
				;[Skip delay] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $2F		;[Note] 48
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $68		;[Volume] 8
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $67		;[Volume] 7
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
@@track_22:
	db $3B		;[Note] 60
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $C0		;[Wait] 1
	db $3C		;[Note] 61
	db $A6, $04; tone-slide
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $C1		;[Wait..] 2
	db $67		;[Volume] 7
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $3C		;[Note] 61
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $A7, $67	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $40		;[Note] 65
	db $C1		;[Wait] 2
	db $67		;[Volume] 7
	db $A7, $67	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
	db $C2		;[Wait] 3
	db $A7, $56	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3C		;[Note] 61
	db $A6, $05; tone-slide
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $3E		;[Note] 63
	db $C1		;[Wait..] 2
	db $A7, $67	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $3C		;[Note] 61
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $60		;[Note] 97
	db $A5, $03; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $1C		;[Note] 29
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $21		;[Note] 34
	db $C0		;[Wait] 1
	db $23		;[Note] 36
	db $A6, $19; tone-slide
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
@@track_23:
	db $37		;[Note] 56
	db $6D		;[Volume] 13
	db $7F		;[Instrument] 16
	db $95, $08	; track detune
	db $C0		;[Wait] 1
	db $39		;[Note] 58
	db $A6, $04; tone-slide
				;[Skip delay] 1
	db $37		;[Note] 56
	db $C1		;[Wait] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $37		;[Note] 56
	db $C1		;[Wait..] 2
	db $67		;[Volume] 7
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $39		;[Note] 58
	db $6A		;[Volume] 10
	db $C3		;[Wait] 4
	db $3C		;[Note] 61
	db $C1		;[Wait] 2
	db $67		;[Volume] 7
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C8		;[Wait] 9
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $39		;[Note] 58
	db $A6, $05; tone-slide
				;[Skip delay] 1
	db $37		;[Note] 56
	db $C1		;[Wait] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $C3		;[Wait] 4
	db $39		;[Note] 58
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $60		;[Note] 97
	db $A5, $03; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
	db $C0		;[Wait] 1
	db $2A		;[Note] 43
	db $A6, $19; tone-slide
				;[Skip delay] 1
	db $28		;[Note] 41
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
@@track_24:
	db $15		;[Note] 22
	db $76		;[Instrument] 7
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C0		;[Wait] 1
	db $15		;[Note] 22
				;[Skip delay] 1
	db $18		;[Note] 25
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C1		;[Wait..] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $11		;[Note] 18
				;[Skip delay] 1
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $C0		;[Wait] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_25:
	db $2D		;[Note] 46
	db $77		;[Instrument] 8
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C1		;[Wait..] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $C2		;[Wait] 3
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C4		;[Wait] 5
	db $05		;[Note] 6
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $C1		;[Wait] 2
	db $05		;[Note] 6
	db $C0		;[Wait] 1
	db $05		;[Note] 6
				;[Skip delay] 1
	db $09		;[Note] 10
	db $C1		;[Wait] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $0C		;[Note] 13
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $08		;[Note] 9
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $04		;[Note] 5
	db $C0		;[Wait] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
	db $C0		;[Wait] 1
	db $07		;[Note] 8
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_26:
	db $15		;[Note] 22
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C0		;[Wait] 1
	db $15		;[Note] 22
				;[Skip delay] 1
	db $18		;[Note] 25
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C1		;[Wait..] 2
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $11		;[Note] 18
				;[Skip delay] 1
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $18		;[Note] 25
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $C0		;[Wait] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_27:
	db $28		;[Note] 41
	db $6A		;[Volume] 10
	db $89		;[Instrument] 26
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $24		;[Note] 37
				;[Skip delay] 4
	db $23		;[Note] 36
				;[Skip delay] 4
	db $24		;[Note] 37
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $C0		;[Wait] 1
	db $32		;[Note] 51
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $37		;[Note] 56
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $2F		;[Note] 48
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $28		;[Note] 41
	db $6A		;[Volume] 10
	db $89		;[Instrument] 26
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $24		;[Note] 37
				;[Skip delay] 4
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $7C		;[Instrument] 13
	db $95, $00	; track detune
	db $C0		;[Wait] 1
	db $2C		;[Note] 45
				;[Skip delay] 1
	db $2C		;[Note] 45
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $2C		;[Note] 45
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $40		;[Note] 65
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_28:
	db $24		;[Note] 37
	db $69		;[Volume] 9
	db $87		;[Instrument] 24
	db $C5		;[Wait] 6
	db $21		;[Note] 34
	db $6A		;[Volume] 10
	db $C4		;[Wait] 5
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $C4		;[Wait] 5
	db $26		;[Note] 39
	db $C4		;[Wait..] 5
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $23		;[Note] 36
	db $69		;[Volume] 9
	db $83		;[Instrument] 20
				;[Skip delay] 1
	db $24		;[Note] 37
	db $A6, $06; tone-slide
				;[Skip delay] 1
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $26		;[Note] 39
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6A		;[Volume] 10
	db $81		;[Instrument] 18
	db $95, $09	; track detune
	db $C0		;[Wait] 1
	db $20		;[Note] 33
				;[Skip delay] 1
	db $20		;[Note] 33
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $20		;[Note] 33
				;[Skip delay] 1
	db $23		;[Note] 36
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $2C		;[Note] 45
				;[Skip delay] 1
	db $23		;[Note] 36
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $2C		;[Note] 45
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $2C		;[Note] 45
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_29:
	db $3B		;[Note] 60
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $C0		;[Wait] 1
	db $3C		;[Note] 61
	db $A6, $04; tone-slide
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $C1		;[Wait..] 2
	db $67		;[Volume] 7
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $3C		;[Note] 61
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $A7, $67	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $40		;[Note] 65
	db $C0		;[Wait..] 1
	db $A7, $67	;[CMD vibrato]
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
	db $C2		;[Wait] 3
	db $A7, $56	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3C		;[Note] 61
	db $A6, $05; tone-slide
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $3E		;[Note] 63
	db $C1		;[Wait..] 2
	db $A7, $67	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $3C		;[Note] 61
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $40		;[Note] 65
	db $C2		;[Wait] 3
	db $A7, $56	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $69		;[Volume] 9
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $67		;[Volume] 7
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $60		;[Note] 97
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $40		;[Note] 65
	db $6A		;[Volume] 10
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $43		;[Note] 68
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_30:
	db $37		;[Note] 56
	db $6D		;[Volume] 13
	db $7F		;[Instrument] 16
	db $95, $08	; track detune
	db $C0		;[Wait] 1
	db $39		;[Note] 58
	db $A6, $04; tone-slide
				;[Skip delay] 1
	db $37		;[Note] 56
	db $C1		;[Wait] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $37		;[Note] 56
	db $C1		;[Wait..] 2
	db $67		;[Volume] 7
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $39		;[Note] 58
	db $6A		;[Volume] 10
	db $C3		;[Wait] 4
	db $3C		;[Note] 61
	db $C1		;[Wait] 2
	db $67		;[Volume] 7
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $3B		;[Note] 60
	db $C8		;[Wait] 9
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $39		;[Note] 58
	db $A6, $05; tone-slide
				;[Skip delay] 1
	db $37		;[Note] 56
	db $C1		;[Wait] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $C3		;[Wait] 4
	db $39		;[Note] 58
	db $C1		;[Wait] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $C8		;[Wait] 9
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $2C		;[Note] 45
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $2F		;[Note] 48
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
@@track_31:
	db $15		;[Note] 22
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C0		;[Wait] 1
	db $15		;[Note] 22
				;[Skip delay] 1
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C3		;[Wait] 4
	db $13		;[Note] 20
				;[Skip delay] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $0E		;[Note] 15
	db $C3		;[Wait] 4
	db $13		;[Note] 20
				;[Skip delay] 4
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $11		;[Note] 18
				;[Skip delay] 1
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C2		;[Wait] 3
	db $13		;[Note] 20
				;[Skip delay] 3
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $15		;[Note] 22
				;[Skip delay] 4
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $10		;[Note] 17
				;[Skip delay] 1
	db $10		;[Note] 17
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $C0		;[Wait] 1
	db $13		;[Note] 20
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_32:
	db $24		;[Note] 37
	db $6C		;[Volume] 12
	db $78		;[Instrument] 9
	db $C7		;[Wait] 8
	db $21		;[Note] 34
				;[Skip delay] 8
	db $23		;[Note] 36
				;[Skip delay] 8
	db $26		;[Note] 39
				;[Skip delay] 8
	db $1E		;[Note] 31
	db $76		;[Instrument] 7
	db $C0		;[Wait] 1
	db $21		;[Note] 34
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $26		;[Note] 39
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $21		;[Note] 34
				;[Skip delay] 1
	db $21		;[Note] 34
				;[Skip delay] 1
	db $26		;[Note] 39
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $26		;[Note] 39
				;[Skip delay] 1
	db $26		;[Note] 39
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2A		;[Note] 43
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $20		;[Note] 33
				;[Skip delay] 1
	db $23		;[Note] 36
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $23		;[Note] 36
				;[Skip delay] 1
	db $20		;[Note] 33
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $2C		;[Note] 45
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $2C		;[Note] 45
				;[Skip delay] 1
	db $2F		;[Note] 48
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2C		;[Note] 45
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $2C		;[Note] 45
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2F		;[Note] 48
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $34		;[Note] 53
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_33:
	db $09		;[Note] 10
	db $6F		;[Volume] 15
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $09		;[Note] 10
	db $C0		;[Wait] 1
	db $09		;[Note] 10
				;[Skip delay] 1
	db $09		;[Note] 10
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $07		;[Note] 8
	db $C3		;[Wait] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $02		;[Note] 3
	db $C3		;[Wait] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $05		;[Note] 6
	db $C1		;[Wait] 2
	db $05		;[Note] 6
	db $C0		;[Wait] 1
	db $05		;[Note] 6
				;[Skip delay] 1
	db $05		;[Note] 6
	db $C1		;[Wait] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $07		;[Note] 8
	db $C2		;[Wait] 3
	db $07		;[Note] 8
				;[Skip delay] 3
	db $09		;[Note] 10
	db $C3		;[Wait] 4
	db $09		;[Note] 10
				;[Skip delay] 4
	db $09		;[Note] 10
	db $C1		;[Wait] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $04		;[Note] 5
	db $C0		;[Wait] 1
	db $04		;[Note] 5
				;[Skip delay] 1
	db $04		;[Note] 5
	db $C1		;[Wait] 2
	db $07		;[Note] 8
	db $C0		;[Wait] 1
	db $07		;[Note] 8
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_34:
	db $23		;[Note] 36
	db $6F		;[Volume] 15
	db $7A		;[Instrument] 11
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $C3		;[Wait] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $24		;[Note] 37
				;[Skip delay] 4
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $C3		;[Wait] 4
	db $36		;[Note] 55
	db $6C		;[Volume] 12
	db $7E		;[Instrument] 15
	db $C0		;[Wait] 1
	db $39		;[Note] 58
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $39		;[Note] 58
				;[Skip delay] 1
	db $39		;[Note] 58
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $3E		;[Note] 63
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $45		;[Note] 70
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $45		;[Note] 70
				;[Skip delay] 1
	db $4A		;[Note] 75
				;[Skip delay] 1
	db $45		;[Note] 70
				;[Skip delay] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $40		;[Note] 65
				;[Skip delay] 1
	db $3B		;[Note] 60
				;[Skip delay] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $40		;[Note] 65
				;[Skip delay] 1
	db $44		;[Note] 69
				;[Skip delay] 1
	db $40		;[Note] 65
				;[Skip delay] 1
	db $40		;[Note] 65
				;[Skip delay] 1
	db $44		;[Note] 69
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $47		;[Note] 72
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $44		;[Note] 69
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $44		;[Note] 69
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $47		;[Note] 72
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $4C		;[Note] 77
				;[Skip delay] 1
	db $47		;[Note] 72
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_35:
	db $21		;[Note] 34
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $A5, $10; slide-down
				;[Skip delay] 1
	db $68		;[Volume] 8
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $23		;[Note] 36
	db $6B		;[Volume] 11
	db $7D		;[Instrument] 14
				;[Skip delay] 1
	db $24		;[Note] 37
	db $A6, $07; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $23		;[Note] 36
	db $C2		;[Wait] 3
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $C2		;[Wait] 3
	db $28		;[Note] 41
	db $68		;[Volume] 8
	db $89		;[Instrument] 26
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $C2		;[Wait] 3
	db $32		;[Note] 51
				;[Skip delay] 3
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $36		;[Note] 55
	db $66		;[Volume] 6
	db $87		;[Instrument] 24
	db $C3		;[Wait] 4
	db $32		;[Note] 51
	db $C0		;[Wait] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $62		;[Volume] 2
	db $C2		;[Wait] 3
	db $60		;[Note] 97
				;[Skip delay] 3
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $C4		;[Wait] 5
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
	db $C7		;[Wait] 8
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
@@track_36:
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $37		;[Note] 56
	db $6D		;[Volume] 13
	db $83		;[Instrument] 20
	db $C0		;[Wait] 1
	db $39		;[Note] 58
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $37		;[Note] 56
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $30		;[Note] 49
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $C0		;[Wait] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $6B		;[Volume] 11
	db $C1		;[Wait] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $32		;[Note] 51
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6C		;[Volume] 12
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $30		;[Note] 49
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $32		;[Note] 51
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $C3		;[Wait] 4
	db $A7, $56	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $67		;[Volume] 7
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $66		;[Volume] 6
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $A5, $10; slide-down
				;[Skip delay] 1
	db $63		;[Volume] 3
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $34		;[Note] 53
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $34		;[Note] 53
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
@@track_37:
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $2F		;[Note] 48
	db $69		;[Volume] 9
	db $83		;[Instrument] 20
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $2F		;[Note] 48
	db $C7		;[Wait] 8
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $C2		;[Wait] 3
	db $28		;[Note] 41
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $28		;[Note] 41
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $C3		;[Wait] 4
	db $2A		;[Note] 43
				;[Skip delay] 4
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $C2		;[Wait] 3
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2C		;[Note] 45
	db $C9		;[Wait] 10
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $2C		;[Note] 45
	db $C1		;[Wait] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
@@track_38:
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $12		;[Note] 19
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6D		;[Volume] 13
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $5F		;[Note] 96
	db $6E		;[Volume] 14
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $12		;[Note] 19
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $73		;[Instrument] 4
				;[Skip delay] 2
	db $5F		;[Note] 96
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $5F		;[Note] 96
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_39:
	db $15		;[Note] 22
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C0		;[Wait] 1
	db $15		;[Note] 22
				;[Skip delay] 1
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C3		;[Wait] 4
	db $13		;[Note] 20
				;[Skip delay] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $0E		;[Note] 15
	db $C3		;[Wait] 4
	db $13		;[Note] 20
				;[Skip delay] 4
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $11		;[Note] 18
				;[Skip delay] 1
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C2		;[Wait] 3
	db $13		;[Note] 20
				;[Skip delay] 3
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
	db $C1		;[Wait..] 2
	db $6E		;[Volume] 14
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $60		;[Note] 97
	db $6D		;[Volume] 13
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $1D		;[Note] 30
	db $6D		;[Volume] 13
	db $75		;[Instrument] 6
				;[Skip delay] 1
	db $17		;[Note] 24
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
@@track_40:
	db $24		;[Note] 37
	db $6C		;[Volume] 12
	db $78		;[Instrument] 9
	db $C7		;[Wait] 8
	db $21		;[Note] 34
				;[Skip delay] 8
	db $23		;[Note] 36
				;[Skip delay] 8
	db $26		;[Note] 39
				;[Skip delay] 8
	db $24		;[Note] 37
	db $76		;[Instrument] 7
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $C0		;[Wait] 1
	db $24		;[Note] 37
				;[Skip delay] 1
	db $24		;[Note] 37
	db $C1		;[Wait] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $26		;[Note] 39
	db $C2		;[Wait] 3
	db $26		;[Note] 39
				;[Skip delay] 3
	db $28		;[Note] 41
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $C1		;[Wait] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
	db $C1		;[Wait..] 2
	db $6E		;[Volume] 14
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
@@track_41:
	db $09		;[Note] 10
	db $6F		;[Volume] 15
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $09		;[Note] 10
	db $C0		;[Wait] 1
	db $09		;[Note] 10
				;[Skip delay] 1
	db $09		;[Note] 10
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $04		;[Note] 5
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $07		;[Note] 8
	db $C3		;[Wait] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $02		;[Note] 3
	db $C3		;[Wait] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $05		;[Note] 6
	db $C1		;[Wait] 2
	db $05		;[Note] 6
	db $C0		;[Wait] 1
	db $05		;[Note] 6
				;[Skip delay] 1
	db $05		;[Note] 6
	db $C1		;[Wait] 2
	db $05		;[Note] 6
				;[Skip delay] 2
	db $07		;[Note] 8
	db $C2		;[Wait] 3
	db $07		;[Note] 8
				;[Skip delay] 3
	db $09		;[Note] 10
	db $C3		;[Wait] 4
	db $09		;[Note] 10
	db $C1		;[Wait] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
				;[Skip delay] 2
	db $09		;[Note] 10
	db $C1		;[Wait..] 2
	db $6D		;[Volume] 13
	db $A5, $10; slide-down
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
@@track_42:
	db $23		;[Note] 36
	db $6F		;[Volume] 15
	db $7A		;[Instrument] 11
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $C3		;[Wait] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $24		;[Note] 37
				;[Skip delay] 4
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $2B		;[Note] 44
	db $84		;[Instrument] 21
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C2		;[Wait] 3
	db $1C		;[Note] 29
				;[Skip delay] 3
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $10		;[Note] 17
	db $8A		;[Instrument] 27
	db $C1		;[Wait] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $10		;[Note] 17
	db $C0		;[Wait] 1
	db $A5, $10; slide-down
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $AF, $01; slide-down rep
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
@@track_43:
	db $09		;[Note] 10
	db $6A		;[Volume] 10
	db $7B		;[Instrument] 12
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $23		;[Note] 36
	db $6B		;[Volume] 11
	db $7D		;[Instrument] 14
				;[Skip delay] 1
	db $24		;[Note] 37
	db $A6, $07; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $23		;[Note] 36
	db $C2		;[Wait] 3
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $C2		;[Wait] 3
	db $28		;[Note] 41
	db $68		;[Volume] 8
	db $89		;[Instrument] 26
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $C2		;[Wait] 3
	db $32		;[Note] 51
				;[Skip delay] 3
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $69		;[Volume] 9
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $67		;[Volume] 7
	db $C0		;[Wait] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $30		;[Note] 49
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $62		;[Volume] 2
	db $C1		;[Wait] 2
	db $2F		;[Note] 48
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $68		;[Volume] 8
	db $C2		;[Wait] 3
	db $28		;[Note] 41
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $60		;[Note] 97
	db $CB		;[Wait] 12
	db $BF		;[End-Of-Track]
@@track_44:
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $37		;[Note] 56
	db $6D		;[Volume] 13
	db $83		;[Instrument] 20
	db $C0		;[Wait] 1
	db $39		;[Note] 58
	db $A6, $07; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $37		;[Note] 56
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3E		;[Note] 63
	db $C0		;[Wait] 1
	db $40		;[Note] 65
	db $A6, $07; tone-slide
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $C1		;[Wait] 2
	db $3C		;[Note] 61
	db $C1		;[Wait..] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $39		;[Note] 58
	db $C0		;[Wait..] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $39		;[Note] 58
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $39		;[Note] 58
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $3E		;[Note] 63
	db $C1		;[Wait..] 2
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $3C		;[Note] 61
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $39		;[Note] 58
	db $6B		;[Volume] 11
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $60		;[Note] 97
	db $CB		;[Wait] 12
	db $BF		;[End-Of-Track]
@@track_45:
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $2F		;[Note] 48
	db $69		;[Volume] 9
	db $83		;[Instrument] 20
	db $C0		;[Wait] 1
	db $30		;[Note] 49
	db $A6, $08; tone-slide
				;[Skip delay] 1
	db $B0, $01; tone-slide rep
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $2F		;[Note] 48
	db $C7		;[Wait] 8
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $3C		;[Note] 61
	db $A6, $06; tone-slide
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $39		;[Note] 58
	db $C2		;[Wait] 3
	db $34		;[Note] 53
				;[Skip delay] 3
	db $34		;[Note] 53
	db $C1		;[Wait] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $39		;[Note] 58
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $39		;[Note] 58
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $34		;[Note] 53
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $34		;[Note] 53
	db $6B		;[Volume] 11
	db $C2		;[Wait] 3
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $60		;[Note] 97
	db $CB		;[Wait] 12
	db $BF		;[End-Of-Track]
@@track_46:
	db $BF		;[End-Of-Track]
; [ Song sub-track data ]
