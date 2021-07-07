; Song: MoG2- Game Over 5               
; By:   Gryzor87 (c)2021                

; [ Song start data ]
	db $0c					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_002, .track_003, .track_004, .track_005, .track_006, .track_007	; Step:001 Pattern:000
.restart:
	dw .track_008, .track_009, .track_010, .track_011, .track_008, .track_013, .track_014, .track_015	; Step:002 Pattern:001
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00				; Waveform:0
	db $80, $b0, $c0, $10, $1a, $2a, $2c, $1a, $00, $e0, $d0, $e0, $22, $53, $70, $75, $70, $31, $ea, $80, $88, $8a, $8c, $8e, $00, $7f, $75, $73, $62, $00, $c0, $90				; Waveform:1
	db $00, $10, $20, $30, $40, $50, $60, $70, $7f, $70, $60, $50, $40, $30, $20, $10, $ff, $f0, $e0, $d0, $c0, $b0, $a0, $90, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0				; Waveform:3
	db $00, $30, $50, $60, $70, $60, $50, $30, $00, $d0, $b0, $a0, $90, $a0, $b0, $d0, $00, $40, $60, $70, $60, $40, $00, $c0, $a0, $90, $a0, $c0, $00, $70, $00, $90				; Waveform:4
	db $80, $8e, $a0, $c0, $e0, $00, $20, $3f, $3e, $3c, $3a, $37, $31, $29, $20, $1c, $10, $00, $e6, $c0, $d0, $00, $20, $3f, $10, $e0, $80, $c0, $00, $20, $00, $90				; Waveform:5
	db $00, $f8, $f0, $e8, $e0, $d8, $d0, $c8, $c0, $b8, $b0, $a8, $a0, $98, $90, $88, $80, $78, $70, $68, $60, $58, $50, $48, $40, $38, $30, $28, $20, $18, $10, $08				; Waveform:6
	db $00, $00, $00, $00, $00, $78, $78, $00, $00, $80, $80, $80, $00, $00, $00, $00, $78, $78, $78, $00, $80, $80, $00, $00, $00, $00, $78, $78, $00, $00, $80, $80				; Waveform:15
	db $90, $d0, $20, $0c, $bc, $aa, $e6, $dc, $bc, $e3, $40, $30, $e0, $d0, $10, $06, $e4, $0c, $70, $50, $e0, $d0, $10, $00, $d0, $f0, $40, $20, $c4, $c0, $f0, $90				; Waveform:19
	db $aa, $aa, $aa, $aa, $ee, $ee, $ee, $ee, $ee, $ff, $ff, $ff, $ff, $cc, $cc, $cc, $cc, $c5, $55, $55, $55, $77, $77, $77, $77, $88, $88, $88, $88, $88, $88, $88				; Waveform:22
	db $30, $60, $78, $68, $48, $38, $48, $58, $48, $38, $20, $18, $20, $58, $40, $20, $e0, $b0, $80, $88, $a0, $c0, $b4, $a8, $b4, $d0, $e8, $d8, $c8, $b8, $a8, $d0				; Waveform:25
	db $28, $60, $7d, $60, $38, $20, $38, $4c, $58, $60, $54, $18, $f0, $10, $28, $28, $10, $e8, $cc, $d0, $e8, $c8, $a8, $a0, $af, $a8, $98, $a8, $b0, $c4, $c0, $e0				; Waveform:26

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; SD A3           
	dw .instrument_01				; SC PianoBell    
	dw .instrument_02				; PGS String snake
	dw .instrument_03				; PULSE           
	dw .instrument_04				; IN              
	dw .instrument_05				; SD-Roll         
	dw .instrument_06				; BS Stacatto     

.instrument_00:					; SD A3           
	db $08							; Waveform 1
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $c4							; Info byte: 11000100
	db $0d							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $0a							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $07							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $06							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $05							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $04							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $03							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $02							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $01							; Volume _
	db $06							; Noise _
