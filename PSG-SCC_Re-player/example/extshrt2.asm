; Song: MoG2- Exterior short 2          
; By:   Gryzor87 (c)2021                

; [ Song start data ]
	db $0b					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_001, .track_002, .track_002, .track_004, .track_005, .track_006, .track_007	; Step:001 Pattern:000
	dw .track_008, .track_009, .track_002, .track_002, .track_012, .track_013, .track_014, .track_015	; Step:002 Pattern:001
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00				; Waveform:0
	db $a0, $90, $a0, $ac, $f0, $a0, $16, $00, $90, $00, $20, $40, $60, $50, $38, $1c, $f2, $e2, $d6, $d0, $d0, $da, $dc, $e0, $e2, $e2, $e2, $e0, $dc, $d8, $d0, $b0				; Waveform:7
	db $28, $58, $58, $28, $00, $00, $18, $48, $68, $78, $68, $38, $e8, $d8, $e0, $00, $20, $20, $10, $c0, $a0, $90, $a0, $c0, $00, $00, $d0, $b0, $b0, $d0, $00, $00				; Waveform:13
	db $77, $77, $77, $77, $77, $77, $77, $77, $87, $87, $87, $87, $87, $87, $87, $87, $77, $77, $77, $77, $77, $77, $77, $77, $87, $87, $87, $87, $87, $87, $87, $87				; Waveform:14
	db $00, $40, $7f, $40, $10, $01, $ea, $ce, $bb, $b1, $a7, $9c, $94, $8d, $87, $82, $81, $80, $80, $81, $81, $83, $87, $8d, $94, $9c, $a7, $b1, $bb, $ce, $ea, $ff				; Waveform:16
	db $27, $5f, $4f, $4f, $5f, $67, $7f, $7f, $6f, $6f, $7f, $6f, $5f, $4f, $67, $5f, $37, $e7, $d7, $c7, $d7, $ff, $e7, $cf, $c7, $c7, $bf, $97, $87, $af, $d7, $ff				; Waveform:18
	db $90, $d0, $20, $0c, $bc, $aa, $e6, $dc, $bc, $e3, $40, $30, $e0, $d0, $10, $06, $e4, $0c, $70, $50, $e0, $d0, $10, $00, $d0, $f0, $40, $20, $c4, $c0, $f0, $90				; Waveform:19
	db $00, $e8, $c8, $a8, $88, $a8, $c8, $e8, $00, $18, $38, $58, $77, $58, $38, $18, $00, $e8, $c8, $a8, $88, $a8, $c8, $e8, $00, $18, $38, $58, $77, $58, $38, $18				; Waveform:22
	db $28, $60, $7d, $60, $38, $20, $38, $4c, $58, $60, $54, $18, $f0, $10, $28, $28, $10, $e8, $cc, $d0, $e8, $c8, $a8, $a0, $af, $a8, $98, $a8, $b0, $c4, $c0, $e0				; Waveform:26

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; HH CL A8        
	dw .instrument_01				; SHAKER G6       
	dw .instrument_02				; PGS String snake
	dw .instrument_03				; IN              
	dw .instrument_04				; Piano Tremolo HI
	dw .instrument_05				; BS Stacatto     
	dw .instrument_06				; Response BELL   
	dw .instrument_07				; HH OP A8        
	dw .instrument_08				; SHAKER II G7    

.instrument_00:					; HH CL A8        
	db $08							; Waveform 1
	db $d4							; Info byte: 11010100
	db $0f							; Volume _
	db $00							; Noise _
.rst_i00:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i00						; Loop address
.instrument_01:					; SHAKER G6       
	db $08							; Waveform 1
	db $d4							; Info byte: 11010100
	db $08							; Volume _
	db $1b							; Noise _
	db $c4							; Info byte: 11000100
	db $0b							; Volume _
	db $1b							; Noise _
