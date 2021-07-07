; Song: MoG2- World IDEA 7              
; By:   Gryzor87 (c)2021                

; [ Song start data ]
	db $08					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_002, .track_002, .track_004, .track_005, .track_006, .track_007	; Step:001 Pattern:000
	dw .track_008, .track_009, .track_010, .track_010, .track_012, .track_013, .track_014, .track_015	; Step:002 Pattern:001
	dw .track_016, .track_017, .track_002, .track_002, .track_020, .track_021, .track_022, .track_023	; Step:003 Pattern:002
.restart:
	dw .track_024, .track_025, .track_002, .track_002, .track_028, .track_029, .track_030, .track_031	; Step:004 Pattern:003
	dw .track_024, .track_033, .track_002, .track_002, .track_036, .track_037, .track_038, .track_039	; Step:005 Pattern:004
	dw .track_024, .track_041, .track_002, .track_002, .track_044, .track_045, .track_046, .track_047	; Step:006 Pattern:005
	dw .track_024, .track_049, .track_002, .track_002, .track_052, .track_053, .track_054, .track_055	; Step:007 Pattern:006
	dw .track_056, .track_057, .track_002, .track_002, .track_060, .track_061, .track_062, .track_063	; Step:008 Pattern:007
	dw .track_064, .track_065, .track_002, .track_002, .track_068, .track_069, .track_070, .track_071	; Step:009 Pattern:008
	dw .track_064, .track_073, .track_002, .track_002, .track_076, .track_077, .track_078, .track_079	; Step:010 Pattern:009
	dw .track_080, .track_081, .track_002, .track_002, .track_084, .track_085, .track_086, .track_087	; Step:011 Pattern:010
	dw .track_024, .track_089, .track_002, .track_002, .track_092, .track_093, .track_094, .track_095	; Step:012 Pattern:011
	dw .track_096, .track_097, .track_010, .track_010, .track_100, .track_101, .track_102, .track_103	; Step:013 Pattern:012
	dw .track_016, .track_105, .track_002, .track_002, .track_020, .track_109, .track_110, .track_111	; Step:014 Pattern:013
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00				; Waveform:0
	db $80, $b0, $c0, $10, $1a, $2a, $2c, $1a, $00, $e0, $d0, $e0, $22, $53, $70, $75, $70, $31, $ea, $80, $88, $8a, $8c, $8e, $00, $7f, $75, $73, $62, $00, $c0, $90				; Waveform:1
	db $00, $40, $7f, $40, $01, $c0, $81, $c0, $01, $40, $7f, $40, $01, $c0, $01, $40, $01, $e0, $01, $20, $01, $f0, $01, $10, $01, $ff, $ff, $ff, $ff, $40, $40, $40				; Waveform:2
	db $80, $8e, $a0, $c0, $e0, $00, $20, $3f, $3e, $3c, $3a, $37, $31, $29, $20, $1c, $10, $00, $e6, $c0, $d0, $00, $20, $3f, $10, $e0, $80, $c0, $00, $20, $00, $90				; Waveform:5
	db $00, $f8, $f0, $e8, $e0, $d8, $d0, $c8, $c0, $b8, $b0, $a8, $a0, $98, $90, $88, $80, $78, $70, $68, $60, $58, $50, $48, $40, $38, $30, $28, $20, $18, $10, $08				; Waveform:6
	db $a0, $90, $a0, $ac, $f0, $a0, $16, $00, $90, $00, $20, $40, $60, $50, $38, $1c, $f2, $e2, $d6, $d0, $d0, $da, $dc, $e0, $e2, $e2, $e2, $e0, $dc, $d8, $d0, $b0				; Waveform:7
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0, $00, $10, $20, $30, $40, $50, $60, $70				; Waveform:8
	db $00, $f8, $e8, $d8, $c8, $b8, $ac, $9c, $90, $8c, $8a, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $77, $68, $58, $48, $38, $28, $18, $08				; Waveform:9
	db $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $5f, $9f, $9f, $9f, $9f, $9f, $9f, $9f, $9f, $9f, $87, $87, $87, $87, $87, $87, $87				; Waveform:11
	db $28, $58, $58, $28, $00, $00, $18, $48, $68, $78, $68, $38, $e8, $d8, $e0, $00, $20, $20, $10, $c0, $a0, $90, $a0, $c0, $00, $00, $d0, $b0, $b0, $d0, $00, $00				; Waveform:13
	db $00, $30, $67, $30, $10, $01, $ea, $ce, $bb, $b1, $a7, $9c, $94, $8d, $87, $82, $81, $80, $80, $81, $81, $83, $87, $8d, $94, $9c, $a7, $b1, $bb, $ce, $ea, $ff				; Waveform:16
	db $80, $c8, $20, $7f, $30, $c8, $80, $90, $a8, $c0, $e0, $00, $20, $38, $50, $60, $70, $78, $7c, $7f, $7c, $78, $70, $60, $50, $38, $20, $00, $e0, $c0, $a8, $90				; Waveform:17
	db $27, $5f, $4f, $4f, $5f, $67, $7f, $7f, $6f, $6f, $7f, $6f, $5f, $4f, $67, $5f, $37, $e7, $d7, $c7, $d7, $ff, $e7, $cf, $c7, $c7, $bf, $97, $87, $af, $d7, $ff				; Waveform:18
	db $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20, $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20				; Waveform:22
	db $38, $68, $7f, $70, $50, $40, $50, $60, $50, $40, $28, $20, $28, $70, $48, $18, $e8, $b8, $80, $88, $a0, $c0, $ac, $90, $ac, $c8, $e0, $d0, $c0, $b0, $90, $c8				; Waveform:25
	db $08, $20, $48, $68, $7f, $30, $08, $30, $60, $70, $7f, $28, $b8, $80, $c8, $20, $f8, $c8, $b8, $c0, $d0, $c8, $d8, $e0, $00, $e0, $d0, $b8, $c8, $e0, $f0, $00				; Waveform:28

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; SD A3           
	dw .instrument_01				; HH CL A8        
	dw .instrument_02				; TOM             
	dw .instrument_03				; Pizzicato       
	dw .instrument_04				; SC Bass         
	dw .instrument_05				; SC Brass Satan  
	dw .instrument_06				; PGS String snake
	dw .instrument_07				; Staccato BASS   
	dw .instrument_08				; Piano tremolo   
	dw .instrument_09				; Piano Tremolo HI
	dw .instrument_10				; PSG Legato      
	dw .instrument_11				; Thrill STRINGS  
	dw .instrument_12				; Vlins Melody    
	dw .instrument_13				; Response BELL   
	dw .instrument_14				; HH OP A8        
	dw .instrument_15				; SD-MAIN         
	dw .instrument_16				; SD-Roll         

.instrument_00:					; SD A3           
	db $08							; Waveform 1
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $c4							; Info byte: 11000100
	db $0c							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $0b							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $0a							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $09							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $08							; Volume _
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
.rst_i00:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i00						; Loop address
.instrument_01:					; HH CL A8        
	db $28							; Waveform 5
	db $d4							; Info byte: 11010100
	db $0e							; Volume _
	db $00							; Noise _
