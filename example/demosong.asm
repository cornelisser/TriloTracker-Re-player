; Compiled using tt_compile.exe V0.1 [02-03-2015]
; Copyright 2015 Richard Cornelisse

; Song: WHO DARES WINS 2014 CLEAR       
; By:   Artic Planet                    

;	org $c000

; [ Song start data ]
	db $05				; Initial song speed.
	dw .waveform_start 			; Start of the waveform data.
	dw .instrument_start 			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
		dw .track_0,.track_1,.track_2,.track_3,.track_4,.track_5,.track_6,.track_7		; Sequence step 0 /pattern 0
		dw .track_8,.track_9,.track_2,.track_10,.track_11,.track_5,.track_12,.track_13		; Sequence step 1 /pattern 1
		dw .track_14,.track_15,.track_2,.track_16,.track_17,.track_18,.track_19,.track_20		; Sequence step 2 /pattern 2
		dw .track_8,.track_15,.track_2,.track_21,.track_22,.track_18,.track_23,.track_24		; Sequence step 3 /pattern 3
		dw .track_25,.track_26,.track_2,.track_27,.track_28,.track_29,.track_30,.track_31		; Sequence step 4 /pattern 4
		dw .track_32,.track_33,.track_2,.track_34,.track_35,.track_36,.track_37,.track_38		; Sequence step 5 /pattern 5
		dw .track_25,.track_26,.track_2,.track_55,.track_28,.track_29,.track_30,.track_31		; Sequence step 6 /pattern 9
		dw .track_71,.track_72,.track_2,.track_73,.track_74,.track_75,.track_76,.track_77		; Sequence step 7 /pattern 14
		dw .track_39,.track_40,.track_2,.track_41,.track_42,.track_43,.track_44,.track_45		; Sequence step 8 /pattern 6
		dw .track_46,.track_47,.track_2,.track_48,.track_49,.track_50,.track_51,.track_52		; Sequence step 9 /pattern 7
		dw .track_39,.track_40,.track_2,.track_41,.track_42,.track_43,.track_44,.track_45		; Sequence step 10 /pattern 6
		dw .track_46,.track_47,.track_2,.track_48,.track_49,.track_50,.track_53,.track_54		; Sequence step 11 /pattern 8
		dw .track_56,.track_57,.track_2,.track_58,.track_59,.track_60,.track_61,.track_62		; Sequence step 12 /pattern 10
		dw .track_63,.track_57,.track_2,.track_64,.track_59,.track_60,.track_61,.track_62		; Sequence step 13 /pattern 11
		dw .track_65,.track_66,.track_2,.track_64,.track_59,.track_67,.track_68,.track_69		; Sequence step 14 /pattern 12
		dw .track_70,.track_66,.track_2,.track_64,.track_59,.track_67,.track_68,.track_69		; Sequence step 15 /pattern 13
		dw 0x0000, .restart			; End of sequence delimiter + restart address.

.waveform_start:
	db $00,$F8,$F0,$E8,$E0,$D8,$D0,$C8,$C0,$B8,$B0,$A8,$A0,$98,$90,$88,$80,$78,$70,$68,$60,$58,$50,$48,$40,$38,$30,$28,$20,$18,$10,$08	; Waveform 0
	db $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0	; Waveform 1
	db $00,$4E,$62,$6D,$75,$7A,$7D,$7E,$7F,$7E,$7D,$7A,$75,$6D,$62,$4E,$00,$B1,$9D,$92,$8A,$85,$82,$81,$80,$81,$82,$85,$8A,$92,$9D,$B1	; Waveform 2
	db $00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$00,$E7,$CF,$B9,$A6,$96,$8B,$83,$80,$83,$8B,$96,$A6,$B9,$CF,$E7	; Waveform 3
	db $00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$90,$A0,$B0,$C0,$D0,$E0,$F0,$00,$10,$20,$30,$40,$50,$60,$70,$7F,$70,$60,$50,$40,$30,$20,$10	; Waveform 4
	db $00,$E0,$C0,$A0,$80,$A0,$C0,$E0,$00,$20,$40,$60,$7F,$60,$40,$20,$00,$E0,$C0,$A0,$80,$A0,$C0,$E0,$00,$20,$40,$60,$7F,$60,$40,$20	; Waveform 5
	db $00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$00,$E0,$C0,$A0,$80,$A0,$C0,$E0,$00,$20,$40,$60,$7F,$60,$40,$20	; Waveform 6
	db $00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$80,$90,$A0,$B0,$C0,$D0,$E0,$F0,$00,$10,$20,$30,$40,$50,$60,$70	; Waveform 7
	db $00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$80,$A0,$C0,$E0,$00,$20,$40,$60,$80,$A0,$C0,$E0,$00,$20,$40,$60	; Waveform 8
	db $01,$2A,$40,$50,$5C,$68,$70,$78,$7F,$78,$70,$68,$5C,$50,$40,$2A,$FF,$D6,$C0,$B0,$A4,$98,$90,$88,$81,$88,$90,$98,$A4,$B0,$C0,$D6	; Waveform 9
	db $00,$40,$7F,$40,$01,$C0,$81,$C0,$01,$40,$7F,$40,$01,$C0,$01,$40,$01,$E0,$01,$20,$01,$F0,$01,$10,$01,$FF,$FF,$FF,$FF,$40,$40,$40	; Waveform 10
	db $00,$40,$7F,$40,$10,$01,$EA,$D6,$C3,$B9,$AF,$A4,$9C,$95,$8F,$8A,$86,$83,$81,$83,$86,$8A,$8F,$95,$9C,$A4,$AF,$B9,$C3,$D6,$EA,$FF	; Waveform 11
	db $00,$40,$7F,$40,$00,$C0,$FF,$C0,$05,$EB,$D6,$C3,$B9,$AF,$A4,$9C,$95,$8F,$89,$84,$81,$84,$89,$8F,$95,$9C,$A4,$AF,$B9,$C3,$D6,$EA	; Waveform 12
	db $00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$7F,$70,$60,$50,$40,$30,$20,$10	; Waveform 13
	db $00,$00,$20,$38,$50,$60,$68,$70,$70,$68,$60,$50,$38,$20,$00,$00,$E0,$C8,$B0,$A0,$98,$90,$90,$98,$A0,$B0,$C8,$E0,$00,$60,$00,$A0	; Waveform 14
	db $30,$50,$50,$30,$00,$00,$10,$40,$60,$70,$60,$30,$F0,$E0,$E0,$00,$20,$20,$10,$C0,$A0,$90,$A0,$C0,$00,$00,$D0,$B0,$B0,$D0,$00,$00	; Waveform 15
	db $A0,$90,$90,$A0,$A0,$B0,$B0,$B0,$C0,$C0,$D0,$D0,$E0,$E0,$F0,$F0,$00,$00,$10,$10,$20,$20,$30,$30,$40,$40,$50,$50,$60,$60,$60,$50	; Waveform 16
	db $00,$7F,$00,$80,$A0,$C0,$D8,$F0,$08,$20,$30,$40,$50,$60,$70,$78,$7C,$7F,$7C,$78,$70,$60,$50,$40,$30,$20,$08,$F0,$D8,$C0,$A0,$80	; Waveform 17
	db $7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80	; Waveform 18
	db $00,$00,$00,$00,$00,$00,$00,$00,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00	; Waveform 19
	db $00,$00,$00,$00,$00,$00,$00,$00,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$7F,$80,$00,$00,$00,$00,$00,$00,$00,$00	; Waveform 20
	db $80,$8E,$A0,$C0,$E0,$00,$20,$3F,$3E,$3C,$3A,$37,$31,$29,$20,$1C,$10,$00,$E6,$C0,$D0,$00,$20,$3F,$10,$E0,$80,$C0,$00,$20,$00,$90	; Waveform 21
	db $00,$70,$50,$20,$50,$70,$30,$00,$50,$7F,$60,$10,$30,$40,$00,$B0,$10,$60,$00,$E0,$F0,$00,$B0,$90,$C0,$10,$E0,$A0,$C0,$F0,$C0,$A0	; Waveform 22
	db $00,$00,$00,$00,$00,$78,$78,$00,$00,$80,$80,$80,$00,$00,$00,$00,$78,$78,$78,$00,$80,$80,$00,$00,$00,$00,$78,$78,$00,$00,$80,$80	; Waveform 23
	db $78,$78,$78,$78,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80	; Waveform 24
	db $80,$B0,$C0,$10,$1A,$2A,$2C,$1A,$00,$E0,$D0,$E0,$22,$53,$70,$75,$70,$31,$EA,$80,$88,$8A,$8C,$8E,$00,$7F,$75,$73,$62,$00,$C0,$90	; Waveform 25
	db $00,$00,$00,$00,$00,$70,$70,$00,$00,$80,$80,$80,$00,$00,$00,$00,$70,$70,$70,$00,$80,$80,$00,$00,$00,$00,$70,$70,$00,$00,$80,$80	; Waveform 26
	db $00,$00,$00,$80,$00,$70,$70,$70,$00,$00,$00,$80,$00,$00,$00,$80,$80,$80,$80,$00,$80,$00,$00,$00,$00,$80,$80,$80,$00,$80,$80,$80	; Waveform 27
	db $70,$70,$70,$70,$70,$70,$70,$70,$80,$80,$80,$80,$80,$80,$80,$80,$70,$70,$70,$80,$80,$80,$70,$70,$70,$70,$80,$80,$80,$80,$80,$80	; Waveform 28
	db $A0,$90,$90,$90,$A0,$A0,$B0,$B0,$C0,$C0,$D0,$D0,$E0,$E0,$F0,$F0,$00,$00,$10,$10,$20,$20,$30,$30,$40,$40,$50,$50,$60,$60,$60,$50	; Waveform 29
	db $70,$70,$60,$80,$90,$90,$80,$80,$40,$40,$30,$80,$90,$90,$80,$80,$20,$20,$10,$80,$90,$90,$80,$80,$00,$00,$F0,$80,$90,$90,$80,$80	; Waveform 30
	db $78,$70,$68,$60,$58,$50,$48,$40,$38,$30,$28,$20,$18,$10,$08,$00,$78,$70,$68,$60,$58,$50,$48,$40,$38,$30,$28,$20,$18,$10,$08,$00	; Waveform 31

