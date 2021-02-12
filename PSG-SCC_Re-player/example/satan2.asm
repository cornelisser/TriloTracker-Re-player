; Song: Satan - Prologue                
; By:   Gryzor87 (c)2020                

; [ Song start data ]
	db $05					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_002, .track_003, .track_004, .track_005, .track_005, .track_005	; Step:001 Pattern:000
	dw .track_008, .track_009, .track_010, .track_011, .track_004, .track_013, .track_014, .track_015	; Step:002 Pattern:001
	dw .track_016, .track_017, .track_018, .track_003, .track_020, .track_021, .track_022, .track_023	; Step:003 Pattern:002
	dw .track_024, .track_025, .track_018, .track_003, .track_028, .track_029, .track_030, .track_031	; Step:004 Pattern:003
	dw .track_032, .track_033, .track_018, .track_035, .track_036, .track_037, .track_038, .track_039	; Step:005 Pattern:004
	dw .track_024, .track_041, .track_018, .track_003, .track_044, .track_029, .track_046, .track_047	; Step:006 Pattern:005
	dw .track_024, .track_049, .track_018, .track_003, .track_052, .track_029, .track_054, .track_055	; Step:007 Pattern:006
	dw .track_056, .track_057, .track_058, .track_059, .track_060, .track_061, .track_062, .track_063	; Step:008 Pattern:007
	dw .track_064, .track_065, .track_066, .track_067, .track_068, .track_069, .track_070, .track_071	; Step:009 Pattern:008
	dw .track_072, .track_073, .track_074, .track_075, .track_076, .track_077, .track_078, .track_079	; Step:010 Pattern:009
.restart:
	dw .track_080, .track_080, .track_080, .track_080, .track_080, .track_080, .track_080, .track_080	; Step:011 Pattern:010
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $80, $b0, $c0, $10, $1a, $2a, $2c, $1a, $00, $e0, $d0, $e0, $22, $53, $70, $75, $70, $31, $ea, $80, $88, $8a, $8c, $8e, $00, $7f, $75, $73, $62, $00, $c0, $90				; Waveform:1
	db $00, $f0, $e0, $d0, $c0, $b0, $a0, $90, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $7f, $70, $60, $50, $40, $30, $20, $10				; Waveform:2
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $00, $e7, $cf, $b9, $a6, $96, $8b, $83, $80, $83, $8b, $96, $a6, $b9, $cf, $e7				; Waveform:3
	db $00, $30, $50, $60, $70, $60, $50, $30, $00, $d0, $b0, $a0, $90, $a0, $b0, $d0, $00, $40, $60, $70, $60, $40, $00, $c0, $a0, $90, $a0, $c0, $00, $70, $00, $90				; Waveform:4
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20				; Waveform:5
	db $30, $50, $50, $30, $00, $00, $10, $40, $60, $70, $60, $30, $f0, $e0, $e0, $00, $20, $20, $10, $c0, $a0, $90, $a0, $c0, $00, $00, $d0, $b0, $b0, $d0, $00, $00				; Waveform:7
	db $00, $f8, $f0, $e8, $e0, $d8, $d0, $c8, $c0, $b8, $b0, $a8, $a0, $98, $90, $88, $80, $78, $70, $68, $60, $58, $50, $48, $40, $38, $30, $28, $20, $18, $10, $08				; Waveform:10

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; HH CL A8        
	dw .instrument_01				; TOM             
	dw .instrument_02				; SHAKER G6       
	dw .instrument_03				; SC Brass        
	dw .instrument_04				; SC Bass         
	dw .instrument_05				; SC PianoBell    
	dw .instrument_06				; PGS String snake
	dw .instrument_07				; PULSE           
	dw .instrument_08				; IN              

.instrument_00:					; HH CL A8        
	db $28							; Waveform 5
	db $d4							; Info byte: 11010100
	db $0b							; Volume _
	db $00							; Noise _
.rst_i00:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i00						; Loop address
.instrument_01:					; TOM             
	db $10							; Waveform 2
	db $1c							; Info byte: 00011100
	db $0e							; Volume _
	dw $002f							; Tone
	db $1c							; Info byte: 00011100
	db $0c							; Volume _
	dw $002f							; Tone
.rst_i01:
	db $1f							; Info byte: 00011111
	db $ff							; Volume -
	dw $002f							; Tone
	dw .rst_i01						; Loop address
.instrument_02:					; SHAKER G6       
	db $28							; Waveform 5
	db $d4							; Info byte: 11010100
	db $0e							; Volume _
	db $1f							; Noise _
