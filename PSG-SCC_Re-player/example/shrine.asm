; Song: MoG2 - Shrine                   
; By:   Gryzor87 (c)2021                

; [ Song start data ]
	db $06					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_002, .track_002, .track_004, .track_005, .track_006, .track_007	; Step:001 Pattern:000
.restart:
	dw .track_008, .track_009, .track_010, .track_010, .track_012, .track_013, .track_014, .track_015	; Step:002 Pattern:001
	dw .track_016, .track_017, .track_010, .track_010, .track_020, .track_021, .track_022, .track_023	; Step:003 Pattern:002
	dw .track_024, .track_025, .track_010, .track_010, .track_028, .track_029, .track_030, .track_031	; Step:004 Pattern:003
	dw .track_032, .track_033, .track_010, .track_010, .track_036, .track_037, .track_038, .track_039	; Step:005 Pattern:004
	dw .track_040, .track_041, .track_010, .track_010, .track_044, .track_045, .track_046, .track_047	; Step:006 Pattern:005
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00				; Waveform:0
	db $00, $10, $20, $30, $40, $50, $60, $70, $7f, $70, $60, $50, $40, $30, $20, $10, $ff, $f0, $e0, $d0, $c0, $b0, $a0, $90, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0				; Waveform:3
	db $00, $30, $50, $60, $70, $60, $50, $30, $00, $d0, $b0, $a0, $90, $a0, $b0, $d0, $00, $40, $60, $70, $60, $40, $00, $c0, $a0, $90, $a0, $c0, $00, $70, $00, $90				; Waveform:4
	db $80, $8e, $a0, $c0, $e0, $00, $20, $3f, $3e, $3c, $3a, $37, $31, $29, $20, $1c, $10, $00, $e6, $c0, $d0, $00, $20, $3f, $10, $e0, $80, $c0, $00, $20, $00, $90				; Waveform:5
	db $a0, $90, $a0, $ac, $f0, $a0, $16, $00, $90, $00, $20, $40, $60, $50, $38, $1c, $f2, $e2, $d6, $d0, $d0, $da, $dc, $e0, $e2, $e2, $e2, $e0, $dc, $d8, $d0, $b0				; Waveform:7
	db $30, $50, $50, $30, $00, $00, $10, $40, $60, $70, $60, $30, $f0, $e0, $e0, $00, $20, $20, $10, $c0, $a0, $90, $a0, $c0, $00, $00, $d0, $b0, $b0, $d0, $00, $00				; Waveform:13
	db $00, $40, $7f, $40, $10, $01, $ea, $d6, $c3, $b9, $af, $a4, $9c, $95, $8f, $8a, $86, $83, $81, $83, $86, $8a, $8f, $95, $9c, $a4, $af, $b9, $c3, $d6, $ea, $ff				; Waveform:16
	db $27, $5f, $4f, $4f, $5f, $67, $7f, $7f, $6f, $6f, $7f, $6f, $5f, $4f, $67, $5f, $37, $e7, $d7, $c7, $d7, $ff, $e7, $cf, $c7, $c7, $bf, $97, $87, $af, $d7, $ff				; Waveform:18
	db $90, $d0, $20, $0c, $bc, $aa, $e6, $dc, $bc, $e3, $40, $30, $e0, $d0, $10, $06, $e4, $0c, $70, $50, $e0, $d0, $10, $00, $d0, $f0, $40, $20, $c4, $c0, $f0, $90				; Waveform:19
	db $10, $20, $28, $18, $f0, $d0, $b0, $d0, $f0, $00, $18, $50, $7f, $68, $50, $40, $20, $e0, $a8, $a0, $c8, $f0, $10, $30, $50, $38, $08, $e0, $b8, $a0, $b8, $e8				; Waveform:24
	db $28, $60, $7d, $60, $38, $20, $38, $4c, $58, $60, $54, $18, $f0, $10, $28, $28, $10, $e8, $cc, $d0, $e8, $c8, $a8, $a0, $af, $a8, $98, $a8, $b0, $c4, $c0, $e0				; Waveform:26
	db $08, $18, $28, $38, $50, $6b, $7f, $73, $5b, $4c, $45, $3d, $32, $21, $00, $d7, $be, $a3, $85, $9b, $a6, $c0, $d0, $d4, $d0, $cc, $c8, $cc, $d0, $d8, $e3, $f2				; Waveform:27

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; SC Brass        
	dw .instrument_01				; SC PianoBell    
	dw .instrument_02				; PSG String snake
	dw .instrument_03				; Piano tremolo   
	dw .instrument_04				; Piano Tremolo HI
	dw .instrument_05				; Legato          
	dw .instrument_06				; Main Melody     
	dw .instrument_07				; PSG STR HI      