.instrument_start:
	dw .ins_1,.ins_2,.ins_3,.ins_4,.ins_5,.ins_6,.ins_7,.ins_8,.ins_9,.ins_10,.ins_11,.ins_12,.ins_13,.ins_14,.ins_15,.ins_16,.ins_17,.ins_18,.ins_19,.ins_20,.ins_21,.ins_22,.ins_23,.ins_24,.ins_25,.ins_26,.ins_27,.ins_28,.ins_29,.ins_30,.ins_31
.ins_1:
		db 1					; Waveform
		db .rst_i1-(.ins_1 +2)		; Restart
		db $11,$0F
		db $11,$0A
		db $11,$0B
		db $11,$0B
		db $11,$0C
		db $11,$0C
		db $11,$0C
		db $11,$0A
		db $11,$09
.rst_i1:
		db $15,$08,$01,$00
		db $15,$08,$02,$00
		db $15,$07,$FE,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FE,$FF
		db $15,$07,$02,$00
		db $1D,$07,$01,$00
.ins_2:
		db 2					; Waveform
		db .rst_i2-(.ins_2 +2)		; Restart
		db $11,$0C
		db $11,$0B
		db $11,$0C
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $11,$09
.rst_i2:
		db $11,$08
		db $11,$08
		db $19,$08
.ins_3:
		db 3					; Waveform
		db .rst_i3-(.ins_3 +2)		; Restart
		db $11,$0A
		db $11,$0B
		db $11,$0C
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $11,$09
		db $11,$08
		db $11,$08
.rst_i3:
		db $15,$07,$01,$00
		db $15,$07,$02,$00
		db $15,$07,$FE,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FE,$FF
		db $15,$07,$02,$00
		db $15,$07,$01,$00
		db $19,$07
.ins_4:
		db 4					; Waveform
		db .rst_i4-(.ins_4 +2)		; Restart
		db $11,$03
		db $11,$03
		db $11,$04
		db $11,$04
		db $11,$05
		db $11,$05
		db $11,$06
		db $11,$06
		db $11,$07
		db $11,$07
		db $11,$06
.rst_i4:
		db $15,$05,$01,$00
		db $15,$05,$02,$00
		db $15,$05,$FD,$FF
		db $15,$05,$FF,$FF
		db $15,$05,$FE,$FF
		db $1D,$05,$03,$00
.ins_5:
		db 5					; Waveform
		db .rst_i5-(.ins_5 +2)		; Restart
		db $11,$0D
		db $11,$0A
		db $11,$0C
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $11,$09
.rst_i5:
		db $11,$08
		db $11,$08
		db $15,$08,$01,$00
		db $15,$08,$02,$00
		db $15,$08,$FD,$FF
		db $15,$08,$FF,$FF
		db $15,$08,$FE,$FF
		db $1D,$08,$03,$00
.ins_6:
.ins_7:
		db 7					; Waveform
		db .rst_i7-(.ins_7 +2)		; Restart
		db $11,$0C
		db $11,$0A
		db $11,$0C
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $11,$09
.rst_i7:
		db $11,$08
		db $11,$08
		db $15,$07,$01,$00
		db $15,$07,$02,$00
		db $15,$07,$FD,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FE,$FF
		db $1D,$07,$03,$00
.ins_8:
.ins_9:
		db 9					; Waveform
		db .rst_i9-(.ins_9 +2)		; Restart
		db $11,$0C
		db $11,$0A
		db $11,$0C
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $11,$09
.rst_i9:
		db $11,$08
		db $11,$08
		db $15,$07,$01,$00
		db $15,$07,$02,$00
		db $15,$07,$FD,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FE,$FF
		db $1D,$07,$03,$00
.ins_10:
.ins_11:
		db 11					; Waveform
		db .rst_i11-(.ins_11 +2)		; Restart
		db $11,$0C
		db $11,$0A
		db $11,$0C
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $11,$09
.rst_i11:
		db $11,$08
		db $11,$08
		db $15,$07,$01,$00
		db $15,$07,$02,$00
		db $15,$07,$FD,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FE,$FF
		db $1D,$07,$03,$00
.ins_12:
		db 12					; Waveform
		db .rst_i12-(.ins_12 +2)		; Restart
		db $11,$0C
		db $11,$0B
		db $11,$0C
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $01,$02
.rst_i12:
		db $11,$08
		db $15,$08,$01,$00
		db $1D,$07,$FF,$FF
.ins_13:
.ins_14:
		db 14					; Waveform
		db .rst_i14-(.ins_14 +2)		; Restart
		db $11,$0C
		db $11,$0B
		db $11,$0C
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $11,$09
.rst_i14:
		db $15,$08,$01,$00
		db $15,$08,$02,$00
		db $15,$07,$FE,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FE,$FF
		db $15,$07,$02,$00
		db $1D,$07,$01,$00
.ins_15:
.ins_16:
		db 14					; Waveform
		db .rst_i16-(.ins_16 +2)		; Restart
		db $15,$0F,$28,$01
		db $15,$0B,$D8,$FE
		db $11,$0C
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $11,$09
.rst_i16:
		db $15,$08,$01,$00
		db $15,$08,$02,$00
		db $15,$07,$FE,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FF,$FF
		db $15,$07,$FE,$FF
		db $15,$07,$02,$00
		db $1D,$07,$01,$00
.ins_17:
		db 31					; Waveform
		db .rst_i17-(.ins_17 +2)		; Restart
		db $15,$0F,$28,$01
.rst_i17:
		db $09,$00
.ins_18:
		db 31					; Waveform
		db .rst_i18-(.ins_18 +2)		; Restart
		db $95,$0D,$08,$00
		db $85,$0C,$F8,$FF
		db $81,$0A
		db $81,$09
		db $81,$07
		db $81,$05
		db $81,$03
.rst_i18:
		db $88
.ins_19:
		db 31					; Waveform
		db .rst_i19-(.ins_19 +2)		; Restart
		db $15,$0F,$2F,$00
		db $15,$0E,$2F,$00
		db $15,$0D,$2F,$00
.rst_i19:
		db $1C,$2F,$00
.ins_20:
		db 31					; Waveform
		db .rst_i20-(.ins_20 +2)		; Restart
		db $81,$0E
.rst_i20:
		db $09,$00
.ins_21:
		db 31					; Waveform
		db .rst_i21-(.ins_21 +2)		; Restart
		db $E1,$0E,$01
		db $E1,$0B,$01
		db $E1,$0B,$01
.rst_i21:
		db $88
.ins_22:
.ins_23:
		db 31					; Waveform
		db .rst_i23-(.ins_23 +2)		; Restart
		db $95,$0D,$08,$00
		db $85,$0B,$F8,$FF
		db $81,$09
		db $81,$08
		db $81,$05
.rst_i23:
		db $89,$00
.ins_24:
.ins_25:
.ins_26:
.ins_27:
		db 0					; Waveform
		db .rst_i27-(.ins_27 +2)		; Restart
.rst_i27:
		db $09,$00
.ins_28:
.ins_29:
.ins_30:
.ins_31:
		db 0					; Waveform
		db .rst_i31-(.ins_31 +2)		; Restart
.rst_i31:
		db $09,$00

; [ Song track data ]
.track_0:
	db $56		;[Note] 87
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $56		;[Note] 87
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $54		;[Note] 85
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $24		;[Note] 37
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $56		;[Note] 87
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $56		;[Note] 87
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C0		;[Wait] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6C		;[Volume] 12
	db $82		;[Instrument] 19
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6D		;[Volume] 13
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_1:
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $C1		;[Wait] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $18		;[Note] 25
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $18		;[Note] 25
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
	db $AA, $8E; volume slide
	db $C0		;[Wait] 1
	db $B4, $02; volume slide rep
	db $C4		;[Wait] 5
	db $1D		;[Note] 30
	db $7F		;[Instrument] 16
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_2:
	db $FF		;[Wait] 64
	db $BF		;[End-Of-Track]