.rst_i01:
	db $e7							; Info byte: 11100111
	db $ff							; Volume -
	db $fc							; Noise +
	dw .rst_i01						; Loop address
.instrument_02:					; PGS String snake
	db $38							; Waveform 7
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
	db $18							; Info byte: 00011000
	dw $0001							; Tone
	db $10							; Info byte: 00010000
	db $18							; Info byte: 00011000
	dw $0001							; Tone
	db $10							; Info byte: 00010000
	db $18							; Info byte: 00011000
	dw $0001							; Tone
	db $10							; Info byte: 00010000
	db $18							; Info byte: 00011000
	dw $ffff							; Tone
	db $10							; Info byte: 00010000
	db $18							; Info byte: 00011000
	dw $ffff							; Tone
	db $10							; Info byte: 00010000
	db $18							; Info byte: 00011000
	dw $ffff							; Tone
	db $11							; Info byte: 00010001
	dw .rst_i02						; Loop address
.instrument_03:					; IN              
	db $18							; Waveform 3
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i03:
	db $16							; Info byte: 00010110
	db $fe							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i03						; Loop address
.instrument_04:					; Piano Tremolo HI
	db $30							; Waveform 6
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $06							; Volume _
	db $14							; Info byte: 00010100
	db $04							; Volume _
.rst_i04:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i04						; Loop address
.instrument_05:					; BS Stacatto     
	db $20							; Waveform 4
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $08							; Volume _
.rst_i05:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i05						; Loop address
.instrument_06:					; Response BELL   
	db $10							; Waveform 2
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
	db $14							; Info byte: 00010100
	db $06							; Volume _
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
.instrument_07:					; HH OP A8        
	db $00							; Waveform 0
	db $d4							; Info byte: 11010100
	db $0d							; Volume _
	db $00							; Noise _
.rst_i07:
	db $d6							; Info byte: 11010110
	db $ff							; Volume -
	db $00							; Noise _
	db $d0							; Info byte: 11010000
	db $00							; Noise _
	db $d0							; Info byte: 11010000
	db $00							; Noise _
	db $d1							; Info byte: 11010001
	db $00							; Noise _
	dw .rst_i07						; Loop address
.instrument_08:					; SHAKER II G7    
	db $00							; Waveform 0
	db $d4							; Info byte: 11010100
	db $0b							; Volume _
	db $14							; Noise _
	db $c4							; Info byte: 11000100
	db $0c							; Volume _
	db $12							; Noise _
	db $c4							; Info byte: 11000100
	db $0b							; Volume _
	db $0f							; Noise _
	db $c4							; Info byte: 11000100
	db $0a							; Volume _
	db $0d							; Noise _
	db $c4							; Info byte: 11000100
	db $09							; Volume _
	db $0b							; Noise _
	db $c4							; Info byte: 11000100
	db $08							; Volume _
	db $0a							; Noise _
	db $c4							; Info byte: 11000100
	db $07							; Volume _
	db $07							; Noise _
	db $c4							; Info byte: 11000100
	db $06							; Volume _
	db $04							; Noise _
	db $c4							; Info byte: 11000100
	db $05							; Volume _
	db $02							; Noise _
	db $c4							; Info byte: 11000100
	db $04							; Volume _
	db $02							; Noise _
	db $c4							; Info byte: 11000100
	db $03							; Volume _
	db $02							; Noise _
.rst_i08:
	db $01							; Info byte: 00000001
	dw .rst_i08						; Loop address

