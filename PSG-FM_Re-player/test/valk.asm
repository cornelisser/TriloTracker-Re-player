; Compiled using tt_compile.exe V0.5.0 [06-09-2019]
; Copyright 2016 Richard Cornelisse

; Song: Cosmic Valkyrie Crystalline     
; By:   John Hassink, 1994-2019         

;	org $c000

; [ Song start data ]
	db $09				; Initial song speed.
	dw .customvoice_start 		; Start of the custom voices data.
	dw .drummacro_start 		; Start of the drum macro data.
	dw .instrument_start 		; Start of the instrument data.

; [ Song order pointer list ]
		dw .track_0,.track_1,.track_2,.track_3,.track_4,.track_5,.track_6,.track_7		; Sequence step 0 /pattern 0
.restart:
		dw .track_8,.track_9,.track_9,.track_10,.track_11,.track_12,.track_13,.track_14		; Sequence step 1 /pattern 1
		dw .track_15,.track_16,.track_16,.track_17,.track_18,.track_19,.track_20,.track_21		; Sequence step 2 /pattern 2
		dw .track_22,.track_23,.track_23,.track_24,.track_25,.track_26,.track_27,.track_28		; Sequence step 3 /pattern 3
		dw .track_29,.track_30,.track_31,.track_32,.track_11,.track_33,.track_13,.track_34		; Sequence step 4 /pattern 4
		dw .track_35,.track_36,.track_37,.track_38,.track_18,.track_39,.track_40,.track_21		; Sequence step 5 /pattern 5
		dw .track_41,.track_42,.track_42,.track_43,.track_44,.track_45,.track_46,.track_47		; Sequence step 6 /pattern 6
		dw .track_48,.track_49,.track_50,.track_51,.track_52,.track_53,.track_54,.track_55		; Sequence step 7 /pattern 7
		dw .track_56,.track_57,.track_58,.track_59,.track_60,.track_61,.track_62,.track_63		; Sequence step 8 /pattern 8
		dw .track_64,.track_65,.track_66,.track_67,.track_60,.track_61,.track_68,.track_69		; Sequence step 9 /pattern 9
		dw .track_70,.track_71,.track_72,.track_73,.track_60,.track_61,.track_74,.track_75		; Sequence step 10 /pattern 10
		dw .track_76,.track_77,.track_77,.track_78,.track_79,.track_80,.track_81,.track_82		; Sequence step 11 /pattern 11
		dw .track_83,.track_84,.track_84,.track_85,.track_86,.track_87,.track_88,.track_85		; Sequence step 12 /pattern 12
		dw .track_89,.track_90,.track_90,.track_91,.track_92,.track_93,.track_94,.track_91		; Sequence step 13 /pattern 13
		dw .track_95,.track_96,.track_96,.track_97,.track_98,.track_99,.track_100,.track_97		; Sequence step 14 /pattern 14
		dw .track_101,.track_102,.track_103,.track_104,.track_105,.track_106,.track_107,.track_108		; Sequence step 15 /pattern 15
		dw .track_109,.track_110,.track_111,.track_112,.track_113,.track_114,.track_115,.track_116		; Sequence step 16 /pattern 16
		dw 0x0000, .restart			; End of sequence delimiter + restart address.

.customvoice_start:
	db $20,$71,$0D,$06,$C1,$D5,$56,$06	; Custom voice 0(was 44)
	db $61,$61,$1B,$07,$C5,$96,$F5,$F6	; Custom voice 1(was 155)
	db $61,$61,$18,$07,$C5,$96,$F5,$F6	; Custom voice 2(was 156)
	db $61,$61,$1F,$07,$C5,$96,$F5,$F6	; Custom voice 3(was 157)

.drummacro_start:
	dw .drm_1
	dw .drm_2
	dw .drm_3
	dw .drm_4
	dw .drm_5
	dw .drm_6
	dw .drm_7
	dw .drm_8
	dw .drm_9

.drm_1:						;  (was 1)
	;  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC
	db $FE,$15,$20,$0F,$32,$11,$01,$F1		; 11111110
	db $00                            		; 00000000
	db $00                            		; 00000000
	db $01                            		; 00000001
.drm_2:						;  (was 2)
	;  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC
	db $FE,$1C,$2B,$0E,$13,$0A,$0B,$E1		; 11111110
	db $50    ,$28    ,$10            		; 01010000
	db $50    ,$26    ,$0E            		; 01010000
	db $50    ,$24    ,$0C            		; 01010000
	db $50    ,$23    ,$0B            		; 01010000
	db $50    ,$21    ,$09            		; 01010000
	db $50    ,$1F    ,$07            		; 01010000
	db $51    ,$1D    ,$05            		; 01010001
.drm_3:						;  (was 4)
	;  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC
	db $FE,$01,$20,$01,$32,$E1,$16,$11		; 11111110
	db $00                            		; 00000000
	db $00                            		; 00000000
	db $01                            		; 00000001
.drm_4:						;  (was 5)
	;  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC
	db $FE,$02,$20,$01,$32,$11,$14,$FE		; 11111110
	db $00                            		; 00000000
	db $00                            		; 00000000
	db $01                            		; 00000001
.drm_5:						;  (was 6)
	;  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC
	db $FE,$12,$20,$0F,$32,$11,$14,$FE		; 11111110
	db $00                            		; 00000000
	db $00                            		; 00000000
	db $01                            		; 00000001
.drm_6:						;  (was 11)
	;  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC
	db $FE,$15,$20,$0F,$32,$E1,$16,$11		; 11111110
	db $00                            		; 00000000
	db $00                            		; 00000000
	db $01                            		; 00000001
.drm_7:						;  (was 12)
	;  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC
	db $FE,$12,$20,$0F,$32,$11,$14,$FE		; 11111110
	db $00                            		; 00000000
	db $00                            		; 00000000
	db $01                            		; 00000001
.drm_8:						;  (was 14)
	;  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC
	db $FE,$02,$20,$01,$32,$11,$14,$FC		; 11111110
	db $00                            		; 00000000
	db $00                            		; 00000000
	db $01                            		; 00000001
.drm_9:						;  (was 15)
	;  Flg,Prc,Ton, vB,Ton,vHS,Ton,vTC
	db $FE,$02,$20,$01,$32,$11,$14,$FD		; 11111110
	db $00                            		; 00000000
	db $00                            		; 00000000
	db $01                            		; 00000001

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
	dw .ins_17
	dw .ins_18
	dw .ins_19
.ins_1:				;                 
		db 15					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
		db $15,$0C        ,$E1,$FF		; 00010101
		db $15,$0C        ,$1F,$00		; 00010101
		db $11,$0C                		; 00010001
		db $11,$0C                		; 00010001
.rst_i1:
		db $15,$0C        ,$01,$00		; 00010101
		db $15,$0C        ,$FF,$FF		; 00010101
		db $11,$0C                		; 00010001
		db $11,$0C                		; 00010001
		db $15,$0C        ,$FF,$FF		; 00010101
		db $15,$0C        ,$01,$00		; 00010101
		db $11,$0C                		; 00010001
		db $19,$0C                		; 00011001
		dw .rst_i1

.ins_2:				;                 
		db 1					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i2:
		db $19,$0F                		; 00011001
		dw .rst_i2

.ins_3:				;                 
		db 12					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
		db $11,$0C,$06            		; 00010001
		db $11,$0C,$0C            		; 00010001
.rst_i3:
		db $19,$0C,$0C            		; 00011001
		dw .rst_i3

.ins_4:				;                 
		db 16					; Custom voice (was 44)
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i4:
		db $19,$0C                		; 00011001
		dw .rst_i4

.ins_5:				;                 
		db 7					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i5:
		db $19,$0F                		; 00011001
		dw .rst_i5

.ins_6:				;                 
		db 8					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i6:
		db $19,$0F                		; 00011001
		dw .rst_i6

.ins_7:				;                 
		db 1					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
		db $31,$0F,$09            		; 00110001
		db $31,$0F,$09            		; 00110001
.rst_i7:
		db $39,$0F,$01            		; 00111001
		dw .rst_i7

.ins_8:				;                 
		db 12					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
		db $11,$0C,$06            		; 00010001
		db $11,$0C,$0C            		; 00010001
		db $11,$0C,$0C            		; 00010001
		db $11,$0C,$0C            		; 00010001
		db $11,$0C,$0C            		; 00010001
		db $11,$0C,$0C            		; 00010001
		db $11,$0C,$0C            		; 00010001
		db $11,$0C,$0C            		; 00010001
.rst_i8:
		db $15,$08,$06    ,$01,$00		; 00010101
		db $11,$08,$0C            		; 00010001
		db $11,$08,$0C            		; 00010001
		db $11,$08,$0C            		; 00010001
		db $11,$08,$0C            		; 00010001
		db $11,$08,$0C            		; 00010001
		db $11,$08,$0C            		; 00010001
		db $19,$08,$0C            		; 00011001
		dw .rst_i8