.rst_i01:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i01						; Loop address
.instrument_02:					; TOM             
	db $68							; Waveform 13
	db $1c							; Info byte: 00011100
	db $0f							; Volume _
	dw $0040							; Tone
	db $1c							; Info byte: 00011100
	db $0d							; Volume _
	dw $0040							; Tone
.rst_i02:
	db $1e							; Info byte: 00011110
	db $ff							; Volume -
	dw $0040							; Tone
	db $18							; Info byte: 00011000
	dw $0040							; Tone
	db $18							; Info byte: 00011000
	dw $0040							; Tone
	db $18							; Info byte: 00011000
	dw $0040							; Tone
	db $19							; Info byte: 00011001
	dw $0040							; Tone
	dw .rst_i02						; Loop address
.instrument_03:					; Pizzicato       
	db $20							; Waveform 4
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $08							; Volume _
	db $14							; Info byte: 00010100
	db $07							; Volume _
	db $14							; Info byte: 00010100
	db $06							; Volume _
	db $14							; Info byte: 00010100
	db $05							; Volume _
	db $14							; Info byte: 00010100
	db $04							; Volume _
	db $14							; Info byte: 00010100
	db $03							; Volume _
	db $14							; Info byte: 00010100
	db $03							; Volume _
	db $14							; Info byte: 00010100
	db $02							; Volume _
	db $14							; Info byte: 00010100
	db $03							; Volume _
	db $14							; Info byte: 00010100
	db $04							; Volume _
	db $14							; Info byte: 00010100
	db $05							; Volume _
.rst_i03:
	db $15							; Info byte: 00010101
	db $07							; Volume _
	dw .rst_i03						; Loop address
.instrument_04:					; SC Bass         
	db $08							; Waveform 1
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i04:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i04						; Loop address
.instrument_05:					; SC Brass Satan  
	db $30							; Waveform 6
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
	db $14							; Info byte: 00010100
	db $08							; Volume _
	db $14							; Info byte: 00010100
	db $07							; Volume _
	db $14							; Info byte: 00010100
	db $07							; Volume _
	db $14							; Info byte: 00010100
	db $07							; Volume _
.rst_i05:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $01							; Volume +
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i05						; Loop address
.instrument_06:					; PGS String snake
	db $78							; Waveform 15
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
	dw .rst_i06						; Loop address
.instrument_07:					; Staccato BASS   
	db $08							; Waveform 1
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $16							; Info byte: 00010110
	db $ff							; Volume -
.rst_i07:
	db $01							; Info byte: 00000001
	dw .rst_i07						; Loop address
.instrument_08:					; Piano tremolo   
	db $60							; Waveform 12
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i08:
	db $16							; Info byte: 00010110
	db $fe							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $01							; Volume +
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $01							; Volume +
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i08						; Loop address
.instrument_09:					; Piano Tremolo HI
	db $48							; Waveform 9
	db $14							; Info byte: 00010100
	db $0f							; Volume _
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
.rst_i09:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $01							; Volume +
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $01							; Volume +
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i09						; Loop address
.instrument_10:					; PSG Legato      
	db $10							; Waveform 2
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
.rst_i10:
	db $15							; Info byte: 00010101
	db $0a							; Volume _
	dw .rst_i10						; Loop address
.instrument_11:					; Thrill STRINGS  
	db $60							; Waveform 12
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
.rst_i11:
	db $16							; Info byte: 00010110
	db $fe							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $01							; Volume +
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $01							; Volume +
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i11						; Loop address
.instrument_12:					; Vlins Melody    
	db $50							; Waveform 10
	db $14							; Info byte: 00010100
	db $08							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
.rst_i12:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i12						; Loop address
.instrument_13:					; Response BELL   
	db $48							; Waveform 9
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
.rst_i13:
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
	dw .rst_i13						; Loop address
.instrument_14:					; HH OP A8        
	db $00							; Waveform 0
	db $d4							; Info byte: 11010100
	db $0f							; Volume _
	db $00							; Noise _
.rst_i14:
	db $c6							; Info byte: 11000110
	db $ff							; Volume -
	db $00							; Noise _
	db $c0							; Info byte: 11000000
	db $00							; Noise _
	db $c0							; Info byte: 11000000
	db $00							; Noise _
	db $c0							; Info byte: 11000000
	db $00							; Noise _
	db $c1							; Info byte: 11000001
	db $00							; Noise _
	dw .rst_i14						; Loop address
.instrument_15:					; SD-MAIN         
	db $00							; Waveform 0
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $c4							; Info byte: 11000100
	db $0c							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $0b							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $0a							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $09							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $08							; Volume _
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
.rst_i15:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i15						; Loop address
.instrument_16:					; SD-Roll         
	db $00							; Waveform 0
.rst_i16:
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $c4							; Info byte: 11000100
	db $0b							; Volume _
	db $07							; Noise _
	db $c5							; Info byte: 11000101
	db $0a							; Volume _
	db $07							; Noise _
	dw .rst_i16						; Loop address

; [ Song track data ]
.track_000:
	db $1d			;Note F-3
	db $6f			;Volume 14
	db $73			;Instrument 2
	db $cd			;Wait 14
	db $18			;Note C-3
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $6f			;Volume 14
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $6f			;Volume 14
	db $c9			;Wait 10
	db $18			;Note C-3
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $6f			;Volume 14
	db $cd			;Wait 14
	db $18			;Note C-3
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $6f			;Volume 14
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_001:
	db $16			;Note A#2
	db $6c			;Volume 11
	db $77			;Instrument 6
	db $cf			;Wait 16
	db $18			;Note C-3
					;Wait Repeat 16
	db $1d			;Note F-3
	db $cf			;Wait 16
	db $31			;Note C#5
	db $70			;Volume 15
	db $7b			;Instrument 10
	db $c1			;Wait 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $20			;Note G#3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_002:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_004:
	db $07			;Note G-1
	db $70			;Volume 15
	db $75			;Instrument 4
	db $a9,$58			; SCC Set Waveform 17
	db $c9			;Wait 10
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $7a			;Instrument 9
	db $c1			;Wait 2
	db $22			;Note A#3
	db $c0			;Wait 1
	db $26			;Note D-4
	db $68			;Volume 7
					;Wait Repeat 1
	db $26			;Note D-4
	db $6b			;Volume 10
	db $7a			;Instrument 9
					;Wait Repeat 1
	db $2b			;Note G-4
	db $68			;Volume 7
					;Wait Repeat 1
	db $07			;Note G-1
	db $70			;Volume 15
	db $75			;Instrument 4
	db $c9			;Wait 10
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7a			;Instrument 9
	db $c1			;Wait 2
	db $24			;Note C-4
	db $c0			;Wait 1
	db $27			;Note D#4
	db $68			;Volume 7
					;Wait Repeat 1
	db $27			;Note D#4
	db $6b			;Volume 10
	db $7a			;Instrument 9
					;Wait Repeat 1
	db $2c			;Note G#4
	db $68			;Volume 7
					;Wait Repeat 1
	db $07			;Note G-1
	db $70			;Volume 15
	db $75			;Instrument 4
	db $c9			;Wait 10
	db $26			;Note D-4
	db $6b			;Volume 10
	db $7a			;Instrument 9
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $68			;Volume 7
					;Wait Repeat 1
	db $32			;Note D-5
	db $6b			;Volume 10
	db $7a			;Instrument 9
					;Wait Repeat 1
	db $32			;Note D-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $07			;Note G-1
	db $70			;Volume 15
	db $75			;Instrument 4
	db $c9			;Wait 10
	db $2c			;Note G#4
	db $6b			;Volume 10
	db $7a			;Instrument 9
	db $c1			;Wait 2
	db $31			;Note C#5
	db $c0			;Wait 1
	db $31			;Note C#5
	db $68			;Volume 7
					;Wait Repeat 1
	db $35			;Note F-5
	db $6b			;Volume 10
	db $7a			;Instrument 9
					;Wait Repeat 1
	db $35			;Note F-5
	db $68			;Volume 7
	db $bf			;[End-Of-Track]