.track_3:
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $76		;[Instrument] 7
	db $90, $0B; set waveform
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $C0		;[Wait] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $C0		;[Wait] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_4:
	db $1A		;[Note] 27
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C5		;[Wait] 6
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $C5		;[Wait] 6
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
	db $C1		;[Wait..] 2
	db $A5, $07; slide-down
	db $C0		;[Wait] 1
	db $AF, $07; slide-down rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C2		;[Wait] 3
	db $6A		;[Volume] 10
	db $C2		;[Wait..] 3
	db $AA, $8E; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $21		;[Note] 34
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $1D		;[Note] 30
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $60		;[Note] 97
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_5:
	db $0E		;[Note] 15
	db $6E		;[Volume] 14
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $02		;[Note] 3
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $02		;[Note] 3
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $02		;[Note] 3
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $02		;[Note] 3
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $02		;[Note] 3
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $02		;[Note] 3
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $02		;[Note] 3
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $02		;[Note] 3
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $00		;[Note] 1
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $00		;[Note] 1
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $02		;[Note] 3
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $02		;[Note] 3
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $02		;[Note] 3
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $02		;[Note] 3
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $02		;[Note] 3
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $02		;[Note] 3
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6E		;[Volume] 14
	db $AA, $8E; volume slide
	db $C0		;[Wait] 1
	db $B4, $02; volume slide rep
	db $C4		;[Wait] 5
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_6:
	db $1A		;[Note] 27
	db $6F		;[Volume] 15
	db $74		;[Instrument] 5
	db $90, $05; set waveform
	db $C5		;[Wait] 6
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $C5		;[Wait] 6
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
	db $C1		;[Wait..] 2
	db $A5, $07; slide-down
	db $C0		;[Wait] 1
	db $AF, $07; slide-down rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C2		;[Wait] 3
	db $6A		;[Volume] 10
	db $C2		;[Wait..] 3
	db $AA, $8E; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $26		;[Note] 39
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $29		;[Note] 42
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_7:
	db $C3		;[Wait] 4
	db $1A		;[Note] 27
	db $66		;[Volume] 6
	db $74		;[Instrument] 5
	db $90, $05; set waveform
	db $C5		;[Wait] 6
	db $65		;[Volume] 5
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $66		;[Volume] 6
	db $C5		;[Wait] 6
	db $65		;[Volume] 5
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $66		;[Volume] 6
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $C5		;[Wait] 6
	db $65		;[Volume] 5
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $A5, $07; slide-down
	db $C0		;[Wait] 1
	db $AF, $07; slide-down rep
	db $C2		;[Wait] 3
	db $63		;[Volume] 3
	db $C1		;[Wait] 2
	db $62		;[Volume] 2
	db $C1		;[Wait..] 2
	db $AA, $8E; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $65		;[Volume] 5
	db $C0		;[Wait] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $61		;[Volume] 1
				;[Skip delay] 1
	db $26		;[Note] 39
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $61		;[Volume] 1
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_8:
	db $56		;[Note] 87
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $56		;[Note] 87
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $54		;[Note] 85
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $24		;[Note] 37
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $56		;[Note] 87
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $56		;[Note] 87
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $6B		;[Volume] 11
	db $C1		;[Wait] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $29		;[Note] 42
	db $66		;[Volume] 6
				;[Skip delay] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_9:
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $C1		;[Wait] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $18		;[Note] 25
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $18		;[Note] 25
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $0E		;[Note] 15
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
	db $AA, $8E; volume slide
	db $C0		;[Wait] 1
	db $B4, $02; volume slide rep
	db $C4		;[Wait] 5
	db $1D		;[Note] 30
	db $7F		;[Instrument] 16
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_10:
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $76		;[Instrument] 7
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $C0		;[Wait] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $C0		;[Wait] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_11:
	db $1A		;[Note] 27
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C5		;[Wait] 6
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1F		;[Note] 32
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $AA, $86; volume slide
	db $C0		;[Wait] 1
	db $B4, $07; volume slide rep
	db $C6		;[Wait] 7
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $21		;[Note] 34
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1F		;[Note] 32
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1C		;[Note] 29
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1A		;[Note] 27
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_12:
	db $1A		;[Note] 27
	db $6F		;[Volume] 15
	db $74		;[Instrument] 5
	db $90, $05; set waveform
	db $C5		;[Wait] 6
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1F		;[Note] 32
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $AA, $86; volume slide
	db $C0		;[Wait] 1
	db $B4, $07; volume slide rep
	db $C6		;[Wait] 7
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $21		;[Note] 34
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1F		;[Note] 32
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1C		;[Note] 29
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1A		;[Note] 27
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_13:
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $65		;[Volume] 5
				;[Skip delay] 2
	db $29		;[Note] 42
	db $63		;[Volume] 3
	db $74		;[Instrument] 5
	db $90, $05; set waveform
	db $C5		;[Wait] 6
	db $65		;[Volume] 5
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $66		;[Volume] 6
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1F		;[Note] 32
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $65		;[Volume] 5
				;[Skip delay] 2
	db $24		;[Note] 37
	db $66		;[Volume] 6
	db $AA, $86; volume slide
	db $C0		;[Wait] 1
	db $B4, $07; volume slide rep
	db $C6		;[Wait] 7
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $21		;[Note] 34
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1F		;[Note] 32
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1C		;[Note] 29
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_14:
	db $5B		;[Note] 92
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $5B		;[Note] 92
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $2B		;[Note] 44
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $6B		;[Volume] 11
				;[Skip delay] 4
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $5B		;[Note] 92
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $2B		;[Note] 44
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C0		;[Wait] 1
	db $2B		;[Note] 44
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6C		;[Volume] 12
	db $82		;[Instrument] 19
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $21		;[Note] 34
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6D		;[Volume] 13
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_15:
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
	db $AA, $8E; volume slide
	db $C0		;[Wait] 1
	db $B4, $02; volume slide rep
	db $C4		;[Wait] 5
	db $1D		;[Note] 30
	db $7F		;[Instrument] 16
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_16:
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
	db $76		;[Instrument] 7
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
	db $C0		;[Wait] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1D		;[Note] 30
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
	db $C0		;[Wait] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_17:
	db $1A		;[Note] 27
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C5		;[Wait] 6
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $C5		;[Wait] 6
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
	db $C1		;[Wait..] 2
	db $A5, $07; slide-down
	db $C0		;[Wait] 1
	db $AF, $07; slide-down rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C2		;[Wait] 3
	db $6A		;[Volume] 10
	db $C2		;[Wait..] 3
	db $AA, $8E; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $21		;[Note] 34
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $26		;[Note] 39
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $1D		;[Note] 30
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_18:
	db $13		;[Note] 20
	db $6E		;[Volume] 14
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $07		;[Note] 8
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6E		;[Volume] 14
	db $AA, $8E; volume slide
	db $C0		;[Wait] 1
	db $B4, $02; volume slide rep
	db $C4		;[Wait] 5
	db $11		;[Note] 18
	db $C1		;[Wait] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_19:
	db $1A		;[Note] 27
	db $6F		;[Volume] 15
	db $74		;[Instrument] 5
	db $90, $05; set waveform
	db $C5		;[Wait] 6
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $C5		;[Wait] 6
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
	db $C1		;[Wait..] 2
	db $A5, $07; slide-down
	db $C0		;[Wait] 1
	db $AF, $07; slide-down rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C2		;[Wait] 3
	db $6A		;[Volume] 10
	db $C2		;[Wait..] 3
	db $AA, $8E; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $30		;[Note] 49
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $29		;[Note] 42
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_20:
	db $C3		;[Wait] 4
	db $1A		;[Note] 27
	db $66		;[Volume] 6
	db $74		;[Instrument] 5
	db $90, $05; set waveform
	db $C5		;[Wait] 6
	db $65		;[Volume] 5
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $66		;[Volume] 6
	db $C5		;[Wait] 6
	db $65		;[Volume] 5
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $66		;[Volume] 6
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $C1		;[Wait] 2
	db $65		;[Volume] 5
	db $C2		;[Wait] 3
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $64		;[Volume] 4
	db $B1, $06	;[CMD vibrato] rep
	db $C5		;[Wait] 6
	db $A5, $07; slide-down
	db $C0		;[Wait] 1
	db $AF, $07; slide-down rep
	db $C6		;[Wait] 7
	db $AA, $8E; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $65		;[Volume] 5
	db $C0		;[Wait] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $61		;[Volume] 1
				;[Skip delay] 1
	db $30		;[Note] 49
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $61		;[Volume] 1
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_21:
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
	db $76		;[Instrument] 7
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $C0		;[Wait..] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $1D		;[Note] 30
	db $C0		;[Wait] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C0		;[Wait..] 1
	db $90, $07; set waveform
				;[Skip delay] 1
	db $24		;[Note] 37
	db $62		;[Volume] 2
	db $7A		;[Instrument] 11
				;[Skip delay] 1
	db $28		;[Note] 41
				;[Skip delay] 1
	db $29		;[Note] 42
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $26		;[Note] 39
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $29		;[Note] 42
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $28		;[Note] 41
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $2B		;[Note] 44
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $29		;[Note] 42
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $2D		;[Note] 46
				;[Skip delay] 1
	db $2F		;[Note] 48
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2F		;[Note] 48
				;[Skip delay] 1
	db $30		;[Note] 49
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $2D		;[Note] 46
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $2F		;[Note] 48
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $32		;[Note] 51
				;[Skip delay] 1
	db $34		;[Note] 53
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $30		;[Note] 49
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_22:
	db $1A		;[Note] 27
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C5		;[Wait] 6
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1F		;[Note] 32
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $AA, $86; volume slide
	db $C0		;[Wait] 1
	db $B4, $07; volume slide rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $29		;[Note] 42
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_23:
	db $1A		;[Note] 27
	db $6F		;[Volume] 15
	db $74		;[Instrument] 5
	db $90, $05; set waveform
	db $C5		;[Wait] 6
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1F		;[Note] 32
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $AA, $86; volume slide
	db $C0		;[Wait] 1
	db $B4, $07; volume slide rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $29		;[Note] 42
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_24:
	db $30		;[Note] 49
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $32		;[Note] 51
	db $65		;[Volume] 5
				;[Skip delay] 2
	db $29		;[Note] 42
	db $63		;[Volume] 3
	db $74		;[Instrument] 5
	db $90, $05; set waveform
	db $C5		;[Wait] 6
	db $65		;[Volume] 5
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $66		;[Volume] 6
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1D		;[Note] 30
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $1F		;[Note] 32
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $65		;[Volume] 5
				;[Skip delay] 2
	db $24		;[Note] 37
	db $66		;[Volume] 6
	db $AA, $86; volume slide
	db $C0		;[Wait] 1
	db $B4, $07; volume slide rep
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $65		;[Volume] 5
				;[Skip delay] 2
	db $24		;[Note] 37
	db $66		;[Volume] 6
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $24		;[Note] 37
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $26		;[Note] 39
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $29		;[Note] 42
	db $AA, $84; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_25:
	db $56		;[Note] 87
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C7		;[Wait] 8
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
	db $C5		;[Wait] 6
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $58		;[Note] 89
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $28		;[Note] 41
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $58		;[Note] 89
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $28		;[Note] 41
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $28		;[Note] 41
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $6B		;[Volume] 11
				;[Skip delay] 4
	db $28		;[Note] 41
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_26:
	db $0E		;[Note] 15
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $0E		;[Note] 15
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $10		;[Note] 17
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_27:
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $76		;[Instrument] 7
	db $C0		;[Wait] 1
	db $34		;[Note] 53
	db $69		;[Volume] 9
	db $7A		;[Instrument] 11
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $30		;[Note] 49
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $30		;[Note] 49
	db $63		;[Volume] 3
				;[Skip delay] 1
	db $34		;[Note] 53
				;[Skip delay] 1
	db $35		;[Note] 54
				;[Skip delay] 1
	db $37		;[Note] 56
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $76		;[Instrument] 7
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_28:
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $6B		;[Volume] 11
	db $A5, $07; slide-down
	db $C0		;[Wait] 1
	db $AF, $03; slide-down rep
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_29:
	db $02		;[Note] 3
	db $6E		;[Volume] 14
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $02		;[Note] 3
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $02		;[Note] 3
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $02		;[Note] 3
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $02		;[Note] 3
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $02		;[Note] 3
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $02		;[Note] 3
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $02		;[Note] 3
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $04		;[Note] 5
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_30:
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $74		;[Instrument] 5
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $6B		;[Volume] 11
	db $A5, $07; slide-down
	db $C0		;[Wait] 1
	db $AF, $03; slide-down rep
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $C4		;[Wait] 5
	db $AA, $0A; volume slide
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_31:
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $74		;[Instrument] 5
	db $90, $05; set waveform
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
	db $B1, $06	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $66		;[Volume] 6
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
	db $B1, $06	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $A5, $07; slide-down
	db $C0		;[Wait] 1
	db $AF, $03; slide-down rep
				;[Skip delay] 1
	db $63		;[Volume] 3
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $66		;[Volume] 6
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
	db $B1, $06	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $21		;[Note] 34
	db $66		;[Volume] 6
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
	db $B1, $06	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $66		;[Volume] 6
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_32:
	db $59		;[Note] 90
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C7		;[Wait] 8
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
	db $C5		;[Wait] 6
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C2		;[Wait] 3
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C0		;[Wait] 1
	db $29		;[Note] 42
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $29		;[Note] 42
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $29		;[Note] 42
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $81		;[Instrument] 18
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
	db $86		;[Instrument] 23
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $6B		;[Volume] 11
				;[Skip delay] 4
	db $2B		;[Note] 44
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_33:
	db $11		;[Note] 18
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $11		;[Note] 18
	db $6E		;[Volume] 14
	db $7D		;[Instrument] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $11		;[Note] 18
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $13		;[Note] 20
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $13		;[Note] 20
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_34:
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $76		;[Instrument] 7
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C2		;[Wait] 3
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_35:
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $69		;[Volume] 9
	db $74		;[Instrument] 5
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6D		;[Volume] 13
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_36:
	db $05		;[Note] 6
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $78		;[Instrument] 9
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $05		;[Note] 6
	db $7B		;[Instrument] 12
				;[Skip delay] 1
	db $78		;[Instrument] 9
				;[Skip delay] 1
	db $05		;[Note] 6
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $07		;[Note] 8
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $07		;[Note] 8
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $07		;[Note] 8
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_37:
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $74		;[Instrument] 5
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $26		;[Note] 39
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $6B		;[Volume] 11
	db $A5, $07; slide-down
	db $C0		;[Wait] 1
	db $AF, $03; slide-down rep
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $6D		;[Volume] 13
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $A7, $05	;[CMD vibrato]
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_38:
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $66		;[Volume] 6
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
	db $B1, $06	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $66		;[Volume] 6
				;[Skip delay] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
	db $B1, $06	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $A5, $07; slide-down
	db $C0		;[Wait] 1
	db $AF, $03; slide-down rep
				;[Skip delay] 1
	db $63		;[Volume] 3
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $24		;[Note] 37
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $24		;[Note] 37
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $24		;[Note] 37
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $24		;[Note] 37
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $24		;[Note] 37
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $C3		;[Wait] 4
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $66		;[Volume] 6
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_39:
	db $5D		;[Note] 94
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $5D		;[Note] 94
	db $66		;[Volume] 6
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $5D		;[Note] 94
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $66		;[Volume] 6
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $5B		;[Note] 92
	db $66		;[Volume] 6
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $5B		;[Note] 92
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $66		;[Volume] 6
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_40:
	db $15		;[Note] 22
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $15		;[Note] 22
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $15		;[Note] 22
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $15		;[Note] 22
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $15		;[Note] 22
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $15		;[Note] 22
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $15		;[Note] 22
	db $6E		;[Volume] 14
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $15		;[Note] 22
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $15		;[Note] 22
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $18		;[Note] 25
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $18		;[Note] 25
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $18		;[Note] 25
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $13		;[Note] 20
	db $6E		;[Volume] 14
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $13		;[Note] 20
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $13		;[Note] 20
	db $6E		;[Volume] 14
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $13		;[Note] 20
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $13		;[Note] 20
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_41:
	db $21		;[Note] 34
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $24		;[Note] 37
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0F	;[CMD vibrato] rep
	db $CE		;[Wait] 15
	db $28		;[Note] 41
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0F	;[CMD vibrato] rep
	db $CE		;[Wait] 15
	db $BF		;[End-Of-Track]