.rst_i02:
	db $e7							; Info byte: 11100111
	db $ff							; Volume -
	db $fc							; Noise +
	dw .rst_i02						; Loop address
.instrument_03:					; SC Brass        
	db $30							; Waveform 6
	db $14							; Info byte: 00010100
	db $09							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i03:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i03						; Loop address
.instrument_04:					; SC Bass         
	db $00							; Waveform 0
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
.rst_i04:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i04						; Loop address
.instrument_05:					; SC PianoBell    
	db $28							; Waveform 5
	db $14							; Info byte: 00010100
	db $0f							; Volume _
.rst_i05:
	db $16							; Info byte: 00010110
	db $fd							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i05						; Loop address
.instrument_06:					; PGS String snake
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
.rst_i06:
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
	dw .rst_i06						; Loop address
.instrument_07:					; PULSE           
	db $18							; Waveform 3
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
.rst_i07:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i07						; Loop address
.instrument_08:					; IN              
	db $08							; Waveform 1
.rst_i08:
	db $15							; Info byte: 00010101
	db $0f							; Volume _
	dw .rst_i08						; Loop address

; [ Song track data ]
.track_000:
	db $60			;Release 96
	db $cb			;Wait 12
	db $43			;Note G-6
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $c5			;Wait 6
	db $43			;Note G-6
	db $6b			;Volume 10
					;Wait Repeat 6
	db $43			;Note G-6
	db $6a			;Volume 9
					;Wait Repeat 6
	db $43			;Note G-6
	db $69			;Volume 8
	db $cb			;Wait 12
	db $1f			;Note G-3
	db $6f			;Volume 14
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_001:
	db $11			;Note F-2
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $c5			;Wait 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_002:
	db $05			;Note F-1
	db $6a			;Volume 9
	db $77			;Instrument 6
	db $a1,$00			;CMD Track detune
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_003:
	db $05			;Note F-1
	db $6a			;Volume 9
	db $78			;Instrument 7
	db $c5			;Wait 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_004:
	db $05			;Note F-1
	db $68			;Volume 7
	db $77			;Instrument 6
	db $a1,$08			;CMD Track detune
	db $c5			;Wait 6
			;CMD $c24 Waveform Not implemented [WARNING]
	db $d6			;Wait 23
			;CMD $c10 Waveform Not implemented [WARNING]
	db $d2			;Wait 19
	db $bf			;[End-Of-Track]
.track_005:
	db $60			;Release 96
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_008:
	db $15			;Note A-2
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $15			;Note A-2
	db $c1			;Wait 2
	db $13			;Note G-2
	db $c8			;Wait 9
	db $43			;Note G-6
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $c5			;Wait 6
	db $43			;Note G-6
	db $6b			;Volume 10
					;Wait Repeat 6
	db $43			;Note G-6
	db $6a			;Volume 9
					;Wait Repeat 6
	db $43			;Note G-6
	db $69			;Volume 8
	db $cb			;Wait 12
	db $1f			;Note G-3
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $c0			;Wait 1
	db $1c			;Note E-3
					;Wait Repeat 1
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_009:
	db $11			;Note F-2
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a5,$f3		;CMD Envelope multiplier
	db $c5			;Wait 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_010:
	db $05			;Note F-1
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $a1,$00			;CMD Track detune
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_011:
	db $05			;Note F-1
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $c5			;Wait 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_013:
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_014:
	db $2c			;Note G#4
	db $67			;Volume 6
	db $76			;Instrument 5
	db $a9,$28			; SCC Set Waveform 7
	db $c2			;Wait 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $20			;Note G#3
					;Wait Repeat 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $2c			;Note G#4
					;Wait Repeat 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $25			;Note C#4
	db $62			;Volume 1
	db $79			;Instrument 8
	db $a9,$30			; SCC Set Waveform 10
	db $c1			;Wait 2
	db $63			;Volume 2
					;Wait Repeat 2
	db $64			;Volume 3
					;Wait Repeat 2
	db $65			;Volume 4
	db $c9			;Wait 10
	db $64			;Volume 3
	db $c2			;Wait 3
	db $63			;Volume 2
	db $c1			;Wait 2
	db $62			;Volume 1
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_015:
	db $60			;Release 96
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $65			;Volume 4
	db $76			;Instrument 5
	db $a9,$28			; SCC Set Waveform 7
	db $c2			;Wait 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $20			;Note G#3
					;Wait Repeat 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $62			;Volume 1
	db $79			;Instrument 8
	db $a9,$30			; SCC Set Waveform 10
					;Wait Repeat 2
	db $63			;Volume 2
					;Wait Repeat 2
	db $64			;Volume 3
					;Wait Repeat 2
	db $65			;Volume 4
	db $c5			;Wait 6
	db $94,$56		;CMD Vibrato
	db $c3			;Wait 4
	db $64			;Volume 3
	db $c2			;Wait 3
	db $63			;Volume 2
	db $c1			;Wait 2
	db $62			;Volume 1
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_016:
	db $1d			;Note F-3
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $13			;Note G-2
	db $c4			;Wait 5
	db $10			;Note E-2
	db $c5			;Wait 6
	db $43			;Note G-6
	db $6e			;Volume 13
	db $73			;Instrument 2
					;Wait Repeat 6
	db $43			;Note G-6
	db $6d			;Volume 12
					;Wait Repeat 6
	db $43			;Note G-6
	db $6c			;Volume 11
					;Wait Repeat 6
	db $43			;Note G-6
	db $69			;Volume 8
	db $cb			;Wait 12
	db $5d			;Note A-8
	db $70			;Volume 15
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_017:
	db $11			;Note F-2
	db $6c			;Volume 11
	db $78			;Instrument 7
	db $a5,$f3		;CMD Envelope multiplier
	db $c5			;Wait 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_018:
	db $05			;Note F-1
	db $6c			;Volume 11
	db $77			;Instrument 6
	db $a1,$00			;CMD Track detune
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_020:
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $9d,$00			;CMD Arpegio speed
	db $c5			;Wait 6
	db $68			;Volume 7
	db $c0			;Wait 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $20			;Note G#3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $20			;Note G#3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $23			;Note B-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $23			;Note B-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $20			;Note G#3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $20			;Note G#3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $29			;Note F-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $bf			;[End-Of-Track]