.ins_9:				;                 
		db 0					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
		db $A1,$0A,$03            		; 10100001
		db $A1,$09,$03            		; 10100001
		db $A1,$08,$03            		; 10100001
		db $A1,$07,$03            		; 10100001
		db $A1,$06,$03            		; 10100001
		db $A1,$06,$03            		; 10100001
		db $A1,$06,$07            		; 10100001
		db $A1,$05,$07            		; 10100001
		db $A1,$05,$07            		; 10100001
		db $A1,$05,$07            		; 10100001
		db $A1,$04,$07            		; 10100001
		db $A1,$04,$07            		; 10100001
		db $A1,$04,$0B            		; 10100001
		db $A1,$03,$0B            		; 10100001
		db $A1,$03,$0B            		; 10100001
		db $A1,$03,$0B            		; 10100001
		db $A1,$03,$0B            		; 10100001
		db $A1,$03,$0B            		; 10100001
		db $A1,$03,$0F            		; 10100001
		db $A1,$01,$0F            		; 10100001
		db $A1,$01,$0F            		; 10100001
		db $A1,$01,$0F            		; 10100001
.rst_i9:
		db $09,$00                		; 00001001
		dw .rst_i9

.ins_10:				;                 
.ins_11:				;                 
		db 7					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
		db $15,$0F        ,$FF,$FF		; 00010101
		db $15,$0F        ,$01,$00		; 00010101
		db $11,$0F                		; 00010001
.rst_i11:
		db $19,$0F                		; 00011001
		dw .rst_i11

.ins_12:				;                 
		db 19					; Custom voice (was 157)
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i12:
		db $19,$0E                		; 00011001
		dw .rst_i12

.ins_13:				;                 
		db 17					; Custom voice (was 155)
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i13:
		db $19,$0E                		; 00011001
		dw .rst_i13

.ins_14:				;                 
		db 18					; Custom voice (was 156)
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i14:
		db $19,$0E                		; 00011001
		dw .rst_i14

.ins_15:				;                 
		db 0					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
		db $11,$0D                		; 00010001
		db $11,$0E                		; 00010001
		db $11,$0F                		; 00010001
		db $11,$0E                		; 00010001
		db $11,$0E                		; 00010001
		db $11,$0D                		; 00010001
		db $11,$0D                		; 00010001
		db $11,$0C                		; 00010001
.rst_i15:
		db $15,$0B        ,$01,$00		; 00010101
		db $15,$0B        ,$02,$00		; 00010101
		db $15,$0B        ,$FE,$FF		; 00010101
		db $15,$0B        ,$FF,$FF		; 00010101
		db $15,$0B        ,$FF,$FF		; 00010101
		db $15,$0B        ,$FE,$FF		; 00010101
		db $15,$0B        ,$02,$00		; 00010101
		db $1D,$0B        ,$01,$00		; 00011101
		dw .rst_i15

.ins_16:				;                 
		db 0					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
		db $11,$07                		; 00010001
		db $11,$06                		; 00010001
		db $11,$05                		; 00010001
		db $11,$04                		; 00010001
		db $11,$05                		; 00010001
		db $11,$05                		; 00010001
		db $11,$06                		; 00010001
		db $11,$06                		; 00010001
.rst_i16:
		db $15,$07        ,$02,$00		; 00010101
		db $15,$07        ,$02,$00		; 00010101
		db $15,$07        ,$FE,$FF		; 00010101
		db $15,$07        ,$FE,$FF		; 00010101
		db $15,$07        ,$FE,$FF		; 00010101
		db $15,$07        ,$FE,$FF		; 00010101
		db $15,$07        ,$02,$00		; 00010101
		db $1D,$07        ,$02,$00		; 00011101
		dw .rst_i16

.ins_17:				;                 
		db 10					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i17:
		db $19,$0F                		; 00011001
		dw .rst_i17

.ins_18:				;                 
		db 3					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i18:
		db $19,$0F                		; 00011001
		dw .rst_i18

.ins_19:				;                 
		db 9					; Hardware voice
		;  Flg,Vol,Noi,Lnk,Tone
.rst_i19:
		db $19,$0D                		; 00011001
		dw .rst_i19


; [ Song track data ]
.track_0:
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $78		;[Instrument] 9
	db $91, $02		;[FM drum] 2
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $91, $01		;[FM drum] 1
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_1:
	db $16		;[Note] 23
	db $6A		;[Volume] 10
	db $7E		;[Instrument] 15
	db $95, $03		; track detune
	db $C1		;[Wait] 2
	db $0A		;[Note] 11
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_2:
	db $16		;[Note] 23
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $0A		;[Note] 11
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C0		;[Wait] 1
	db $A5, $02		; slide-down
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_3:
	db $60		;[Note] 97
	db $6F		;[Volume] 15
	db $71		;[Instrument] 2
	db $C5		;[Wait] 6
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_4:
	db $60		;[Note] 97
	db $6F		;[Volume] 15
	db $72		;[Instrument] 3
	db $C5		;[Wait] 6
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_5:
	db $60		;[Note] 97
	db $6F		;[Volume] 15
	db $73		;[Instrument] 4
	db $95, $02		; track detune
	db $C5		;[Wait] 6
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_6:
	db $60		;[Note] 97
	db $69		;[Volume] 9
	db $74		;[Instrument] 5
	db $95, $01		; track detune
	db $C7		;[Wait] 8
	db $BF		;[End-Of-Track]
.track_7:
	db $60		;[Note] 97
	db $6B		;[Volume] 11
	db $72		;[Instrument] 3
	db $95, $01		; track detune
	db $C7		;[Wait] 8
	db $BF		;[End-Of-Track]