.rst_i00:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i00						; Loop address
.instrument_01:					; SC PianoBell    
	db $50							; Waveform 10
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i01:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $17							; Info byte: 00010111
	db $01							; Volume +
	dw .rst_i01						; Loop address
.instrument_02:					; PGS String snake
	db $20							; Waveform 4
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
.instrument_03:					; PULSE           
	db $18							; Waveform 3
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i03:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i03						; Loop address
.instrument_04:					; IN              
	db $10							; Waveform 2
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i04:
	db $16							; Info byte: 00010110
	db $fe							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i04						; Loop address
.instrument_05:					; SD-Roll         
	db $00							; Waveform 0
.rst_i05:
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $c4							; Info byte: 11000100
	db $0b							; Volume _
	db $06							; Noise _
	db $c5							; Info byte: 11000101
	db $0a							; Volume _
	db $06							; Noise _
	dw .rst_i05						; Loop address
.instrument_06:					; BS Stacatto     
	db $08							; Waveform 1
	db $14							; Info byte: 00010100
	db $08							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
.rst_i06:
	db $17							; Info byte: 00010111
	db $ff							; Volume -
	dw .rst_i06						; Loop address

; [ Song track data ]
.track_000:
	db $21			;Note A-3
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $76			;Instrument 5
					;Wait Repeat 4
	db $21			;Note A-3
	db $6e			;Volume 13
	db $71			;Instrument 0
					;Wait Repeat 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $a3,$0e			;CMD Speed
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $76			;Instrument 5
					;Wait Repeat 4
	db $21			;Note A-3
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c2			;Wait 3
	db $a3,$13			;CMD Speed
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_001:
	db $0c			;Note C-2
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $cf			;Wait 16
	db $0e			;Note D-2
	db $c7			;Wait 8
	db $0f			;Note D#2
	db $cf			;Wait 16
	db $11			;Note F-2
	db $c7			;Wait 8
	db $0c			;Note C-2
	db $c7			;Wait 8
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $68			;Volume 7
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_002:
	db $60			;Release 96
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6a			;Volume 9
	db $73			;Instrument 2
	db $c5			;Wait 6
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $c5			;Wait 6
	db $30			;Note C-5
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c5			;Wait 6
	db $56			;Note D-8
	db $6d			;Volume 12
	db $75			;Instrument 4
	db $c1			;Wait 2
	db $52			;Note A#7
					;Wait Repeat 2
	db $4f			;Note G-7
	db $c0			;Wait 1
	db $56			;Note D-8
	db $6c			;Volume 11
					;Wait Repeat 1
	db $46			;Note A#6
	db $6e			;Volume 13
					;Wait Repeat 1
	db $52			;Note A#7
	db $6c			;Volume 11
					;Wait Repeat 1
	db $45			;Note A-6
	db $6e			;Volume 13
					;Wait Repeat 1
	db $4f			;Note G-7
	db $6c			;Volume 11
					;Wait Repeat 1
	db $43			;Note G-6
	db $6e			;Volume 13
					;Wait Repeat 1
	db $46			;Note A#6
	db $6c			;Volume 11
					;Wait Repeat 1
	db $41			;Note F-6
	db $6e			;Volume 13
					;Wait Repeat 1
	db $45			;Note A-6
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $43			;Note G-6
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $1a			;Note D-3
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c7			;Wait 8
	db $1b			;Note D#3
	db $c2			;Wait 3
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $6a			;Volume 9
	db $bf			;[End-Of-Track]
.track_003:
	db $0c			;Note C-2
	db $6c			;Volume 11
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $c1			;Wait 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $c1			;Wait 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0f			;Note D#2
	db $c3			;Wait 4
	db $0f			;Note D#2
	db $c1			;Wait 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
	db $c3			;Wait 4
	db $0f			;Note D#2
	db $c1			;Wait 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $6a			;Volume 9
	db $73			;Instrument 2
	db $a9,$40			; SCC Set Waveform 22
	db $c2			;Wait 3
	db $69			;Volume 8
	db $c0			;Wait 1
	db $ac,$03			; SCC Morph speed 3
					;Wait Repeat 1
	db $9c,$30			; SCC Morph to Waveform 15
					;Wait Repeat 1
	db $68			;Volume 7
	db $c2			;Wait 3
	db $67			;Volume 6
					;Wait Repeat 3
	db $66			;Volume 5
					;Wait Repeat 3
	db $65			;Volume 4
	db $bf			;[End-Of-Track]