.track_021:
	db $20			;Note G#3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c5			;Wait 6
	db $68			;Volume 7
	db $c0			;Wait 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $24			;Note C-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $26			;Note D-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $26			;Note D-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $30			;Note C-5
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $bf			;[End-Of-Track]
.track_022:
	db $24			;Note C-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a1,$01			;CMD Track detune
	db $c5			;Wait 6
	db $68			;Volume 7
	db $c0			;Wait 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $29			;Note F-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $29			;Note F-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $29			;Note F-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $29			;Note F-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $35			;Note F-5
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $bf			;[End-Of-Track]
.track_023:
	db $a1,$02			;CMD Track detune
	db $c3			;Wait 4
	db $24			;Note C-4
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $64			;Volume 3
	db $c0			;Wait 1
	db $29			;Note F-4
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $64			;Volume 3
	db $c0			;Wait 1
	db $29			;Note F-4
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $64			;Volume 3
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $64			;Volume 3
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $64			;Volume 3
	db $c0			;Wait 1
	db $29			;Note F-4
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $64			;Volume 3
	db $c0			;Wait 1
	db $29			;Note F-4
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_024:
	db $1d			;Note F-3
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $13			;Note G-2
	db $c4			;Wait 5
	db $10			;Note E-2
	db $c5			;Wait 6
	db $43			;Note G-6
	db $6e			;Volume 13
	db $73			;Instrument 2
					;Wait Repeat 6
	db $43			;Note G-6
	db $6d			;Volume 12
					;Wait Repeat 6
	db $43			;Note G-6
	db $6c			;Volume 11
					;Wait Repeat 6
	db $43			;Note G-6
	db $69			;Volume 8
	db $cb			;Wait 12
	db $1f			;Note G-3
	db $6f			;Volume 14
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_025:
	db $3c			;Note C-6
	db $68			;Volume 7
	db $77			;Instrument 6
	db $d4			;Wait 21
	db $92,$01			;CMD Portamento down
	db $c0			;Wait 1
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $92,$01			;CMD Portamento down
	db $c0			;Wait 1
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $92,$01			;CMD Portamento down
	db $c0			;Wait 1
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $92,$01			;CMD Portamento down
	db $c0			;Wait 1
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $92,$01			;CMD Portamento down
	db $c0			;Wait 1
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $92,$01			;CMD Portamento down
	db $c0			;Wait 1
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $92,$01			;CMD Portamento down
	db $c0			;Wait 1
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $92,$01			;CMD Portamento down
	db $c0			;Wait 1
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $92,$01			;CMD Portamento down
	db $c0			;Wait 1
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_028:
	db $30			;Note C-5
	db $6d			;Volume 12
	db $74			;Instrument 3
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_029:
	db $35			;Note F-5
	db $6d			;Volume 12
	db $74			;Instrument 3
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_030:
	db $18			;Note C-3
	db $6c			;Volume 11
	db $76			;Instrument 5
	db $a9,$00			; SCC Set Waveform 1
	db $c2			;Wait 3
	db $14			;Note G#2
	db $6b			;Volume 10
					;Wait Repeat 3
	db $17			;Note B-2
	db $6a			;Volume 9
					;Wait Repeat 3
	db $18			;Note C-3
					;Wait Repeat 3
	db $14			;Note G#2
	db $6c			;Volume 11
					;Wait Repeat 3
	db $18			;Note C-3
	db $69			;Volume 8
					;Wait Repeat 3
	db $14			;Note G#2
					;Wait Repeat 3
	db $17			;Note B-2
					;Wait Repeat 3
	db $18			;Note C-3
	db $6c			;Volume 11
					;Wait Repeat 3
	db $14			;Note G#2
	db $69			;Volume 8
					;Wait Repeat 3
	db $1b			;Note D#3
					;Wait Repeat 3
	db $14			;Note G#2
					;Wait Repeat 3
	db $1a			;Note D-3
	db $6c			;Volume 11
					;Wait Repeat 3
	db $14			;Note G#2
	db $69			;Volume 8
					;Wait Repeat 3
	db $17			;Note B-2
					;Wait Repeat 3
	db $18			;Note C-3
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_031:
	db $60			;Release 96
	db $c3			;Wait 4
	db $18			;Note C-3
	db $67			;Volume 6
	db $76			;Instrument 5
	db $a9,$00			; SCC Set Waveform 1
	db $c2			;Wait 3
	db $14			;Note G#2
	db $66			;Volume 5
					;Wait Repeat 3
	db $17			;Note B-2
					;Wait Repeat 3
	db $18			;Note C-3
					;Wait Repeat 3
	db $14			;Note G#2
					;Wait Repeat 3
	db $18			;Note C-3
					;Wait Repeat 3
	db $14			;Note G#2
					;Wait Repeat 3
	db $17			;Note B-2
					;Wait Repeat 3
	db $18			;Note C-3
					;Wait Repeat 3
	db $14			;Note G#2
					;Wait Repeat 3
	db $1b			;Note D#3
					;Wait Repeat 3
	db $14			;Note G#2
					;Wait Repeat 3
	db $1a			;Note D-3
					;Wait Repeat 3
	db $14			;Note G#2
					;Wait Repeat 3
	db $17			;Note B-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_032:
	db $1d			;Note F-3
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $13			;Note G-2
	db $c4			;Wait 5
	db $10			;Note E-2
	db $c5			;Wait 6
	db $43			;Note G-6
	db $6e			;Volume 13
	db $73			;Instrument 2
					;Wait Repeat 6
	db $43			;Note G-6
	db $6d			;Volume 12
					;Wait Repeat 6
	db $21			;Note A-3
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $70			;Volume 15
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $c2			;Wait 3
	db $1d			;Note F-3
					;Wait Repeat 3
	db $5d			;Note A-8
	db $70			;Volume 15
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_033:
	db $11			;Note F-2
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a5,$f3		;CMD Envelope multiplier
	db $c5			;Wait 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $11			;Note F-2
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_035:
	db $18			;Note C-3
	db $69			;Volume 8
	db $76			;Instrument 5
	db $a9,$00			; SCC Set Waveform 1
	db $c2			;Wait 3
	db $14			;Note G#2
	db $c0			;Wait 1
	db $18			;Note C-3
	db $66			;Volume 5
	db $c1			;Wait 2
	db $17			;Note B-2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $14			;Note G#2
	db $66			;Volume 5
	db $c1			;Wait 2
	db $18			;Note C-3
	db $69			;Volume 8
	db $c0			;Wait 1
	db $17			;Note B-2
	db $66			;Volume 5
	db $c1			;Wait 2
	db $14			;Note G#2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $18			;Note C-3
	db $66			;Volume 5
	db $c1			;Wait 2
	db $18			;Note C-3
	db $69			;Volume 8
	db $c0			;Wait 1
	db $14			;Note G#2
	db $66			;Volume 5
	db $c1			;Wait 2
	db $14			;Note G#2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $18			;Note C-3
	db $66			;Volume 5
	db $c1			;Wait 2
	db $17			;Note B-2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $14			;Note G#2
	db $66			;Volume 5
	db $c1			;Wait 2
	db $18			;Note C-3
	db $69			;Volume 8
	db $c0			;Wait 1
	db $17			;Note B-2
	db $66			;Volume 5
	db $c1			;Wait 2
	db $14			;Note G#2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $18			;Note C-3
	db $66			;Volume 5
	db $c1			;Wait 2
	db $1b			;Note D#3
	db $69			;Volume 8
	db $c0			;Wait 1
	db $14			;Note G#2
	db $66			;Volume 5
	db $c1			;Wait 2
	db $14			;Note G#2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $1b			;Note D#3
	db $66			;Volume 5
	db $c1			;Wait 2
	db $1a			;Note D-3
	db $69			;Volume 8
	db $c0			;Wait 1
	db $14			;Note G#2
	db $66			;Volume 5
	db $c1			;Wait 2
	db $14			;Note G#2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $1a			;Note D-3
	db $66			;Volume 5
	db $c1			;Wait 2
	db $17			;Note B-2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $14			;Note G#2
	db $66			;Volume 5
	db $c1			;Wait 2
	db $18			;Note C-3
	db $69			;Volume 8
	db $c0			;Wait 1
	db $17			;Note B-2
	db $66			;Volume 5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_036:
	db $1d			;Note F-3
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $9d,$00			;CMD Arpegio speed
	db $c5			;Wait 6
	db $68			;Volume 7
	db $c0			;Wait 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $20			;Note G#3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $20			;Note G#3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $27			;Note D#4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $27			;Note D#4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $29			;Note F-4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $29			;Note F-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $bf			;[End-Of-Track]