.track_8:
	db $91, $07		;[FM drum] 12
	db $C1		;[Wait] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 1
	db $91, $03		;[FM drum] 4
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
	db $C0		;[Wait] 1
	db $91, $06		;[FM drum] 11
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_9:
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $0A		;[Note] 11
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_10:
	db $33		;[Note] 52
	db $C2		;[Wait] 3
	db $3F		;[Note] 64
	db $69		;[Volume] 9
	db $95, $01		; track detune
	db $C0		;[Wait] 1
	db $3A		;[Note] 59
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C3		;[Wait] 4
	db $38		;[Note] 57
	db $C1		;[Wait] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $35		;[Note] 54
	db $C2		;[Wait] 3
	db $41		;[Note] 66
	db $69		;[Volume] 9
	db $95, $01		; track detune
	db $C0		;[Wait] 1
	db $38		;[Note] 57
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C2		;[Wait] 3
	db $44		;[Note] 69
	db $69		;[Volume] 9
	db $95, $01		; track detune
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $35		;[Note] 54
				;[Skip delay] 4
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $3F		;[Note] 64
	db $69		;[Volume] 9
	db $95, $01		; track detune
				;[Skip delay] 1
	db $38		;[Note] 57
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $38		;[Note] 57
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $46		;[Note] 71
	db $69		;[Volume] 9
	db $95, $01		; track detune
				;[Skip delay] 1
	db $31		;[Note] 50
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_11:
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $31		;[Note] 50
				;[Skip delay] 4
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $33		;[Note] 52
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C1		;[Wait] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_12:
	db $3F		;[Note] 64
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $46		;[Note] 71
	db $C3		;[Wait] 4
	db $44		;[Note] 69
	db $C1		;[Wait] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $41		;[Note] 66
	db $C2		;[Wait] 3
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $44		;[Note] 69
	db $6F		;[Volume] 15
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $3F		;[Note] 64
	db $C3		;[Wait] 4
	db $41		;[Note] 66
				;[Skip delay] 4
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $3F		;[Note] 64
	db $C3		;[Wait] 4
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $44		;[Note] 69
	db $C1		;[Wait] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $49		;[Note] 74
				;[Skip delay] 2
	db $46		;[Note] 71
	db $C3		;[Wait] 4
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $08		;[CMD vibrato] rep
	db $C7		;[Wait] 8
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_13:
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $38		;[Note] 57
	db $C1		;[Wait] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $38		;[Note] 57
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $35		;[Note] 54
				;[Skip delay] 4
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $38		;[Note] 57
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $38		;[Note] 57
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $04		;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_14:
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $31		;[Note] 50
				;[Skip delay] 4
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $33		;[Note] 52
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_15:
	db $91, $07		;[FM drum] 12
	db $C1		;[Wait] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $07		;[FM drum] 12
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $78		;[Instrument] 9
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $07		;[FM drum] 12
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_16:
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $1E		;[Note] 31
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $1E		;[Note] 31
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_17:
	db $33		;[Note] 52
	db $C2		;[Wait] 3
	db $3F		;[Note] 64
	db $69		;[Volume] 9
	db $95, $01		; track detune
	db $C0		;[Wait] 1
	db $3A		;[Note] 59
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C2		;[Wait] 3
	db $6E		;[Volume] 14
	db $C0		;[Wait] 1
	db $38		;[Note] 57
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $35		;[Note] 54
	db $C2		;[Wait] 3
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $38		;[Note] 57
	db $6F		;[Volume] 15
	db $C2		;[Wait] 3
	db $44		;[Note] 69
	db $69		;[Volume] 9
	db $95, $01		; track detune
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $35		;[Note] 54
				;[Skip delay] 4
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $04		;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $42		;[Note] 67
	db $69		;[Volume] 9
	db $95, $01		; track detune
	db $C0		;[Wait] 1
	db $38		;[Note] 57
	db $6F		;[Volume] 15
	db $95, $00		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $99			;Note link
				;[Skip delay] 1
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C5		;[Wait] 6
	db $33		;[Note] 52
	db $C0		;[Wait] 1
	db $3F		;[Note] 64
	db $69		;[Volume] 9
	db $95, $01		; track detune
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_18:
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
				;[Skip delay] 4
	db $38		;[Note] 57
				;[Skip delay] 4
	db $3A		;[Note] 59
	db $C5		;[Wait] 6
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $31		;[Note] 50
				;[Skip delay] 4
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $31		;[Note] 50
				;[Skip delay] 4
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_19:
	db $3F		;[Note] 64
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $46		;[Note] 71
	db $C2		;[Wait] 3
	db $6E		;[Volume] 14
	db $C0		;[Wait] 1
	db $44		;[Note] 69
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $41		;[Note] 66
	db $C2		;[Wait] 3
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $44		;[Note] 69
	db $6F		;[Volume] 15
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $3F		;[Note] 64
	db $C3		;[Wait] 4
	db $41		;[Note] 66
				;[Skip delay] 4
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $42		;[Note] 67
	db $C3		;[Wait] 4
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $08		;[CMD vibrato] rep
	db $C7		;[Wait] 8
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $44		;[Note] 69
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $42		;[Note] 67
	db $99			;Note link
				;[Skip delay] 1
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3D		;[Note] 62
	db $C5		;[Wait] 6
	db $3F		;[Note] 64
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_20:
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $38		;[Note] 57
	db $C1		;[Wait] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $38		;[Note] 57
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $35		;[Note] 54
				;[Skip delay] 4
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $08		;[CMD vibrato] rep
	db $C7		;[Wait] 8
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $36		;[Note] 55
	db $99			;Note link
				;[Skip delay] 1
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_21:
	db $C0		;[Wait] 1
	db $36		;[Note] 55
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
				;[Skip delay] 4
	db $38		;[Note] 57
				;[Skip delay] 4
	db $3A		;[Note] 59
	db $C5		;[Wait] 6
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $31		;[Note] 50
				;[Skip delay] 4
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $31		;[Note] 50
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_22:
	db $91, $07		;[FM drum] 12
	db $C1		;[Wait] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 1
	db $91, $03		;[FM drum] 4
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_23:
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $0A		;[Note] 11
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_24:
	db $2E		;[Note] 47
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C3		;[Wait] 4
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02		;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
	db $69		;[Volume] 9
	db $95, $01		; track detune
	db $C0		;[Wait] 1
	db $35		;[Note] 54
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $A7, $75		;[CMD vibrato]
				;[Skip delay] 1
	db $41		;[Note] 66
	db $6B		;[Volume] 11
	db $95, $01		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C3		;[Wait] 4
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_25:
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $33		;[Note] 52
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C1		;[Wait] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_26:
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0A		;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $3F		;[Note] 64
	db $6F		;[Volume] 15
	db $C3		;[Wait] 4
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_27:
	db $C2		;[Wait] 3
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02		;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02		;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_28:
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $33		;[Note] 52
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_29:
	db $91, $07		;[FM drum] 12
	db $C1		;[Wait] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $07		;[FM drum] 12
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 1
	db $91, $03		;[FM drum] 4
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
	db $C0		;[Wait] 1
	db $91, $04		;[FM drum] 5
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_30:
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $17		;[Note] 24
	db $C0		;[Wait] 1
	db $A4, $09		; slide-up
				;[Skip delay] 1
	db $19		;[Note] 26
	db $C1		;[Wait] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C0		;[Wait] 1
	db $A5, $0F		; slide-down
				;[Skip delay] 1
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $0A		;[Note] 11
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C0		;[Wait] 1
	db $19		;[Note] 26
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_31:
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $17		;[Note] 24
	db $C0		;[Wait] 1
	db $A4, $0B		; slide-up
				;[Skip delay] 1
	db $19		;[Note] 26
	db $C1		;[Wait] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C0		;[Wait] 1
	db $A5, $0E		; slide-down
				;[Skip delay] 1
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $0A		;[Note] 11
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C0		;[Wait] 1
	db $19		;[Note] 26
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_32:
	db $33		;[Note] 52
	db $C2		;[Wait] 3
	db $3F		;[Note] 64
	db $69		;[Volume] 9
	db $95, $01		; track detune
	db $C0		;[Wait] 1
	db $3A		;[Note] 59
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C3		;[Wait] 4
	db $38		;[Note] 57
	db $C1		;[Wait] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $35		;[Note] 54
	db $C2		;[Wait] 3
	db $41		;[Note] 66
	db $69		;[Volume] 9
	db $95, $01		; track detune
	db $C0		;[Wait] 1
	db $38		;[Note] 57
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C2		;[Wait] 3
	db $44		;[Note] 69
	db $69		;[Volume] 9
	db $95, $01		; track detune
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $35		;[Note] 54
				;[Skip delay] 4
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $3F		;[Note] 64
	db $69		;[Volume] 9
	db $95, $01		; track detune
				;[Skip delay] 1
	db $38		;[Note] 57
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $38		;[Note] 57
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $46		;[Note] 71
	db $69		;[Volume] 9
	db $95, $01		; track detune
				;[Skip delay] 1
	db $31		;[Note] 50
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_33:
	db $3F		;[Note] 64
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $46		;[Note] 71
	db $C3		;[Wait] 4
	db $44		;[Note] 69
	db $C1		;[Wait] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $41		;[Note] 66
	db $C2		;[Wait] 3
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $44		;[Note] 69
	db $6F		;[Volume] 15
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $3F		;[Note] 64
	db $C3		;[Wait] 4
	db $41		;[Note] 66
				;[Skip delay] 4
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $3F		;[Note] 64
	db $C3		;[Wait] 4
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $44		;[Note] 69
	db $C1		;[Wait] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $49		;[Note] 74
				;[Skip delay] 2
	db $46		;[Note] 71
	db $C3		;[Wait] 4
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $04		;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_34:
	db $C0		;[Wait] 1
	db $36		;[Note] 55
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $31		;[Note] 50
				;[Skip delay] 4
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $33		;[Note] 52
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_35:
	db $91, $07		;[FM drum] 12
	db $C1		;[Wait] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $07		;[FM drum] 12
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
	db $C0		;[Wait] 1
	db $91, $01		;[FM drum] 1
				;[Skip delay] 1
	db $91, $06		;[FM drum] 11
	db $C1		;[Wait] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_36:
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $1E		;[Note] 31
				;[Skip delay] 2
	db $0D		;[Note] 14
	db $C0		;[Wait] 1
	db $A5, $1F		; slide-down
				;[Skip delay] 1
	db $1E		;[Note] 31
	db $C0		;[Wait..] 1
	db $A5, $07		; slide-down
				;[Skip delay] 1
	db $12		;[Note] 19
	db $C1		;[Wait] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $20		;[Note] 33
	db $C0		;[Wait] 1
	db $A5, $08		; slide-down
				;[Skip delay] 1
	db $14		;[Note] 21
	db $C1		;[Wait] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_37:
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $1E		;[Note] 31
				;[Skip delay] 2
	db $0D		;[Note] 14
	db $A6, $06		; tone-slide
				;[Skip delay] 2
	db $1E		;[Note] 31
				;[Skip delay] 2
	db $12		;[Note] 19
	db $A6, $05		; tone-slide
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $14		;[Note] 21
	db $A6, $06		; tone-slide
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_38:
	db $33		;[Note] 52
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $38		;[Note] 57
	db $C1		;[Wait] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $38		;[Note] 57
	db $C2		;[Wait] 3
	db $3A		;[Note] 59
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $35		;[Note] 54
				;[Skip delay] 4
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $08		;[CMD vibrato] rep
	db $C7		;[Wait] 8
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $36		;[Note] 55
	db $99			;Note link
				;[Skip delay] 1
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C5		;[Wait] 6
	db $33		;[Note] 52
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_39:
	db $3F		;[Note] 64
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $46		;[Note] 71
	db $C3		;[Wait] 4
	db $44		;[Note] 69
	db $C1		;[Wait] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $44		;[Note] 69
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $3F		;[Note] 64
	db $C3		;[Wait] 4
	db $41		;[Note] 66
				;[Skip delay] 4
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $42		;[Note] 67
	db $C3		;[Wait] 4
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $08		;[CMD vibrato] rep
	db $C7		;[Wait] 8
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $44		;[Note] 69
				;[Skip delay] 1
	db $42		;[Note] 67
	db $99			;Note link
				;[Skip delay] 1
	db $41		;[Note] 66
	db $C3		;[Wait] 4
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3D		;[Note] 62
	db $C5		;[Wait] 6
	db $3F		;[Note] 64
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_40:
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $38		;[Note] 57
	db $C1		;[Wait] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $38		;[Note] 57
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $35		;[Note] 54
				;[Skip delay] 4
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $08		;[CMD vibrato] rep
	db $C7		;[Wait] 8
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $38		;[Note] 57
				;[Skip delay] 1
	db $36		;[Note] 55
	db $99			;Note link
				;[Skip delay] 1
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_41:
	db $91, $07		;[FM drum] 12
	db $C3		;[Wait] 4
	db $91, $03		;[FM drum] 4
				;[Skip delay] 4
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $78		;[Instrument] 9
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $67		;[Volume] 7
	db $C1		;[Wait..] 2
	db $91, $03		;[FM drum] 4
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $03		;[FM drum] 4
	db $C3		;[Wait] 4
	db $91, $04		;[FM drum] 5
	db $C2		;[Wait] 3
	db $91, $01		;[FM drum] 1
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_42:
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $0A		;[Note] 11
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_43:
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $2C		;[Note] 45
	db $6F		;[Volume] 15
	db $C3		;[Wait] 4
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $C3		;[Wait] 4
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $2C		;[Note] 45
	db $C2		;[Wait] 3
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_44:
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $31		;[Note] 50
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_45:
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $C9		;[Wait] 10
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $38		;[Note] 57
	db $6F		;[Volume] 15
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6F		;[Volume] 15
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $38		;[Note] 57
	db $C2		;[Wait] 3
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_46:
	db $C0		;[Wait] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02		;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $2C		;[Note] 45
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $29		;[Note] 42
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $2C		;[Note] 45
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_47:
	db $C0		;[Wait] 1
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $31		;[Note] 50
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_48:
	db $1E		;[Note] 31
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
	db $C3		;[Wait] 4
	db $91, $03		;[FM drum] 4
	db $C1		;[Wait] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $78		;[Instrument] 9
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $20		;[Note] 33
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $91, $01		;[FM drum] 1
	db $C3		;[Wait] 4
	db $91, $03		;[FM drum] 4
				;[Skip delay] 4
	db $1E		;[Note] 31
	db $C1		;[Wait] 2
	db $25		;[Note] 38
	db $6C		;[Volume] 12
	db $99			;Note link
				;[Skip delay] 2
	db $20		;[Note] 33
	db $6F		;[Volume] 15
	db $91, $07		;[FM drum] 12
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
	db $C3		;[Wait] 4
	db $91, $03		;[FM drum] 4
	db $C1		;[Wait] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $78		;[Instrument] 9
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $1E		;[Note] 31
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $91, $01		;[FM drum] 1
	db $C0		;[Wait] 1
	db $20		;[Note] 33
	db $99			;Note link
				;[Skip delay] 1
	db $1E		;[Note] 31
	db $C1		;[Wait] 2
	db $91, $03		;[FM drum] 4
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $78		;[Instrument] 9
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_49:
	db $17		;[Note] 24
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $17		;[Note] 24
	db $67		;[Volume] 7
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $0B		;[Note] 12
	db $6A		;[Volume] 10
	db $95, $03		; track detune
	db $C2		;[Wait] 3
	db $0B		;[Note] 12
	db $67		;[Volume] 7
	db $C0		;[Wait] 1
	db $0F		;[Note] 16
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0B		;[Note] 12
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C6		;[Wait] 7
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $09		;[CMD vibrato] rep
	db $C8		;[Wait] 9
	db $19		;[Note] 26
	db $C1		;[Wait] 2
	db $0D		;[Note] 14
	db $C0		;[Wait] 1
	db $19		;[Note] 26
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $0D		;[Note] 14
	db $C0		;[Wait] 1
	db $0D		;[Note] 14
	db $6A		;[Volume] 10
	db $95, $00		; track detune
	db $C2		;[Wait] 3
	db $0D		;[Note] 14
	db $67		;[Volume] 7
	db $95, $03		; track detune
	db $C0		;[Wait] 1
	db $0B		;[Note] 12
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $14		;[Note] 21
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $17		;[Note] 24
				;[Skip delay] 1
	db $19		;[Note] 26
	db $C6		;[Wait] 7
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $09		;[CMD vibrato] rep
	db $C8		;[Wait] 9
	db $BF		;[End-Of-Track]