.track_005:
	db $2b			;Note G-4
	db $70			;Volume 15
	db $7a			;Instrument 9
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $26			;Note D-4
	db $c1			;Wait 2
	db $26			;Note D-4
	db $70			;Volume 15
	db $7a			;Instrument 9
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c3			;Wait 4
	db $27			;Note D#4
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $27			;Note D#4
	db $c1			;Wait 2
	db $27			;Note D#4
	db $70			;Volume 15
	db $7a			;Instrument 9
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c3			;Wait 4
	db $29			;Note F-4
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $29			;Note F-4
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $70			;Volume 15
	db $7a			;Instrument 9
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $31			;Note C#5
	db $70			;Volume 15
	db $7a			;Instrument 9
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $38			;Note G#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_006:
	db $60			;Release 96
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c8			;Wait 9
	db $60			;Release 96
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $2c			;Note G#4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c6			;Wait 7
	db $60			;Release 96
	db $c4			;Wait 5
	db $2e			;Note A#4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c6			;Wait 7
	db $60			;Release 96
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $6e			;Volume 13
	db $7a			;Instrument 9
	db $c3			;Wait 4
	db $31			;Note C#5
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $31			;Note C#5
	db $c4			;Wait 5
	db $60			;Release 96
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_007:
	db $60			;Release 96
	db $c3			;Wait 4
	db $2e			;Note A#4
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c2			;Wait 3
	db $94,$46		;CMD Vibrato
	db $c5			;Wait 6
	db $60			;Release 96
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $30			;Note C-5
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $30			;Note C-5
	db $c2			;Wait 3
	db $94,$46		;CMD Vibrato
	db $c5			;Wait 6
	db $60			;Release 96
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $32			;Note D-5
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c2			;Wait 3
	db $94,$46		;CMD Vibrato
	db $c5			;Wait 6
	db $60			;Release 96
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $35			;Note F-5
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c2			;Wait 3
	db $94,$46		;CMD Vibrato
	db $c3			;Wait 4
	db $60			;Release 96
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_008:
	db $4f			;Note G-7
	db $6b			;Volume 10
	db $7b			;Instrument 10
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 2
	db $5b			;Note G-8
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $56			;Note D-8
					;Wait Repeat 2
	db $49			;Note C#7
					;Wait Repeat 2
	db $55			;Note C#8
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $50			;Note G#7
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $49			;Note C#7
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $81			;Instrument 16
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_009:
	db $2b			;Note G-4
	db $70			;Volume 15
	db $7b			;Instrument 10
	db $c3			;Wait 4
	db $26			;Note D-4
					;Wait Repeat 4
	db $25			;Note C#4
					;Wait Repeat 4
	db $20			;Note G#3
					;Wait Repeat 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $1a			;Note D-3
					;Wait Repeat 4
	db $19			;Note C#3
					;Wait Repeat 4
	db $14			;Note G#2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_010:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_012:
	db $13			;Note G-2
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$18			; SCC Set Waveform 5
	db $c3			;Wait 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $0d			;Note C#2
					;Wait Repeat 4
	db $08			;Note G#1
					;Wait Repeat 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $02			;Note D-1
					;Wait Repeat 4
	db $01			;Note C#1
					;Wait Repeat 4
	db $08			;Note G#1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_013:
	db $37			;Note G-5
	db $7a			;Instrument 9
	db $9d,$01			;CMD Arpegio speed
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_014:
	db $32			;Note D-5
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $93,$c0			;CMD Arpeggio
	db $c7			;Wait 8
	db $33			;Note D#5
	db $6a			;Volume 9
					;Wait Repeat 8
	db $35			;Note F-5
	db $69			;Volume 8
					;Wait Repeat 8
	db $37			;Note G-5
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_015:
	db $3a			;Note A#5
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $93,$c0			;CMD Arpeggio
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_016:
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $81			;Instrument 16
					;Wait Repeat 2
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $21			;Note A-3
	db $80			;Instrument 15
	db $c0			;Wait 1
	db $21			;Note A-3
	db $6e			;Volume 13
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
	db $6d			;Volume 12
	db $81			;Instrument 16
					;Wait Repeat 2
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_017:
	db $07			;Note G-1
	db $6e			;Volume 13
	db $7e			;Instrument 13
	db $a1,$06			;CMD Track detune
	db $c3			;Wait 4
	db $07			;Note G-1
	db $c1			;Wait 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $05			;Note F-1
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $05			;Note F-1
	db $c1			;Wait 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $07			;Note G-1
	db $c1			;Wait 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $05			;Note F-1
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $05			;Note F-1
	db $c1			;Wait 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_020:
	db $07			;Note G-1
	db $70			;Volume 15
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $07			;Note G-1
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $07			;Note G-1
	db $c1			;Wait 2
	db $0e			;Note D-2
	db $70			;Volume 15
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $05			;Note F-1
	db $6e			;Volume 13
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $05			;Note F-1
	db $c1			;Wait 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $07			;Note G-1
	db $70			;Volume 15
					;Wait Repeat 4
	db $07			;Note G-1
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $07			;Note G-1
	db $c1			;Wait 2
	db $0e			;Note D-2
	db $70			;Volume 15
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $05			;Note F-1
	db $6e			;Volume 13
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $05			;Note F-1
	db $c1			;Wait 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_021:
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $1f			;Note G-3
	db $66			;Volume 5
					;Wait Repeat 4
	db $1d			;Note F-3
	db $6b			;Volume 10
					;Wait Repeat 4
	db $1d			;Note F-3
	db $67			;Volume 6
					;Wait Repeat 4
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $9b			;CMD End 
					;Wait Repeat 4
	db $1f			;Note G-3
	db $66			;Volume 5
					;Wait Repeat 4
	db $1d			;Note F-3
	db $6b			;Volume 10
					;Wait Repeat 4
	db $1d			;Note F-3
	db $67			;Volume 6
					;Wait Repeat 4
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_022:
	db $1f			;Note G-3
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $66			;Volume 5
					;Wait Repeat 4
	db $22			;Note A#3
	db $6b			;Volume 10
					;Wait Repeat 4
	db $22			;Note A#3
	db $67			;Volume 6
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$20			; SCC Set Waveform 6
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $68			;Volume 7
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$20			; SCC Set Waveform 6
					;Wait Repeat 2
	db $1f			;Note G-3
	db $74			;Instrument 3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $1f			;Note G-3
	db $6e			;Volume 13
	db $9b			;CMD End 
					;Wait Repeat 4
	db $1a			;Note D-3
	db $66			;Volume 5
					;Wait Repeat 4
	db $22			;Note A#3
	db $6b			;Volume 10
					;Wait Repeat 4
	db $22			;Note A#3
	db $67			;Volume 6
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$20			; SCC Set Waveform 6
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $68			;Volume 7
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$20			; SCC Set Waveform 6
					;Wait Repeat 2
	db $1f			;Note G-3
	db $74			;Instrument 3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_023:
	db $60			;Release 96
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $1f			;Note G-3
	db $65			;Volume 4
	db $74			;Instrument 3
	db $a1,$01			;CMD Track detune
	db $c3			;Wait 4
	db $1a			;Note D-3
					;Wait Repeat 4
	db $22			;Note A#3
					;Wait Repeat 4
	db $22			;Note A#3
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $74			;Instrument 3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $74			;Instrument 3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $1a			;Note D-3
					;Wait Repeat 4
	db $22			;Note A#3
					;Wait Repeat 4
	db $22			;Note A#3
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $74			;Instrument 3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $74			;Instrument 3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $bf			;[End-Of-Track]
.track_024:
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $81			;Instrument 16
					;Wait Repeat 2
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $81			;Instrument 16
					;Wait Repeat 2
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_025:
	db $26			;Note D-4
	db $70			;Volume 15
	db $7e			;Instrument 13
	db $a1,$00			;CMD Track detune
	db $df			;Wait 32
	db $2c			;Note G#4
	db $6e			;Volume 13
	db $cf			;Wait 16
	db $29			;Note F-4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $24			;Note C-4
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $20			;Note G#3
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $29			;Note F-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $29			;Note F-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
	db $c2			;Wait 3
	db $29			;Note F-4
	db $6b			;Volume 10
	db $bf			;[End-Of-Track]
