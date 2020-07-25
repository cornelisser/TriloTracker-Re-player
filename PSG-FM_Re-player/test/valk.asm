; Compiled using tt_compile.exe V0.5.0 [06-09-2019]
; Copyright 2016 Richard Cornelisse

; Song: Alisia Dragoon - Stage 1-1      
; By:   Fumihito Kasatani, arr.J.Hassink

;	org $c000

; [ Song start data ]
	db $08				; Initial song speed.
	dw .customvoice_start 		; Start of the custom voices data.
	dw .drummacro_start 		; Start of the drum macro data.
	dw .instrument_start 		; Start of the instrument data.

; [ Song order pointer list ]
		dw .track_0,.track_1,.track_2,.track_3,.track_4,.track_5,.track_6,.track_7		; Sequence step 0 /pattern 0
		dw .track_8,.track_9,.track_10,.track_11,.track_12,.track_13,.track_14,.track_15		; Sequence step 1 /pattern 1
		dw .track_16,.track_17,.track_18,.track_19,.track_20,.track_21,.track_22,.track_23		; Sequence step 2 /pattern 2
		dw .track_24,.track_17,.track_18,.track_25,.track_20,.track_26,.track_27,.track_28		; Sequence step 3 /pattern 3
		dw .track_29,.track_17,.track_18,.track_30,.track_31,.track_32,.track_33,.track_34		; Sequence step 4 /pattern 4
		dw .track_35,.track_36,.track_37,.track_38,.track_39,.track_40,.track_41,.track_42		; Sequence step 5 /pattern 5
		dw .track_43,.track_44,.track_45,.track_46,.track_47,.track_48,.track_49,.track_50		; Sequence step 6 /pattern 6
		dw .track_51,.track_52,.track_53,.track_54,.track_55,.track_56,.track_57,.track_58		; Sequence step 7 /pattern 7
		dw .track_43,.track_44,.track_59,.track_60,.track_61,.track_62,.track_63,.track_50		; Sequence step 8 /pattern 8
		dw .track_64,.track_65,.track_66,.track_67,.track_68,.track_69,.track_70,.track_71		; Sequence step 9 /pattern 9
		dw .track_72,.track_9,.track_73,.track_74,.track_75,.track_76,.track_77,.track_78		; Sequence step 10 /pattern 10
		dw .track_79,.track_80,.track_81,.track_82,.track_83,.track_84,.track_85,.track_86		; Sequence step 11 /pattern 11
		dw .track_87,.track_88,.track_89,.track_90,.track_91,.track_92,.track_93,.track_94		; Sequence step 12 /pattern 12
		dw .track_95,.track_96,.track_97,.track_98,.track_99,.track_100,.track_101,.track_102		; Sequence step 13 /pattern 13
		dw .track_103,.track_104,.track_105,.track_106,.track_107,.track_108,.track_109,.track_110		; Sequence step 14 /pattern 14
		dw .track_111,.track_112,.track_113,.track_114,.track_115,.track_116,.track_117,.track_118		; Sequence step 15 /pattern 15
		dw .track_119,.track_9,.track_120,.track_121,.track_122,.track_123,.track_124,.track_125		; Sequence step 16 /pattern 16
		dw .track_8,.track_9,.track_10,.track_11,.track_12,.track_13,.track_14,.track_15		; Sequence step 17 /pattern 1
		dw .track_16,.track_17,.track_18,.track_19,.track_20,.track_21,.track_22,.track_23		; Sequence step 18 /pattern 2
		dw .track_24,.track_17,.track_18,.track_25,.track_20,.track_26,.track_27,.track_28		; Sequence step 19 /pattern 3
		dw .track_29,.track_17,.track_18,.track_30,.track_31,.track_32,.track_33,.track_34		; Sequence step 20 /pattern 4
		dw .track_35,.track_36,.track_37,.track_38,.track_39,.track_40,.track_41,.track_42		; Sequence step 21 /pattern 5
		dw .track_43,.track_44,.track_45,.track_46,.track_47,.track_48,.track_49,.track_50		; Sequence step 22 /pattern 6
		dw .track_51,.track_52,.track_53,.track_54,.track_55,.track_56,.track_57,.track_58		; Sequence step 23 /pattern 7
		dw .track_43,.track_44,.track_59,.track_60,.track_61,.track_62,.track_63,.track_50		; Sequence step 24 /pattern 8
		dw .track_64,.track_65,.track_66,.track_67,.track_68,.track_69,.track_70,.track_71		; Sequence step 25 /pattern 9
		dw .track_126,.track_126,.track_126,.track_127,.track_126,.track_126,.track_126,.track_126		; Sequence step 26 /pattern 17
		dw .track_128,.track_128,.track_128,.track_128,.track_128,.track_128,.track_128,.track_128		; Sequence step 27 /pattern 18
		dw .track_129,.track_129,.track_129,.track_129,.track_129,.track_129,.track_129,.track_129		; Sequence step 28 /pattern 19
		dw .track_129,.track_129,.track_129,.track_129,.track_129,.track_129,.track_129,.track_129		; Sequence step 29 /pattern 20
		dw .track_129,.track_129,.track_129,.track_129,.track_129,.track_129,.track_129,.track_129		; Sequence step 30 /pattern 21
		dw .track_129,.track_129,.track_129,.track_129,.track_129,.track_129,.track_129,.track_129		; Sequence step 31 /pattern 22
		dw .track_129,.track_129,.track_129,.track_129,.track_129,.track_129,.track_129,.track_129		; Sequence step 32 /pattern 23
		dw .track_126,.track_126,.track_126,.track_127,.track_126,.track_126,.track_126,.track_126		; Sequence step 33 /pattern 17
.restart:
		dw .track_128,.track_128,.track_128,.track_128,.track_128,.track_128,.track_128,.track_128		; Sequence step 34 /pattern 18
		dw 0x0000, .restart			; End of sequence delimiter + restart address.

.customvoice_start:
	db $20,$71,$0D,$06,$C1,$D5,$56,$06	; Custom voice 0(was 44)
	db $60,$20,$11,$85,$F3,$F3,$24,$35	; Custom voice 1(was 102)

.drummacro_start:
	dw .drm_1
	dw .drm_2
	dw .drm_3
	dw .drm_4

.drm_1:						;  (was 1)
	;  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC
	db $E1,$10,$22,$0F                		; 11100001
.drm_2:						;  (was 2)
	;  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC
	db $F8,$18,$29,$0D,$13,$0B        		; 11111000
	db $50    ,$28    ,$12            		; 01010000
	db $50    ,$27    ,$11            		; 01010000
	db $50    ,$26    ,$10            		; 01010000
	db $50    ,$25    ,$0E            		; 01010000
	db $50    ,$24    ,$0D            		; 01010000
	db $50    ,$23    ,$0C            		; 01010000
	db $51    ,$22    ,$0B            		; 01010001
.drm_3:						;  (was 4)
	;  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC
	db $99,$01        ,$37,$D0        		; 10011001
.drm_4:						;  (was 5)
	;  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC
	db $86,$02                ,$15,$0A		; 10000110
	db $02                        ,$0B		; 00000010
	db $02                        ,$0C		; 00000010
	db $03                        ,$0D		; 00000011