.track_50:
	db $17		;[Note] 24
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $17		;[Note] 24
	db $6B		;[Volume] 11
	db $95, $02		; track detune
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $0B		;[Note] 12
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C2		;[Wait] 3
	db $0B		;[Note] 12
	db $6B		;[Volume] 11
	db $95, $03		; track detune
	db $C0		;[Wait] 1
	db $0F		;[Note] 16
	db $6F		;[Volume] 15
	db $95, $00		; track detune
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0B		;[Note] 12
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
	db $A6, $0C		; tone-slide
				;[Skip delay] 1
	db $17		;[Note] 24
	db $B0, $03		; tone-slide rep
	db $C6		;[Wait] 7
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $09		;[CMD vibrato] rep
	db $C8		;[Wait] 9
	db $19		;[Note] 26
	db $C1		;[Wait] 2
	db $0D		;[Note] 14
	db $C0		;[Wait] 1
	db $19		;[Note] 26
	db $6B		;[Volume] 11
	db $95, $02		; track detune
	db $C1		;[Wait] 2
	db $0D		;[Note] 14
	db $C0		;[Wait] 1
	db $0D		;[Note] 14
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C2		;[Wait] 3
	db $0D		;[Note] 14
	db $6B		;[Volume] 11
	db $95, $03		; track detune
	db $C0		;[Wait] 1
	db $0B		;[Note] 12
	db $6F		;[Volume] 15
	db $95, $00		; track detune
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $14		;[Note] 21
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $17		;[Note] 24
				;[Skip delay] 1
	db $19		;[Note] 26
	db $A6, $02		; tone-slide
				;[Skip delay] 1
	db $B0, $03		; tone-slide rep
	db $C5		;[Wait] 6
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $09		;[CMD vibrato] rep
	db $C8		;[Wait] 9
	db $BF		;[End-Of-Track]