.track_028:
	db $07			;Note G-1
	db $70			;Volume 15
	db $75			;Instrument 4
	db $c5			;Wait 6
	db $07			;Note G-1
	db $c1			;Wait 2
	db $0e			;Note D-2
	db $c5			;Wait 6
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $07			;Note G-1
	db $c5			;Wait 6
	db $07			;Note G-1
	db $c1			;Wait 2
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $07			;Note G-1
	db $c3			;Wait 4
	db $05			;Note F-1
	db $6e			;Volume 13
	db $c5			;Wait 6
	db $05			;Note F-1
	db $c1			;Wait 2
	db $0c			;Note C-2
	db $c5			;Wait 6
	db $0c			;Note C-2
	db $c1			;Wait 2
	db $05			;Note F-1
	db $c5			;Wait 6
	db $05			;Note F-1
	db $c1			;Wait 2
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $05			;Note F-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_029:
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $7a			;Instrument 9
	db $a9,$48			; SCC Set Waveform 13
	db $c5			;Wait 6
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6f			;Volume 14
	db $c1			;Wait 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c5			;Wait 6
	db $32			;Note D-5
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $29			;Note F-4
	db $c7			;Wait 8
	db $2c			;Note G#4
	db $6b			;Volume 10
	db $a9,$40			; SCC Set Waveform 11
	db $c0			;Wait 1
	db $a8				; SCC Soften Waveform
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6d			;Volume 12
	db $c3			;Wait 4
	db $29			;Note F-4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_030:
	db $2e			;Note A#4
	db $6e			;Volume 13
	db $79			;Instrument 8
	db $c5			;Wait 6
	db $30			;Note C-5
	db $c1			;Wait 2
	db $32			;Note D-5
	db $cb			;Wait 12
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c5			;Wait 6
	db $37			;Note G-5
	db $c1			;Wait 2
	db $35			;Note F-5
	db $c5			;Wait 6
	db $30			;Note C-5
	db $c1			;Wait 2
	db $30			;Note C-5
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_031:
	db $c2			;Wait 3
	db $2e			;Note A#4
	db $67			;Volume 6
	db $79			;Instrument 8
	db $a1,$08			;CMD Track detune
	db $c5			;Wait 6
	db $30			;Note C-5
	db $c1			;Wait 2
	db $32			;Note D-5
	db $cb			;Wait 12
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c5			;Wait 6
	db $37			;Note G-5
	db $c1			;Wait 2
	db $35			;Note F-5
	db $c5			;Wait 6
	db $30			;Note C-5
	db $c1			;Wait 2
	db $30			;Note C-5
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_033:
	db $27			;Note D#4
	db $70			;Volume 15
	db $7e			;Instrument 13
	db $a1,$00			;CMD Track detune
	db $df			;Wait 32
	db $2d			;Note A-4
	db $c7			;Wait 8
	db $2e			;Note A#4
	db $c7			;Wait 8
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $29			;Note F-4
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2e			;Note A#4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2e			;Note A#4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $32			;Note D-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $29			;Note F-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $26			;Note D-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2e			;Note A#4
	db $6b			;Volume 10
	db $bf			;[End-Of-Track]
.track_036:
	db $08			;Note G#1
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $c5			;Wait 6
	db $08			;Note G#1
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $c5			;Wait 6
	db $0f			;Note D#2
	db $c1			;Wait 2
	db $08			;Note G#1
	db $c5			;Wait 6
	db $08			;Note G#1
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $c3			;Wait 4
	db $08			;Note G#1
					;Wait Repeat 4
	db $07			;Note G-1
	db $c5			;Wait 6
	db $07			;Note G-1
	db $c1			;Wait 2
	db $11			;Note F-2
	db $c5			;Wait 6
	db $11			;Note F-2
	db $c1			;Wait 2
	db $10			;Note E-2
	db $c5			;Wait 6
	db $10			;Note E-2
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_037:
	db $2c			;Note G#4
	db $6e			;Volume 13
	db $7a			;Instrument 9
	db $a9,$48			; SCC Set Waveform 13
	db $c5			;Wait 6
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c3			;Wait 4
	db $2c			;Note G#4
					;Wait Repeat 4
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $32			;Note D-5
	db $c5			;Wait 6
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c7			;Wait 8
	db $2e			;Note A#4
	db $6b			;Volume 10
	db $a9,$40			; SCC Set Waveform 11
	db $c1			;Wait 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_038:
	db $30			;Note C-5
	db $6e			;Volume 13
	db $79			;Instrument 8
	db $c5			;Wait 6
	db $32			;Note D-5
	db $c1			;Wait 2
	db $33			;Note D#5
	db $cb			;Wait 12
	db $30			;Note C-5
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $33			;Note D#5
	db $c5			;Wait 6
	db $38			;Note G#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $c5			;Wait 6
	db $32			;Note D-5
	db $c1			;Wait 2
	db $32			;Note D-5
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_039:
	db $c2			;Wait 3
	db $30			;Note C-5
	db $67			;Volume 6
	db $79			;Instrument 8
	db $c5			;Wait 6
	db $32			;Note D-5
	db $c1			;Wait 2
	db $33			;Note D#5
	db $cb			;Wait 12
	db $30			;Note C-5
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $33			;Note D#5
	db $c5			;Wait 6
	db $38			;Note G#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $c5			;Wait 6
	db $32			;Note D-5
	db $c1			;Wait 2
	db $32			;Note D-5
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_041:
	db $22			;Note A#3
	db $70			;Volume 15
	db $7e			;Instrument 13
	db $a1,$00			;CMD Track detune
	db $c7			;Wait 8
	db $21			;Note A-3
					;Wait Repeat 8
	db $22			;Note A#3
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c3			;Wait 4
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $29			;Note F-4
	db $c7			;Wait 8
	db $29			;Note F-4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $24			;Note C-4
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $20			;Note G#3
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2c			;Note G#4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $29			;Note F-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2e			;Note A#4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $24			;Note C-4
	db $7e			;Instrument 13
	db $c0			;Wait 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $29			;Note F-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $30			;Note C-5
	db $6b			;Volume 10
	db $bf			;[End-Of-Track]