.instrument_00:					; SC Brass        
	db $58							; Waveform 11
	db $14							; Info byte: 00010100
	db $08							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
.rst_i00:
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
	dw .rst_i00						; Loop address
.instrument_01:					; SC PianoBell    
	db $20							; Waveform 4
	db $14							; Info byte: 00010100
	db $0f							; Volume _
.rst_i01:
	db $16							; Info byte: 00010110
	db $fd							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i01						; Loop address
.instrument_02:					; PSG String snake
	db $18							; Waveform 3
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
.instrument_03:					; Piano tremolo   
	db $28							; Waveform 5
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $08							; Volume _
	db $14							; Info byte: 00010100
	db $07							; Volume _
.rst_i03:
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
	dw .rst_i03						; Loop address
.instrument_04:					; Piano Tremolo HI
	db $18							; Waveform 3
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
.rst_i04:
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
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $17							; Info byte: 00010111
	db $ff							; Volume -
	dw .rst_i04						; Loop address
.instrument_05:					; Legato          
	db $40							; Waveform 8
	db $14							; Info byte: 00010100
	db $09							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
.rst_i05:
	db $17							; Info byte: 00010111
	db $ff							; Volume -
	dw .rst_i05						; Loop address
.instrument_06:					; Main Melody     
	db $30							; Waveform 6
	db $14							; Info byte: 00010100
	db $07							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
.rst_i06:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i06						; Loop address
.instrument_07:					; PSG STR HI      
	db $00							; Waveform 0
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
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
.rst_i07:
	db $1c							; Info byte: 00011100
	db $0a							; Volume _
	dw $0001							; Tone
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $1c							; Info byte: 00011100
	db $0a							; Volume _
	dw $ffff							; Tone
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $15							; Info byte: 00010101
	db $0a							; Volume _
	dw .rst_i07						; Loop address

; [ Song track data ]
.track_000:
	db $60			;Release 96
	db $c2			;Wait 3
	db $3a			;Note A#5
	db $6b			;Volume 10
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $39			;Note A-5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $26			;Note D-4
	db $bf			;[End-Of-Track]
.track_001:
	db $60			;Release 96
	db $a3,$05			;CMD Speed
	db $c2			;Wait 3
	db $4d			;Note F-7
	db $6b			;Volume 10
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $69			;Volume 8
	db $72			;Instrument 1
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a3,$05			;CMD Speed
					;Wait Repeat 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $34			;Note E-5
	db $a3,$05			;CMD Speed
					;Wait Repeat 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $32			;Note D-5
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $bf			;[End-Of-Track]
.track_002:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_004:
	db $3a			;Note A#5
	db $69			;Volume 8
	db $72			;Instrument 1
	db $a9,$28			; SCC Set Waveform 13
	db $c1			;Wait 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $2b			;Note G-4
	db $72			;Instrument 1
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_005:
	db $4d			;Note F-7
	db $6b			;Volume 10
	db $72			;Instrument 1
	db $a9,$40			; SCC Set Waveform 19
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $46			;Note A#6
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $45			;Note A-6
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $41			;Note F-6
	db $6d			;Volume 12
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $3e			;Note D-6
	db $6d			;Volume 12
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $3a			;Note A#5
	db $6d			;Volume 12
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $39			;Note A-5
	db $6d			;Volume 12
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $35			;Note F-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $32			;Note D-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $2e			;Note A#4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $34			;Note E-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $2e			;Note A#4
	db $69			;Volume 8
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_006:
	db $60			;Release 96
	db $cf			;Wait 16
	db $35			;Note F-5
	db $6b			;Volume 10
	db $76			;Instrument 5
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $32			;Note D-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $2e			;Note A#4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $34			;Note E-5
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $32			;Note D-5
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $2e			;Note A#4
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $2b			;Note G-4
	db $67			;Volume 6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_007:
	db $60			;Release 96
	db $d2			;Wait 19
	db $35			;Note F-5
	db $6a			;Volume 9
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $2e			;Note A#4
	db $69			;Volume 8
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $34			;Note E-5
	db $68			;Volume 7
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $2e			;Note A#4
	db $67			;Volume 6
	db $bf			;[End-Of-Track]