.track_51:
	db $3F		;[Note] 64
	db $67		;[Volume] 7
	db $76		;[Instrument] 7
	db $C0		;[Wait] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $A7, $78		;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6C		;[Volume] 12
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6D		;[Volume] 13
	db $C3		;[Wait] 4
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $3D		;[Note] 62
	db $6C		;[Volume] 12
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6D		;[Volume] 13
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_52:
	db $3A		;[Note] 59
	db $6D		;[Volume] 13
	db $77		;[Instrument] 8
	db $C0		;[Wait] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_53:
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
	db $68		;[Volume] 8
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $68		;[Volume] 8
	db $7B		;[Instrument] 12
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6E		;[Volume] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6A		;[Volume] 10
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6A		;[Volume] 10
	db $7D		;[Instrument] 14
	db $95, $03		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $95, $00		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $68		;[Volume] 8
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $68		;[Volume] 8
	db $7B		;[Instrument] 12
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6A		;[Volume] 10
	db $7D		;[Instrument] 14
	db $95, $03		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $95, $00		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6D		;[Volume] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $68		;[Volume] 8
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6E		;[Volume] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $68		;[Volume] 8
	db $7B		;[Instrument] 12
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6A		;[Volume] 10
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6A		;[Volume] 10
	db $7D		;[Instrument] 14
	db $95, $03		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $95, $00		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $68		;[Volume] 8
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $68		;[Volume] 8
	db $7B		;[Instrument] 12
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6A		;[Volume] 10
	db $7D		;[Instrument] 14
	db $95, $03		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_54:
	db $2A		;[Note] 43
	db $6D		;[Volume] 13
	db $75		;[Instrument] 6
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $11		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6F		;[Volume] 15
	db $CF		;[Wait] 16
	db $2C		;[Note] 45
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $2A		;[Note] 43
	db $C1		;[Wait] 2
	db $31		;[Note] 50
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2C		;[Note] 45
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6E		;[Volume] 14
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $11		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6F		;[Volume] 15
	db $CF		;[Wait] 16
	db $2A		;[Note] 43
	db $C1		;[Wait] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $2C		;[Note] 45
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $31		;[Note] 50
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_55:
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $2A		;[Note] 43
	db $6D		;[Volume] 13
	db $75		;[Instrument] 6
	db $95, $01		; track detune
	db $C1		;[Wait] 2
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $11		;[CMD vibrato] rep
	db $D0		;[Wait] 17
	db $2C		;[Note] 45
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $2A		;[Note] 43
	db $C0		;[Wait] 1
	db $35		;[Note] 54
	db $6B		;[Volume] 11
	db $7A		;[Instrument] 11
	db $95, $00		; track detune
	db $C3		;[Wait] 4
	db $6A		;[Volume] 10
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6B		;[Volume] 11
	db $C3		;[Wait] 4
	db $33		;[Note] 52
	db $C3		;[Wait..] 4
	db $6A		;[Volume] 10
				;[Skip delay] 4
	db $36		;[Note] 55
	db $6B		;[Volume] 11
	db $C1		;[Wait] 2
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $09		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6C		;[Volume] 12
	db $C3		;[Wait] 4
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_56:
	db $22		;[Note] 35
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $A3, $01		; arpegio
	db $C1		;[Wait] 2
	db $20		;[Note] 33
	db $99			;Note link
				;[Skip delay] 2
	db $22		;[Note] 35
	db $99			;Note link
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $78		;[Instrument] 9
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $05		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $78		;[Instrument] 9
				;[Skip delay] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
	db $C7		;[Wait] 8
	db $22		;[Note] 35
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $C1		;[Wait] 2
	db $20		;[Note] 33
	db $99			;Note link
				;[Skip delay] 2
	db $22		;[Note] 35
	db $99			;Note link
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $78		;[Instrument] 9
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $6B		;[Volume] 11
				;[Skip delay] 2
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $78		;[Instrument] 9
				;[Skip delay] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_57:
	db $1B		;[Note] 28
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
	db $C0		;[Wait] 1
	db $1B		;[Note] 28
	db $67		;[Volume] 7
	db $95, $00		; track detune
				;[Skip delay] 1
	db $91, $05		;[FM drum] 6
				;[Skip delay] 1
	db $0F		;[Note] 16
				;[Skip delay] 1
	db $0F		;[Note] 16
	db $6A		;[Volume] 10
	db $95, $03		; track detune
	db $C1		;[Wait] 2
	db $0D		;[Note] 14
	db $91, $02		;[FM drum] 2
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0F		;[Note] 16
	db $91, $01		;[FM drum] 1
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $19		;[Note] 26
	db $91, $04		;[FM drum] 5
				;[Skip delay] 1
	db $1B		;[Note] 28
	db $C0		;[Wait..] 1
	db $91, $01		;[FM drum] 1
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1B		;[Note] 28
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $12		;[Note] 19
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $0F		;[Note] 16
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
	db $91, $03		;[FM drum] 4
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0F		;[Note] 16
	db $91, $05		;[FM drum] 6
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $22		;[Note] 35
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $16		;[Note] 23
	db $91, $01		;[FM drum] 1
	db $C0		;[Wait] 1
	db $22		;[Note] 35
	db $67		;[Volume] 7
	db $95, $00		; track detune
				;[Skip delay] 1
	db $91, $04		;[FM drum] 5
				;[Skip delay] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $16		;[Note] 23
	db $6A		;[Volume] 10
	db $95, $03		; track detune
	db $C1		;[Wait] 2
	db $14		;[Note] 21
	db $91, $02		;[FM drum] 2
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1A		;[Note] 27
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
	db $91, $01		;[FM drum] 1
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1E		;[Note] 31
	db $91, $04		;[FM drum] 5
				;[Skip delay] 1
	db $20		;[Note] 33
	db $C0		;[Wait..] 1
	db $91, $01		;[FM drum] 1
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1D		;[Note] 30
	db $91, $03		;[FM drum] 4
	db $C1		;[Wait] 2
	db $16		;[Note] 23
	db $91, $01		;[FM drum] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $22		;[Note] 35
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $14		;[Note] 21
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $16		;[Note] 23
	db $91, $01		;[FM drum] 1
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $19		;[Note] 26
	db $91, $02		;[FM drum] 2
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
	db $91, $04		;[FM drum] 5
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_58:
	db $1B		;[Note] 28
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
	db $C0		;[Wait] 1
	db $1B		;[Note] 28
	db $6B		;[Volume] 11
	db $95, $02		; track detune
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
	db $C0		;[Wait] 1
	db $0F		;[Note] 16
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $0D		;[Note] 14
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0F		;[Note] 16
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $19		;[Note] 26
	db $A6, $06		; tone-slide
				;[Skip delay] 1
	db $1B		;[Note] 28
	db $B0, $02		; tone-slide rep
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $C1		;[Wait] 2
	db $0F		;[Note] 16
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1B		;[Note] 28
	db $C1		;[Wait] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $0F		;[Note] 16
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $12		;[Note] 19
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0F		;[Note] 16
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $22		;[Note] 35
	db $C1		;[Wait] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $22		;[Note] 35
	db $6B		;[Volume] 11
	db $95, $02		; track detune
	db $C1		;[Wait] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $14		;[Note] 21
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1A		;[Note] 27
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1E		;[Note] 31
	db $A6, $0A		; tone-slide
				;[Skip delay] 1
	db $20		;[Note] 33
	db $B0, $02		; tone-slide rep
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $1D		;[Note] 30
	db $C1		;[Wait] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $22		;[Note] 35
	db $C1		;[Wait] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $19		;[Note] 26
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_59:
	db $36		;[Note] 55
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $95, $02		; track detune
	db $C1		;[Wait] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $35		;[Note] 54
	db $69		;[Volume] 9
	db $95, $01		; track detune
				;[Skip delay] 2
	db $4E		;[Note] 79
	db $6B		;[Volume] 11
	db $71		;[Instrument] 2
	db $95, $00		; track detune
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $6D		;[Volume] 13
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $A7, $74		;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4D		;[Note] 78
	db $6C		;[Volume] 12
	db $C1		;[Wait] 2
	db $4B		;[Note] 76
				;[Skip delay] 2
	db $46		;[Note] 71
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C1		;[Wait] 2
	db $6C		;[Volume] 12
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $35		;[Note] 54
	db $6F		;[Volume] 15
	db $76		;[Instrument] 7
	db $95, $02		; track detune
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $33		;[Note] 52
	db $69		;[Volume] 9
	db $95, $01		; track detune
				;[Skip delay] 2
	db $4D		;[Note] 78
	db $6A		;[Volume] 10
	db $71		;[Instrument] 2
	db $95, $00		; track detune
				;[Skip delay] 2
	db $6B		;[Volume] 11
				;[Skip delay] 2
	db $6C		;[Volume] 12
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $A7, $74		;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $4B		;[Note] 76
	db $6C		;[Volume] 12
	db $C1		;[Wait] 2
	db $49		;[Note] 74
				;[Skip delay] 2
	db $46		;[Note] 71
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6D		;[Volume] 13
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_60:
	db $3A		;[Note] 59
	db $C0		;[Wait] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $3F		;[Note] 64
				;[Skip delay] 1
	db $41		;[Note] 66
				;[Skip delay] 1
	db $42		;[Note] 67
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_61:
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $95, $00		; track detune
	db $C0		;[Wait] 1
	db $36		;[Note] 55
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6D		;[Volume] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $68		;[Volume] 8
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $68		;[Volume] 8
	db $7B		;[Instrument] 12
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6E		;[Volume] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6A		;[Volume] 10
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6A		;[Volume] 10
	db $7D		;[Instrument] 14
	db $95, $03		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $95, $00		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $68		;[Volume] 8
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $68		;[Volume] 8
	db $7B		;[Instrument] 12
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6A		;[Volume] 10
	db $7D		;[Instrument] 14
	db $95, $03		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $95, $00		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6D		;[Volume] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $68		;[Volume] 8
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6E		;[Volume] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $68		;[Volume] 8
	db $7B		;[Instrument] 12
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6A		;[Volume] 10
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6A		;[Volume] 10
	db $7D		;[Instrument] 14
	db $95, $03		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $95, $00		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6D		;[Volume] 13
	db $7B		;[Instrument] 12
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $68		;[Volume] 8
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $68		;[Volume] 8
	db $7B		;[Instrument] 12
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $69		;[Volume] 9
	db $7C		;[Instrument] 13
	db $95, $03		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6F		;[Volume] 15
	db $7D		;[Instrument] 14
	db $95, $00		; track detune
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
	db $95, $03		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6A		;[Volume] 10
	db $7D		;[Instrument] 14
	db $95, $03		; track detune
				;[Skip delay] 1
	db $36		;[Note] 55
	db $6E		;[Volume] 14
	db $7C		;[Instrument] 13
	db $95, $00		; track detune
				;[Skip delay] 1
	db $35		;[Note] 54
	db $69		;[Volume] 9
	db $95, $03		; track detune
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_62:
	db $2E		;[Note] 47
	db $6F		;[Volume] 15
	db $75		;[Instrument] 6
	db $C1		;[Wait] 2
	db $2C		;[Note] 45
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $15		;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $6E		;[Volume] 14
	db $C3		;[Wait] 4
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $6B		;[Volume] 11
				;[Skip delay] 2
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $2C		;[Note] 45
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $15		;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $6E		;[Volume] 14
	db $C3		;[Wait] 4
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $6B		;[Volume] 11
				;[Skip delay] 2
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_63:
	db $33		;[Note] 52
	db $6B		;[Volume] 11
	db $7A		;[Instrument] 11
	db $C1		;[Wait] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $6D		;[Volume] 13
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $3A		;[Note] 59
	db $6B		;[Volume] 11
	db $C1		;[Wait] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $6D		;[Volume] 13
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $6C		;[Volume] 12
	db $C1		;[Wait] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $6D		;[Volume] 13
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6E		;[Volume] 14
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $B1, $03		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $35		;[Note] 54
	db $C1		;[Wait] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $6D		;[Volume] 13
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $3A		;[Note] 59
	db $6B		;[Volume] 11
	db $C1		;[Wait] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $6D		;[Volume] 13
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $C1		;[Wait] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $35		;[Note] 54
	db $6C		;[Volume] 12
	db $C3		;[Wait] 4
	db $6D		;[Volume] 13
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6E		;[Volume] 14
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $B1, $03		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_64:
	db $22		;[Note] 35
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
	db $C3		;[Wait] 4
	db $91, $03		;[FM drum] 4
	db $C1		;[Wait] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $78		;[Instrument] 9
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $25		;[Note] 38
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $91, $01		;[FM drum] 1
	db $C3		;[Wait] 4
	db $91, $03		;[FM drum] 4
				;[Skip delay] 4
	db $23		;[Note] 36
	db $C1		;[Wait] 2
	db $25		;[Note] 38
	db $6C		;[Volume] 12
	db $99			;Note link
				;[Skip delay] 2
	db $22		;[Note] 35
	db $91, $07		;[FM drum] 12
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
	db $C3		;[Wait] 4
	db $91, $03		;[FM drum] 4
	db $C1		;[Wait] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $78		;[Instrument] 9
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $91, $01		;[FM drum] 1
	db $C3		;[Wait] 4
	db $91, $03		;[FM drum] 4
				;[Skip delay] 4
	db $1B		;[Note] 28
	db $C1		;[Wait] 2
	db $22		;[Note] 35
	db $6C		;[Volume] 12
	db $99			;Note link
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_65:
	db $17		;[Note] 24
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $17		;[Note] 24
	db $67		;[Volume] 7
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $0B		;[Note] 12
	db $6A		;[Volume] 10
	db $95, $03		; track detune
	db $C2		;[Wait] 3
	db $0B		;[Note] 12
	db $67		;[Volume] 7
	db $C0		;[Wait] 1
	db $0F		;[Note] 16
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0B		;[Note] 12
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C6		;[Wait] 7
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $09		;[CMD vibrato] rep
	db $C8		;[Wait] 9
	db $1D		;[Note] 30
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $1D		;[Note] 30
	db $67		;[Volume] 7
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $11		;[Note] 18
	db $6A		;[Volume] 10
	db $95, $03		; track detune
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $67		;[Volume] 7
	db $95, $00		; track detune
	db $C0		;[Wait] 1
	db $0F		;[Note] 16
	db $6A		;[Volume] 10
	db $95, $03		; track detune
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $11		;[Note] 18
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1B		;[Note] 28
				;[Skip delay] 1
	db $1D		;[Note] 30
	db $D0		;[Wait] 17
	db $BF		;[End-Of-Track]