.track_42:
	db $24		;[Note] 37
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $28		;[Note] 41
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0F	;[CMD vibrato] rep
	db $CE		;[Wait] 15
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $2F		;[Note] 48
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0F	;[CMD vibrato] rep
	db $CE		;[Wait] 15
	db $BF		;[End-Of-Track]
.track_43:
	db $09		;[Note] 10
	db $6E		;[Volume] 14
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $09		;[Note] 10
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $09		;[Note] 10
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $09		;[Note] 10
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $09		;[Note] 10
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $09		;[Note] 10
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $09		;[Note] 10
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $09		;[Note] 10
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $09		;[Note] 10
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $0C		;[Note] 13
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $0C		;[Note] 13
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $07		;[Note] 8
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $07		;[Note] 8
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $07		;[Note] 8
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $07		;[Note] 8
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $07		;[Note] 8
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_44:
	db $28		;[Note] 41
	db $6F		;[Volume] 15
	db $7A		;[Instrument] 11
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $6A		;[Volume] 10
	db $A4, $07; slide-up
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $AE, $01; slide-up rep
				;[Skip delay] 1
	db $34		;[Note] 53
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $34		;[Note] 53
	db $C3		;[Wait] 4
	db $B1, $08	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $34		;[Note] 53
	db $6F		;[Volume] 15
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $32		;[Note] 51
	db $AA, $8A; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $32		;[Note] 51
	db $C5		;[Wait] 6
	db $30		;[Note] 49
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $34		;[Note] 53
	db $AA, $8A; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_45:
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $66		;[Volume] 6
	db $7A		;[Instrument] 11
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $63		;[Volume] 3
	db $A4, $07; slide-up
	db $C0		;[Wait] 1
	db $64		;[Volume] 4
	db $AE, $01; slide-up rep
				;[Skip delay] 1
	db $34		;[Note] 53
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $39		;[Note] 58
				;[Skip delay] 2
	db $37		;[Note] 56
				;[Skip delay] 2
	db $34		;[Note] 53
	db $C3		;[Wait] 4
	db $B1, $08	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $65		;[Volume] 5
				;[Skip delay] 2
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $63		;[Volume] 3
				;[Skip delay] 2
	db $34		;[Note] 53
	db $66		;[Volume] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $32		;[Note] 51
	db $AA, $8A; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $32		;[Note] 51
	db $C5		;[Wait] 6
	db $30		;[Note] 49
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $32		;[Note] 51
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $32		;[Note] 51
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_46:
	db $59		;[Note] 90
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $59		;[Note] 90
	db $66		;[Volume] 6
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $59		;[Note] 90
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
				;[Skip delay] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $59		;[Note] 90
	db $66		;[Volume] 6
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $59		;[Note] 90
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $5B		;[Note] 92
	db $66		;[Volume] 6
	db $83		;[Instrument] 20
	db $C1		;[Wait] 2
	db $5B		;[Note] 92
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $66		;[Volume] 6
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_47:
	db $11		;[Note] 18
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $11		;[Note] 18
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $11		;[Note] 18
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $11		;[Note] 18
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $18		;[Note] 25
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $18		;[Note] 25
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $18		;[Note] 25
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $13		;[Note] 20
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $13		;[Note] 20
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_48:
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $24		;[Note] 37
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0F	;[CMD vibrato] rep
	db $CE		;[Wait] 15
	db $28		;[Note] 41
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $23		;[Note] 36
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0F	;[CMD vibrato] rep
	db $CE		;[Wait] 15
	db $BF		;[End-Of-Track]