.track_004:
	db $22			;Note A#3
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $a9,$48			; SCC Set Waveform 25
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $22			;Note A#3
	db $c1			;Wait 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $1a			;Note D-3
	db $c7			;Wait 8
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_005:
	db $27			;Note D#4
	db $6c			;Volume 11
	db $72			;Instrument 1
	db $a9,$28			; SCC Set Waveform 6
	db $c5			;Wait 6
	db $27			;Note D#4
	db $c1			;Wait 2
	db $27			;Note D#4
	db $c5			;Wait 6
	db $24			;Note C-4
	db $c1			;Wait 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $26			;Note D-4
	db $c7			;Wait 8
	db $22			;Note A#3
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $29			;Note F-4
	db $c3			;Wait 4
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 4
	db $21			;Note A-3
	db $c3			;Wait 4
	db $22			;Note A#3
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $66			;Volume 5
	db $bf			;[End-Of-Track]
.track_006:
	db $30			;Note C-5
	db $70			;Volume 15
	db $72			;Instrument 1
	db $a1,$08			;CMD Track detune
	db $c5			;Wait 6
	db $2b			;Note G-4
	db $70			;Volume 15
	db $a1,$00			;CMD Track detune
	db $c0			;Wait 1
	db $6e			;Volume 13
					;Wait Repeat 1
	db $2b			;Note G-4
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c2			;Wait 3
	db $94,$66		;CMD Vibrato
					;Wait Repeat 3
	db $30			;Note C-5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c2			;Wait 3
	db $94,$66		;CMD Vibrato
	db $c7			;Wait 8
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $a9,$38			; SCC Set Waveform 19
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $a9,$38			; SCC Set Waveform 19
					;Wait Repeat 4
	db $6c			;Volume 11
	db $94,$66		;CMD Vibrato
					;Wait Repeat 4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $a9,$38			; SCC Set Waveform 19
	db $c0			;Wait 1
	db $6a			;Volume 9
	db $ab,$00			; SCC Morph follow (Carbon C0poy) 0
	db $bf			;[End-Of-Track]
.track_007:
	db $60			;Release 96
	db $a1,$01			;CMD Track detune
	db $c4			;Wait 5
	db $30			;Note C-5
	db $6b			;Volume 10
	db $72			;Instrument 1
	db $c5			;Wait 6
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $c2			;Wait 3
	db $94,$66		;CMD Vibrato
					;Wait Repeat 3
	db $30			;Note C-5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $c0			;Wait 1
	db $26			;Note D-4
	db $6e			;Volume 13
	db $c2			;Wait 3
	db $94,$66		;CMD Vibrato
	db $c3			;Wait 4
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $27			;Note D#4
	db $6a			;Volume 9
	db $c6			;Wait 7
	db $2b			;Note G-4
	db $69			;Volume 8
	db $74			;Instrument 3
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $72			;Instrument 1
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $94,$66		;CMD Vibrato
	db $c4			;Wait 5
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_008:
	db $c3			;Wait 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_009:
	db $67			;Volume 6
	db $c1			;Wait 2
	db $66			;Volume 5
	db $c0			;Wait 1
	db $65			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_010:
	db $69			;Volume 8
	db $c0			;Wait 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
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
.track_013:
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
.track_014:
	db $9c,$00			; SCC Morph to Waveform 0
	db $c3			;Wait 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_015:
	db $aa				; SCC Morph foloow (Carbon C0poy) 0
	db $c3			;Wait 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]