.track_008:
	db $24			;Note C-4
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $a3,$06			;CMD Speed
	db $c7			;Wait 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6a			;Volume 9
					;Wait Repeat 8
	db $69			;Volume 8
					;Wait Repeat 8
	db $68			;Volume 7
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_009:
	db $1c			;Note E-3
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $c7			;Wait 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6a			;Volume 9
					;Wait Repeat 8
	db $69			;Volume 8
					;Wait Repeat 8
	db $48			;Note C-7
	db $6b			;Volume 10
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $47			;Note B-6
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $48			;Note C-7
	db $69			;Volume 8
					;Wait Repeat 2
	db $43			;Note G-6
	db $6b			;Volume 10
					;Wait Repeat 2
	db $47			;Note B-6
	db $69			;Volume 8
					;Wait Repeat 2
	db $45			;Note A-6
	db $6b			;Volume 10
					;Wait Repeat 2
	db $43			;Note G-6
	db $69			;Volume 8
					;Wait Repeat 2
	db $41			;Note F-6
	db $6b			;Volume 10
					;Wait Repeat 2
	db $45			;Note A-6
	db $69			;Volume 8
					;Wait Repeat 2
	db $40			;Note E-6
	db $6b			;Volume 10
					;Wait Repeat 2
	db $41			;Note F-6
	db $69			;Volume 8
					;Wait Repeat 2
	db $41			;Note F-6
	db $6b			;Volume 10
					;Wait Repeat 2
	db $40			;Note E-6
	db $69			;Volume 8
					;Wait Repeat 2
	db $43			;Note G-6
	db $6b			;Volume 10
					;Wait Repeat 2
	db $41			;Note F-6
	db $69			;Volume 8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_010:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_012:
	db $0e			;Note D-2
	db $67			;Volume 6
	db $73			;Instrument 2
	db $a9,$08			; SCC Set Waveform 3
	db $c0			;Wait 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $69			;Volume 8
	db $ac,$04			; SCC Morph speed 4
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $6b			;Volume 10
	db $9c,$10			; SCC Morph to Waveform 4
	db $cb			;Wait 12
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $6a			;Volume 9
					;Wait Repeat 4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
					;Wait Repeat 4
	db $0e			;Note D-2
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $a9,$08			; SCC Set Waveform 3
	db $c1			;Wait 2
	db $ac,$04			; SCC Morph speed 4
					;Wait Repeat 2
	db $9c,$10			; SCC Morph to Waveform 4
	db $cb			;Wait 12
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $6a			;Volume 9
					;Wait Repeat 4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_013:
	db $1d			;Note F-3
	db $70			;Volume 15
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $1c			;Note E-3
					;Wait Repeat 8
	db $1d			;Note F-3
					;Wait Repeat 8
	db $1f			;Note G-3
					;Wait Repeat 8
	db $24			;Note C-4
					;Wait Repeat 8
	db $23			;Note B-3
					;Wait Repeat 8
	db $1f			;Note G-3
					;Wait Repeat 8
	db $26			;Note D-4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_014:
	db $26			;Note D-4
	db $70			;Volume 15
	db $77			;Instrument 6
	db $c7			;Wait 8
	db $94,$66		;CMD Vibrato
	db $c5			;Wait 6
	db $26			;Note D-4
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $90,$0f			;CMD Portamento tone
	db $c5			;Wait 6
	db $94,$66		;CMD Vibrato
	db $e1			;Wait 34
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $70			;Volume 15
	db $c2			;Wait 3
	db $6f			;Volume 14
	db $c0			;Wait 1
	db $6e			;Volume 13
					;Wait Repeat 1
	db $6d			;Volume 12
					;Wait Repeat 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6b			;Volume 10
	db $bf			;[End-Of-Track]