.track_49:
	db $24		;[Note] 37
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $28		;[Note] 41
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0F	;[CMD vibrato] rep
	db $CE		;[Wait] 15
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $26		;[Note] 39
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0F	;[CMD vibrato] rep
	db $CE		;[Wait] 15
	db $BF		;[End-Of-Track]
.track_50:
	db $05		;[Note] 6
	db $6E		;[Volume] 14
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $0C		;[Note] 13
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $0C		;[Note] 13
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $0C		;[Note] 13
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_51:
	db $28		;[Note] 41
	db $6F		;[Volume] 15
	db $7A		;[Instrument] 11
	db $C3		;[Wait] 4
	db $35		;[Note] 54
	db $C1		;[Wait] 2
	db $37		;[Note] 56
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $34		;[Note] 53
	db $6F		;[Volume] 15
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $A4, $07; slide-up
				;[Skip delay] 1
	db $34		;[Note] 53
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $C1		;[Wait..] 2
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $2D		;[Note] 46
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C6		;[Wait] 7
	db $30		;[Note] 49
	db $AA, $8A; volume slide
	db $C0		;[Wait] 1
	db $B4, $07; volume slide rep
	db $C6		;[Wait] 7
	db $32		;[Note] 51
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $A5, $07; slide-down
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6F		;[Volume] 15
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $C1		;[Wait..] 2
	db $AA, $8A; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $29		;[Note] 42
	db $C1		;[Wait] 2
	db $B4, $01; volume slide rep
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_52:
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $66		;[Volume] 6
	db $7A		;[Instrument] 11
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C1		;[Wait] 2
	db $37		;[Note] 56
	db $63		;[Volume] 3
	db $C0		;[Wait] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $34		;[Note] 53
	db $66		;[Volume] 6
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $63		;[Volume] 3
	db $C0		;[Wait] 1
	db $A4, $07; slide-up
				;[Skip delay] 1
	db $34		;[Note] 53
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $66		;[Volume] 6
	db $C3		;[Wait] 4
	db $30		;[Note] 49
	db $C0		;[Wait] 1
	db $63		;[Volume] 3
	db $A4, $07; slide-up
				;[Skip delay] 1
	db $34		;[Note] 53
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $AA, $8A; volume slide
	db $C0		;[Wait] 1
	db $B4, $07; volume slide rep
	db $C6		;[Wait] 7
	db $32		;[Note] 51
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $A5, $07; slide-down
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $32		;[Note] 51
	db $66		;[Volume] 6
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $C1		;[Wait..] 2
	db $AA, $8A; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_53:
	db $28		;[Note] 41
	db $6F		;[Volume] 15
	db $7A		;[Instrument] 11
	db $C3		;[Wait] 4
	db $35		;[Note] 54
	db $C1		;[Wait] 2
	db $37		;[Note] 56
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $A4, $07; slide-up
				;[Skip delay] 1
	db $34		;[Note] 53
	db $6F		;[Volume] 15
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6E		;[Volume] 14
	db $C3		;[Wait] 4
	db $30		;[Note] 49
	db $6A		;[Volume] 10
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $A4, $07; slide-up
				;[Skip delay] 1
	db $34		;[Note] 53
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $AA, $8A; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $32		;[Note] 51
	db $C3		;[Wait] 4
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $32		;[Note] 51
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $C1		;[Wait..] 2
	db $AA, $8A; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $29		;[Note] 42
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $28		;[Note] 41
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_54:
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $66		;[Volume] 6
	db $7A		;[Instrument] 11
				;[Skip delay] 4
	db $35		;[Note] 54
	db $C1		;[Wait] 2
	db $37		;[Note] 56
	db $63		;[Volume] 3
	db $C0		;[Wait] 1
	db $64		;[Volume] 4
	db $A4, $07; slide-up
				;[Skip delay] 1
	db $34		;[Note] 53
	db $66		;[Volume] 6
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $65		;[Volume] 5
	db $C3		;[Wait] 4
	db $30		;[Note] 49
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $63		;[Volume] 3
	db $A4, $07; slide-up
				;[Skip delay] 1
	db $34		;[Note] 53
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $30		;[Note] 49
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $AA, $8A; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $32		;[Note] 51
	db $C3		;[Wait] 4
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $32		;[Note] 51
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $30		;[Note] 49
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $C1		;[Wait..] 2
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $29		;[Note] 42
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_55:
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $76		;[Instrument] 7
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_56:
	db $5D		;[Note] 94
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $5D		;[Note] 94
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $2D		;[Note] 46
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $5B		;[Note] 92
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $2B		;[Note] 44
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $5D		;[Note] 94
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $2D		;[Note] 46
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2A		;[Note] 43
	db $6D		;[Volume] 13
	db $82		;[Instrument] 19
	db $C3		;[Wait] 4
	db $27		;[Note] 40
	db $6B		;[Volume] 11
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $6C		;[Volume] 12
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_57:
	db $21		;[Note] 34
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $C1		;[Wait] 2
	db $15		;[Note] 22
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $21		;[Note] 34
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $21		;[Note] 34
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $21		;[Note] 34
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $21		;[Note] 34
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $21		;[Note] 34
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $21		;[Note] 34
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $21		;[Note] 34
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_58:
	db $21		;[Note] 34
	db $69		;[Volume] 9
	db $76		;[Instrument] 7
	db $C5		;[Wait] 6
	db $23		;[Note] 36
				;[Skip delay] 6
	db $24		;[Note] 37
				;[Skip delay] 6
	db $21		;[Note] 34
				;[Skip delay] 6
	db $23		;[Note] 36
	db $C7		;[Wait] 8
	db $21		;[Note] 34
	db $C5		;[Wait] 6
	db $23		;[Note] 36
				;[Skip delay] 6
	db $24		;[Note] 37
				;[Skip delay] 6
	db $21		;[Note] 34
				;[Skip delay] 6
	db $23		;[Note] 36
	db $C7		;[Wait] 8
	db $BF		;[End-Of-Track]
.track_59:
	db $24		;[Note] 37
	db $C5		;[Wait] 6
	db $26		;[Note] 39
				;[Skip delay] 6
	db $28		;[Note] 41
				;[Skip delay] 6
	db $24		;[Note] 37
				;[Skip delay] 6
	db $26		;[Note] 39
	db $C7		;[Wait] 8
	db $24		;[Note] 37
	db $C5		;[Wait] 6
	db $26		;[Note] 39
				;[Skip delay] 6
	db $28		;[Note] 41
				;[Skip delay] 6
	db $24		;[Note] 37
				;[Skip delay] 6
	db $26		;[Note] 39
	db $C7		;[Wait] 8
	db $BF		;[End-Of-Track]
.track_60:
	db $15		;[Note] 22
	db $6E		;[Volume] 14
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $09		;[Note] 10
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $15		;[Note] 22
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $09		;[Note] 10
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $13		;[Note] 20
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $07		;[Note] 8
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_61:
	db $2D		;[Note] 46
	db $6F		;[Volume] 15
	db $7A		;[Instrument] 11
	db $C1		;[Wait] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $66		;[Volume] 6
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $30		;[Note] 49
	db $EF		;[Wait] 48
	db $BF		;[End-Of-Track]