.instrument_start:
	dw .ins_1
	dw .ins_2
	dw .ins_3
	dw .ins_4
	dw .ins_5
	dw .ins_6
	dw .ins_7
	dw .ins_8
	dw .ins_9
	dw .ins_10
	dw .ins_11
	dw .ins_12
	dw .ins_13
	dw .ins_14
	dw .ins_15
	dw .ins_16
.ins_1:				;                 
		db 5					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i1:
		db $19,$0F                		; 00011001
		dw .rst_i1

.ins_2:				;                 
		db 4					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i2:
		db $19,$0F                		; 00011001
		dw .rst_i2

.ins_3:				;                 
		db 17					; Custom voice (was 102)
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i3:
		db $19,$0F                		; 00011001
		dw .rst_i3

.ins_4:				;                 
		db 14					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
		db $11,$0F                		; 00010001
		db $11,$0B                		; 00010001
		db $11,$0C                		; 00010001
		db $11,$0B                		; 00010001
		db $11,$0A                		; 00010001
		db $11,$0B                		; 00010001
		db $11,$0C                		; 00010001
		db $11,$0D                		; 00010001
.rst_i4:
		db $15,$0D        ,$01,$00		; 00010101
		db $15,$0D        ,$01,$00		; 00010101
		db $15,$0D        ,$FF,$FF		; 00010101
		db $15,$0D        ,$FF,$FF		; 00010101
		db $15,$0D        ,$FF,$FF		; 00010101
		db $15,$0D        ,$FF,$FF		; 00010101
		db $15,$0D        ,$01,$00		; 00010101
		db $1D,$0D        ,$01,$00		; 00011101
		dw .rst_i4

.ins_5:				;                 
		db 5					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i5:
		db $19,$0D                		; 00011001
		dw .rst_i5

.ins_6:				;                 
		db 16					; Custom voice (was 44)
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i6:
		db $19,$0F                		; 00011001
		dw .rst_i6

.ins_7:				;                 
.ins_8:				;                 
.ins_9:				;                 
.ins_10:				;                 
.ins_11:				;                 
.ins_12:				;                 
.ins_13:				;                 
.ins_14:				;                 
.ins_15:				;                 
.ins_16:				;                 
		db 0					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
		db $11,$09                		; 00010001
		db $11,$07                		; 00010001
		db $11,$08                		; 00010001
		db $11,$07                		; 00010001
		db $11,$07                		; 00010001
		db $11,$07                		; 00010001
		db $11,$06                		; 00010001
		db $11,$06                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
.rst_i16:
		db $1B,$FF                		; 00011011
		dw .rst_i16