.track_015:
	db $21			;Note A-3
	db $66			;Volume 5
	db $77			;Instrument 6
	db $a1,$08			;CMD Track detune
	db $c5			;Wait 6
	db $26			;Note D-4
	db $6a			;Volume 9
	db $c7			;Wait 8
	db $94,$66		;CMD Vibrato
	db $c5			;Wait 6
	db $26			;Note D-4
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $90,$0f			;CMD Portamento tone
	db $c5			;Wait 6
	db $94,$66		;CMD Vibrato
	db $e1			;Wait 34
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $66			;Volume 5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_016:
	db $2b			;Note G-4
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $a3,$06			;CMD Speed
	db $c7			;Wait 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6a			;Volume 9
					;Wait Repeat 8
	db $69			;Volume 8
					;Wait Repeat 8
	db $68			;Volume 7
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $73			;Instrument 2
	db $a1,$01			;CMD Track detune
	db $c7			;Wait 8
	db $24			;Note C-4
					;Wait Repeat 8
	db $1f			;Note G-3
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_017:
	db $1a			;Note D-3
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $c7			;Wait 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6a			;Volume 9
					;Wait Repeat 8
	db $69			;Volume 8
					;Wait Repeat 8
	db $46			;Note A#6
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $45			;Note A-6
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $46			;Note A#6
	db $69			;Volume 8
					;Wait Repeat 2
	db $43			;Note G-6
	db $6c			;Volume 11
					;Wait Repeat 2
	db $45			;Note A-6
	db $69			;Volume 8
					;Wait Repeat 2
	db $3e			;Note D-6
	db $6c			;Volume 11
					;Wait Repeat 2
	db $43			;Note G-6
	db $69			;Volume 8
					;Wait Repeat 2
	db $3a			;Note A#5
	db $6c			;Volume 11
					;Wait Repeat 2
	db $3e			;Note D-6
	db $6a			;Volume 9
					;Wait Repeat 2
	db $3c			;Note C-6
	db $6b			;Volume 10
					;Wait Repeat 2
	db $3a			;Note A#5
	db $69			;Volume 8
					;Wait Repeat 2
	db $3e			;Note D-6
	db $6a			;Volume 9
					;Wait Repeat 2
	db $3c			;Note C-6
	db $68			;Volume 7
					;Wait Repeat 2
	db $37			;Note G-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $3e			;Note D-6
	db $67			;Volume 6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_020:
	db $0f			;Note D#2
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $a9,$08			; SCC Set Waveform 3
	db $c1			;Wait 2
	db $ac,$04			; SCC Morph speed 4
					;Wait Repeat 2
	db $9c,$10			; SCC Morph to Waveform 4
	db $cb			;Wait 12
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $6a			;Volume 9
					;Wait Repeat 4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
					;Wait Repeat 4
	db $0f			;Note D#2
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $a9,$08			; SCC Set Waveform 3
	db $c1			;Wait 2
	db $ac,$04			; SCC Morph speed 4
					;Wait Repeat 2
	db $9c,$10			; SCC Morph to Waveform 4
	db $cb			;Wait 12
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $6a			;Volume 9
					;Wait Repeat 4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_021:
	db $22			;Note A#3
	db $70			;Volume 15
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $26			;Note D-4
	db $c7			;Wait 8
	db $1d			;Note F-3
					;Wait Repeat 8
	db $1f			;Note G-3
					;Wait Repeat 8
	db $21			;Note A-3
	db $70			;Volume 15
	db $71			;Instrument 0
					;Wait Repeat 8
	db $24			;Note C-4
					;Wait Repeat 8
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $94,$66		;CMD Vibrato
	db $ca			;Wait 11
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_022:
	db $2d			;Note A-4
	db $70			;Volume 15
	db $77			;Instrument 6
	db $c7			;Wait 8
	db $30			;Note C-5
	db $90,$0f			;CMD Portamento tone
					;Wait Repeat 8
	db $2b			;Note G-4
	db $c5			;Wait 6
	db $94,$66		;CMD Vibrato
	db $e8			;Wait 41
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_023:
	db $c5			;Wait 6
	db $2d			;Note A-4
	db $6a			;Volume 9
	db $77			;Instrument 6
	db $c7			;Wait 8
	db $30			;Note C-5
	db $90,$0f			;CMD Portamento tone
	db $c8			;Wait 9
	db $29			;Note F-4
	db $69			;Volume 8
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $90,$04			;CMD Portamento tone
	db $c6			;Wait 7
	db $29			;Note F-4
	db $68			;Volume 7
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $90,$04			;CMD Portamento tone
	db $c6			;Wait 7
	db $29			;Note F-4
	db $67			;Volume 6
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $90,$04			;CMD Portamento tone
	db $c6			;Wait 7
	db $29			;Note F-4
	db $66			;Volume 5
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $90,$04			;CMD Portamento tone
	db $c6			;Wait 7
	db $29			;Note F-4
	db $65			;Volume 4
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $90,$04			;CMD Portamento tone
	db $c6			;Wait 7
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_024:
	db $39			;Note A-5
	db $6b			;Volume 10
	db $73			;Instrument 2
	db $a1,$00			;CMD Track detune
	db $c7			;Wait 8
	db $31			;Note C#5
	db $6a			;Volume 9
					;Wait Repeat 8
	db $2c			;Note G#4
	db $6a			;Volume 9
	db $cf			;Wait 16
	db $51			;Note A-7
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $4c			;Note E-7
					;Wait Repeat 4
	db $4a			;Note D-7
					;Wait Repeat 4
	db $4c			;Note E-7
	db $d3			;Wait 20
	db $bf			;[End-Of-Track]