.track_62:
	db $7A		;[Instrument] 11
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $30		;[Note] 49
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $62		;[Volume] 2
				;[Skip delay] 2
	db $2F		;[Note] 48
				;[Skip delay] 2
	db $30		;[Note] 49
	db $EB		;[Wait] 44
	db $BF		;[End-Of-Track]
.track_63:
	db $5D		;[Note] 94
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $5D		;[Note] 94
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $2D		;[Note] 46
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $5B		;[Note] 92
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $2B		;[Note] 44
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $5D		;[Note] 94
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $5D		;[Note] 94
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $2D		;[Note] 46
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2D		;[Note] 46
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $6B		;[Volume] 11
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $66		;[Volume] 6
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_64:
	db $21		;[Note] 34
	db $76		;[Instrument] 7
	db $C5		;[Wait] 6
	db $23		;[Note] 36
				;[Skip delay] 6
	db $24		;[Note] 37
				;[Skip delay] 6
	db $21		;[Note] 34
				;[Skip delay] 6
	db $23		;[Note] 36
	db $C7		;[Wait] 8
	db $21		;[Note] 34
	db $C5		;[Wait] 6
	db $23		;[Note] 36
				;[Skip delay] 6
	db $24		;[Note] 37
				;[Skip delay] 6
	db $21		;[Note] 34
				;[Skip delay] 6
	db $23		;[Note] 36
	db $C7		;[Wait] 8
	db $BF		;[End-Of-Track]
.track_65:
	db $59		;[Note] 90
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $59		;[Note] 90
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $58		;[Note] 89
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $28		;[Note] 41
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $59		;[Note] 90
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $59		;[Note] 90
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $2A		;[Note] 43
	db $6D		;[Volume] 13
	db $82		;[Instrument] 19
	db $C3		;[Wait] 4
	db $27		;[Note] 40
	db $6B		;[Volume] 11
	db $C1		;[Wait] 2
	db $26		;[Note] 39
	db $6C		;[Volume] 12
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_66:
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $C1		;[Wait] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6D		;[Volume] 13
	db $7D		;[Instrument] 14
				;[Skip delay] 2
	db $1C		;[Note] 29
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_67:
	db $11		;[Note] 18
	db $6E		;[Volume] 14
	db $7D		;[Instrument] 14
	db $C1		;[Wait] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $04		;[Note] 5
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $04		;[Note] 5
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $11		;[Note] 18
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $05		;[Note] 6
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $04		;[Note] 5
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $10		;[Note] 17
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $04		;[Note] 5
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_68:
	db $32		;[Note] 51
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $32		;[Note] 51
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $32		;[Note] 51
	db $66		;[Volume] 6
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $35		;[Note] 54
	db $EF		;[Wait] 48
	db $BF		;[End-Of-Track]
.track_69:
	db $C3		;[Wait] 4
	db $32		;[Note] 51
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $32		;[Note] 51
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $35		;[Note] 54
				;[Skip delay] 2
	db $32		;[Note] 51
	db $62		;[Volume] 2
				;[Skip delay] 2
	db $34		;[Note] 53
				;[Skip delay] 2
	db $35		;[Note] 54
	db $EB		;[Wait] 44
	db $BF		;[End-Of-Track]
.track_70:
	db $59		;[Note] 90
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $59		;[Note] 90
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $58		;[Note] 89
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $28		;[Note] 41
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $59		;[Note] 90
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $59		;[Note] 90
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 4
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $28		;[Note] 41
	db $6B		;[Volume] 11
	db $C1		;[Wait] 2
	db $28		;[Note] 41
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $28		;[Note] 41
	db $66		;[Volume] 6
				;[Skip delay] 2
	db $28		;[Note] 41
	db $6B		;[Volume] 11
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_71:
	db $59		;[Note] 90
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
	db $C3		;[Wait] 4
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C7		;[Wait] 8
	db $29		;[Note] 42
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C1		;[Wait] 2
	db $29		;[Note] 42
	db $69		;[Volume] 9
	db $C5		;[Wait] 6
	db $29		;[Note] 42
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $C2		;[Wait] 3
	db $66		;[Volume] 6
	db $86		;[Instrument] 23
	db $C0		;[Wait] 1
	db $29		;[Note] 42
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $29		;[Note] 42
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6E		;[Volume] 14
	db $C3		;[Wait] 4
	db $1F		;[Note] 32
	db $6C		;[Volume] 12
	db $82		;[Instrument] 19
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
	db $86		;[Instrument] 23
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $6B		;[Volume] 11
	db $83		;[Instrument] 20
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $6B		;[Volume] 11
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $68		;[Volume] 8
				;[Skip delay] 2
	db $5B		;[Note] 92
	db $6B		;[Volume] 11
	db $C7		;[Wait] 8
	db $BF		;[End-Of-Track]
.track_72:
	db $11		;[Note] 18
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $11		;[Note] 18
	db $6E		;[Volume] 14
	db $7D		;[Instrument] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $11		;[Note] 18
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $11		;[Note] 18
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $13		;[Note] 20
	db $6E		;[Volume] 14
	db $7F		;[Instrument] 16
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $13		;[Note] 20
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $02; volume slide rep
	db $C2		;[Wait] 3
	db $2B		;[Note] 44
	db $6D		;[Volume] 13
	db $81		;[Instrument] 18
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $86		;[Instrument] 23
				;[Skip delay] 4
	db $13		;[Note] 20
	db $67		;[Volume] 7
	db $81		;[Instrument] 18
	db $C0		;[Wait] 1
	db $2B		;[Note] 44
	db $68		;[Volume] 8
	db $86		;[Instrument] 23
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6F		;[Volume] 15
	db $C1		;[Wait] 2
	db $2B		;[Note] 44
	db $81		;[Instrument] 18
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_73:
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $76		;[Instrument] 7
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $21		;[Note] 34
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $01; volume slide rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C3		;[Wait] 4
	db $AA, $9E; volume slide
	db $C0		;[Wait] 1
	db $B4, $05; volume slide rep
	db $C4		;[Wait] 5
	db $1F		;[Note] 32
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $A5, $31; slide-down
				;[Skip delay] 1
	db $AF, $05; slide-down rep
	db $C4		;[Wait] 5
	db $BF		;[End-Of-Track]
.track_74:
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
	db $C7		;[Wait] 8
	db $26		;[Note] 39
	db $69		;[Volume] 9
	db $74		;[Instrument] 5
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $2B		;[Note] 44
	db $C3		;[Wait] 4
	db $26		;[Note] 39
	db $C1		;[Wait] 2
	db $29		;[Note] 42
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6D		;[Volume] 13
	db $70		;[Instrument] 1
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $C1		;[Wait..] 2
	db $A5, $31; slide-down
	db $C0		;[Wait] 1
	db $AF, $05; slide-down rep
	db $C2		;[Wait] 3
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_75:
	db $05		;[Note] 6
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $78		;[Instrument] 9
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $05		;[Note] 6
	db $7B		;[Instrument] 12
				;[Skip delay] 1
	db $78		;[Instrument] 9
				;[Skip delay] 1
	db $05		;[Note] 6
	db $7D		;[Instrument] 14
	db $AA, $82; volume slide
				;[Skip delay] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $05		;[Note] 6
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
				;[Skip delay] 1
	db $69		;[Volume] 9
	db $C1		;[Wait] 2
	db $07		;[Note] 8
	db $6E		;[Volume] 14
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $03; volume slide rep
	db $C2		;[Wait] 3
	db $07		;[Note] 8
	db $AA, $82; volume slide
	db $C0		;[Wait] 1
	db $B4, $02; volume slide rep
	db $D2		;[Wait] 19
	db $BF		;[End-Of-Track]
.track_76:
	db $21		;[Note] 34
	db $6F		;[Volume] 15
	db $74		;[Instrument] 5
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $1F		;[Note] 32
	db $6F		;[Volume] 15
	db $CB		;[Wait] 12
	db $26		;[Note] 39
	db $C3		;[Wait] 4
	db $6E		;[Volume] 14
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $C0		;[Wait] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $24		;[Note] 37
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $69		;[Volume] 9
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $A7, $05	;[CMD vibrato]
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $B1, $06	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $C1		;[Wait..] 2
	db $A5, $31; slide-down
	db $C0		;[Wait] 1
	db $AF, $05; slide-down rep
	db $C2		;[Wait] 3
	db $6E		;[Volume] 14
	db $C1		;[Wait] 2
	db $BF		;[End-Of-Track]