; [ Song track data ]
.track_0:
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $C1		;[Wait] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $2F		;[Note] 48
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_1:
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $95, $01		; track detune
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $24		;[Note] 37
	db $95, $01		; track detune
				;[Skip delay] 2
	db $29		;[Note] 42
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
	db $95, $01		; track detune
				;[Skip delay] 2
	db $26		;[Note] 39
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $28		;[Note] 41
	db $95, $01		; track detune
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_2:
	db $60		;[Note] 97
	db $69		;[Volume] 9
	db $7F		;[Instrument] 16
	db $95, $01		; track detune
	db $C2		;[Wait] 3
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $C1		;[Wait] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $2F		;[Note] 48
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_3:
	db $60		;[Note] 97
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
	db $EA		;[Wait] 43
	db $18		;[Note] 25
	db $6B		;[Volume] 11
	db $70		;[Instrument] 1
	db $A1, $03		; note delay
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
	db $99		;Note link
	db $C0		;[Wait] 1
	db $21		;[Note] 34
	db $99		;Note link
				;[Skip delay] 1
	db $24		;[Note] 37
	db $99		;Note link
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_4:
	db $60		;[Note] 97
	db $6F		;[Volume] 15
	db $72		;[Instrument] 3
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $95, $03		; track detune
	db $C0		;[Wait] 1
	db $A4, $0B		; slide-up
				;[Skip delay] 1
	db $AE, $0A		; slide-up rep
	db $C9		;[Wait] 10
	db $A7, $31		;[CMD vibrato] depth:7 speed:5
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $71		;[CMD vibrato] depth:7 speed:9
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $1D		;[Note] 30
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $A4, $09		; slide-up
				;[Skip delay] 1
	db $AE, $0E		; slide-up rep
	db $CD		;[Wait] 14
	db $A7, $71		;[CMD vibrato] depth:7 speed:9
	db $C0		;[Wait] 1
	db $B1, $05		;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_5:
	db $11		;[Note] 18
	db $6F		;[Volume] 15
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $A4, $0B		; slide-up
				;[Skip delay] 1
	db $AE, $0A		; slide-up rep
	db $C9		;[Wait] 10
	db $A7, $31		;[CMD vibrato] depth:7 speed:5
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $71		;[CMD vibrato] depth:7 speed:9
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $1D		;[Note] 30
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $A4, $09		; slide-up
				;[Skip delay] 1
	db $AE, $0E		; slide-up rep
	db $CD		;[Wait] 14
	db $A7, $71		;[CMD vibrato] depth:7 speed:9
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_6:
	db $60		;[Note] 97
	db $6B		;[Volume] 11
	db $70		;[Instrument] 1
	db $95, $01		; track detune
	db $EC		;[Wait] 45
	db $95, $01		; track detune
	db $C0		;[Wait] 1
	db $18		;[Note] 25
	db $69		;[Volume] 9
	db $A1, $03		; note delay
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_7:
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $73		;[Instrument] 4
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $D1		;[CMD vibrato] depth:3 speed:7
	db $C0		;[Wait] 1
	db $B1, $1F		;[CMD vibrato] rep
	db $DE		;[Wait] 31
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $A4, $09		; slide-up
	db $C0		;[Wait] 1
	db $AE, $01		; slide-up rep
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_8:
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $2F		;[Note] 48
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_9:
	db $24		;[Note] 37
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $95, $01		; track detune
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $24		;[Note] 37
	db $95, $01		; track detune
				;[Skip delay] 2
	db $29		;[Note] 42
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
	db $95, $01		; track detune
				;[Skip delay] 2
	db $26		;[Note] 39
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $28		;[Note] 41
	db $95, $01		; track detune
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_10:
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $2F		;[Note] 48
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_11:
	db $34		;[Note] 53
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $34		;[Note] 53
	db $6B		;[Volume] 11
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6A		;[Volume] 10
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $35		;[Note] 54
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
	db $99		;Note link
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6E		;[Volume] 14
	db $99		;Note link
				;[Skip delay] 1
	db $34		;[Note] 53
	db $6D		;[Volume] 13
	db $99		;Note link
	db $C3		;[Wait] 4
	db $6C		;[Volume] 12
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6A		;[Volume] 10
	db $C3		;[Wait] 4
	db $6B		;[Volume] 11
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $6C		;[Volume] 12
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_12:
	db $58		;[Note] 89
	db $6F		;[Volume] 15
	db $72		;[Instrument] 3
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
				;[Skip delay] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $4C		;[Note] 77
	db $9E, $0C		; short arp
	db $C0		;[Wait] 1
	db $9E, $00		; short arp
				;[Skip delay] 1
	db $58		;[Note] 89
	db $C1		;[Wait] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
				;[Skip delay] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $4C		;[Note] 77
	db $9E, $0C		; short arp
	db $C0		;[Wait] 1
	db $9E, $00		; short arp
				;[Skip delay] 1
	db $58		;[Note] 89
	db $C1		;[Wait] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
				;[Skip delay] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $4C		;[Note] 77
	db $9E, $0C		; short arp
	db $C0		;[Wait] 1
	db $9E, $00		; short arp
				;[Skip delay] 1
	db $58		;[Note] 89
	db $C1		;[Wait] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
				;[Skip delay] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $4C		;[Note] 77
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_13:
	db $60		;[Note] 97
	db $C2		;[Wait] 3
	db $58		;[Note] 89
	db $6B		;[Volume] 11
	db $72		;[Instrument] 3
	db $95, $01		; track detune
	db $C1		;[Wait] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
				;[Skip delay] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $4C		;[Note] 77
	db $9E, $0C		; short arp
	db $C0		;[Wait] 1
	db $9E, $00		; short arp
				;[Skip delay] 1
	db $58		;[Note] 89
	db $C1		;[Wait] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
				;[Skip delay] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $4C		;[Note] 77
	db $9E, $0C		; short arp
	db $C0		;[Wait] 1
	db $9E, $00		; short arp
				;[Skip delay] 1
	db $58		;[Note] 89
	db $C1		;[Wait] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
				;[Skip delay] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $4C		;[Note] 77
	db $9E, $0C		; short arp
	db $C0		;[Wait] 1
	db $9E, $00		; short arp
				;[Skip delay] 1
	db $58		;[Note] 89
	db $C1		;[Wait] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
				;[Skip delay] 2
	db $51		;[Note] 82
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_14:
	db $1C		;[Note] 29
	db $69		;[Volume] 9
	db $70		;[Instrument] 1
	db $99		;Note link
	db $C0		;[Wait] 1
	db $21		;[Note] 34
	db $99		;Note link
				;[Skip delay] 1
	db $24		;[Note] 37
	db $99		;Note link
				;[Skip delay] 1
	db $34		;[Note] 53
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $34		;[Note] 53
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $37		;[Note] 56
	db $99		;Note link
				;[Skip delay] 1
	db $35		;[Note] 54
	db $99		;Note link
				;[Skip delay] 1
	db $34		;[Note] 53
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_15:
	db $2D		;[Note] 46
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $D1		;[CMD vibrato] depth:3 speed:7
	db $C0		;[Wait] 1
	db $B1, $13		;[CMD vibrato] rep
	db $D2		;[Wait] 19
	db $2F		;[Note] 48
	db $C1		;[Wait] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_16:
	db $2D		;[Note] 46
	db $91, $03		;[FM drum] 4
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $30		;[Note] 49
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $24		;[Note] 37
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $32		;[Note] 51
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $37		;[Note] 56
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $37		;[Note] 56
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $34		;[Note] 53
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_17:
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $95, $01		; track detune
				;[Skip delay] 2
	db $37		;[Note] 56
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $30		;[Note] 49
	db $95, $01		; track detune
				;[Skip delay] 2
	db $35		;[Note] 54
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $32		;[Note] 51
	db $95, $01		; track detune
				;[Skip delay] 2
	db $32		;[Note] 51
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $34		;[Note] 53
	db $95, $01		; track detune
				;[Skip delay] 2
	db $37		;[Note] 56
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_18:
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $28		;[Note] 41
	db $C3		;[Wait] 4
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $24		;[Note] 37
	db $C3		;[Wait] 4
	db $39		;[Note] 58
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $26		;[Note] 39
	db $C3		;[Wait] 4
	db $37		;[Note] 56
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $28		;[Note] 41
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_19:
	db $40		;[Note] 65
	db $6D		;[Volume] 13
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $47		;[Note] 72
	db $C0		;[Wait] 1
	db $48		;[Note] 73
	db $99		;Note link
				;[Skip delay] 1
	db $47		;[Note] 72
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $43		;[Note] 68
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $41		;[Note] 66
				;[Skip delay] 4
	db $40		;[Note] 65
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $40		;[Note] 65
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_20:
	db $39		;[Note] 58
	db $C1		;[Wait] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_21:
	db $C0		;[Wait] 1
	db $4C		;[Note] 77
	db $9E, $0C		; short arp
				;[Skip delay] 1
	db $9E, $00		; short arp
				;[Skip delay] 1
	db $40		;[Note] 65
	db $6B		;[Volume] 11
	db $71		;[Instrument] 2
	db $95, $01		; track detune
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $47		;[Note] 72
	db $C0		;[Wait] 1
	db $48		;[Note] 73
	db $99		;Note link
				;[Skip delay] 1
	db $47		;[Note] 72
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $43		;[Note] 68
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $41		;[Note] 66
				;[Skip delay] 4
	db $40		;[Note] 65
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $40		;[Note] 65
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_22:
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $40		;[Note] 65
	db $69		;[Volume] 9
	db $71		;[Instrument] 2
	db $95, $01		; track detune
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $47		;[Note] 72
	db $C0		;[Wait] 1
	db $48		;[Note] 73
	db $99		;Note link
				;[Skip delay] 1
	db $47		;[Note] 72
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $43		;[Note] 68
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $41		;[Note] 66
				;[Skip delay] 4
	db $40		;[Note] 65
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_23:
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_24:
	db $2D		;[Note] 46
	db $91, $03		;[FM drum] 4
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $30		;[Note] 49
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $24		;[Note] 37
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $32		;[Note] 51
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $37		;[Note] 56
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $37		;[Note] 56
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $34		;[Note] 53
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_25:
	db $40		;[Note] 65
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $4A		;[Note] 75
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4C		;[Note] 77
	db $C1		;[Wait] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $47		;[Note] 72
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $43		;[Note] 68
				;[Skip delay] 4
	db $45		;[Note] 70
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_26:
	db $C2		;[Wait] 3
	db $40		;[Note] 65
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $4A		;[Note] 75
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4C		;[Note] 77
	db $C1		;[Wait] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $47		;[Note] 72
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $43		;[Note] 68
				;[Skip delay] 4
	db $45		;[Note] 70
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $45		;[Note] 70
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_27:
	db $40		;[Note] 65
	db $C3		;[Wait] 4
	db $40		;[Note] 65
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $4A		;[Note] 75
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4C		;[Note] 77
	db $C1		;[Wait] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $47		;[Note] 72
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $43		;[Note] 68
				;[Skip delay] 4
	db $45		;[Note] 70
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_28:
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $60		;[Note] 97
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $21		;[Note] 34
	db $C0		;[Wait] 1
	db $A5, $0F		; slide-down
				;[Skip delay] 1
	db $AF, $02		; slide-down rep
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_29:
	db $2D		;[Note] 46
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $30		;[Note] 49
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $24		;[Note] 37
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $32		;[Note] 51
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $37		;[Note] 56
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $37		;[Note] 56
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $34		;[Note] 53
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_30:
	db $4C		;[Note] 77
	db $6C		;[Volume] 12
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $4D		;[Note] 78
				;[Skip delay] 2
	db $4F		;[Note] 80
				;[Skip delay] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
				;[Skip delay] 2
	db $53		;[Note] 84
	db $C0		;[Wait] 1
	db $54		;[Note] 85
	db $99		;Note link
				;[Skip delay] 1
	db $53		;[Note] 84
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $51		;[Note] 82
	db $C3		;[Wait] 4
	db $4F		;[Note] 80
				;[Skip delay] 4
	db $4A		;[Note] 75
				;[Skip delay] 4
	db $4D		;[Note] 78
				;[Skip delay] 4
	db $4C		;[Note] 77
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $4C		;[Note] 77
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_31:
	db $34		;[Note] 53
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
				;[Skip delay] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $30		;[Note] 49
	db $C3		;[Wait] 4
	db $39		;[Note] 58
				;[Skip delay] 4
	db $35		;[Note] 54
				;[Skip delay] 4
	db $39		;[Note] 58
				;[Skip delay] 4
	db $37		;[Note] 56
				;[Skip delay] 4
	db $32		;[Note] 51
				;[Skip delay] 4
	db $35		;[Note] 54
				;[Skip delay] 4
	db $34		;[Note] 53
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
				;[Skip delay] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $34		;[Note] 53
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_32:
	db $3C		;[Note] 61
	db $6C		;[Volume] 12
	db $71		;[Instrument] 2
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $43		;[Note] 68
	db $99		;Note link
	db $C0		;[Wait] 1
	db $45		;[Note] 70
	db $99		;Note link
				;[Skip delay] 1
	db $43		;[Note] 68
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $3B		;[Note] 60
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $3C		;[Note] 61
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3C		;[Note] 61
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_33:
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $4C		;[Note] 77
	db $6A		;[Volume] 10
	db $71		;[Instrument] 2
	db $95, $01		; track detune
	db $C1		;[Wait] 2
	db $4D		;[Note] 78
				;[Skip delay] 2
	db $4F		;[Note] 80
				;[Skip delay] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
				;[Skip delay] 2
	db $53		;[Note] 84
	db $C0		;[Wait] 1
	db $54		;[Note] 85
	db $99		;Note link
				;[Skip delay] 1
	db $53		;[Note] 84
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $51		;[Note] 82
	db $C3		;[Wait] 4
	db $4F		;[Note] 80
				;[Skip delay] 4
	db $4A		;[Note] 75
				;[Skip delay] 4
	db $4D		;[Note] 78
				;[Skip delay] 4
	db $4C		;[Note] 77
	db $C3		;[Wait..] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $4C		;[Note] 77
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_34:
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $11		;[Note] 18
				;[Skip delay] 4
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $13		;[Note] 20
				;[Skip delay] 4
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $15		;[Note] 22
				;[Skip delay] 4
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_35:
	db $2D		;[Note] 46
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $30		;[Note] 49
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $24		;[Note] 37
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $32		;[Note] 51
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $37		;[Note] 56
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $37		;[Note] 56
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $31		;[Note] 50
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_36:
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $34		;[Note] 53
	db $95, $01		; track detune
				;[Skip delay] 2
	db $37		;[Note] 56
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $30		;[Note] 49
	db $95, $01		; track detune
				;[Skip delay] 2
	db $35		;[Note] 54
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $32		;[Note] 51
	db $95, $01		; track detune
				;[Skip delay] 2
	db $32		;[Note] 51
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $31		;[Note] 50
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $95, $01		; track detune
				;[Skip delay] 2
	db $34		;[Note] 53
	db $95, $00		; track detune
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_37:
	db $C0		;[Wait] 1
	db $39		;[Note] 58
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $28		;[Note] 41
	db $C3		;[Wait] 4
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $24		;[Note] 37
	db $C3		;[Wait] 4
	db $39		;[Note] 58
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $37		;[Note] 56
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $31		;[Note] 50
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $40		;[Note] 65
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_38:
	db $4C		;[Note] 77
	db $C1		;[Wait] 2
	db $4D		;[Note] 78
				;[Skip delay] 2
	db $4F		;[Note] 80
				;[Skip delay] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
				;[Skip delay] 2
	db $58		;[Note] 89
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $56		;[Note] 87
	db $C1		;[Wait] 2
	db $54		;[Note] 85
	db $C0		;[Wait] 1
	db $56		;[Note] 87
	db $99		;Note link
				;[Skip delay] 1
	db $54		;[Note] 85
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $53		;[Note] 84
	db $C3		;[Wait] 4
	db $51		;[Note] 82
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $48		;[Note] 73
	db $6F		;[Volume] 15
	db $72		;[Instrument] 3
	db $C1		;[Wait] 2
	db $4A		;[Note] 75
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_39:
	db $34		;[Note] 53
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
				;[Skip delay] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $30		;[Note] 49
	db $C3		;[Wait] 4
	db $39		;[Note] 58
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $3C		;[Note] 61
	db $C3		;[Wait] 4
	db $3B		;[Note] 60
				;[Skip delay] 4
	db $32		;[Note] 51
				;[Skip delay] 4
	db $37		;[Note] 56
				;[Skip delay] 4
	db $39		;[Note] 58
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $A7, $D1		;[CMD vibrato] depth:3 speed:7
				;[Skip delay] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_40:
	db $3C		;[Note] 61
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $47		;[Note] 72
	db $C3		;[Wait] 4
	db $45		;[Note] 70
	db $C0		;[Wait] 1
	db $47		;[Note] 72
	db $99		;Note link
				;[Skip delay] 1
	db $45		;[Note] 70
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $40		;[Note] 65
	db $C3		;[Wait] 4
	db $40		;[Note] 65
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $54		;[Note] 85
	db $6F		;[Volume] 15
	db $72		;[Instrument] 3
	db $C1		;[Wait] 2
	db $56		;[Note] 87
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_41:
	db $C2		;[Wait] 3
	db $4C		;[Note] 77
	db $C1		;[Wait] 2
	db $4D		;[Note] 78
				;[Skip delay] 2
	db $4F		;[Note] 80
				;[Skip delay] 2
	db $51		;[Note] 82
				;[Skip delay] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
				;[Skip delay] 2
	db $58		;[Note] 89
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $56		;[Note] 87
	db $C1		;[Wait] 2
	db $54		;[Note] 85
	db $C0		;[Wait] 1
	db $56		;[Note] 87
	db $99		;Note link
				;[Skip delay] 1
	db $54		;[Note] 85
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $53		;[Note] 84
	db $C3		;[Wait] 4
	db $51		;[Note] 82
	db $C3		;[Wait..] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $48		;[Note] 73
	db $6B		;[Volume] 11
	db $72		;[Instrument] 3
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_42:
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $11		;[Note] 18
				;[Skip delay] 4
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $13		;[Note] 20
				;[Skip delay] 4
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $15		;[Note] 22
				;[Skip delay] 4
	db $19		;[Note] 26
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $10		;[Note] 17
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_43:
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_44:
	db $28		;[Note] 41
	db $C1		;[Wait] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_45:
	db $C0		;[Wait] 1
	db $39		;[Note] 58
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_46:
	db $4C		;[Note] 77
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4D		;[Note] 78
	db $C1		;[Wait] 2
	db $4F		;[Note] 80
	db $C3		;[Wait] 4
	db $4A		;[Note] 75
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
				;[Skip delay] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $48		;[Note] 73
	db $C1		;[Wait] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4A		;[Note] 75
	db $C1		;[Wait] 2
	db $4C		;[Note] 77
	db $C3		;[Wait] 4
	db $4C		;[Note] 77
				;[Skip delay] 4
	db $47		;[Note] 72
				;[Skip delay] 4
	db $45		;[Note] 70
	db $C0		;[Wait] 1
	db $47		;[Note] 72
	db $99		;Note link
				;[Skip delay] 1
	db $45		;[Note] 70
	db $99		;Note link
				;[Skip delay] 1
	db $43		;[Note] 68
	db $99		;Note link
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_47:
	db $3C		;[Note] 61
	db $6E		;[Volume] 14
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $C1		;[Wait] 2
	db $40		;[Note] 65
	db $C3		;[Wait] 4
	db $3B		;[Note] 60
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
				;[Skip delay] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $39		;[Note] 58
	db $C1		;[Wait] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $39		;[Note] 58
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $3C		;[Note] 61
	db $C3		;[Wait] 4
	db $3B		;[Note] 60
				;[Skip delay] 4
	db $37		;[Note] 56
				;[Skip delay] 4
	db $37		;[Note] 56
	db $C0		;[Wait] 1
	db $39		;[Note] 58
	db $99		;Note link
				;[Skip delay] 1
	db $37		;[Note] 56
	db $99		;Note link
				;[Skip delay] 1
	db $34		;[Note] 53
	db $99		;Note link
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_48:
	db $58		;[Note] 89
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $59		;[Note] 90
	db $C1		;[Wait] 2
	db $5B		;[Note] 92
	db $C3		;[Wait] 4
	db $56		;[Note] 87
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
				;[Skip delay] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $54		;[Note] 85
	db $C1		;[Wait] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $56		;[Note] 87
	db $C1		;[Wait] 2
	db $58		;[Note] 89
	db $C3		;[Wait] 4
	db $58		;[Note] 89
				;[Skip delay] 4
	db $53		;[Note] 84
				;[Skip delay] 4
	db $51		;[Note] 82
	db $C0		;[Wait] 1
	db $53		;[Note] 84
	db $99		;Note link
				;[Skip delay] 1
	db $51		;[Note] 82
	db $99		;Note link
				;[Skip delay] 1
	db $4F		;[Note] 80
	db $99		;Note link
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_49:
	db $C0		;[Wait] 1
	db $4A		;[Note] 75
	db $C1		;[Wait] 2
	db $4C		;[Note] 77
	db $C5		;[Wait] 6
	db $4D		;[Note] 78
	db $C1		;[Wait] 2
	db $4F		;[Note] 80
	db $C3		;[Wait] 4
	db $4A		;[Note] 75
	db $C3		;[Wait..] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $48		;[Note] 73
	db $C1		;[Wait] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4A		;[Note] 75
	db $C1		;[Wait] 2
	db $4C		;[Note] 77
	db $C3		;[Wait] 4
	db $4C		;[Note] 77
				;[Skip delay] 4
	db $47		;[Note] 72
				;[Skip delay] 4
	db $45		;[Note] 70
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_50:
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $18		;[Note] 25
	db $C1		;[Wait] 2
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $C3		;[Wait] 4
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_51:
	db $2D		;[Note] 46
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_52:
	db $24		;[Note] 37
	db $C1		;[Wait] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_53:
	db $C0		;[Wait] 1
	db $28		;[Note] 41
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_54:
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $47		;[Note] 72
	db $C1		;[Wait] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $4A		;[Note] 75
				;[Skip delay] 4
	db $48		;[Note] 73
				;[Skip delay] 4
	db $4A		;[Note] 75
				;[Skip delay] 4
	db $4C		;[Note] 77
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $D1		;[CMD vibrato] depth:3 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $48		;[Note] 73
	db $C1		;[Wait] 2
	db $4A		;[Note] 75
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_55:
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $37		;[Note] 56
	db $C1		;[Wait] 2
	db $39		;[Note] 58
	db $C3		;[Wait] 4
	db $3B		;[Note] 60
				;[Skip delay] 4
	db $39		;[Note] 58
				;[Skip delay] 4
	db $3B		;[Note] 60
				;[Skip delay] 4
	db $3C		;[Note] 61
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $37		;[Note] 56
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $37		;[Note] 56
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_56:
	db $51		;[Note] 82
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $53		;[Note] 84
	db $C1		;[Wait] 2
	db $54		;[Note] 85
	db $C3		;[Wait] 4
	db $56		;[Note] 87
				;[Skip delay] 4
	db $54		;[Note] 85
				;[Skip delay] 4
	db $56		;[Note] 87
				;[Skip delay] 4
	db $58		;[Note] 89
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $D1		;[CMD vibrato] depth:3 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $54		;[Note] 85
	db $C1		;[Wait] 2
	db $56		;[Note] 87
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_57:
	db $47		;[Note] 72
	db $99		;Note link
	db $C0		;[Wait] 1
	db $45		;[Note] 70
	db $99		;Note link
				;[Skip delay] 1
	db $43		;[Note] 68
	db $99		;Note link
				;[Skip delay] 1
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $47		;[Note] 72
	db $C1		;[Wait] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $4A		;[Note] 75
				;[Skip delay] 4
	db $48		;[Note] 73
				;[Skip delay] 4
	db $4A		;[Note] 75
				;[Skip delay] 4
	db $4C		;[Note] 77
	db $C3		;[Wait..] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $48		;[Note] 73
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_58:
	db $11		;[Note] 18
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $15		;[Note] 22
				;[Skip delay] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $18		;[Note] 25
	db $C5		;[Wait] 6
	db $1A		;[Note] 27
	db $C1		;[Wait] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $15		;[Note] 22
				;[Skip delay] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_59:
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_60:
	db $4C		;[Note] 77
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4D		;[Note] 78
	db $C1		;[Wait] 2
	db $4F		;[Note] 80
	db $C3		;[Wait] 4
	db $4A		;[Note] 75
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $48		;[Note] 73
	db $C1		;[Wait] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4A		;[Note] 75
	db $C1		;[Wait] 2
	db $4C		;[Note] 77
	db $C3		;[Wait] 4
	db $4C		;[Note] 77
				;[Skip delay] 4
	db $47		;[Note] 72
				;[Skip delay] 4
	db $45		;[Note] 70
	db $C0		;[Wait] 1
	db $47		;[Note] 72
	db $99		;Note link
				;[Skip delay] 1
	db $45		;[Note] 70
	db $99		;Note link
				;[Skip delay] 1
	db $43		;[Note] 68
	db $99		;Note link
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_61:
	db $3C		;[Note] 61
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $C1		;[Wait] 2
	db $40		;[Note] 65
	db $C3		;[Wait] 4
	db $3B		;[Note] 60
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $39		;[Note] 58
	db $C1		;[Wait] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $39		;[Note] 58
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C1		;[Wait] 2
	db $3C		;[Note] 61
	db $C3		;[Wait] 4
	db $3B		;[Note] 60
				;[Skip delay] 4
	db $37		;[Note] 56
				;[Skip delay] 4
	db $37		;[Note] 56
	db $C0		;[Wait] 1
	db $39		;[Note] 58
	db $99		;Note link
				;[Skip delay] 1
	db $37		;[Note] 56
	db $99		;Note link
				;[Skip delay] 1
	db $34		;[Note] 53
	db $99		;Note link
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_62:
	db $58		;[Note] 89
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $59		;[Note] 90
	db $C1		;[Wait] 2
	db $5B		;[Note] 92
	db $C3		;[Wait] 4
	db $56		;[Note] 87
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $54		;[Note] 85
	db $C1		;[Wait] 2
	db $53		;[Note] 84
				;[Skip delay] 2
	db $54		;[Note] 85
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $56		;[Note] 87
	db $C1		;[Wait] 2
	db $58		;[Note] 89
	db $C3		;[Wait] 4
	db $58		;[Note] 89
				;[Skip delay] 4
	db $53		;[Note] 84
				;[Skip delay] 4
	db $51		;[Note] 82
	db $C0		;[Wait] 1
	db $53		;[Note] 84
	db $99		;Note link
				;[Skip delay] 1
	db $51		;[Note] 82
	db $99		;Note link
				;[Skip delay] 1
	db $4F		;[Note] 80
	db $99		;Note link
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_63:
	db $C0		;[Wait] 1
	db $4A		;[Note] 75
	db $C1		;[Wait] 2
	db $4C		;[Note] 77
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4D		;[Note] 78
	db $C1		;[Wait] 2
	db $4F		;[Note] 80
	db $C3		;[Wait] 4
	db $4A		;[Note] 75
	db $C3		;[Wait..] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $48		;[Note] 73
	db $C1		;[Wait] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4A		;[Note] 75
	db $C1		;[Wait] 2
	db $4C		;[Note] 77
	db $C3		;[Wait] 4
	db $4C		;[Note] 77
				;[Skip delay] 4
	db $47		;[Note] 72
				;[Skip delay] 4
	db $45		;[Note] 70
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_64:
	db $24		;[Note] 37
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $30		;[Note] 49
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $22		;[Note] 35
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $34		;[Note] 53
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $3E		;[Note] 63
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $34		;[Note] 53
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $39		;[Note] 58
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $3B		;[Note] 60
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $3C		;[Note] 61
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $3E		;[Note] 63
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $40		;[Note] 65
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_65:
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $38		;[Note] 57
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $38		;[Note] 57
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $38		;[Note] 57
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_66:
	db $C0		;[Wait] 1
	db $28		;[Note] 41
	db $C1		;[Wait] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $3E		;[Note] 63
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_67:
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $47		;[Note] 72
	db $C1		;[Wait] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $4C		;[Note] 77
				;[Skip delay] 4
	db $4A		;[Note] 75
	db $C1		;[Wait] 2
	db $4C		;[Note] 77
	db $99		;Note link
	db $C0		;[Wait] 1
	db $4A		;[Note] 75
	db $99		;Note link
				;[Skip delay] 1
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $4C		;[Note] 77
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $D1		;[CMD vibrato] depth:3 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_68:
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $37		;[Note] 56
	db $C1		;[Wait] 2
	db $39		;[Note] 58
	db $C3		;[Wait] 4
	db $3A		;[Note] 59
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
	db $C0		;[Wait] 1
	db $35		;[Note] 54
	db $99		;Note link
				;[Skip delay] 1
	db $32		;[Note] 51
	db $99		;Note link
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $6D		;[Volume] 13
				;[Skip delay] 4
	db $2D		;[Note] 46
	db $C0		;[Wait] 1
	db $2F		;[Note] 48
	db $A1, $01		; note delay
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $A1, $01		; note delay
	db $C1		;[Wait] 2
	db $2A		;[Note] 43
	db $C3		;[Wait] 4
	db $2C		;[Note] 45
				;[Skip delay] 4
	db $2A		;[Note] 43
				;[Skip delay] 4
	db $2C		;[Note] 45
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_69:
	db $51		;[Note] 82
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $53		;[Note] 84
	db $C1		;[Wait] 2
	db $54		;[Note] 85
	db $C3		;[Wait] 4
	db $58		;[Note] 89
				;[Skip delay] 4
	db $56		;[Note] 87
	db $C1		;[Wait] 2
	db $58		;[Note] 89
	db $99		;Note link
	db $C0		;[Wait] 1
	db $56		;[Note] 87
	db $99		;Note link
				;[Skip delay] 1
	db $54		;[Note] 85
	db $C3		;[Wait] 4
	db $58		;[Note] 89
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $D1		;[CMD vibrato] depth:3 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_70:
	db $47		;[Note] 72
	db $99		;Note link
	db $C0		;[Wait] 1
	db $45		;[Note] 70
	db $99		;Note link
				;[Skip delay] 1
	db $43		;[Note] 68
	db $99		;Note link
				;[Skip delay] 1
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $47		;[Note] 72
	db $C1		;[Wait] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $4C		;[Note] 77
				;[Skip delay] 4
	db $4A		;[Note] 75
	db $C1		;[Wait] 2
	db $4C		;[Note] 77
	db $99		;Note link
	db $C0		;[Wait] 1
	db $4A		;[Note] 75
	db $99		;Note link
				;[Skip delay] 1
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $4C		;[Note] 77
	db $C3		;[Wait..] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_71:
	db $11		;[Note] 18
	db $C5		;[Wait] 6
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $16		;[Note] 23
				;[Skip delay] 4
	db $18		;[Note] 25
				;[Skip delay] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1C		;[Note] 29
	db $C5		;[Wait] 6
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $14		;[Note] 21
				;[Skip delay] 4
	db $12		;[Note] 19
				;[Skip delay] 4
	db $14		;[Note] 21
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_72:
	db $21		;[Note] 34
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2F		;[Note] 48
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2F		;[Note] 48
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $24		;[Note] 37
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $18		;[Note] 25
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $21		;[Note] 34
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2F		;[Note] 48
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_73:
	db $C0		;[Wait] 1
	db $40		;[Note] 65
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $2F		;[Note] 48
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_74:
	db $40		;[Note] 65
	db $6D		;[Volume] 13
	db $74		;[Instrument] 5
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $47		;[Note] 72
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $43		;[Note] 68
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $41		;[Note] 66
				;[Skip delay] 4
	db $40		;[Note] 65
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $40		;[Note] 65
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_75:
	db $40		;[Note] 65
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $47		;[Note] 72
	db $C0		;[Wait] 1
	db $48		;[Note] 73
				;[Skip delay] 1
	db $47		;[Note] 72
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $43		;[Note] 68
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $41		;[Note] 66
				;[Skip delay] 4
	db $40		;[Note] 65
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $40		;[Note] 65
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_76:
	db $2D		;[Note] 46
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_77:
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $40		;[Note] 65
	db $69		;[Volume] 9
	db $74		;[Instrument] 5
	db $95, $02		; track detune
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $47		;[Note] 72
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $43		;[Note] 68
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $41		;[Note] 66
				;[Skip delay] 4
	db $40		;[Note] 65
	db $C3		;[Wait..] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $40		;[Note] 65
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_78:
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C3		;[Wait] 4
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_79:
	db $21		;[Note] 34
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2F		;[Note] 48
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2F		;[Note] 48
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $24		;[Note] 37
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $18		;[Note] 25
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $21		;[Note] 34
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $31		;[Note] 50
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_80:
	db $24		;[Note] 37
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $95, $01		; track detune
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $24		;[Note] 37
	db $95, $01		; track detune
				;[Skip delay] 2
	db $29		;[Note] 42
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
	db $95, $01		; track detune
				;[Skip delay] 2
	db $26		;[Note] 39
	db $95, $00		; track detune
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $21		;[Note] 34
	db $95, $01		; track detune
				;[Skip delay] 2
	db $25		;[Note] 38
	db $95, $00		; track detune
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_81:
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $2F		;[Note] 48
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $31		;[Note] 50
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_82:
	db $40		;[Note] 65
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $4A		;[Note] 75
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4C		;[Note] 77
	db $C1		;[Wait] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $47		;[Note] 72
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $43		;[Note] 68
				;[Skip delay] 4
	db $45		;[Note] 70
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
				;[Skip delay] 1
	db $A7, $D1		;[CMD vibrato] depth:3 speed:7
				;[Skip delay] 1
	db $39		;[Note] 58
	db $6D		;[Volume] 13
	db $71		;[Instrument] 2
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_83:
	db $40		;[Note] 65
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $4A		;[Note] 75
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4C		;[Note] 77
	db $C1		;[Wait] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $47		;[Note] 72
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $43		;[Note] 68
				;[Skip delay] 4
	db $45		;[Note] 70
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_84:
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_85:
	db $C2		;[Wait] 3
	db $40		;[Note] 65
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $4A		;[Note] 75
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4C		;[Note] 77
	db $C1		;[Wait] 2
	db $48		;[Note] 73
	db $C3		;[Wait] 4
	db $47		;[Note] 72
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $43		;[Note] 68
				;[Skip delay] 4
	db $45		;[Note] 70
	db $C3		;[Wait..] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
				;[Skip delay] 1
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
				;[Skip delay] 1
	db $39		;[Note] 58
	db $6B		;[Volume] 11
	db $71		;[Instrument] 2
	db $95, $01		; track detune
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_86:
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $15		;[Note] 22
	db $C3		;[Wait] 4
	db $15		;[Note] 22
	db $C1		;[Wait] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C3		;[Wait] 4
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $13		;[Note] 20
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $13		;[Note] 20
	db $C3		;[Wait] 4
	db $13		;[Note] 20
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_87:
	db $26		;[Note] 39
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2F		;[Note] 48
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $24		;[Note] 37
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $24		;[Note] 37
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2F		;[Note] 48
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_88:
	db $21		;[Note] 34
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_89:
	db $C0		;[Wait] 1
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_90:
	db $3E		;[Note] 63
	db $6D		;[Volume] 13
	db $71		;[Instrument] 2
	db $C1		;[Wait] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $47		;[Note] 72
	db $C0		;[Wait] 1
	db $48		;[Note] 73
	db $99		;Note link
				;[Skip delay] 1
	db $47		;[Note] 72
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $45		;[Note] 70
	db $C1		;[Wait] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $43		;[Note] 68
	db $C1		;[Wait] 2
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $43		;[Note] 68
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3E		;[Note] 63
	db $C1		;[Wait] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_91:
	db $41		;[Note] 66
	db $6D		;[Volume] 13
	db $72		;[Instrument] 3
	db $95, $00		; track detune
	db $C3		;[Wait] 4
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
	db $C3		;[Wait] 4
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $43		;[Note] 68
	db $C1		;[Wait] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $43		;[Note] 68
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_92:
	db $3E		;[Note] 63
	db $6D		;[Volume] 13
	db $72		;[Instrument] 3
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_93:
	db $C2		;[Wait] 3
	db $3E		;[Note] 63
	db $6B		;[Volume] 11
	db $71		;[Instrument] 2
	db $95, $01		; track detune
	db $C1		;[Wait] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $48		;[Note] 73
				;[Skip delay] 2
	db $47		;[Note] 72
	db $C0		;[Wait] 1
	db $48		;[Note] 73
	db $99		;Note link
				;[Skip delay] 1
	db $47		;[Note] 72
	db $99		;Note link
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $45		;[Note] 70
	db $C1		;[Wait] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $43		;[Note] 68
	db $C1		;[Wait] 2
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $43		;[Note] 68
	db $C3		;[Wait..] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3E		;[Note] 63
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_94:
	db $1A		;[Note] 27
	db $C1		;[Wait] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $1C		;[Note] 29
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $1D		;[Note] 30
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $C3		;[Wait] 4
	db $1F		;[Note] 32
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_95:
	db $29		;[Note] 42
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $24		;[Note] 37
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $24		;[Note] 37
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2A		;[Note] 43
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2A		;[Note] 43
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2A		;[Note] 43
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2A		;[Note] 43
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2A		;[Note] 43
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2A		;[Note] 43
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_96:
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2A		;[Note] 43
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2A		;[Note] 43
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_97:
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $2A		;[Note] 43
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2A		;[Note] 43
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $2A		;[Note] 43
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2A		;[Note] 43
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2A		;[Note] 43
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $2A		;[Note] 43
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_98:
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $43		;[Note] 68
	db $C1		;[Wait] 2
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $40		;[Note] 65
	db $C0		;[Wait] 1
	db $41		;[Note] 66
	db $A1, $01		; note delay
				;[Skip delay] 1
	db $40		;[Note] 65
	db $A1, $01		; note delay
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
	db $C3		;[Wait] 4
	db $3C		;[Note] 61
				;[Skip delay] 4
	db $3E		;[Note] 63
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $D1		;[CMD vibrato] depth:3 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3E		;[Note] 63
	db $C1		;[Wait] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_99:
	db $41		;[Note] 66
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $43		;[Note] 68
	db $C1		;[Wait] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $43		;[Note] 68
	db $C3		;[Wait] 4
	db $45		;[Note] 70
	db $C1		;[Wait] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $45		;[Note] 70
	db $C1		;[Wait] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $45		;[Note] 70
				;[Skip delay] 2
	db $45		;[Note] 70
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_100:
	db $3E		;[Note] 63
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_101:
	db $C0		;[Wait] 1
	db $40		;[Note] 65
	db $C1		;[Wait] 2
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $43		;[Note] 68
	db $C1		;[Wait] 2
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $40		;[Note] 65
	db $C0		;[Wait] 1
	db $41		;[Note] 66
	db $A1, $01		; note delay
				;[Skip delay] 1
	db $40		;[Note] 65
	db $A1, $01		; note delay
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
	db $C3		;[Wait] 4
	db $3C		;[Note] 61
				;[Skip delay] 4
	db $3E		;[Note] 63
	db $C3		;[Wait..] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3E		;[Note] 63
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_102:
	db $22		;[Note] 35
	db $C1		;[Wait] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1E		;[Note] 31
				;[Skip delay] 2
	db $1C		;[Note] 29
				;[Skip delay] 2
	db $1E		;[Note] 31
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $26		;[Note] 39
	db $C7		;[Wait] 8
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_103:
	db $29		;[Note] 42
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $29		;[Note] 42
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $30		;[Note] 49
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $28		;[Note] 41
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2F		;[Note] 48
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2F		;[Note] 48
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_104:
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_105:
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_106:
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $43		;[Note] 68
	db $C1		;[Wait] 2
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $40		;[Note] 65
	db $C0		;[Wait] 1
	db $41		;[Note] 66
	db $A1, $01		; note delay
				;[Skip delay] 1
	db $40		;[Note] 65
	db $A1, $01		; note delay
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
	db $C3		;[Wait] 4
	db $3C		;[Note] 61
				;[Skip delay] 4
	db $3E		;[Note] 63
	db $C3		;[Wait..] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $13		;[CMD vibrato] rep
	db $D2		;[Wait] 19
	db $BF		;[End-Of-Track]