.track_66:
	db $17		;[Note] 24
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $17		;[Note] 24
	db $6B		;[Volume] 11
	db $95, $02		; track detune
	db $C1		;[Wait] 2
	db $0B		;[Note] 12
	db $C0		;[Wait] 1
	db $0B		;[Note] 12
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C2		;[Wait] 3
	db $0B		;[Note] 12
	db $6B		;[Volume] 11
	db $95, $03		; track detune
	db $C0		;[Wait] 1
	db $0F		;[Note] 16
	db $6F		;[Volume] 15
	db $95, $00		; track detune
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0B		;[Note] 12
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
	db $A6, $0C		; tone-slide
				;[Skip delay] 1
	db $17		;[Note] 24
	db $B0, $03		; tone-slide rep
	db $C6		;[Wait] 7
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $09		;[CMD vibrato] rep
	db $C8		;[Wait] 9
	db $1D		;[Note] 30
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $1D		;[Note] 30
	db $6B		;[Volume] 11
	db $95, $02		; track detune
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $C0		;[Wait] 1
	db $11		;[Note] 18
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $6B		;[Volume] 11
	db $95, $03		; track detune
	db $C0		;[Wait] 1
	db $0F		;[Note] 16
	db $6F		;[Volume] 15
	db $95, $00		; track detune
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $11		;[Note] 18
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1B		;[Note] 28
	db $A6, $0A		; tone-slide
				;[Skip delay] 1
	db $1D		;[Note] 30
	db $B0, $03		; tone-slide rep
	db $C6		;[Wait] 7
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $09		;[CMD vibrato] rep
	db $C8		;[Wait] 9
	db $BF		;[End-Of-Track]