.track_77:
	db $C3		;[Wait] 4
	db $21		;[Note] 34
	db $66		;[Volume] 6
	db $C4		;[Wait] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $65		;[Volume] 5
	db $B1, $06	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $1F		;[Note] 32
	db $66		;[Volume] 6
	db $CB		;[Wait] 12
	db $26		;[Note] 39
	db $C3		;[Wait] 4
	db $65		;[Volume] 5
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $24		;[Note] 37
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $24		;[Note] 37
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $24		;[Note] 37
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $24		;[Note] 37
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $24		;[Note] 37
	db $66		;[Volume] 6
				;[Skip delay] 1
	db $62		;[Volume] 2
				;[Skip delay] 1
	db $21		;[Note] 34
	db $C3		;[Wait] 4
	db $A7, $55	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $C3		;[Wait] 4
	db $64		;[Volume] 4
	db $C1		;[Wait] 2
	db $24		;[Note] 37
	db $66		;[Volume] 6
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_78:
	db $11		;[Note] 18
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C7		;[Wait] 8
	db $06		;[Note] 7
	db $71		;[Instrument] 2
	db $C3		;[Wait] 4
	db $11		;[Note] 18
	db $70		;[Instrument] 1
	db $C7		;[Wait] 8
	db $11		;[Note] 18
	db $C3		;[Wait] 4
	db $06		;[Note] 7
	db $71		;[Instrument] 2
				;[Skip delay] 4
	db $11		;[Note] 18
	db $70		;[Instrument] 1
				;[Skip delay] 4
	db $11		;[Note] 18
	db $C7		;[Wait] 8
	db $06		;[Note] 7
	db $71		;[Instrument] 2
	db $C3		;[Wait] 4
	db $11		;[Note] 18
	db $70		;[Instrument] 1
	db $C7		;[Wait] 8
	db $11		;[Note] 18
	db $C3		;[Wait] 4
	db $06		;[Note] 7
	db $71		;[Instrument] 2
				;[Skip delay] 4
	db $06		;[Note] 7
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_79:
	db $5C		;[Note] 93
	db $6F		;[Volume] 15
	db $73		;[Instrument] 4
	db $C3		;[Wait] 4
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 4
	db $5D		;[Note] 94
				;[Skip delay] 4
	db $5C		;[Note] 93
	db $73		;[Instrument] 4
				;[Skip delay] 4
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 4
	db $5D		;[Note] 94
				;[Skip delay] 4
	db $5D		;[Note] 94
				;[Skip delay] 4
	db $5C		;[Note] 93
	db $73		;[Instrument] 4
				;[Skip delay] 4
	db $5C		;[Note] 93
				;[Skip delay] 4
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 4
	db $5D		;[Note] 94
				;[Skip delay] 4
	db $5C		;[Note] 93
	db $73		;[Instrument] 4
				;[Skip delay] 4
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 4
	db $5D		;[Note] 94
				;[Skip delay] 4
	db $5D		;[Note] 94
	db $C1		;[Wait] 2
	db $2D		;[Note] 46
	db $84		;[Instrument] 21
				;[Skip delay] 2
	db $29		;[Note] 42
	db $6E		;[Volume] 14
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_80:
	db $22		;[Note] 35
	db $6D		;[Volume] 13
	db $76		;[Instrument] 7
	db $C0		;[Wait] 1
	db $24		;[Note] 37
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $26		;[Note] 39
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $22		;[Note] 35
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $26		;[Note] 39
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $26		;[Note] 39
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $26		;[Note] 39
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $43		;[Note] 68
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $43		;[Note] 68
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3E		;[Note] 63
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $32		;[Note] 51
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_81:
	db $07		;[Note] 8
	db $80		;[Instrument] 17
	db $C3		;[Wait] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
	db $C1		;[Wait] 2
	db $07		;[Note] 8
				;[Skip delay] 2
	db $07		;[Note] 8
	db $C3		;[Wait] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $07		;[Note] 8
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_82:
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
	db $8E		;[Instrument] 31
	db $94, $01	; vibrato control
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $6C		;[Volume] 12
	db $C0		;[Wait] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $A7, $76	;[CMD vibrato]
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C0		;[Wait..] 1
	db $A7, $75	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $18		;[Note] 25
	db $6E		;[Volume] 14
	db $C0		;[Wait..] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $76	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $75	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $A7, $84	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $84	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $6A		;[Volume] 10
	db $C4		;[Wait] 5
	db $1B		;[Note] 28
	db $6E		;[Volume] 14
	db $94, $01	; vibrato control
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $A7, $76	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C0		;[Wait..] 1
	db $A7, $75	;[CMD vibrato]
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1A		;[Note] 27
	db $6E		;[Volume] 14
	db $C0		;[Wait..] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $76	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $75	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C0		;[Wait..] 1
	db $A7, $74	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $18		;[Note] 25
	db $6E		;[Volume] 14
	db $C0		;[Wait..] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $76	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $75	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_83:
	db $22		;[Note] 35
	db $6E		;[Volume] 14
	db $8E		;[Instrument] 31
	db $94, $01	; vibrato control
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $6C		;[Volume] 12
	db $C0		;[Wait] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $A7, $76	;[CMD vibrato]
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C0		;[Wait..] 1
	db $A7, $75	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6E		;[Volume] 14
	db $C0		;[Wait..] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $76	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $75	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $A7, $84	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $84	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $6A		;[Volume] 10
	db $C4		;[Wait] 5
	db $24		;[Note] 37
	db $6E		;[Volume] 14
	db $94, $01	; vibrato control
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $A7, $76	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C0		;[Wait..] 1
	db $A7, $75	;[CMD vibrato]
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $22		;[Note] 35
	db $6E		;[Volume] 14
	db $C0		;[Wait..] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $76	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $75	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C0		;[Wait..] 1
	db $A7, $74	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6E		;[Volume] 14
	db $C0		;[Wait..] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $76	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $75	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_84:
	db $2C		;[Note] 45
	db $6E		;[Volume] 14
	db $8A		;[Instrument] 27
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
	db $6F		;[Volume] 15
	db $A6, $0C; tone-slide
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $A6, $02; tone-slide
				;[Skip delay] 1
	db $A6, $0A; tone-slide
				;[Skip delay] 1
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $6F		;[Volume] 15
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $26		;[Note] 39
	db $6F		;[Volume] 15
	db $C0		;[Wait..] 1
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $05	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $6E		;[Volume] 14
	db $A7, $84	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $22	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $6D		;[Volume] 13
	db $C3		;[Wait] 4
	db $6C		;[Volume] 12
	db $C5		;[Wait] 6
	db $6B		;[Volume] 11
				;[Skip delay] 6
	db $6A		;[Volume] 10
				;[Skip delay] 6
	db $69		;[Volume] 9
	db $C8		;[Wait] 9
	db $24		;[Note] 37
	db $6F		;[Volume] 15
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $26		;[Note] 39
	db $6F		;[Volume] 15
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_85:
	db $67		;[Volume] 7
	db $B1, $04	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
				;[Skip delay] 2
	db $2C		;[Note] 45
	db $68		;[Volume] 8
	db $8A		;[Instrument] 27
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $A6, $0C; tone-slide
				;[Skip delay] 1
	db $68		;[Volume] 8
	db $A6, $02; tone-slide
				;[Skip delay] 1
	db $A6, $0A; tone-slide
				;[Skip delay] 1
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $2D		;[Note] 46
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $67		;[Volume] 7
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $26		;[Note] 39
	db $69		;[Volume] 9
	db $C0		;[Wait..] 1
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $05	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $68		;[Volume] 8
	db $A7, $84	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $22	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $67		;[Volume] 7
	db $C3		;[Wait] 4
	db $66		;[Volume] 6
	db $C5		;[Wait] 6
	db $65		;[Volume] 5
				;[Skip delay] 6
	db $64		;[Volume] 4
				;[Skip delay] 6
	db $63		;[Volume] 3
	db $C8		;[Wait] 9
	db $24		;[Note] 37
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $67		;[Volume] 7
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $65		;[Volume] 5
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $64		;[Volume] 4
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_86:
	db $11		;[Note] 18
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C7		;[Wait] 8
	db $06		;[Note] 7
	db $71		;[Instrument] 2
	db $C3		;[Wait] 4
	db $11		;[Note] 18
	db $70		;[Instrument] 1
	db $C7		;[Wait] 8
	db $11		;[Note] 18
	db $C3		;[Wait] 4
	db $06		;[Note] 7
	db $71		;[Instrument] 2
				;[Skip delay] 4
	db $11		;[Note] 18
	db $70		;[Instrument] 1
				;[Skip delay] 4
	db $11		;[Note] 18
	db $C7		;[Wait] 8
	db $06		;[Note] 7
	db $71		;[Instrument] 2
	db $C3		;[Wait] 4
	db $11		;[Note] 18
	db $70		;[Instrument] 1
	db $C7		;[Wait] 8
	db $11		;[Note] 18
	db $C3		;[Wait] 4
	db $06		;[Note] 7
	db $71		;[Instrument] 2
				;[Skip delay] 4
	db $11		;[Note] 18
	db $70		;[Instrument] 1
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_87:
	db $5C		;[Note] 93
	db $6F		;[Volume] 15
	db $73		;[Instrument] 4
	db $C3		;[Wait] 4
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 4
	db $5D		;[Note] 94
				;[Skip delay] 4
	db $5C		;[Note] 93
	db $73		;[Instrument] 4
				;[Skip delay] 4
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 4
	db $5D		;[Note] 94
				;[Skip delay] 4
	db $5D		;[Note] 94
				;[Skip delay] 4
	db $5C		;[Note] 93
	db $73		;[Instrument] 4
				;[Skip delay] 4
	db $5C		;[Note] 93
				;[Skip delay] 4
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 4
	db $5D		;[Note] 94
				;[Skip delay] 4
	db $5C		;[Note] 93
	db $73		;[Instrument] 4
				;[Skip delay] 4
	db $5D		;[Note] 94
	db $72		;[Instrument] 3
				;[Skip delay] 4
	db $5D		;[Note] 94
				;[Skip delay] 4
	db $5D		;[Note] 94
				;[Skip delay] 4
	db $5C		;[Note] 93
	db $73		;[Instrument] 4
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_88:
	db $22		;[Note] 35
	db $6D		;[Volume] 13
	db $76		;[Instrument] 7
	db $C0		;[Wait] 1
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $27		;[Note] 40
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $22		;[Note] 35
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $27		;[Note] 40
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $27		;[Note] 40
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $27		;[Note] 40
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3F		;[Note] 64
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $43		;[Note] 68
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3F		;[Note] 64
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3F		;[Note] 64
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $43		;[Note] 68
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3F		;[Note] 64
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $3A		;[Note] 59
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $37		;[Note] 56
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $33		;[Note] 52
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $27		;[Note] 40
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $2B		;[Note] 44
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $22		;[Note] 35
	db $6D		;[Volume] 13
				;[Skip delay] 1
	db $27		;[Note] 40
	db $6A		;[Volume] 10
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_89:
	db $0C		;[Note] 13
	db $80		;[Instrument] 17
	db $C3		;[Wait] 4
	db $0C		;[Note] 13
				;[Skip delay] 4
	db $0C		;[Note] 13
				;[Skip delay] 4
	db $0C		;[Note] 13
				;[Skip delay] 4
	db $0C		;[Note] 13
				;[Skip delay] 4
	db $0C		;[Note] 13
				;[Skip delay] 4
	db $0C		;[Note] 13
				;[Skip delay] 4
	db $0C		;[Note] 13
	db $C1		;[Wait] 2
	db $0C		;[Note] 13
				;[Skip delay] 2
	db $0C		;[Note] 13
	db $C3		;[Wait] 4
	db $0C		;[Note] 13
				;[Skip delay] 4
	db $0C		;[Note] 13
				;[Skip delay] 4
	db $0C		;[Note] 13
				;[Skip delay] 4
	db $0C		;[Note] 13
				;[Skip delay] 4
	db $0C		;[Note] 13
				;[Skip delay] 4
	db $0C		;[Note] 13
				;[Skip delay] 4
	db $0C		;[Note] 13
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_90:
	db $1B		;[Note] 28
	db $6E		;[Volume] 14
	db $8E		;[Instrument] 31
	db $94, $01	; vibrato control
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $6C		;[Volume] 12
	db $C0		;[Wait] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $A7, $76	;[CMD vibrato]
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C0		;[Wait..] 1
	db $A7, $75	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $18		;[Note] 25
	db $6E		;[Volume] 14
	db $C0		;[Wait..] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $76	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $75	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $A7, $84	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $84	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $6A		;[Volume] 10
	db $C4		;[Wait] 5
	db $1B		;[Note] 28
	db $6E		;[Volume] 14
	db $94, $01	; vibrato control
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $A7, $76	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C0		;[Wait..] 1
	db $A7, $75	;[CMD vibrato]
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1D		;[Note] 30
	db $6E		;[Volume] 14
	db $C0		;[Wait..] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $76	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $75	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C0		;[Wait..] 1
	db $A7, $74	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1B		;[Note] 28
	db $6E		;[Volume] 14
	db $C0		;[Wait..] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $76	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $75	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_91:
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
	db $8E		;[Instrument] 31
	db $94, $01	; vibrato control
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $6C		;[Volume] 12
	db $C0		;[Wait] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $A7, $76	;[CMD vibrato]
				;[Skip delay] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C0		;[Wait..] 1
	db $A7, $75	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1B		;[Note] 28
	db $6E		;[Volume] 14
	db $C0		;[Wait..] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $76	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $75	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $A7, $84	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $84	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $09	;[CMD vibrato] rep
	db $C3		;[Wait] 4
	db $6A		;[Volume] 10
	db $C4		;[Wait] 5
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
	db $94, $01	; vibrato control
	db $C0		;[Wait] 1
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $6B		;[Volume] 11
	db $C0		;[Wait] 1
	db $6E		;[Volume] 14
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6C		;[Volume] 12
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $A7, $76	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C0		;[Wait..] 1
	db $A7, $75	;[CMD vibrato]
				;[Skip delay] 1
	db $6A		;[Volume] 10
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $21		;[Note] 34
	db $6E		;[Volume] 14
	db $C0		;[Wait..] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $76	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $75	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $02	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6B		;[Volume] 11
	db $C0		;[Wait..] 1
	db $A7, $74	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $1F		;[Note] 32
	db $6E		;[Volume] 14
	db $C0		;[Wait..] 1
	db $A7, $77	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $76	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A7, $75	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_92:
	db $27		;[Note] 40
	db $6F		;[Volume] 15
	db $8A		;[Instrument] 27
	db $C0		;[Wait] 1
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $08	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $C2		;[Wait] 3
	db $6C		;[Volume] 12
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $6F		;[Volume] 15
	db $C0		;[Wait] 1
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $08	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $C2		;[Wait] 3
	db $6C		;[Volume] 12
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $6F		;[Volume] 15
	db $C0		;[Wait] 1
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $04	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $6C		;[Volume] 12
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
	db $6F		;[Volume] 15
	db $C0		;[Wait..] 1
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $06	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $C2		;[Wait] 3
	db $6C		;[Volume] 12
	db $C1		;[Wait] 2
	db $A7, $84	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6E		;[Volume] 14
				;[Skip delay] 1
	db $30		;[Note] 49
	db $6F		;[Volume] 15
	db $A6, $0B; tone-slide
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $A6, $02; tone-slide
				;[Skip delay] 1
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A5, $01; slide-down
	db $C0		;[Wait] 1
	db $6C		;[Volume] 12
	db $A5, $01; slide-down
				;[Skip delay] 1
	db $A5, $02; slide-down
				;[Skip delay] 1
	db $A5, $03; slide-down
				;[Skip delay] 1
	db $A5, $02; slide-down
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $6F		;[Volume] 15
	db $C0		;[Wait..] 1
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $6E		;[Volume] 14
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $04	;[CMD vibrato] rep
				;[Skip delay] 1
	db $6D		;[Volume] 13
	db $C1		;[Wait] 2
	db $6C		;[Volume] 12
	db $C0		;[Wait] 1
	db $BF		;[End-Of-Track]