.track_044:
	db $07			;Note G-1
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $c5			;Wait 6
	db $07			;Note G-1
	db $c1			;Wait 2
	db $0e			;Note D-2
	db $c5			;Wait 6
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $07			;Note G-1
	db $c5			;Wait 6
	db $07			;Note G-1
	db $c1			;Wait 2
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $05			;Note F-1
	db $c5			;Wait 6
	db $11			;Note F-2
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $c5			;Wait 6
	db $0f			;Note D#2
	db $c1			;Wait 2
	db $0e			;Note D-2
	db $c5			;Wait 6
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $05			;Note F-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_045:
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $7a			;Instrument 9
	db $a9,$48			; SCC Set Waveform 13
	db $c5			;Wait 6
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c3			;Wait 4
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c5			;Wait 6
	db $37			;Note G-5
	db $c1			;Wait 2
	db $35			;Note F-5
	db $c5			;Wait 6
	db $30			;Note C-5
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c7			;Wait 8
	db $2c			;Note G#4
	db $6b			;Volume 10
	db $a9,$40			; SCC Set Waveform 11
	db $c0			;Wait 1
	db $a8				; SCC Soften Waveform
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6c			;Volume 11
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $30			;Note C-5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_046:
	db $2e			;Note A#4
	db $6e			;Volume 13
	db $79			;Instrument 8
	db $c5			;Wait 6
	db $30			;Note C-5
	db $c1			;Wait 2
	db $32			;Note D-5
	db $cb			;Wait 12
	db $32			;Note D-5
	db $c1			;Wait 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c5			;Wait 6
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $38			;Note G#5
	db $c5			;Wait 6
	db $35			;Note F-5
	db $c1			;Wait 2
	db $35			;Note F-5
	db $d3			;Wait 20
	db $41			;Note F-6
	db $64			;Volume 3
	db $a9,$38			; SCC Set Waveform 9
	db $c1			;Wait 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_047:
	db $32			;Note D-5
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $c5			;Wait 6
	db $34			;Note E-5
	db $c1			;Wait 2
	db $35			;Note F-5
	db $ce			;Wait 15
	db $32			;Note D-5
	db $68			;Volume 7
	db $c1			;Wait 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c5			;Wait 6
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $38			;Note G#5
	db $c5			;Wait 6
	db $35			;Note F-5
	db $c1			;Wait 2
	db $35			;Note F-5
	db $d0			;Wait 17
	db $29			;Note F-4
	db $6e			;Volume 13
	db $79			;Instrument 8
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_049:
	db $48			;Note C-7
	db $6e			;Volume 13
	db $7e			;Instrument 13
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $44			;Note G#6
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $48			;Note C-7
	db $6c			;Volume 11
					;Wait Repeat 1
	db $41			;Note F-6
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $44			;Note G#6
	db $6c			;Volume 11
					;Wait Repeat 1
	db $3e			;Note D-6
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $41			;Note F-6
	db $6c			;Volume 11
					;Wait Repeat 1
	db $3c			;Note C-6
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $3e			;Note D-6
	db $6c			;Volume 11
					;Wait Repeat 1
	db $38			;Note G#5
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $3c			;Note C-6
	db $6c			;Volume 11
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $38			;Note G#5
	db $6c			;Volume 11
					;Wait Repeat 1
	db $32			;Note D-5
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $37			;Note G-5
	db $6c			;Volume 11
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $32			;Note D-5
	db $6c			;Volume 11
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6c			;Volume 11
					;Wait Repeat 1
	db $27			;Note D#4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6c			;Volume 11
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $27			;Note D#4
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $24			;Note C-4
	db $c2			;Wait 3
	db $23			;Note B-3
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $70			;Volume 15
					;Wait Repeat 4
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $cb			;Wait 12
	db $27			;Note D#4
	db $c1			;Wait 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $27			;Note D#4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_052:
	db $0e			;Note D-2
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $c5			;Wait 6
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $0c			;Note C-2
	db $c5			;Wait 6
	db $0c			;Note C-2
	db $c1			;Wait 2
	db $09			;Note A-1
	db $c5			;Wait 6
	db $09			;Note A-1
	db $c1			;Wait 2
	db $08			;Note G#1
	db $c5			;Wait 6
	db $08			;Note G#1
	db $c1			;Wait 2
	db $0e			;Note D-2
	db $70			;Volume 15
	db $a9,$58			; SCC Set Waveform 17
	db $cd			;Wait 14
	db $09			;Note A-1
	db $c1			;Wait 2
	db $02			;Note D-1
	db $70			;Volume 15
	db $a9,$08			; SCC Set Waveform 1
					;Wait Repeat 2
	db $02			;Note D-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_053:
	db $2c			;Note G#4
	db $6d			;Volume 12
	db $79			;Instrument 8
	db $a9,$38			; SCC Set Waveform 9
	db $c2			;Wait 3
	db $94,$34		;CMD Vibrato
					;Wait Repeat 3
	db $2c			;Note G#4
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c2			;Wait 3
	db $94,$34		;CMD Vibrato
					;Wait Repeat 3
	db $2e			;Note A#4
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c2			;Wait 3
	db $94,$24		;CMD Vibrato
					;Wait Repeat 3
	db $30			;Note C-5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $33			;Note D#5
	db $c3			;Wait 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $37			;Note G-5
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c5			;Wait 6
	db $37			;Note G-5
	db $c1			;Wait 2
	db $38			;Note G#5
	db $6d			;Volume 12
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_054:
	db $29			;Note F-4
	db $69			;Volume 8
	db $7e			;Instrument 13
	db $a9,$58			; SCC Set Waveform 17
	db $c0			;Wait 1
	db $6e			;Volume 13
	db $a8				; SCC Soften Waveform
	db $c6			;Wait 7
	db $2b			;Note G-4
	db $c7			;Wait 8
	db $2b			;Note G-4
					;Wait Repeat 8
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $1e			;Note F#3
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $9b			;CMD End 
					;Wait Repeat 4
	db $27			;Note D#4
	db $6b			;Volume 10
	db $76			;Instrument 5
	db $a9,$30			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $27			;Note D#4
	db $c5			;Wait 6
	db $2e			;Note A#4
	db $68			;Volume 7
	db $7e			;Instrument 13
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c3			;Wait 4
	db $27			;Note D#4
	db $6b			;Volume 10
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $27			;Note D#4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_055:
	db $24			;Note C-4
	db $69			;Volume 8
	db $7e			;Instrument 13
	db $a1,$00			;CMD Track detune
	db $c7			;Wait 8
	db $26			;Note D-4
					;Wait Repeat 8
	db $27			;Note D#4
					;Wait Repeat 8
	db $24			;Note C-4
	db $c7			;Wait 8
	db $32			;Note D-5
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $2e			;Note A#4
	db $6b			;Volume 10
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c2			;Wait 3
	db $94,$44		;CMD Vibrato
	db $c8			;Wait 9
	db $30			;Note C-5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $30			;Note C-5
	db $c2			;Wait 3
	db $94,$44		;CMD Vibrato
	db $c3			;Wait 4
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_056:
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $81			;Instrument 16
					;Wait Repeat 2
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
					;Wait Repeat 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $81			;Instrument 16
					;Wait Repeat 2
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_057:
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $6c			;Volume 11
	db $7e			;Instrument 13
	db $c7			;Wait 8
	db $30			;Note C-5
					;Wait Repeat 8
	db $30			;Note C-5
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c3			;Wait 4
	db $30			;Note C-5
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $22			;Note A#3
	db $70			;Volume 15
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $c0			;Wait 1
	db $22			;Note A#3
	db $6d			;Volume 12
					;Wait Repeat 1
	db $22			;Note A#3
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $21			;Note A-3
	db $6d			;Volume 12
					;Wait Repeat 1
	db $24			;Note C-4
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $22			;Note A#3
	db $6d			;Volume 12
					;Wait Repeat 1
	db $26			;Note D-4
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $24			;Note C-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $24			;Note C-4
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $26			;Note D-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $26			;Note D-4
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $24			;Note C-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $29			;Note F-4
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $26			;Note D-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $2b			;Note G-4
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $29			;Note F-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $29			;Note F-4
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $2b			;Note G-4
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $29			;Note F-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $2d			;Note A-4
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $2f			;Note B-4
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $2d			;Note A-4
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $2f			;Note B-4
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $32			;Note D-5
	db $70			;Volume 15
	db $7e			;Instrument 13
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6d			;Volume 12
	db $bf			;[End-Of-Track]