.track_67:
	db $3F		;[Note] 64
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $A7, $78		;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6D		;[Volume] 13
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $13		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $6C		;[Volume] 12
	db $C7		;[Wait] 8
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A7, $78		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $77		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6D		;[Volume] 13
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6E		;[Volume] 14
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_68:
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
	db $75		;[Instrument] 6
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $11		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6F		;[Volume] 15
	db $CF		;[Wait] 16
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $2F		;[Note] 48
	db $C1		;[Wait] 2
	db $31		;[Note] 50
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6E		;[Volume] 14
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $11		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6F		;[Volume] 15
	db $CF		;[Wait] 16
	db $29		;[Note] 42
	db $C0		;[Wait] 1
	db $99			;Note link
				;[Skip delay] 1
	db $99			;Note link
	db $C1		;[Wait] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $27		;[Note] 40
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_69:
	db $60		;[Note] 97
	db $C2		;[Wait] 3
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
	db $75		;[Instrument] 6
	db $95, $01		; track detune
	db $C1		;[Wait] 2
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $11		;[CMD vibrato] rep
	db $D0		;[Wait] 17
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $2F		;[Note] 48
	db $C1		;[Wait] 2
	db $31		;[Note] 50
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
	db $C1		;[Wait..] 2
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $11		;[CMD vibrato] rep
	db $D0		;[Wait] 17
	db $29		;[Note] 42
	db $C0		;[Wait] 1
	db $99			;Note link
				;[Skip delay] 1
	db $99			;Note link
	db $C1		;[Wait] 2
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $27		;[Note] 40
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_70:
	db $1D		;[Note] 30
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $1B		;[Note] 28
	db $99			;Note link
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $99			;Note link
	db $C3		;[Wait] 4
	db $91, $03		;[FM drum] 4
	db $C7		;[Wait] 8
	db $26		;[Note] 39
	db $78		;[Instrument] 9
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
	db $C5		;[Wait] 6
	db $23		;[Note] 36
	db $6F		;[Volume] 15
	db $7F		;[Instrument] 16
	db $91, $03		;[FM drum] 4
	db $C3		;[Wait] 4
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $22		;[Note] 35
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $20		;[Note] 33
	db $99			;Note link
				;[Skip delay] 2
	db $22		;[Note] 35
	db $99			;Note link
	db $C3		;[Wait] 4
	db $91, $03		;[FM drum] 4
	db $C1		;[Wait] 2
	db $26		;[Note] 39
				;[Skip delay] 2
	db $24		;[Note] 37
	db $99			;Note link
				;[Skip delay] 2
	db $26		;[Note] 39
	db $99			;Note link
				;[Skip delay] 2
	db $26		;[Note] 39
	db $78		;[Instrument] 9
				;[Skip delay] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
	db $C5		;[Wait] 6
	db $91, $06		;[FM drum] 11
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_71:
	db $22		;[Note] 35
	db $C1		;[Wait] 2
	db $16		;[Note] 23
	db $91, $01		;[FM drum] 1
	db $C0		;[Wait] 1
	db $22		;[Note] 35
	db $67		;[Volume] 7
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $6A		;[Volume] 10
	db $95, $03		; track detune
	db $C1		;[Wait] 2
	db $14		;[Note] 21
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1A		;[Note] 27
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $14		;[Note] 21
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1D		;[Note] 30
				;[Skip delay] 1
	db $20		;[Note] 33
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $1D		;[Note] 30
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $67		;[Volume] 7
	db $95, $00		; track detune
	db $C0		;[Wait] 1
	db $22		;[Note] 35
	db $6A		;[Volume] 10
	db $95, $03		; track detune
	db $C1		;[Wait] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $19		;[Note] 26
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $22		;[Note] 35
	db $C1		;[Wait] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $22		;[Note] 35
	db $67		;[Volume] 7
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $6A		;[Volume] 10
	db $95, $03		; track detune
	db $C1		;[Wait] 2
	db $14		;[Note] 21
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1A		;[Note] 27
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1E		;[Note] 31
				;[Skip delay] 1
	db $20		;[Note] 33
	db $C0		;[Wait..] 1
	db $91, $02		;[FM drum] 2
	db $C7		;[Wait] 8
	db $A5, $01		; slide-down
	db $C0		;[Wait] 1
	db $AF, $01		; slide-down rep
				;[Skip delay] 1
	db $14		;[Note] 21
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_72:
	db $22		;[Note] 35
	db $C1		;[Wait] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $22		;[Note] 35
	db $6B		;[Volume] 11
	db $95, $02		; track detune
	db $C1		;[Wait] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $14		;[Note] 21
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1A		;[Note] 27
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $14		;[Note] 21
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1D		;[Note] 30
	db $A6, $0D		; tone-slide
				;[Skip delay] 1
	db $20		;[Note] 33
	db $B0, $02		; tone-slide rep
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $1D		;[Note] 30
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $6B		;[Volume] 11
	db $95, $02		; track detune
	db $C0		;[Wait] 1
	db $22		;[Note] 35
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $19		;[Note] 26
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $22		;[Note] 35
	db $C1		;[Wait] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $22		;[Note] 35
	db $6B		;[Volume] 11
	db $95, $02		; track detune
	db $C1		;[Wait] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $6F		;[Volume] 15
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $14		;[Note] 21
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1A		;[Note] 27
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1E		;[Note] 31
	db $A6, $08		; tone-slide
				;[Skip delay] 1
	db $20		;[Note] 33
	db $B0, $03		; tone-slide rep
	db $C4		;[Wait] 5
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $A5, $01		; slide-down
	db $C0		;[Wait] 1
	db $AF, $01		; slide-down rep
				;[Skip delay] 1
	db $14		;[Note] 21
	db $C1		;[Wait] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_73:
	db $3E		;[Note] 63
	db $68		;[Volume] 8
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $A7, $78		;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $1B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $6D		;[Volume] 13
	db $CF		;[Wait] 16
	db $47		;[Note] 72
	db $6C		;[Volume] 12
	db $80		;[Instrument] 17
	db $C1		;[Wait] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $3E		;[Note] 63
				;[Skip delay] 2
	db $3C		;[Note] 61
				;[Skip delay] 2
	db $3E		;[Note] 63
	db $C1		;[Wait..] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_74:
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $27		;[Note] 40
				;[Skip delay] 2
	db $29		;[Note] 42
	db $C1		;[Wait..] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $11		;[CMD vibrato] rep
	db $CC		;[Wait] 13
	db $6E		;[Volume] 14
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $2F		;[Note] 48
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $05		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6F		;[Volume] 15
	db $C3		;[Wait] 4
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $2C		;[Note] 45
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $C1		;[Wait..] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $32		;[Note] 51
	db $C1		;[Wait..] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $2E		;[Note] 47
	db $6B		;[Volume] 11
	db $74		;[Instrument] 5
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_75:
	db $C2		;[Wait] 3
	db $29		;[Note] 42
	db $C1		;[Wait] 2
	db $27		;[Note] 40
				;[Skip delay] 2
	db $29		;[Note] 42
	db $C1		;[Wait..] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $11		;[CMD vibrato] rep
	db $D0		;[Wait] 17
	db $2F		;[Note] 48
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $05		;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $2C		;[Note] 45
				;[Skip delay] 2
	db $2E		;[Note] 47
	db $C1		;[Wait..] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $32		;[Note] 51
	db $C1		;[Wait..] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $08		;[CMD vibrato] rep
	db $C7		;[Wait] 8
	db $2E		;[Note] 47
	db $6F		;[Volume] 15
	db $82		;[Instrument] 19
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_76:
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $78		;[Instrument] 9
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
	db $C3		;[Wait] 4
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 4
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
	db $C3		;[Wait] 4
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_77:
	db $A4, $03		; slide-up
	db $C0		;[Wait] 1
	db $A5, $03		; slide-down
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C1		;[Wait..] 2
	db $A5, $03		; slide-down
	db $C0		;[Wait] 1
	db $AF, $01		; slide-down rep
				;[Skip delay] 1
	db $14		;[Note] 21
	db $C1		;[Wait] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $20		;[Note] 33
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $19		;[Note] 26
	db $C1		;[Wait] 2
	db $1B		;[Note] 28
	db $C1		;[Wait..] 2
	db $A5, $03		; slide-down
	db $C0		;[Wait] 1
	db $AF, $01		; slide-down rep
				;[Skip delay] 1
	db $1B		;[Note] 28
	db $C1		;[Wait] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $0F		;[Note] 16
	db $C3		;[Wait] 4
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $0F		;[Note] 16
	db $C2		;[Wait] 3
	db $A4, $09		; slide-up
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $C1		;[Wait] 2
	db $14		;[Note] 21
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $C2		;[Wait] 3
	db $11		;[Note] 18
				;[Skip delay] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $19		;[Note] 26
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_78:
	db $33		;[Note] 52
	db $6C		;[Volume] 12
	db $80		;[Instrument] 17
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $33		;[Note] 52
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_79:
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $6A		;[Volume] 10
	db $75		;[Instrument] 6
	db $95, $01		; track detune
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $38		;[Note] 57
				;[Skip delay] 4
	db $38		;[Note] 57
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $3A		;[Note] 59
	db $C7		;[Wait] 8
	db $3D		;[Note] 62
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3A		;[Note] 59
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_80:
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $6C		;[Volume] 12
	db $75		;[Instrument] 6
	db $95, $01		; track detune
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $33		;[Note] 52
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_81:
	db $33		;[Note] 52
	db $6C		;[Volume] 12
	db $74		;[Instrument] 5
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $38		;[Note] 57
				;[Skip delay] 4
	db $38		;[Note] 57
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $3A		;[Note] 59
	db $C7		;[Wait] 8
	db $3D		;[Note] 62
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3A		;[Note] 59
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_82:
	db $33		;[Note] 52
	db $6F		;[Volume] 15
	db $82		;[Instrument] 19
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $33		;[Note] 52
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_83:
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
	db $C3		;[Wait] 4
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 4
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
	db $C3		;[Wait] 4
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 1
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_84:
	db $C0		;[Wait] 1
	db $A4, $03		; slide-up
				;[Skip delay] 1
	db $12		;[Note] 19
	db $C3		;[Wait] 4
	db $17		;[Note] 24
				;[Skip delay] 4
	db $12		;[Note] 19
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $14		;[Note] 21
	db $C3		;[Wait] 4
	db $19		;[Note] 26
	db $C1		;[Wait] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $1B		;[Note] 28
	db $C3		;[Wait] 4
	db $1D		;[Note] 30
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $1E		;[Note] 31
	db $C1		;[Wait] 2
	db $A5, $01		; slide-down
	db $C0		;[Wait] 1
	db $AF, $01		; slide-down rep
				;[Skip delay] 1
	db $1D		;[Note] 30
	db $C1		;[Wait] 2
	db $1B		;[Note] 28
	db $C3		;[Wait] 4
	db $12		;[Note] 19
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $16		;[Note] 23
	db $C1		;[Wait] 2
	db $19		;[Note] 26
	db $C2		;[Wait] 3
	db $A5, $03		; slide-down
	db $C0		;[Wait] 1
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C0		;[Wait] 1
	db $1B		;[Note] 28
				;[Skip delay] 1
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_85:
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $3A		;[Note] 59
				;[Skip delay] 4
	db $38		;[Note] 57
				;[Skip delay] 4
	db $3A		;[Note] 59
				;[Skip delay] 4
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $17		;[CMD vibrato] rep
	db $D6		;[Wait] 23
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_86:
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $09		;[CMD vibrato] rep
	db $C8		;[Wait] 9
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $09		;[CMD vibrato] rep
	db $C8		;[Wait] 9
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_87:
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $3A		;[Note] 59
				;[Skip delay] 4
	db $38		;[Note] 57
				;[Skip delay] 4
	db $3A		;[Note] 59
				;[Skip delay] 4
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $17		;[CMD vibrato] rep
	db $D6		;[Wait] 23
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $31		;[Note] 50
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_88:
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $09		;[CMD vibrato] rep
	db $C8		;[Wait] 9
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $09		;[CMD vibrato] rep
	db $C8		;[Wait] 9
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $2E		;[Note] 47
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_89:
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $78		;[Instrument] 9
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
	db $C3		;[Wait] 4
	db $91, $01		;[FM drum] 1
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 4
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $91, $06		;[FM drum] 11
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $91, $01		;[FM drum] 1
	db $C3		;[Wait] 4
	db $91, $03		;[FM drum] 4
				;[Skip delay] 4
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 4
	db $91, $03		;[FM drum] 4
	db $C1		;[Wait] 2
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_90:
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $0B		;[Note] 12
				;[Skip delay] 4
	db $12		;[Note] 19
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $0B		;[Note] 12
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C3		;[Wait] 4
	db $20		;[Note] 33
	db $C1		;[Wait] 2
	db $1E		;[Note] 31
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $16		;[Note] 23
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $1D		;[Note] 30
				;[Skip delay] 1
	db $1E		;[Note] 31
				;[Skip delay] 1
	db $1D		;[Note] 30
	db $C2		;[Wait] 3
	db $A5, $03		; slide-down
	db $C0		;[Wait] 1
	db $1B		;[Note] 28
	db $C1		;[Wait] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $11		;[Note] 18
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $19		;[Note] 26
	db $C3		;[Wait] 4
	db $0A		;[Note] 11
	db $C1		;[Wait] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_91:
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $33		;[Note] 52
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_92:
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $2A		;[Note] 43
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $38		;[Note] 57
				;[Skip delay] 4
	db $38		;[Note] 57
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3D		;[Note] 62
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3A		;[Note] 59
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_93:
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $33		;[Note] 52
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_94:
	db $2A		;[Note] 43
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $36		;[Note] 55
				;[Skip delay] 4
	db $38		;[Note] 57
				;[Skip delay] 4
	db $38		;[Note] 57
	db $C3		;[Wait..] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0B		;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3D		;[Note] 62
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $3A		;[Note] 59
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_95:
	db $C3		;[Wait] 4
	db $91, $03		;[FM drum] 4
				;[Skip delay] 4
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $78		;[Instrument] 9
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $67		;[Volume] 7
	db $C1		;[Wait..] 2
	db $91, $06		;[FM drum] 11
	db $C3		;[Wait] 4
	db $91, $06		;[FM drum] 11
				;[Skip delay] 4
	db $91, $03		;[FM drum] 4
				;[Skip delay] 4
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $67		;[Volume] 7
	db $C1		;[Wait..] 2
	db $91, $03		;[FM drum] 4
	db $C3		;[Wait] 4
	db $91, $05		;[FM drum] 6
				;[Skip delay] 4
	db $91, $03		;[FM drum] 4
				;[Skip delay] 4
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $67		;[Volume] 7
	db $C1		;[Wait..] 2
	db $91, $06		;[FM drum] 11
	db $C3		;[Wait] 4
	db $91, $05		;[FM drum] 6
				;[Skip delay] 4
	db $91, $04		;[FM drum] 5
				;[Skip delay] 4
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $67		;[Volume] 7
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $26		;[Note] 39
	db $67		;[Volume] 7
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_96:
	db $C1		;[Wait] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01		;[CMD vibrato] rep
				;[Skip delay] 1
	db $0B		;[Note] 12
	db $C3		;[Wait] 4
	db $0F		;[Note] 16
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $12		;[Note] 19
	db $C5		;[Wait] 6
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $17		;[Note] 24
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $19		;[Note] 26
	db $C3		;[Wait] 4
	db $0D		;[Note] 14
				;[Skip delay] 4
	db $14		;[Note] 21
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $19		;[Note] 26
	db $C3		;[Wait] 4
	db $19		;[Note] 26
	db $C0		;[Wait] 1
	db $1B		;[Note] 28
	db $C4		;[Wait] 5
	db $16		;[Note] 23
	db $C5		;[Wait] 6
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_97:
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $15		;[CMD vibrato] rep
	db $D4		;[Wait] 21
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $38		;[Note] 57
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $33		;[Note] 52
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_98:
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $1B		;[CMD vibrato] rep
	db $DA		;[Wait] 27
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $05		;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_99:
	db $C1		;[Wait] 2
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $15		;[CMD vibrato] rep
	db $D4		;[Wait] 21
	db $60		;[Note] 97
	db $C2		;[Wait] 3
	db $38		;[Note] 57
	db $C1		;[Wait] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $35		;[Note] 54
	db $C2		;[Wait] 3
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03		;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $33		;[Note] 52
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_100:
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $1B		;[CMD vibrato] rep
	db $DA		;[Wait] 27
	db $38		;[Note] 57
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $31		;[Note] 50
	db $C3		;[Wait] 4
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07		;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_101:
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $91, $08		;[FM drum] 14
				;[Skip delay] 2
	db $91, $08		;[FM drum] 14
				;[Skip delay] 2
	db $91, $08		;[FM drum] 14
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $91, $08		;[FM drum] 14
				;[Skip delay] 2
	db $91, $08		;[FM drum] 14
				;[Skip delay] 2
	db $91, $08		;[FM drum] 14
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $91, $08		;[FM drum] 14
				;[Skip delay] 2
	db $91, $08		;[FM drum] 14
				;[Skip delay] 2
	db $91, $08		;[FM drum] 14
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $91, $08		;[FM drum] 14
				;[Skip delay] 2
	db $91, $08		;[FM drum] 14
				;[Skip delay] 2
	db $91, $08		;[FM drum] 14
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $91, $09		;[FM drum] 15
				;[Skip delay] 2
	db $91, $09		;[FM drum] 15
				;[Skip delay] 2
	db $91, $09		;[FM drum] 15
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $91, $09		;[FM drum] 15
				;[Skip delay] 2
	db $91, $09		;[FM drum] 15
				;[Skip delay] 2
	db $91, $09		;[FM drum] 15
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $91, $09		;[FM drum] 15
				;[Skip delay] 2
	db $91, $09		;[FM drum] 15
				;[Skip delay] 2
	db $91, $09		;[FM drum] 15
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $91, $09		;[FM drum] 15
				;[Skip delay] 2
	db $91, $09		;[FM drum] 15
				;[Skip delay] 2
	db $91, $09		;[FM drum] 15
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_102:
	db $0F		;[Note] 16
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $0F		;[Note] 16
				;[Skip delay] 1
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C0		;[Wait] 1
	db $1A		;[Note] 27
				;[Skip delay] 1
	db $0E		;[Note] 15
				;[Skip delay] 1
	db $0E		;[Note] 15
				;[Skip delay] 1
	db $0E		;[Note] 15
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C0		;[Wait] 1
	db $19		;[Note] 26
				;[Skip delay] 1
	db $0D		;[Note] 14
				;[Skip delay] 1
	db $0D		;[Note] 14
				;[Skip delay] 1
	db $0D		;[Note] 14
	db $C1		;[Wait] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C0		;[Wait] 1
	db $1A		;[Note] 27
				;[Skip delay] 1
	db $14		;[Note] 21
				;[Skip delay] 1
	db $14		;[Note] 21
				;[Skip delay] 1
	db $14		;[Note] 21
	db $C1		;[Wait] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $15		;[Note] 22
	db $C0		;[Wait] 1
	db $15		;[Note] 22
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_103:
	db $0F		;[Note] 16
	db $6F		;[Volume] 15
	db $C0		;[Wait] 1
	db $0F		;[Note] 16
				;[Skip delay] 1
	db $0F		;[Note] 16
	db $C1		;[Wait] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $0F		;[Note] 16
				;[Skip delay] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C0		;[Wait] 1
	db $1A		;[Note] 27
				;[Skip delay] 1
	db $0E		;[Note] 15
				;[Skip delay] 1
	db $0E		;[Note] 15
				;[Skip delay] 1
	db $0E		;[Note] 15
	db $C1		;[Wait] 2
	db $15		;[Note] 22
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $0E		;[Note] 15
				;[Skip delay] 2
	db $1A		;[Note] 27
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C0		;[Wait] 1
	db $19		;[Note] 26
				;[Skip delay] 1
	db $0D		;[Note] 14
				;[Skip delay] 1
	db $0D		;[Note] 14
				;[Skip delay] 1
	db $0D		;[Note] 14
	db $C1		;[Wait] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $C0		;[Wait] 1
	db $1A		;[Note] 27
				;[Skip delay] 1
	db $14		;[Note] 21
				;[Skip delay] 1
	db $14		;[Note] 21
				;[Skip delay] 1
	db $14		;[Note] 21
	db $C1		;[Wait] 2
	db $1B		;[Note] 28
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $14		;[Note] 21
				;[Skip delay] 2
	db $20		;[Note] 33
				;[Skip delay] 2
	db $15		;[Note] 22
	db $C0		;[Wait] 1
	db $15		;[Note] 22
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_104:
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
	db $75		;[Instrument] 6
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $1D		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6F		;[Volume] 15
	db $DB		;[Wait] 28
	db $33		;[Note] 52
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $1D		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6F		;[Volume] 15
	db $DB		;[Wait] 28
	db $BF		;[End-Of-Track]