.track_93:
	db $69		;[Volume] 9
	db $B1, $04	;[CMD vibrato] rep
	db $C0		;[Wait] 1
	db $67		;[Volume] 7
				;[Skip delay] 1
	db $65		;[Volume] 5
				;[Skip delay] 1
	db $64		;[Volume] 4
				;[Skip delay] 1
	db $27		;[Note] 40
	db $69		;[Volume] 9
	db $8A		;[Instrument] 27
	db $C0		;[Wait..] 1
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $68		;[Volume] 8
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $08	;[CMD vibrato] rep
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C2		;[Wait] 3
	db $66		;[Volume] 6
	db $C3		;[Wait] 4
	db $2B		;[Note] 44
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $68		;[Volume] 8
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $08	;[CMD vibrato] rep
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C2		;[Wait] 3
	db $66		;[Volume] 6
	db $C3		;[Wait] 4
	db $2D		;[Note] 46
	db $69		;[Volume] 9
	db $C0		;[Wait] 1
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $68		;[Volume] 8
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $04	;[CMD vibrato] rep
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C1		;[Wait] 2
	db $66		;[Volume] 6
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $C0		;[Wait..] 1
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $68		;[Volume] 8
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $B1, $06	;[CMD vibrato] rep
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $C2		;[Wait] 3
	db $66		;[Volume] 6
	db $C1		;[Wait] 2
	db $A7, $84	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $01	;[CMD vibrato] rep
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $68		;[Volume] 8
				;[Skip delay] 1
	db $30		;[Note] 49
	db $69		;[Volume] 9
	db $A6, $0B; tone-slide
				;[Skip delay] 1
	db $68		;[Volume] 8
	db $A6, $02; tone-slide
				;[Skip delay] 1
	db $A6, $09; tone-slide
				;[Skip delay] 1
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $67		;[Volume] 7
	db $B1, $02	;[CMD vibrato] rep
	db $C1		;[Wait] 2
	db $A5, $01; slide-down
	db $C0		;[Wait] 1
	db $66		;[Volume] 6
	db $A5, $01; slide-down
				;[Skip delay] 1
	db $A5, $02; slide-down
				;[Skip delay] 1
	db $A5, $03; slide-down
				;[Skip delay] 1
	db $A5, $02; slide-down
				;[Skip delay] 1
	db $2E		;[Note] 47
	db $69		;[Volume] 9
	db $C0		;[Wait..] 1
	db $A7, $87	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $86	;[CMD vibrato]
				;[Skip delay] 1
	db $A7, $85	;[CMD vibrato]
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_94:
	db $BF		;[End-Of-Track]
; [ Song sub-track data ]