.track_107:
	db $41		;[Note] 66
	db $C1		;[Wait] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $43		;[Note] 68
	db $C1		;[Wait] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $43		;[Note] 68
	db $C3		;[Wait] 4
	db $43		;[Note] 68
	db $C1		;[Wait] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $43		;[Note] 68
	db $C3		;[Wait] 4
	db $43		;[Note] 68
	db $C1		;[Wait] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $43		;[Note] 68
				;[Skip delay] 2
	db $43		;[Note] 68
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_108:
	db $3E		;[Note] 63
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $40		;[Note] 65
				;[Skip delay] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $3B		;[Note] 60
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_109:
	db $C0		;[Wait] 1
	db $40		;[Note] 65
	db $C1		;[Wait] 2
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $43		;[Note] 68
	db $C1		;[Wait] 2
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $40		;[Note] 65
	db $C0		;[Wait] 1
	db $41		;[Note] 66
	db $A1, $01		; note delay
				;[Skip delay] 1
	db $40		;[Note] 65
	db $A1, $01		; note delay
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
	db $C3		;[Wait] 4
	db $3C		;[Note] 61
				;[Skip delay] 4
	db $3E		;[Note] 63
	db $C3		;[Wait..] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $10		;[CMD vibrato] rep
	db $CF		;[Wait] 16
	db $BF		;[End-Of-Track]