.track_037:
	db $20			;Note G#3
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c5			;Wait 6
	db $68			;Volume 7
	db $c0			;Wait 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $24			;Note C-4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $29			;Note F-4
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $bf			;[End-Of-Track]
.track_038:
	db $24			;Note C-4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $a1,$01			;CMD Track detune
	db $c5			;Wait 6
	db $68			;Volume 7
	db $c0			;Wait 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $29			;Note F-4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $29			;Note F-4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $32			;Note D-5
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $94,$35		;CMD Vibrato
					;Wait Repeat 4
	db $68			;Volume 7
	db $c0			;Wait 1
	db $32			;Note D-5
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $68			;Volume 7
	db $bf			;[End-Of-Track]
.track_039:
	db $a1,$02			;CMD Track detune
	db $c3			;Wait 4
	db $24			;Note C-4
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $64			;Volume 3
	db $c0			;Wait 1
	db $29			;Note F-4
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $64			;Volume 3
	db $c0			;Wait 1
	db $29			;Note F-4
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $64			;Volume 3
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $64			;Volume 3
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $64			;Volume 3
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $64			;Volume 3
	db $c0			;Wait 1
	db $32			;Note D-5
	db $67			;Volume 6
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_041:
	db $30			;Note C-5
	db $6a			;Volume 9
	db $77			;Instrument 6
	db $ce			;Wait 15
	db $27			;Note D#4
	db $6c			;Volume 11
	db $d4			;Wait 21
	db $24			;Note C-4
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_044:
	db $20			;Note G#3
	db $6b			;Volume 10
	db $76			;Instrument 5
	db $a9,$28			; SCC Set Waveform 7
	db $c2			;Wait 3
	db $22			;Note A#3
	db $c0			;Wait 1
	db $20			;Note G#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $20			;Note G#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $22			;Note A#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $20			;Note G#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $20			;Note G#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1f			;Note G-3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $22			;Note A#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $20			;Note G#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $20			;Note G#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $22			;Note A#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $20			;Note G#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $20			;Note G#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1f			;Note G-3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $22			;Note A#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $20			;Note G#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $20			;Note G#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $22			;Note A#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $20			;Note G#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1f			;Note G-3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1b			;Note D#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1d			;Note F-3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1b			;Note D#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $22			;Note A#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1d			;Note F-3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_046:
	db $1d			;Note F-3
	db $70			;Volume 15
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 2
	db $c6			;Wait 7
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $1d			;Note F-3
	db $70			;Volume 15
	db $c1			;Wait 2
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $24			;Note C-4
	db $70			;Volume 15
	db $c9			;Wait 10
	db $94,$55		;CMD Vibrato
					;Wait Repeat 10
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1d			;Note F-3
	db $70			;Volume 15
	db $9b			;CMD End 
					;Wait Repeat 1
	db $6d			;Volume 12
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $22			;Note A#3
	db $70			;Volume 15
	db $c6			;Wait 7
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $24			;Note C-4
	db $70			;Volume 15
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $69			;Volume 8
	db $bf			;[End-Of-Track]