.track_025:
	db $35			;Note F-5
	db $6b			;Volume 10
	db $73			;Instrument 2
	db $c7			;Wait 8
	db $2c			;Note G#4
	db $6a			;Volume 9
					;Wait Repeat 8
	db $27			;Note D#4
	db $6a			;Volume 9
	db $cf			;Wait 16
	db $1f			;Note G-3
	db $6e			;Volume 13
	db $73			;Instrument 2
					;Wait Repeat 16
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_028:
	db $2e			;Note A#4
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $a9,$08			; SCC Set Waveform 3
	db $c5			;Wait 6
	db $2e			;Note A#4
	db $65			;Volume 4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6b			;Volume 10
	db $c4			;Wait 5
	db $2c			;Note G#4
	db $65			;Volume 4
	db $c1			;Wait 2
	db $27			;Note D#4
	db $6b			;Volume 10
	db $c5			;Wait 6
	db $27			;Note D#4
	db $65			;Volume 4
	db $ce			;Wait 15
	db $28			;Note E-4
	db $6a			;Volume 9
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $28			;Note E-4
					;Wait Repeat 8
	db $2b			;Note G-4
					;Wait Repeat 8
	db $22			;Note A#3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_029:
	db $32			;Note D-5
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $a9,$08			; SCC Set Waveform 3
	db $c6			;Wait 7
	db $32			;Note D-5
	db $65			;Volume 4
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6b			;Volume 10
	db $c4			;Wait 5
	db $35			;Note F-5
	db $65			;Volume 4
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c5			;Wait 6
	db $30			;Note C-5
	db $65			;Volume 4
	db $c9			;Wait 10
	db $2d			;Note A-4
	db $6a			;Volume 9
	db $c7			;Wait 8
	db $26			;Note D-4
					;Wait Repeat 8
	db $2d			;Note A-4
					;Wait Repeat 8
	db $27			;Note D#4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_030:
	db $39			;Note A-5
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $a9,$38			; SCC Set Waveform 18
	db $c7			;Wait 8
	db $3c			;Note C-6
					;Wait Repeat 8
	db $37			;Note G-5
	db $6e			;Volume 13
					;Wait Repeat 8
	db $3e			;Note D-6
	db $6d			;Volume 12
	db $9b			;CMD End 
					;Wait Repeat 8
	db $3c			;Note C-6
	db $6e			;Volume 13
	db $a9,$50			; SCC Set Waveform 26
					;Wait Repeat 8
	db $39			;Note A-5
					;Wait Repeat 8
	db $37			;Note G-5
					;Wait Repeat 8
	db $33			;Note D#5
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_031:
	db $a1,$01			;CMD Track detune
	db $c5			;Wait 6
	db $39			;Note A-5
	db $69			;Volume 8
	db $77			;Instrument 6
	db $c7			;Wait 8
	db $3c			;Note C-6
					;Wait Repeat 8
	db $37			;Note G-5
					;Wait Repeat 8
	db $3e			;Note D-6
	db $c3			;Wait 4
	db $94,$17		;CMD Vibrato
	db $c2			;Wait 3
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $69			;Volume 8
	db $c7			;Wait 8
	db $39			;Note A-5
					;Wait Repeat 8
	db $37			;Note G-5
					;Wait Repeat 8
	db $33			;Note D#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_032:
	db $27			;Note D#4
	db $6b			;Volume 10
	db $73			;Instrument 2
	db $cf			;Wait 16
	db $25			;Note C#4
	db $6a			;Volume 9
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_033:
	db $22			;Note A#3
	db $6b			;Volume 10
	db $73			;Instrument 2
	db $cf			;Wait 16
	db $20			;Note G#3
	db $6a			;Volume 9
					;Wait Repeat 16
	db $1a			;Note D-3
	db $6d			;Volume 12
	db $73			;Instrument 2
					;Wait Repeat 16
	db $1e			;Note F#3
	db $6d			;Volume 12
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_036:
	db $14			;Note G#2
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $22			;Note A#3
					;Wait Repeat 4
	db $26			;Note D-4
					;Wait Repeat 4
	db $25			;Note C#4
	db $6e			;Volume 13
	db $c7			;Wait 8
	db $25			;Note C#4
	db $68			;Volume 7
	db $cb			;Wait 12
	db $29			;Note F-4
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $2c			;Note G#4
					;Wait Repeat 8
	db $27			;Note D#4
					;Wait Repeat 8
	db $22			;Note A#3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_037:
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $d0			;Wait 17
	db $29			;Note F-4
	db $6e			;Volume 13
	db $c7			;Wait 8
	db $29			;Note F-4
	db $68			;Volume 7
	db $c6			;Wait 7
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $2b			;Note G-4
					;Wait Repeat 8
	db $29			;Note F-4
					;Wait Repeat 8
	db $25			;Note C#4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_038:
	db $32			;Note D-5
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $a9,$48			; SCC Set Waveform 24
	db $c7			;Wait 8
	db $35			;Note F-5
					;Wait Repeat 8
	db $30			;Note C-5
	db $6f			;Volume 14
					;Wait Repeat 8
	db $37			;Note G-5
	db $6d			;Volume 12
	db $c2			;Wait 3
	db $94,$14		;CMD Vibrato
	db $c4			;Wait 5
	db $35			;Note F-5
	db $6f			;Volume 14
	db $9b			;CMD End 
	db $c7			;Wait 8
	db $32			;Note D-5
					;Wait Repeat 8
	db $30			;Note C-5
					;Wait Repeat 8
	db $2c			;Note G#4
	db $c3			;Wait 4
	db $94,$37		;CMD Vibrato
	db $c2			;Wait 3
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_039:
	db $a1,$01			;CMD Track detune
	db $c5			;Wait 6
	db $32			;Note D-5
	db $69			;Volume 8
	db $77			;Instrument 6
	db $c7			;Wait 8
	db $35			;Note F-5
	db $90,$08			;CMD Portamento tone
					;Wait Repeat 8
	db $30			;Note C-5
					;Wait Repeat 8
	db $37			;Note G-5
	db $c1			;Wait 2
	db $65			;Volume 4
	db $c5			;Wait 6
	db $35			;Note F-5
	db $77			;Instrument 6
	db $c7			;Wait 8
	db $32			;Note D-5
					;Wait Repeat 8
	db $30			;Note C-5
					;Wait Repeat 8
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_040:
	db $43			;Note G-6
	db $6c			;Volume 11
	db $78			;Instrument 7
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_041:
	db $46			;Note A#6
	db $6c			;Volume 11
	db $78			;Instrument 7
	db $df			;Wait 32
	db $48			;Note C-7
	db $6c			;Volume 11
	db $cf			;Wait 16
	db $49			;Note C#7
	db $6b			;Volume 10
	db $a3,$06			;CMD Speed
	db $c0			;Wait 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $a3,$07			;CMD Speed
					;Wait Repeat 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $a3,$07			;CMD Speed
					;Wait Repeat 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $6a			;Volume 9
	db $a3,$07			;CMD Speed
					;Wait Repeat 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $a3,$07			;CMD Speed
					;Wait Repeat 1
	db $69			;Volume 8
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $a3,$07			;CMD Speed
					;Wait Repeat 1
	db $a3,$06			;CMD Speed
	db $bf			;[End-Of-Track]