.track_110:
	db $22		;[Note] 35
	db $C3		;[Wait] 4
	db $1D		;[Note] 30
				;[Skip delay] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $1C		;[Note] 29
				;[Skip delay] 4
	db $18		;[Note] 25
				;[Skip delay] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $1A		;[Note] 27
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_111:
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2F		;[Note] 48
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $2F		;[Note] 48
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_112:
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $23		;[Note] 36
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_113:
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_114:
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $A7, $D1		;[CMD vibrato] depth:3 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $3C		;[Note] 61
	db $C1		;[Wait] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_115:
	db $43		;[Note] 68
	db $C3		;[Wait] 4
	db $41		;[Note] 66
				;[Skip delay] 4
	db $43		;[Note] 68
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $3C		;[Note] 61
				;[Skip delay] 4
	db $3E		;[Note] 63
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_116:
	db $2F		;[Note] 48
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
				;[Skip delay] 4
	db $2F		;[Note] 48
				;[Skip delay] 4
	db $2B		;[Note] 44
				;[Skip delay] 4
	db $29		;[Note] 42
				;[Skip delay] 4
	db $2B		;[Note] 44
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_117:
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $3C		;[Note] 61
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_118:
	db $1F		;[Note] 32
	db $C3		;[Wait] 4
	db $21		;[Note] 34
				;[Skip delay] 4
	db $26		;[Note] 39
				;[Skip delay] 4
	db $23		;[Note] 36
				;[Skip delay] 4
	db $21		;[Note] 34
				;[Skip delay] 4
	db $1F		;[Note] 32
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_119:
	db $21		;[Note] 34
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C1		;[Wait..] 2
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_120:
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C3		;[Wait] 4
	db $2F		;[Note] 48
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $24		;[Note] 37
				;[Skip delay] 2
	db $2D		;[Note] 46
				;[Skip delay] 2
	db $18		;[Note] 25
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
				;[Skip delay] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $28		;[Note] 41
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_121:
	db $40		;[Note] 65
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
	db $95, $00		; track detune
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $60		;[Note] 97
				;[Skip delay] 7
	db $18		;[Note] 25
	db $6C		;[Volume] 12
	db $70		;[Instrument] 1
	db $A1, $03		; note delay
	db $C1		;[Wait] 2
	db $1C		;[Note] 29
	db $99		;Note link
	db $C0		;[Wait] 1
	db $21		;[Note] 34
	db $99		;Note link
				;[Skip delay] 1
	db $24		;[Note] 37
	db $99		;Note link
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_122:
	db $40		;[Note] 65
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $2B		;[CMD vibrato] rep
	db $EA		;[Wait] 43
	db $BF		;[End-Of-Track]