; [ Song track data ]
.track_000:
	db $09			;Note A-1
	db $6c			;Volume 11
	db $76			;Instrument 5
	db $a1,$0f			;CMD Track detune
	db $c1			;Wait 2
	db $10			;Note E-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $71			;Instrument 0
	db $a1,$00			;CMD Track detune
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $43			;Note G-6
	db $6e			;Volume 13
	db $72			;Instrument 1
					;Wait Repeat 4
	db $43			;Note G-6
	db $6d			;Volume 12
					;Wait Repeat 4
	db $43			;Note G-6
	db $6c			;Volume 11
	db $79			;Instrument 8
					;Wait Repeat 4
	db $43			;Note G-6
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $13			;Note G-2
	db $6c			;Volume 11
	db $76			;Instrument 5
	db $a1,$0f			;CMD Track detune
	db $c1			;Wait 2
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $07			;Note G-1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $71			;Instrument 0
	db $a1,$00			;CMD Track detune
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $43			;Note G-6
	db $6e			;Volume 13
	db $72			;Instrument 1
					;Wait Repeat 4
	db $43			;Note G-6
	db $6d			;Volume 12
					;Wait Repeat 4
	db $4f			;Note G-7
	db $6c			;Volume 11
	db $79			;Instrument 8
					;Wait Repeat 4
	db $4f			;Note G-7
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_001:
	db $28			;Note E-4
	db $6d			;Volume 12
	db $74			;Instrument 3
	db $c2			;Wait 3
	db $30			;Note C-5
	db $6c			;Volume 11
	db $76			;Instrument 5
	db $a1,$03			;CMD Track detune
	db $c4			;Wait 5
	db $34			;Note E-5
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $a1,$00			;CMD Track detune
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $34			;Note E-5
	db $67			;Volume 6
					;Wait Repeat 1
	db $34			;Note E-5
	db $6d			;Volume 12
					;Wait Repeat 1
	db $32			;Note D-5
	db $67			;Volume 6
					;Wait Repeat 1
	db $36			;Note F#5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $34			;Note E-5
	db $67			;Volume 6
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $36			;Note F#5
	db $67			;Volume 6
					;Wait Repeat 1
	db $36			;Note F#5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $37			;Note G-5
	db $67			;Volume 6
					;Wait Repeat 1
	db $34			;Note E-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $36			;Note F#5
	db $67			;Volume 6
					;Wait Repeat 1
	db $32			;Note D-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $34			;Note E-5
	db $67			;Volume 6
	db $c1			;Wait 2
	db $32			;Note D-5
	db $c6			;Wait 7
	db $26			;Note D-4
	db $6c			;Volume 11
	db $c2			;Wait 3
	db $2e			;Note A#4
	db $6b			;Volume 10
	db $76			;Instrument 5
	db $a1,$03			;CMD Track detune
	db $c4			;Wait 5
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $1a			;Note D-3
	db $67			;Volume 6
					;Wait Repeat 1
	db $22			;Note A#3
	db $6d			;Volume 12
					;Wait Repeat 1
	db $1f			;Note G-3
	db $67			;Volume 6
					;Wait Repeat 1
	db $26			;Note D-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $22			;Note A#3
	db $67			;Volume 6
					;Wait Repeat 1
	db $2e			;Note A#4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $26			;Note D-4
	db $67			;Volume 6
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $2e			;Note A#4
	db $67			;Volume 6
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $2d			;Note A-4
	db $67			;Volume 6
					;Wait Repeat 1
	db $26			;Note D-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $2b			;Note G-4
	db $67			;Volume 6
	db $c1			;Wait 2
	db $26			;Note D-4
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_002:
	db $60			;Release 96
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_004:
	db $09			;Note A-1
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $a9,$40			; SCC Set Waveform 26
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $10			;Note E-2
	db $6e			;Volume 13
					;Wait Repeat 1
	db $69			;Volume 8
	db $c2			;Wait 3
	db $15			;Note A-2
	db $6f			;Volume 14
	db $c1			;Wait 2
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $60			;Release 96
	db $c5			;Wait 6
	db $21			;Note A-3
	db $66			;Volume 5
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $64			;Volume 3
					;Wait Repeat 2
	db $26			;Note D-4
	db $63			;Volume 2
	db $c1			;Wait 2
	db $10			;Note E-2
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $a9,$40			; SCC Set Waveform 26
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $15			;Note A-2
	db $6d			;Volume 12
	db $76			;Instrument 5
					;Wait Repeat 1
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $60			;Release 96
	db $c2			;Wait 3
	db $13			;Note G-2
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $0e			;Note D-2
	db $6d			;Volume 12
	db $76			;Instrument 5
					;Wait Repeat 1
	db $6a			;Volume 9
	db $c2			;Wait 3
	db $07			;Note G-1
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $60			;Release 96
	db $cd			;Wait 14
	db $0e			;Note D-2
	db $70			;Volume 15
	db $76			;Instrument 5
	db $a9,$40			; SCC Set Waveform 26
	db $c0			;Wait 1
	db $6c			;Volume 11
	db $c2			;Wait 3
	db $13			;Note G-2
	db $70			;Volume 15
	db $76			;Instrument 5
	db $c0			;Wait 1
	db $6c			;Volume 11
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_005:
	db $40			;Note E-6
	db $6c			;Volume 11
	db $75			;Instrument 4
	db $a1,$00			;CMD Track detune
	db $c1			;Wait 2
	db $40			;Note E-6
	db $68			;Volume 7
	db $a9,$38			; SCC Set Waveform 22
					;Wait Repeat 2
	db $42			;Note F#6
	db $6c			;Volume 11
	db $a9,$30			; SCC Set Waveform 19
	db $c0			;Wait 1
	db $63			;Volume 2
	db $c0			;Wait 1
	db $42			;Note F#6
	db $69			;Volume 8
	db $75			;Instrument 4
	db $a9,$38			; SCC Set Waveform 22
					;Wait Repeat 1
	db $62			;Volume 1
	db $c0			;Wait 1
	db $43			;Note G-6
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $a9,$30			; SCC Set Waveform 19
	db $c1			;Wait 2
	db $23			;Note B-3
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $21			;Note A-3
	db $65			;Volume 4
					;Wait Repeat 1
	db $24			;Note C-4
	db $68			;Volume 7
					;Wait Repeat 1
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 1
	db $26			;Note D-4
	db $69			;Volume 8
					;Wait Repeat 1
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 1
	db $28			;Note E-4
	db $69			;Volume 8
					;Wait Repeat 1
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 1
	db $23			;Note B-3
	db $69			;Volume 8
					;Wait Repeat 1
	db $28			;Note E-4
	db $65			;Volume 4
					;Wait Repeat 1
	db $21			;Note A-3
	db $69			;Volume 8
					;Wait Repeat 1
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 1
	db $1f			;Note G-3
	db $69			;Volume 8
					;Wait Repeat 1
	db $21			;Note A-3
	db $65			;Volume 4
					;Wait Repeat 1
	db $18			;Note C-3
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $1f			;Note G-3
	db $65			;Volume 4
					;Wait Repeat 1
	db $17			;Note B-2
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $18			;Note C-3
	db $65			;Volume 4
					;Wait Repeat 1
	db $15			;Note A-2
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $17			;Note B-2
	db $65			;Volume 4
					;Wait Repeat 1
	db $10			;Note E-2
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $15			;Note A-2
	db $65			;Volume 4
					;Wait Repeat 1
	db $13			;Note G-2
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $c1			;Wait 2
	db $11			;Note F-2
	db $66			;Volume 5
					;Wait Repeat 2
	db $13			;Note G-2
	db $6f			;Volume 14
					;Wait Repeat 2
	db $15			;Note A-2
	db $66			;Volume 5
					;Wait Repeat 2
	db $07			;Note G-1
	db $67			;Volume 6
	db $74			;Instrument 3
					;Wait Repeat 2
	db $0e			;Note D-2
	db $67			;Volume 6
	db $c0			;Wait 1
	db $07			;Note G-1
	db $64			;Volume 3
					;Wait Repeat 1
	db $0f			;Note D#2
	db $68			;Volume 7
					;Wait Repeat 1
	db $0e			;Note D-2
	db $64			;Volume 3
					;Wait Repeat 1
	db $11			;Note F-2
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $0f			;Note D#2
	db $64			;Volume 3
					;Wait Repeat 1
	db $1f			;Note G-3
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $11			;Note F-2
	db $65			;Volume 4
					;Wait Repeat 1
	db $1c			;Note E-3
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $1f			;Note G-3
	db $65			;Volume 4
					;Wait Repeat 1
	db $1a			;Note D-3
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $1c			;Note E-3
	db $65			;Volume 4
					;Wait Repeat 1
	db $16			;Note A#2
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $1a			;Note D-3
	db $65			;Volume 4
					;Wait Repeat 1
	db $13			;Note G-2
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $16			;Note A#2
	db $65			;Volume 4
					;Wait Repeat 1
	db $0e			;Note D-2
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $13			;Note G-2
	db $65			;Volume 4
					;Wait Repeat 1
	db $0a			;Note A#1
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $0e			;Note D-2
	db $65			;Volume 4
					;Wait Repeat 1
	db $09			;Note A-1
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $0a			;Note A#1
	db $65			;Volume 4
	db $bf			;[End-Of-Track]