.track_060:
	db $07			;Note G-1
	db $70			;Volume 15
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $07			;Note G-1
	db $c1			;Wait 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $13			;Note G-2
	db $c3			;Wait 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $07			;Note G-1
	db $c7			;Wait 8
	db $05			;Note F-1
					;Wait Repeat 8
	db $10			;Note E-2
					;Wait Repeat 8
	db $0b			;Note B-1
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_061:
	db $26			;Note D-4
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c3			;Wait 4
	db $6d			;Volume 12
					;Wait Repeat 4
	db $28			;Note E-4
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c7			;Wait 8
	db $28			;Note E-4
	db $c1			;Wait 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $29			;Note F-4
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $29			;Note F-4
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $79			;Instrument 8
	db $a9,$48			; SCC Set Waveform 13
	db $c5			;Wait 6
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $c5			;Wait 6
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c5			;Wait 6
	db $30			;Note C-5
	db $c1			;Wait 2
	db $32			;Note D-5
	db $c5			;Wait 6
	db $32			;Note D-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_062:
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c3			;Wait 4
	db $6c			;Volume 11
					;Wait Repeat 4
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 4
	db $6c			;Volume 11
					;Wait Repeat 4
	db $2d			;Note A-4
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c3			;Wait 4
	db $22			;Note A#3
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $a9,$70			; SCC Set Waveform 25
	db $c7			;Wait 8
	db $21			;Note A-3
					;Wait Repeat 8
	db $26			;Note D-4
					;Wait Repeat 8
	db $26			;Note D-4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_063:
	db $2e			;Note A#4
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c2			;Wait 3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $30			;Note C-5
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c2			;Wait 3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $30			;Note C-5
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c3			;Wait 4
	db $30			;Note C-5
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $c7			;Wait 8
	db $26			;Note D-4
					;Wait Repeat 8
	db $2b			;Note G-4
					;Wait Repeat 8
	db $2b			;Note G-4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_064:
	db $1a			;Note D-3
	db $6f			;Volume 14
	db $73			;Instrument 2
	db $c7			;Wait 8
	db $21			;Note A-3
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $13			;Note G-2
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6c			;Volume 11
	db $71			;Instrument 0
					;Wait Repeat 2
	db $13			;Note G-2
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 2
	db $18			;Note C-3
	db $6f			;Volume 14
	db $73			;Instrument 2
	db $c7			;Wait 8
	db $21			;Note A-3
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $11			;Note F-2
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $18			;Note C-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6c			;Volume 11
	db $71			;Instrument 0
					;Wait Repeat 2
	db $13			;Note G-2
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_065:
	db $24			;Note C-4
	db $70			;Volume 15
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $26			;Note D-4
					;Wait Repeat 4
	db $27			;Note D#4
					;Wait Repeat 4
	db $27			;Note D#4
	db $c1			;Wait 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $24			;Note C-4
	db $c7			;Wait 8
	db $25			;Note C#4
	db $c3			;Wait 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $25			;Note C#4
	db $c5			;Wait 6
	db $27			;Note D#4
	db $c1			;Wait 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $25			;Note C#4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_068:
	db $0c			;Note C-2
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a9,$60			; SCC Set Waveform 18
	db $c3			;Wait 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $18			;Note C-3
	db $cb			;Wait 12
	db $13			;Note G-2
	db $c7			;Wait 8
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $11			;Note F-2
	db $c7			;Wait 8
	db $19			;Note C#3
	db $cb			;Wait 12
	db $19			;Note C#3
	db $c1			;Wait 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $11			;Note F-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_069:
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $7a			;Instrument 9
	db $cb			;Wait 12
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c7			;Wait 8
	db $2c			;Note G#4
	db $c3			;Wait 4
	db $2b			;Note G-4
					;Wait Repeat 4
	db $29			;Note F-4
	db $c5			;Wait 6
	db $2a			;Note F#4
	db $c1			;Wait 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $29			;Note F-4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_070:
	db $33			;Note D#5
	db $6d			;Volume 12
	db $7d			;Instrument 12
	db $c3			;Wait 4
	db $35			;Note F-5
					;Wait Repeat 4
	db $37			;Note G-5
	db $c4			;Wait 5
	db $94,$14		;CMD Vibrato
	db $c6			;Wait 7
	db $33			;Note D#5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
	db $c3			;Wait 4
	db $3c			;Note C-6
					;Wait Repeat 4
	db $3a			;Note A#5
	db $c7			;Wait 8
	db $35			;Note F-5
	db $9b			;CMD End 
	db $c4			;Wait 5
	db $94,$14		;CMD Vibrato
	db $d1			;Wait 18
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_071:
	db $c2			;Wait 3
	db $33			;Note D#5
	db $69			;Volume 8
	db $7d			;Instrument 12
	db $a1,$08			;CMD Track detune
	db $c3			;Wait 4
	db $35			;Note F-5
					;Wait Repeat 4
	db $37			;Note G-5
	db $cb			;Wait 12
	db $33			;Note D#5
	db $c1			;Wait 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
	db $c3			;Wait 4
	db $3c			;Note C-6
					;Wait Repeat 4
	db $3a			;Note A#5
	db $c7			;Wait 8
	db $35			;Note F-5
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_073:
	db $25			;Note C#4
	db $70			;Volume 15
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $27			;Note D#4
					;Wait Repeat 4
	db $29			;Note F-4
	db $c5			;Wait 6
	db $27			;Note D#4
	db $c1			;Wait 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $27			;Note D#4
	db $cd			;Wait 14
	db $27			;Note D#4
	db $c5			;Wait 6
	db $29			;Note F-4
	db $c1			;Wait 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $27			;Note D#4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_076:
	db $0d			;Note C#2
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a9,$50			; SCC Set Waveform 16
	db $c3			;Wait 4
	db $14			;Note G#2
					;Wait Repeat 4
	db $19			;Note C#3
	db $cb			;Wait 12
	db $14			;Note G#2
	db $c7			;Wait 8
	db $0d			;Note C#2
	db $c3			;Wait 4
	db $0c			;Note C-2
					;Wait Repeat 4
	db $13			;Note G-2
	db $c7			;Wait 8
	db $1b			;Note D#3
	db $cb			;Wait 12
	db $1b			;Note D#3
	db $c1			;Wait 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $13			;Note G-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_077:
	db $2c			;Note G#4
	db $7a			;Instrument 9
	db $cd			;Wait 14
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c3			;Wait 4
	db $2b			;Note G-4
					;Wait Repeat 4
	db $29			;Note F-4
					;Wait Repeat 4
	db $2b			;Note G-4
	db $c5			;Wait 6
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_078:
	db $35			;Note F-5
	db $6d			;Volume 12
	db $7d			;Instrument 12
	db $c3			;Wait 4
	db $37			;Note G-5
					;Wait Repeat 4
	db $38			;Note G#5
	db $c4			;Wait 5
	db $94,$14		;CMD Vibrato
	db $c6			;Wait 7
	db $35			;Note F-5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $38			;Note G#5
	db $c3			;Wait 4
	db $3d			;Note C#6
					;Wait Repeat 4
	db $3c			;Note C-6
	db $c5			;Wait 6
	db $92,$01			;CMD Portamento down
	db $c1			;Wait 2
	db $37			;Note G-5
	db $9b			;CMD End 
	db $c4			;Wait 5
	db $94,$14		;CMD Vibrato
	db $d0			;Wait 17
	db $2b			;Note G-4
	db $a9,$70			; SCC Set Waveform 25
	db $c0			;Wait 1
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_079:
	db $c2			;Wait 3
	db $35			;Note F-5
	db $69			;Volume 8
	db $7d			;Instrument 12
	db $c3			;Wait 4
	db $37			;Note G-5
					;Wait Repeat 4
	db $38			;Note G#5
	db $cb			;Wait 12
	db $35			;Note F-5
	db $c1			;Wait 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $38			;Note G#5
	db $c3			;Wait 4
	db $3d			;Note C#6
					;Wait Repeat 4
	db $3c			;Note C-6
	db $c7			;Wait 8
	db $37			;Note G-5
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_080:
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $71			;Instrument 0
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6c			;Volume 11
	db $81			;Instrument 16
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $71			;Instrument 0
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6c			;Volume 11
	db $81			;Instrument 16
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_081:
	db $22			;Note A#3
	db $70			;Volume 15
	db $7e			;Instrument 13
	db $c7			;Wait 8
	db $1d			;Note F-3
	db $c5			;Wait 6
	db $43			;Note G-6
	db $6d			;Volume 12
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 2
	db $46			;Note A#6
	db $c3			;Wait 4
	db $52			;Note A#7
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $4d			;Note F-7
	db $c3			;Wait 4
	db $28			;Note E-4
	db $70			;Volume 15
	db $a1,$00			;CMD Track detune
	db $c7			;Wait 8
	db $2c			;Note G#4
	db $c5			;Wait 6
	db $41			;Note F-6
	db $6d			;Volume 12
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 2
	db $44			;Note G#6
	db $c3			;Wait 4
	db $50			;Note G#7
					;Wait Repeat 4
	db $3f			;Note D#6
					;Wait Repeat 4
	db $4b			;Note D#7
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_084:
	db $0d			;Note C#2
	db $70			;Volume 15
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $0d			;Note C#2
					;Wait Repeat 4
	db $0d			;Note C#2
					;Wait Repeat 4
	db $0d			;Note C#2
					;Wait Repeat 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $0b			;Note B-1
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_085:
	db $29			;Note F-4
	db $70			;Volume 15
	db $7a			;Instrument 9
	db $cf			;Wait 16
	db $25			;Note C#4
					;Wait Repeat 16
	db $27			;Note D#4
	db $cf			;Wait 16
	db $23			;Note B-3
	db $76			;Instrument 5
	db $a9,$38			; SCC Set Waveform 9
	db $c7			;Wait 8
	db $22			;Note A#3
	db $70			;Volume 15
	db $c1			;Wait 2
	db $6f			;Volume 14
					;Wait Repeat 2
	db $20			;Note G#3
	db $70			;Volume 15
					;Wait Repeat 2
	db $6f			;Volume 14
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_086:
	db $2e			;Note A#4
	db $6d			;Volume 12
	db $7d			;Instrument 12
	db $a1,$00			;CMD Track detune
	db $c5			;Wait 6
	db $92,$02			;CMD Portamento down
	db $c1			;Wait 2
	db $29			;Note F-4
	db $9b			;CMD End 
	db $d5			;Wait 22
	db $29			;Note F-4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $c5			;Wait 6
	db $92,$02			;CMD Portamento down
	db $c1			;Wait 2
	db $27			;Note D#4
	db $9b			;CMD End 
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_087:
	db $c2			;Wait 3
	db $2e			;Note A#4
	db $69			;Volume 8
	db $7d			;Instrument 12
	db $a1,$00			;CMD Track detune
	db $c5			;Wait 6
	db $92,$03			;CMD Portamento down
	db $c1			;Wait 2
	db $29			;Note F-4
	db $9b			;CMD End 
	db $d5			;Wait 22
	db $29			;Note F-4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $c5			;Wait 6
	db $92,$03			;CMD Portamento down
	db $c1			;Wait 2
	db $27			;Note D#4
	db $9b			;CMD End 
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_089:
	db $22			;Note A#3
	db $70			;Volume 15
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $26			;Note D-4
	db $cb			;Wait 12
	db $27			;Note D#4
	db $c1			;Wait 2
	db $27			;Note D#4
	db $c1			;Wait 2
	db $27			;Note D#4
	db $6d			;Volume 12
	db $c7			;Wait 8
	db $32			;Note D-5
	db $c3			;Wait 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $37			;Note G-5
					;Wait Repeat 4
	db $37			;Note G-5
	db $c3			;Wait 4
	db $27			;Note D#4
	db $70			;Volume 15
	db $7b			;Instrument 10
	db $c1			;Wait 2
	db $26			;Note D-4
	db $70			;Volume 15
	db $c0			;Wait 1
	db $27			;Note D#4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $24			;Note C-4
	db $70			;Volume 15
					;Wait Repeat 1
	db $26			;Note D-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $20			;Note G#3
	db $70			;Volume 15
					;Wait Repeat 1
	db $24			;Note C-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $1f			;Note G-3
	db $70			;Volume 15
					;Wait Repeat 1
	db $20			;Note G#3
	db $6d			;Volume 12
					;Wait Repeat 1
	db $1d			;Note F-3
	db $70			;Volume 15
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 12
					;Wait Repeat 1
	db $1b			;Note D#3
	db $70			;Volume 15
					;Wait Repeat 1
	db $1d			;Note F-3
	db $6d			;Volume 12
					;Wait Repeat 1
	db $18			;Note C-3
	db $70			;Volume 15
					;Wait Repeat 1
	db $1b			;Note D#3
	db $6d			;Volume 12
	db $bf			;[End-Of-Track]