.track_123:
	db $30		;[Note] 49
	db $C3		;[Wait] 4
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $2B		;[CMD vibrato] rep
	db $EA		;[Wait] 43
	db $BF		;[End-Of-Track]
.track_124:
	db $C0		;[Wait] 1
	db $3E		;[Note] 63
	db $C1		;[Wait] 2
	db $40		;[Note] 65
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $60		;[Note] 97
	db $C6		;[Wait..] 7
	db $95, $01		; track detune
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_125:
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $73		;[Instrument] 4
	db $C3		;[Wait] 4
	db $A7, $71		;[CMD vibrato] depth:0 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $91		;[CMD vibrato] depth:1 speed:7
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $B1		;[CMD vibrato] depth:2 speed:7
	db $C0		;[Wait] 1
	db $B1, $23		;[CMD vibrato] rep
	db $E2		;[Wait] 35
	db $BF		;[End-Of-Track]
.track_126:
	db $60		;[Note] 97
	db $EF		;[Wait] 48
	db $BF		;[End-Of-Track]
.track_127:
	db $37		;[Note] 56
	db $6F		;[Volume] 15
	db $75		;[Instrument] 6
	db $C1		;[Wait] 2
	db $39		;[Note] 58
	db $C3		;[Wait] 4
	db $3B		;[Note] 60
				;[Skip delay] 4
	db $3B		;[Note] 60
	db $C0		;[Wait] 1
	db $3C		;[Note] 61
				;[Skip delay] 1
	db $3B		;[Note] 60
	db $C7		;[Wait] 8
	db $39		;[Note] 58
	db $C3		;[Wait] 4
	db $37		;[Note] 56
				;[Skip delay] 4
	db $32		;[Note] 51
	db $C7		;[Wait] 8
	db $35		;[Note] 54
	db $C1		;[Wait] 2
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $34		;[Note] 53
				;[Skip delay] 4
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_128:
	db $EF		;[Wait] 48
	db $BF		;[End-Of-Track]
.track_129:
	db $FF		;[Wait] 64
	db $BF		;[End-Of-Track]
.track_130:
	db $BF		;[End-Of-Track]
; [ Song sub-track data ]
