; Song: MoG2- Game Over 8               
; By:   Gryzor87 (c)2021                

; [ Song start data ]
	db $0c					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_002, .track_003, .track_004, .track_005, .track_006, .track_007	; Step:001 Pattern:000
.restart:
	dw .track_008, .track_008, .track_008, .track_011, .track_012, .track_012, .track_012, .track_012	; Step:002 Pattern:001
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00				; Waveform:0
	db $00, $30, $50, $60, $70, $60, $50, $30, $00, $d0, $b0, $a0, $90, $a0, $b0, $d0, $00, $40, $60, $70, $60, $40, $00, $c0, $a0, $90, $a0, $c0, $00, $70, $00, $90				; Waveform:4
	db $80, $8e, $a0, $c0, $e0, $00, $20, $3f, $3e, $3c, $3a, $37, $31, $29, $20, $1c, $10, $00, $e6, $c0, $d0, $00, $20, $3f, $10, $e0, $80, $c0, $00, $20, $00, $90				; Waveform:5
	db $00, $f8, $f0, $e8, $e0, $d8, $d0, $c8, $c0, $b8, $b0, $a8, $a0, $98, $90, $88, $80, $78, $70, $68, $60, $58, $50, $48, $40, $38, $30, $28, $20, $18, $10, $08				; Waveform:6
	db $a0, $90, $a0, $ac, $f0, $a0, $16, $00, $90, $00, $20, $40, $60, $50, $38, $1c, $f2, $e2, $d6, $d0, $d0, $da, $dc, $e0, $e2, $e2, $e2, $e0, $dc, $d8, $d0, $b0				; Waveform:7
	db $00, $f0, $e0, $d0, $c0, $b0, $a0, $90, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $7f, $70, $60, $50, $40, $30, $20, $10				; Waveform:9
	db $00, $00, $00, $00, $00, $78, $78, $00, $00, $80, $80, $80, $00, $00, $00, $00, $78, $78, $78, $00, $80, $80, $00, $00, $00, $00, $78, $78, $00, $00, $80, $80				; Waveform:15
	db $27, $5f, $4f, $4f, $5f, $67, $7f, $7f, $6f, $6f, $7f, $6f, $5f, $4f, $67, $5f, $37, $e7, $d7, $c7, $d7, $ff, $e7, $cf, $c7, $c7, $bf, $97, $87, $af, $d7, $ff				; Waveform:18
	db $90, $d0, $20, $0c, $bc, $aa, $e6, $dc, $bc, $e3, $40, $30, $e0, $d0, $10, $06, $e4, $0c, $70, $50, $e0, $d0, $10, $00, $d0, $f0, $40, $20, $c4, $c0, $f0, $90				; Waveform:19
	db $08, $20, $28, $40, $58, $73, $7f, $73, $63, $54, $3d, $2d, $22, $19, $00, $d7, $be, $a3, $85, $9b, $a6, $c8, $f0, $d4, $c8, $c4, $c0, $c4, $cd, $d8, $e6, $f6				; Waveform:27
	db $08, $20, $40, $60, $70, $28, $08, $28, $58, $68, $70, $28, $c0, $80, $d0, $10, $00, $d8, $c8, $d0, $e0, $d8, $e0, $e8, $f8, $e8, $d8, $c8, $c8, $d8, $e8, $f8				; Waveform:28

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; SC Mantabrass sn
	dw .instrument_01				; SC PianoBell    
	dw .instrument_02				; PGS String snake
	dw .instrument_03				; IN              
	dw .instrument_04				; Piano tremolo   
	dw .instrument_05				; BS Stacatto     
	dw .instrument_06				; final chord     

.instrument_00:					; SC Mantabrass sn
	db $50							; Waveform 10
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $08							; Volume _
	db $14							; Info byte: 00010100
	db $07							; Volume _
.rst_i00:
	db $15							; Info byte: 00010101
	db $06							; Volume _
	dw .rst_i00						; Loop address
.instrument_01:					; SC PianoBell    
	db $50							; Waveform 10
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $08							; Volume _
.rst_i01:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $17							; Info byte: 00010111
	db $01							; Volume +
	dw .rst_i01						; Loop address