.track_044:
	db $26			;Note D-4
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $26			;Note D-4
	db $6d			;Volume 12
	db $cf			;Wait 16
	db $26			;Note D-4
	db $6d			;Volume 12
	db $c7			;Wait 8
	db $21			;Note A-3
	db $70			;Volume 15
					;Wait Repeat 8
	db $21			;Note A-3
	db $6f			;Volume 14
	db $cf			;Wait 16
	db $21			;Note A-3
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_045:
	db $c0			;Wait 1
	db $28			;Note E-4
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $28			;Note E-4
	db $6d			;Volume 12
	db $cf			;Wait 16
	db $28			;Note E-4
	db $6d			;Volume 12
	db $c7			;Wait 8
	db $27			;Note D#4
	db $70			;Volume 15
					;Wait Repeat 8
	db $27			;Note D#4
	db $6f			;Volume 14
	db $cf			;Wait 16
	db $27			;Note D#4
	db $6b			;Volume 10
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_046:
	db $2b			;Note G-4
	db $70			;Volume 15
	db $77			;Instrument 6
	db $a9,$38			; SCC Set Waveform 18
	db $c7			;Wait 8
	db $2e			;Note A#4
	db $90,$0a			;CMD Portamento tone
					;Wait Repeat 8
	db $28			;Note E-4
	db $6f			;Volume 14
					;Wait Repeat 8
	db $2d			;Note A-4
					;Wait Repeat 8
	db $2b			;Note G-4
					;Wait Repeat 8
	db $27			;Note D#4
					;Wait Repeat 8
	db $25			;Note C#4
					;Wait Repeat 8
	db $1f			;Note G-3
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_047:
	db $a1,$03			;CMD Track detune
	db $c5			;Wait 6
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c7			;Wait 8
	db $2e			;Note A#4
	db $90,$08			;CMD Portamento tone
					;Wait Repeat 8
	db $28			;Note E-4
					;Wait Repeat 8
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $65			;Volume 4
	db $c5			;Wait 6
	db $2b			;Note G-4
	db $77			;Instrument 6
	db $c7			;Wait 8
	db $27			;Note D#4
					;Wait Repeat 8
	db $25			;Note C#4
					;Wait Repeat 8
	db $1f			;Note G-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]