.track_006:
	db $2d			;Note A-4
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $62			;Volume 1
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $62			;Volume 1
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $30			;Note C-5
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $62			;Volume 1
	db $c2			;Wait 3
	db $60			;Release 96
	db $ca			;Wait 11
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $a9,$28			; SCC Set Waveform 18
	db $c1			;Wait 2
	db $62			;Volume 1
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $62			;Volume 1
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $29			;Note F-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $2e			;Note A#4
	db $69			;Volume 8
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $2d			;Note A-4
	db $69			;Volume 8
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $2e			;Note A#4
	db $69			;Volume 8
					;Wait Repeat 1
	db $2e			;Note A#4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $2e			;Note A#4
	db $65			;Volume 4
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $60			;Release 96
	db $d3			;Wait 20
	db $bf			;[End-Of-Track]
.track_007:
	db $30			;Note C-5
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $62			;Volume 1
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $32			;Note D-5
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $62			;Volume 1
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $34			;Note E-5
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $62			;Volume 1
	db $c2			;Wait 3
	db $60			;Release 96
	db $ca			;Wait 11
	db $32			;Note D-5
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $62			;Volume 1
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $30			;Note C-5
	db $6c			;Volume 11
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $62			;Volume 1
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2e			;Note A#4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $32			;Note D-5
	db $65			;Volume 4
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $60			;Release 96
	db $d3			;Wait 20
	db $bf			;[End-Of-Track]