.track_047:
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 2
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6b			;Volume 10
	db $d3			;Wait 20
	db $68			;Volume 7
	db $c0			;Wait 1
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $22			;Note A#3
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_049:
	db $27			;Note D#4
	db $6d			;Volume 12
	db $77			;Instrument 6
	db $cb			;Wait 12
	db $22			;Note A#3
	db $d7			;Wait 24
	db $26			;Note D-4
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_052:
	db $20			;Note G#3
	db $6b			;Volume 10
	db $76			;Instrument 5
	db $a9,$28			; SCC Set Waveform 7
	db $c2			;Wait 3
	db $22			;Note A#3
	db $c0			;Wait 1
	db $20			;Note G#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $20			;Note G#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $22			;Note A#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $20			;Note G#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $20			;Note G#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1f			;Note G-3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $22			;Note A#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $20			;Note G#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $76			;Instrument 5
	db $c0			;Wait 1
	db $22			;Note A#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $20			;Note G#3
	db $6b			;Volume 10
	db $76			;Instrument 5
	db $c0			;Wait 1
	db $1f			;Note G-3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $20			;Note G#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1f			;Note G-3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1d			;Note F-3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $20			;Note G#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1f			;Note G-3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $22			;Note A#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $20			;Note G#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $20			;Note G#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $22			;Note A#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $20			;Note G#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1f			;Note G-3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_054:
	db $27			;Note D#4
	db $70			;Volume 15
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 2
	db $c6			;Wait 7
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $27			;Note D#4
	db $70			;Volume 15
	db $74			;Instrument 3
					;Wait Repeat 1
	db $6d			;Volume 12
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $26			;Note D-4
	db $70			;Volume 15
	db $74			;Instrument 3
	db $c9			;Wait 10
	db $94,$55		;CMD Vibrato
					;Wait Repeat 10
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $22			;Note A#3
	db $70			;Volume 15
	db $c7			;Wait 8
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $22			;Note A#3
	db $70			;Volume 15
	db $74			;Instrument 3
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $69			;Volume 8
	db $9d,$00			;CMD Arpegio speed
	db $bf			;[End-Of-Track]