.instrument_02:					; PGS String snake
	db $10							; Waveform 2
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
.rst_i02:
	db $1c							; Info byte: 00011100
	db $0d							; Volume _
	dw $0001							; Tone
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $1c							; Info byte: 00011100
	db $0d							; Volume _
	dw $0001							; Tone
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $1c							; Info byte: 00011100
	db $0d							; Volume _
	dw $0001							; Tone
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $1c							; Info byte: 00011100
	db $0d							; Volume _
	dw $ffff							; Tone
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $1c							; Info byte: 00011100
	db $0d							; Volume _
	dw $ffff							; Tone
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $1c							; Info byte: 00011100
	db $0d							; Volume _
	dw $ffff							; Tone
	db $15							; Info byte: 00010101
	db $0d							; Volume _
	dw .rst_i02						; Loop address
.instrument_03:					; IN              
	db $40							; Waveform 8
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i03:
	db $16							; Info byte: 00010110
	db $fe							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i03						; Loop address
.instrument_04:					; Piano tremolo   
	db $20							; Waveform 4
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
	db $14							; Info byte: 00010100
	db $08							; Volume _
.rst_i04:
	db $16							; Info byte: 00010110
	db $01							; Volume +
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $01							; Volume +
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $17							; Info byte: 00010111
	db $fe							; Volume -
	dw .rst_i04						; Loop address
.instrument_05:					; BS Stacatto     
	db $38							; Waveform 7
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
.rst_i05:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i05						; Loop address
.instrument_06:					; final chord     
	db $18							; Waveform 3
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i06:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $01							; Volume +
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $17							; Info byte: 00010111
	db $ff							; Volume -
	dw .rst_i06						; Loop address

; [ Song track data ]
.track_000:
	db $18			;Note C-3
	db $6b			;Volume 10
	db $73			;Instrument 2
	db $a1,$0f			;CMD Track detune
	db $cf			;Wait 16
	db $16			;Note A#2
	db $c7			;Wait 8
	db $15			;Note A-2
					;Wait Repeat 8
	db $14			;Note G#2
	db $c7			;Wait 8
	db $13			;Note G-2
	db $a3,$0e			;CMD Speed
	db $c3			;Wait 4
	db $a3,$0f			;CMD Speed
					;Wait Repeat 4
	db $18			;Note C-3
	db $a3,$0d			;CMD Speed
	db $c5			;Wait 6
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $a3,$13			;CMD Speed
					;Wait Repeat 1
	db $67			;Volume 6
	db $c1			;Wait 2
	db $66			;Volume 5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_001:
	db $60			;Release 96
	db $ac,$01			; SCC Morph speed 1
	db $cf			;Wait 16
	db $3c			;Note C-6
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $37			;Note G-5
	db $ca			;Wait 11
	db $68			;Volume 7
	db $c1			;Wait 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $66			;Volume 5
	db $bf			;[End-Of-Track]
.track_002:
	db $60			;Release 96
	db $ab,$00			; SCC Morph follow (Carbon C0poy) 0
	db $e3			;Wait 36
	db $2c			;Note G#4
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $29			;Note F-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $29			;Note F-4
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $c2			;Wait 3
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
	db $c1			;Wait 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $66			;Volume 5
	db $bf			;[End-Of-Track]
.track_003:
	db $0c			;Note C-2
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a9,$38			; SCC Set Waveform 18
	db $c2			;Wait 3
	db $9c,$08			; SCC Morph to Waveform 4
	db $cc			;Wait 13
	db $0a			;Note A#1
	db $a9,$38			; SCC Set Waveform 18
	db $c7			;Wait 8
	db $09			;Note A-1
	db $a9,$38			; SCC Set Waveform 18
	db $c0			;Wait 1
	db $9c,$30			; SCC Morph to Waveform 15
	db $c6			;Wait 7
	db $08			;Note G#1
	db $a9,$38			; SCC Set Waveform 18
	db $c0			;Wait 1
	db $9c,$30			; SCC Morph to Waveform 15
	db $c6			;Wait 7
	db $07			;Note G-1
	db $a9,$38			; SCC Set Waveform 18
	db $c0			;Wait 1
	db $9c,$30			; SCC Morph to Waveform 15
	db $c6			;Wait 7
	db $0c			;Note C-2
	db $a9,$38			; SCC Set Waveform 18
	db $c9			;Wait 10
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $aa				; SCC Morph foloow (Carbon C0poy) 0
					;Wait Repeat 1
	db $69			;Volume 8
	db $c2			;Wait 3
	db $65			;Volume 4
	db $bf			;[End-Of-Track]