.track_092:
	db $07			;Note G-1
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $cd			;Wait 14
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $07			;Note G-1
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $07			;Note G-1
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $cb			;Wait 12
	db $07			;Note G-1
	db $6f			;Volume 14
	db $cd			;Wait 14
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $07			;Note G-1
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $07			;Note G-1
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_093:
	db $1f			;Note G-3
	db $76			;Instrument 5
	db $a9,$38			; SCC Set Waveform 9
	db $d3			;Wait 20
	db $1b			;Note D#3
	db $a9,$30			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
	db $c7			;Wait 8
	db $1d			;Note F-3
					;Wait Repeat 8
	db $22			;Note A#3
	db $c5			;Wait 6
	db $26			;Note D-4
	db $c1			;Wait 2
	db $29			;Note F-4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_094:
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
	db $c8			;Wait 9
	db $60			;Release 96
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $20			;Note G#3
	db $c1			;Wait 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $20			;Note G#3
	db $c7			;Wait 8
	db $21			;Note A-3
					;Wait Repeat 8
	db $26			;Note D-4
	db $c5			;Wait 6
	db $29			;Note F-4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $cd			;Wait 14
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_095:
	db $c3			;Wait 4
	db $22			;Note A#3
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $22			;Note A#3
	db $c2			;Wait 3
	db $94,$46		;CMD Vibrato
	db $c5			;Wait 6
	db $60			;Release 96
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $24			;Note C-4
	db $c1			;Wait 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $24			;Note C-4
	db $c2			;Wait 3
	db $94,$46		;CMD Vibrato
	db $c4			;Wait 5
	db $26			;Note D-4
	db $9b			;CMD End 
	db $c7			;Wait 8
	db $2b			;Note G-4
	db $c5			;Wait 6
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $30			;Note C-5
	db $cd			;Wait 14
	db $30			;Note C-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_096:
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $21			;Note A-3
	db $80			;Instrument 15
	db $c0			;Wait 1
	db $21			;Note A-3
	db $6e			;Volume 13
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
	db $6d			;Volume 12
	db $81			;Instrument 16
					;Wait Repeat 2
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_097:
	db $4f			;Note G-7
	db $6b			;Volume 10
	db $7b			;Instrument 10
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 2
	db $5b			;Note G-8
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $56			;Note D-8
					;Wait Repeat 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $57			;Note D#8
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $54			;Note C-8
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $56			;Note D-8
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $52			;Note A#7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $50			;Note G#7
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $4b			;Note D#7
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_100:
	db $0e			;Note D-2
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $0a			;Note A#1
					;Wait Repeat 2
	db $0a			;Note A#1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_101:
	db $2b			;Note G-4
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $c7			;Wait 8
	db $2c			;Note G#4
					;Wait Repeat 8
	db $2e			;Note A#4
					;Wait Repeat 8
	db $2c			;Note G#4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_102:
	db $2e			;Note A#4
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c7			;Wait 8
	db $30			;Note C-5
					;Wait Repeat 8
	db $30			;Note C-5
					;Wait Repeat 8
	db $30			;Note C-5
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_103:
	db $32			;Note D-5
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c7			;Wait 8
	db $33			;Note D#5
					;Wait Repeat 8
	db $35			;Note F-5
					;Wait Repeat 8
	db $36			;Note F#5
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_105:
	db $32			;Note D-5
	db $70			;Volume 15
	db $76			;Instrument 5
	db $a1,$08			;CMD Track detune
	db $c3			;Wait 4
	db $07			;Note G-1
	db $6e			;Volume 13
	db $7e			;Instrument 13
	db $a1,$06			;CMD Track detune
	db $c1			;Wait 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $05			;Note F-1
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $05			;Note F-1
	db $c1			;Wait 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $07			;Note G-1
	db $c1			;Wait 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $05			;Note F-1
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $05			;Note F-1
	db $c1			;Wait 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_109:
	db $1a			;Note D-3
	db $6f			;Volume 14
	db $74			;Instrument 3
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $1f			;Note G-3
	db $66			;Volume 5
					;Wait Repeat 4
	db $1d			;Note F-3
	db $6e			;Volume 13
					;Wait Repeat 4
	db $1d			;Note F-3
	db $67			;Volume 6
					;Wait Repeat 4
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $9b			;CMD End 
					;Wait Repeat 4
	db $1f			;Note G-3
	db $66			;Volume 5
					;Wait Repeat 4
	db $1d			;Note F-3
	db $6e			;Volume 13
					;Wait Repeat 4
	db $1d			;Note F-3
	db $67			;Volume 6
					;Wait Repeat 4
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_110:
	db $2e			;Note A#4
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $c3			;Wait 4
	db $6d			;Volume 12
					;Wait Repeat 4
	db $22			;Note A#3
	db $6e			;Volume 13
	db $74			;Instrument 3
					;Wait Repeat 4
	db $22			;Note A#3
	db $67			;Volume 6
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$20			; SCC Set Waveform 6
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $68			;Volume 7
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$20			; SCC Set Waveform 6
					;Wait Repeat 2
	db $1f			;Note G-3
	db $74			;Instrument 3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $1f			;Note G-3
	db $6e			;Volume 13
	db $9b			;CMD End 
					;Wait Repeat 4
	db $1a			;Note D-3
	db $66			;Volume 5
					;Wait Repeat 4
	db $22			;Note A#3
	db $6e			;Volume 13
					;Wait Repeat 4
	db $22			;Note A#3
	db $67			;Volume 6
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$20			; SCC Set Waveform 6
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $68			;Volume 7
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$20			; SCC Set Waveform 6
					;Wait Repeat 2
	db $1f			;Note G-3
	db $74			;Instrument 3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_111:
	db $37			;Note G-5
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $37			;Note G-5
	db $66			;Volume 5
	db $c2			;Wait 3
	db $1a			;Note D-3
	db $c3			;Wait 4
	db $22			;Note A#3
					;Wait Repeat 4
	db $22			;Note A#3
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $74			;Instrument 3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $74			;Instrument 3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $1a			;Note D-3
					;Wait Repeat 4
	db $22			;Note A#3
					;Wait Repeat 4
	db $22			;Note A#3
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $74			;Instrument 3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $74			;Instrument 3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $bf			;[End-Of-Track]