.track_055:
	db $c3			;Wait 4
	db $27			;Note D#4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 2
	db $c7			;Wait 8
	db $68			;Volume 7
	db $c0			;Wait 1
	db $27			;Note D#4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $26			;Note D-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $d3			;Wait 20
	db $68			;Volume 7
	db $c3			;Wait 4
	db $22			;Note A#3
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_056:
	db $1d			;Note F-3
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $13			;Note G-2
	db $c4			;Wait 5
	db $10			;Note E-2
	db $c5			;Wait 6
	db $43			;Note G-6
	db $6e			;Volume 13
	db $73			;Instrument 2
					;Wait Repeat 6
	db $43			;Note G-6
	db $6d			;Volume 12
	db $c4			;Wait 5
	db $a5,$00		;CMD Envelope multiplier
	db $e8			;Wait 41
	db $bf			;[End-Of-Track]
.track_057:
	db $1e			;Note F#3
	db $6d			;Volume 12
	db $77			;Instrument 6
	db $cb			;Wait 12
	db $22			;Note A#3
	db $c8			;Wait 9
	db $22			;Note A#3
	db $70			;Volume 15
	db $78			;Instrument 7
	db $ea			;Wait 43
	db $bf			;[End-Of-Track]
.track_058:
	db $05			;Note F-1
	db $6c			;Volume 11
	db $77			;Instrument 6
	db $a1,$00			;CMD Track detune
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_059:
	db $05			;Note F-1
	db $6a			;Volume 9
	db $78			;Instrument 7
	db $c5			;Wait 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
					;Wait Repeat 6
	db $05			;Note F-1
	db $ed			;Wait 46
	db $bf			;[End-Of-Track]
.track_060:
	db $1b			;Note D#3
	db $6b			;Volume 10
	db $76			;Instrument 5
	db $a9,$28			; SCC Set Waveform 7
	db $c2			;Wait 3
	db $1c			;Note E-3
	db $c0			;Wait 1
	db $1b			;Note D#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1b			;Note D#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1c			;Note E-3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $19			;Note C#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1b			;Note D#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $18			;Note C-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $19			;Note C#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $19			;Note C#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $18			;Note C-3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1b			;Note D#3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $19			;Note C#3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $1b			;Note D#3
	db $67			;Volume 6
	db $e9			;Wait 42
	db $bf			;[End-Of-Track]
.track_061:
	db $22			;Note A#3
	db $70			;Volume 15
	db $74			;Instrument 3
	db $d4			;Wait 21
	db $27			;Note D#4
	db $6f			;Volume 14
	db $c0			;Wait 1
	db $6e			;Volume 13
	db $e9			;Wait 42
	db $bf			;[End-Of-Track]