.track_105:
	db $33		;[Note] 52
	db $6F		;[Volume] 15
	db $72		;[Instrument] 3
	db $95, $00		; track detune
	db $C0		;[Wait] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $3F		;[Note] 64
	db $C1		;[Wait] 2
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $19		;[CMD vibrato] rep
	db $D8		;[Wait] 25
	db $31		;[Note] 50
	db $C0		;[Wait] 1
	db $31		;[Note] 50
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $3F		;[Note] 64
	db $C1		;[Wait] 2
	db $A7, $76		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $19		;[CMD vibrato] rep
	db $D8		;[Wait] 25
	db $BF		;[End-Of-Track]
.track_106:
	db $33		;[Note] 52
	db $6D		;[Volume] 13
	db $81		;[Instrument] 18
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_107:
	db $3A		;[Note] 59
	db $6C		;[Volume] 12
	db $81		;[Instrument] 18
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_108:
	db $60		;[Note] 97
	db $C2		;[Wait] 3
	db $3A		;[Note] 59
	db $6A		;[Volume] 10
	db $81		;[Instrument] 18
	db $95, $01		; track detune
	db $C1		;[Wait] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $41		;[Note] 66
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_109:
	db $91, $05		;[FM drum] 6
	db $C1		;[Wait] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $91, $05		;[FM drum] 6
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $78		;[Instrument] 9
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
	db $91, $04		;[FM drum] 5
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $91, $02		;[FM drum] 2
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
	db $91, $01		;[FM drum] 1
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $91, $02		;[FM drum] 2
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
	db $C0		;[Wait] 1
	db $26		;[Note] 39
	db $91, $02		;[FM drum] 2
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_110:
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $16		;[Note] 23
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $22		;[Note] 35
	db $C0		;[Wait] 1
	db $22		;[Note] 35
				;[Skip delay] 1
	db $23		;[Note] 36
				;[Skip delay] 1
	db $23		;[Note] 36
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $16		;[Note] 23
	db $6A		;[Volume] 10
	db $7E		;[Instrument] 15
	db $95, $03		; track detune
				;[Skip delay] 2
	db $0A		;[Note] 11
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_111:
	db $16		;[Note] 23
	db $C0		;[Wait] 1
	db $16		;[Note] 23
				;[Skip delay] 1
	db $16		;[Note] 23
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $22		;[Note] 35
				;[Skip delay] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $22		;[Note] 35
	db $C0		;[Wait] 1
	db $22		;[Note] 35
				;[Skip delay] 1
	db $23		;[Note] 36
				;[Skip delay] 1
	db $23		;[Note] 36
				;[Skip delay] 1
	db $17		;[Note] 24
	db $C1		;[Wait] 2
	db $16		;[Note] 23
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $16		;[Note] 23
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $0A		;[Note] 11
				;[Skip delay] 2
	db $17		;[Note] 24
				;[Skip delay] 2
	db $19		;[Note] 26
	db $C0		;[Wait] 1
	db $A5, $02		; slide-down
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_112:
	db $35		;[Note] 54
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0D		;[CMD vibrato] rep
				;[Skip delay] 1
	db $6F		;[Volume] 15
	db $CB		;[Wait] 12
	db $33		;[Note] 52
	db $C3		;[Wait] 4
	db $60		;[Note] 97
				;[Skip delay] 4
	db $60		;[Note] 97
	db $71		;[Instrument] 2
	db $95, $00		; track detune
	db $C5		;[Wait] 6
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_113:
	db $33		;[Note] 52
	db $C0		;[Wait] 1
	db $33		;[Note] 52
				;[Skip delay] 1
	db $3A		;[Note] 59
				;[Skip delay] 1
	db $60		;[Note] 97
				;[Skip delay] 1
	db $3F		;[Note] 64
	db $C1		;[Wait] 2
	db $A7, $75		;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $17		;[CMD vibrato] rep
	db $D6		;[Wait] 23
	db $31		;[Note] 50
	db $95, $00		; track detune
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_114:
	db $33		;[Note] 52
	db $C1		;[Wait] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $33		;[Note] 52
				;[Skip delay] 2
	db $2E		;[Note] 47
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $60		;[Note] 97
	db $C1		;[Wait..] 2
	db $6F		;[Volume] 15
	db $73		;[Instrument] 4
	db $95, $02		; track detune
	db $C5		;[Wait] 6
	db $3D		;[Note] 62
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_115:
	db $3A		;[Note] 59
	db $C1		;[Wait] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $60		;[Note] 97
	db $C1		;[Wait..] 2
	db $69		;[Volume] 9
	db $74		;[Instrument] 5
	db $95, $01		; track detune
	db $C7		;[Wait] 8
	db $BF		;[End-Of-Track]
.track_116:
	db $C0		;[Wait] 1
	db $42		;[Note] 67
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $3F		;[Note] 64
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $41		;[Note] 66
				;[Skip delay] 2
	db $3F		;[Note] 64
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $3A		;[Note] 59
				;[Skip delay] 2
	db $60		;[Note] 97
	db $6B		;[Volume] 11
	db $72		;[Instrument] 3
	db $95, $01		; track detune
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_117:
	db $BF		;[End-Of-Track]
; [ Song sub-track data ]