.track_004:
	db $1b			;Note D#3
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $1a			;Note D-3
	db $6a			;Volume 9
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $24			;Note C-4
	db $c1			;Wait 2
	db $25			;Note C#4
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $a9,$28			; SCC Set Waveform 9
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $20			;Note G#3
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $77			;Instrument 6
	db $cc			;Wait 13
	db $aa				; SCC Morph foloow (Carbon C0poy) 0
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_005:
	db $3c			;Note C-6
	db $6a			;Volume 9
	db $74			;Instrument 3
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 2
	db $37			;Note G-5
	db $67			;Volume 6
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $37			;Note G-5
	db $c1			;Wait 2
	db $24			;Note C-4
	db $70			;Volume 15
	db $71			;Instrument 0
	db $c3			;Wait 4
	db $1b			;Note D#3
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $20			;Note G#3
					;Wait Repeat 4
	db $24			;Note C-4
	db $c2			;Wait 3
	db $a1,$00			;CMD Track detune
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $70			;Volume 15
	db $a9,$48			; SCC Set Waveform 27
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $30			;Note C-5
	db $c4			;Wait 5
	db $6f			;Volume 14
	db $c1			;Wait 2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
	db $c0			;Wait 1
	db $67			;Volume 6
	db $aa				; SCC Morph foloow (Carbon C0poy) 0
					;Wait Repeat 1
	db $66			;Volume 5
	db $bf			;[End-Of-Track]
.track_006:
	db $1f			;Note G-3
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $27			;Note D#4
	db $c3			;Wait 4
	db $27			;Note D#4
	db $a9,$50			; SCC Set Waveform 28
					;Wait Repeat 4
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $a1,$08			;CMD Track detune
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $33			;Note D#5
	db $c3			;Wait 4
	db $31			;Note C#5
	db $6e			;Volume 13
	db $a9,$18			; SCC Set Waveform 6
					;Wait Repeat 4
	db $31			;Note C#5
	db $6e			;Volume 13
	db $c0			;Wait 1
	db $6d			;Volume 12
					;Wait Repeat 1
	db $31			;Note C#5
	db $6e			;Volume 13
	db $72			;Instrument 1
					;Wait Repeat 1
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $32			;Note D-5
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $a9,$18			; SCC Set Waveform 6
	db $c8			;Wait 9
	db $94,$26		;CMD Vibrato
	db $c0			;Wait 1
	db $ac,$05			; SCC Morph speed 5
					;Wait Repeat 1
	db $9c,$00			; SCC Morph to Waveform 0
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_007:
	db $60			;Release 96
	db $a1,$02			;CMD Track detune
	db $c2			;Wait 3
	db $1f			;Note G-3
	db $6c			;Volume 11
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $27			;Note D#4
					;Wait Repeat 4
	db $27			;Note D#4
					;Wait Repeat 4
	db $2b			;Note G-4
					;Wait Repeat 4
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $30			;Note C-5
	db $a1,$01			;CMD Track detune
					;Wait Repeat 4
	db $30			;Note C-5
	db $c3			;Wait 4
	db $33			;Note D#5
	db $a1,$08			;CMD Track detune
	db $c0			;Wait 1
	db $35			;Note F-5
	db $6f			;Volume 14
	db $c3			;Wait 4
	db $35			;Note F-5
	db $6f			;Volume 14
	db $c0			;Wait 1
	db $6d			;Volume 12
					;Wait Repeat 1
	db $35			;Note F-5
	db $6f			;Volume 14
	db $72			;Instrument 1
					;Wait Repeat 1
	db $6d			;Volume 12
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c6			;Wait 7
	db $94,$36		;CMD Vibrato
	db $c4			;Wait 5
	db $aa				; SCC Morph foloow (Carbon C0poy) 0
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_008:
	db $65			;Volume 4
	db $c0			;Wait 1
	db $64			;Volume 3
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $62			;Volume 1
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_011:
	db $64			;Volume 3
	db $c0			;Wait 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_012:
	db $c3			;Wait 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]