.track_062:
	db $25			;Note C#4
	db $70			;Volume 15
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 2
	db $c9			;Wait 10
	db $94,$55		;CMD Vibrato
					;Wait Repeat 10
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $6f			;Volume 14
	db $74			;Instrument 3
	db $9b			;CMD End 
					;Wait Repeat 1
	db $6e			;Volume 13
	db $e9			;Wait 42
	db $bf			;[End-Of-Track]
.track_063:
	db $c3			;Wait 4
	db $25			;Note C#4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 2
	db $fb			;Wait 60
	db $bf			;[End-Of-Track]
.track_064:
	db $28			;Note E-4
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $28			;Note E-4
	db $c1			;Wait 2
	db $24			;Note C-4
	db $c2			;Wait 3
	db $18			;Note C-3
	db $c0			;Wait 1
	db $18			;Note C-3
	db $c4			;Wait 5
	db $43			;Note G-6
	db $6f			;Volume 14
	db $73			;Instrument 2
	db $c5			;Wait 6
	db $43			;Note G-6
	db $6e			;Volume 13
					;Wait Repeat 6
	db $43			;Note G-6
	db $6e			;Volume 13
					;Wait Repeat 6
	db $43			;Note G-6
	db $6d			;Volume 12
					;Wait Repeat 6
	db $43			;Note G-6
	db $6c			;Volume 11
					;Wait Repeat 6
	db $5d			;Note A-8
	db $70			;Volume 15
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_065:
	db $0e			;Note D-2
	db $70			;Volume 15
	db $75			;Instrument 4
	db $c2			;Wait 3
	db $92,$20			;CMD Portamento down
	db $c1			;Wait 2
	db $60			;Release 96
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $11			;Note F-2
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $e9			;Wait 42
	db $bf			;[End-Of-Track]
.track_066:
	db $23			;Note B-3
	db $76			;Instrument 5
	db $c0			;Wait 1
	db $70			;Volume 15
	db $ee			;Wait 47
	db $bf			;[End-Of-Track]
.track_067:
	db $0e			;Note D-2
	db $70			;Volume 15
	db $75			;Instrument 4
	db $c2			;Wait 3
	db $92,$20			;CMD Portamento down
	db $c0			;Wait 1
	db $6d			;Volume 12
					;Wait Repeat 1
	db $60			;Release 96
	db $6b			;Volume 10
	db $9b			;CMD End 
					;Wait Repeat 1
	db $11			;Note F-2
	db $70			;Volume 15
	db $77			;Instrument 6
	db $c4			;Wait 5
			;CMD $c24 Waveform Not implemented [WARNING]
	db $cb			;Wait 12
	db $6f			;Volume 14
	db $c2			;Wait 3
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $6d			;Volume 12
	db $c2			;Wait 3
	db $6c			;Volume 11
			;CMD $c10 Waveform Not implemented [WARNING]
					;Wait Repeat 3
	db $6b			;Volume 10
					;Wait Repeat 3
	db $6a			;Volume 9
					;Wait Repeat 3
	db $68			;Volume 7
	db $c1			;Wait 2
	db $68			;Volume 7
			;CMD $c04 Waveform Not implemented [WARNING]
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_068:
	db $30			;Note C-5
	db $6f			;Volume 14
	db $74			;Instrument 3
	db $c2			;Wait 3
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $74			;Instrument 3
	db $e9			;Wait 42
	db $bf			;[End-Of-Track]
.track_069:
	db $33			;Note D#5
	db $6f			;Volume 14
	db $74			;Instrument 3
	db $a3,$06			;CMD Speed
	db $c2			;Wait 3
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $33			;Note D#5
	db $6f			;Volume 14
	db $74			;Instrument 3
	db $e9			;Wait 42
	db $bf			;[End-Of-Track]
.track_070:
	db $38			;Note G#5
	db $70			;Volume 15
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 2
	db $c0			;Wait 1
	db $6e			;Volume 13
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $70			;Volume 15
	db $74			;Instrument 3
					;Wait Repeat 1
	db $6e			;Volume 13
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $36			;Note F#5
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $a9,$08			; SCC Set Waveform 2
	db $c3			;Wait 4
	db $94,$66		;CMD Vibrato
					;Wait Repeat 4
	db $6a			;Volume 9
	db $c2			;Wait 3
	db $69			;Volume 8
					;Wait Repeat 3
	db $68			;Volume 7
					;Wait Repeat 3
	db $67			;Volume 6
					;Wait Repeat 3
	db $66			;Volume 5
					;Wait Repeat 3
	db $65			;Volume 4
					;Wait Repeat 3
	db $64			;Volume 3
					;Wait Repeat 3
	db $63			;Volume 2
	db $cb			;Wait 12
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_071:
	db $c3			;Wait 4
	db $38			;Note G#5
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
	db $74			;Instrument 3
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $36			;Note F#5
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $e5			;Wait 38
	db $bf			;[End-Of-Track]