.track_008:
	db $16			;Note A#2
	db $6c			;Volume 11
	db $76			;Instrument 5
	db $a1,$0f			;CMD Track detune
	db $c1			;Wait 2
	db $11			;Note F-2
	db $c3			;Wait 4
	db $0a			;Note A#1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $71			;Instrument 0
	db $a1,$00			;CMD Track detune
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $43			;Note G-6
	db $6f			;Volume 14
	db $72			;Instrument 1
					;Wait Repeat 4
	db $43			;Note G-6
	db $6e			;Volume 13
					;Wait Repeat 4
	db $4f			;Note G-7
	db $6d			;Volume 12
	db $79			;Instrument 8
					;Wait Repeat 4
	db $4f			;Note G-7
	db $6c			;Volume 11
					;Wait Repeat 4
	db $28			;Note E-4
	db $6a			;Volume 9
	db $73			;Instrument 2
	db $d7			;Wait 24
	db $1a			;Note D-3
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_009:
	db $32			;Note D-5
	db $6d			;Volume 12
	db $74			;Instrument 3
	db $c2			;Wait 3
	db $2c			;Note G#4
	db $6c			;Volume 11
	db $a1,$03			;CMD Track detune
	db $c4			;Wait 5
	db $2e			;Note A#4
	db $6c			;Volume 11
	db $a1,$00			;CMD Track detune
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $67			;Volume 6
					;Wait Repeat 1
	db $2e			;Note A#4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $2d			;Note A-4
	db $67			;Volume 6
					;Wait Repeat 1
	db $30			;Note C-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $2e			;Note A#4
	db $67			;Volume 6
					;Wait Repeat 1
	db $32			;Note D-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $30			;Note C-5
	db $67			;Volume 6
					;Wait Repeat 1
	db $34			;Note E-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $32			;Note D-5
	db $67			;Volume 6
					;Wait Repeat 1
	db $35			;Note F-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $34			;Note E-5
	db $67			;Volume 6
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $35			;Note F-5
	db $67			;Volume 6
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $35			;Note F-5
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6a			;Volume 9
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $69			;Volume 8
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $23			;Note B-3
	db $6a			;Volume 9
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $69			;Volume 8
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $21			;Note A-3
	db $6a			;Volume 9
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $69			;Volume 8
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6a			;Volume 9
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $69			;Volume 8
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_012:
	db $16			;Note A#2
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $a9,$40			; SCC Set Waveform 26
	db $c0			;Wait 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $11			;Note F-2
	db $6e			;Volume 13
					;Wait Repeat 1
	db $68			;Volume 7
	db $c2			;Wait 3
	db $0a			;Note A#1
	db $6e			;Volume 13
	db $c0			;Wait 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $11			;Note F-2
	db $6e			;Volume 13
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $60			;Release 96
	db $cd			;Wait 14
	db $11			;Note F-2
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $a9,$40			; SCC Set Waveform 26
	db $c0			;Wait 1
	db $69			;Volume 8
	db $c2			;Wait 3
	db $16			;Note A#2
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $c0			;Wait 1
	db $69			;Volume 8
	db $c2			;Wait 3
	db $15			;Note A-2
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $c3			;Wait 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $12			;Note F#2
					;Wait Repeat 4
	db $06			;Note F#1
	db $c3			;Wait 4
	db $11			;Note F-2
	db $a9,$40			; SCC Set Waveform 26
					;Wait Repeat 4
	db $13			;Note G-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_013:
	db $46			;Note A#6
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a1,$00			;CMD Track detune
	db $c1			;Wait 2
	db $46			;Note A#6
	db $68			;Volume 7
	db $a9,$38			; SCC Set Waveform 22
					;Wait Repeat 2
	db $48			;Note C-7
	db $6e			;Volume 13
	db $a9,$30			; SCC Set Waveform 19
	db $c0			;Wait 1
	db $62			;Volume 1
	db $c0			;Wait 1
	db $48			;Note C-7
	db $68			;Volume 7
	db $75			;Instrument 4
	db $a9,$38			; SCC Set Waveform 22
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $68			;Volume 7
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $64			;Volume 3
					;Wait Repeat 1
	db $1c			;Note E-3
	db $67			;Volume 6
	db $74			;Instrument 3
					;Wait Repeat 1
	db $1d			;Note F-3
	db $64			;Volume 3
					;Wait Repeat 1
	db $1d			;Note F-3
	db $68			;Volume 7
					;Wait Repeat 1
	db $1c			;Note E-3
	db $64			;Volume 3
					;Wait Repeat 1
	db $1f			;Note G-3
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $1d			;Note F-3
	db $65			;Volume 4
					;Wait Repeat 1
	db $1d			;Note F-3
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $1f			;Note G-3
	db $65			;Volume 4
					;Wait Repeat 1
	db $20			;Note G#3
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $1d			;Note F-3
	db $65			;Volume 4
					;Wait Repeat 1
	db $24			;Note C-4
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $20			;Note G#3
	db $65			;Volume 4
					;Wait Repeat 1
	db $26			;Note D-4
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 1
	db $28			;Note E-4
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 1
	db $26			;Note D-4
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $28			;Note E-4
	db $65			;Volume 4
					;Wait Repeat 1
	db $24			;Note C-4
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 1
	db $1f			;Note G-3
	db $69			;Volume 8
	db $74			;Instrument 3
					;Wait Repeat 1
	db $24			;Note C-4
	db $65			;Volume 4
	db $c0			;Wait 1
	db $45			;Note A-6
	db $69			;Volume 8
	db $75			;Instrument 4
	db $a9,$38			; SCC Set Waveform 22
					;Wait Repeat 1
	db $65			;Volume 4
					;Wait Repeat 1
	db $40			;Note E-6
	db $67			;Volume 6
					;Wait Repeat 1
	db $45			;Note A-6
	db $64			;Volume 3
					;Wait Repeat 1
	db $39			;Note A-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $40			;Note E-6
	db $64			;Volume 3
					;Wait Repeat 1
	db $40			;Note E-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $39			;Note A-5
	db $64			;Volume 3
					;Wait Repeat 1
	db $45			;Note A-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $40			;Note E-6
	db $64			;Volume 3
					;Wait Repeat 1
	db $40			;Note E-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $45			;Note A-6
	db $64			;Volume 3
					;Wait Repeat 1
	db $45			;Note A-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $40			;Note E-6
	db $64			;Volume 3
					;Wait Repeat 1
	db $40			;Note E-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $45			;Note A-6
	db $64			;Volume 3
					;Wait Repeat 1
	db $39			;Note A-5
	db $68			;Volume 7
	db $c1			;Wait 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $45			;Note A-6
	db $c1			;Wait 2
	db $40			;Note E-6
	db $67			;Volume 6
					;Wait Repeat 2
	db $39			;Note A-5
	db $c1			;Wait 2
	db $40			;Note E-6
	db $66			;Volume 5
					;Wait Repeat 2
	db $45			;Note A-6
	db $c1			;Wait 2
	db $40			;Note E-6
	db $65			;Volume 4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_014:
	db $2e			;Note A#4
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $62			;Volume 1
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $30			;Note C-5
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6d			;Volume 12
					;Wait Repeat 2
	db $62			;Volume 1
	db $c2			;Wait 3
	db $60			;Release 96
	db $ca			;Wait 11
	db $30			;Note C-5
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $a9,$28			; SCC Set Waveform 18
	db $c1			;Wait 2
	db $62			;Volume 1
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $62			;Volume 1
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6d			;Volume 12
	db $77			;Instrument 6
	db $c0			;Wait 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $2f			;Note B-4
	db $68			;Volume 7
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $32			;Note D-5
	db $68			;Volume 7
	db $c1			;Wait 2
	db $34			;Note E-5
	db $c0			;Wait 1
	db $60			;Release 96
	db $c4			;Wait 5
	db $40			;Note E-6
	db $66			;Volume 5
	db $75			;Instrument 4
	db $a9,$38			; SCC Set Waveform 22
	db $c0			;Wait 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $39			;Note A-5
	db $66			;Volume 5
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $40			;Note E-6
	db $66			;Volume 5
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $45			;Note A-6
	db $66			;Volume 5
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $40			;Note E-6
	db $66			;Volume 5
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $39			;Note A-5
	db $66			;Volume 5
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $40			;Note E-6
	db $66			;Volume 5
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $45			;Note A-6
	db $66			;Volume 5
	db $bf			;[End-Of-Track]
.track_015:
	db $32			;Note D-5
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $62			;Volume 1
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $34			;Note E-5
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $35			;Note F-5
	db $6d			;Volume 12
					;Wait Repeat 2
	db $62			;Volume 1
	db $c2			;Wait 3
	db $60			;Release 96
	db $ca			;Wait 11
	db $34			;Note E-5
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $62			;Volume 1
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $32			;Note D-5
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $62			;Volume 1
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $40			;Note E-6
	db $63			;Volume 2
	db $75			;Instrument 4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $40			;Note E-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $45			;Note A-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $40			;Note E-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $60			;Release 96
	db $bf			;[End-Of-Track]