.track_072:
	db $05			;Note F-1
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c7			;Wait 8
	db $1e			;Note F#3
	db $72			;Instrument 1
	db $c6			;Wait 7
	db $6a			;Volume 9
	db $c5			;Wait 6
	db $69			;Volume 8
					;Wait Repeat 6
	db $67			;Volume 6
					;Wait Repeat 6
	db $66			;Volume 5
	db $d2			;Wait 19
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_073:
	db $40			;Note E-6
	db $65			;Volume 4
	db $77			;Instrument 6
	db $d9			;Wait 26
	db $20			;Note G#3
	db $69			;Volume 8
	db $c6			;Wait 7
	db $68			;Volume 7
	db $c3			;Wait 4
	db $67			;Volume 6
					;Wait Repeat 4
	db $66			;Volume 5
	db $c2			;Wait 3
	db $65			;Volume 4
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_074:
	db $46			;Note A#6
	db $65			;Volume 4
	db $77			;Instrument 6
	db $d9			;Wait 26
	db $24			;Note C-4
	db $69			;Volume 8
	db $c6			;Wait 7
	db $68			;Volume 7
	db $c3			;Wait 4
	db $67			;Volume 6
					;Wait Repeat 4
	db $66			;Volume 5
	db $c2			;Wait 3
	db $65			;Volume 4
	db $c7			;Wait 8
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_075:
	db $05			;Note F-1
	db $68			;Volume 7
	db $77			;Instrument 6
	db $a1,$08			;CMD Track detune
	db $c5			;Wait 6
			;CMD $c24 Waveform Not implemented [WARNING]
	db $c8			;Wait 9
	db $67			;Volume 6
	db $c4			;Wait 5
	db $66			;Volume 5
					;Wait Repeat 5
	db $65			;Volume 4
	db $c3			;Wait 4
			;CMD $c10 Waveform Not implemented [WARNING]
	db $c7			;Wait 8
	db $64			;Volume 3
	db $c4			;Wait 5
	db $63			;Volume 2
	db $c9			;Wait 10
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_076:
	db $3b			;Note B-5
	db $68			;Volume 7
	db $75			;Instrument 4
	db $a9,$28			; SCC Set Waveform 7
	db $c8			;Wait 9
	db $3b			;Note B-5
					;Wait Repeat 9
	db $36			;Note F#5
	db $c5			;Wait 6
	db $20			;Note G#3
	db $db			;Wait 28
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_077:
	db $a3,$07			;CMD Speed
	db $c2			;Wait 3
	db $2f			;Note B-4
	db $68			;Volume 7
	db $75			;Instrument 4
	db $a9,$28			; SCC Set Waveform 7
	db $c8			;Wait 9
	db $3e			;Note D-6
					;Wait Repeat 9
	db $2f			;Note B-4
	db $c3			;Wait 4
	db $24			;Note C-4
	db $da			;Wait 27
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_078:
	db $c5			;Wait 6
	db $36			;Note F#5
	db $68			;Volume 7
	db $75			;Instrument 4
	db $a9,$20			; SCC Set Waveform 5
	db $c8			;Wait 9
	db $3b			;Note B-5
	db $ca			;Wait 11
	db $3c			;Note C-6
	db $c7			;Wait 8
	db $94,$55		;CMD Vibrato
	db $cd			;Wait 14
	db $60			;Release 96
	db $9b			;CMD End 
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_079:
	db $a1,$00			;CMD Track detune
	db $c1			;Wait 2
	db $3b			;Note B-5
	db $65			;Volume 4
	db $75			;Instrument 4
	db $a9,$20			; SCC Set Waveform 5
	db $c2			;Wait 3
	db $2f			;Note B-4
					;Wait Repeat 3
	db $36			;Note F#5
					;Wait Repeat 3
	db $3b			;Note B-5
					;Wait Repeat 3
	db $3e			;Note D-6
					;Wait Repeat 3
	db $3b			;Note B-5
					;Wait Repeat 3
	db $36			;Note F#5
					;Wait Repeat 3
	db $2f			;Note B-4
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $d8			;Wait 25
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_080:
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]

