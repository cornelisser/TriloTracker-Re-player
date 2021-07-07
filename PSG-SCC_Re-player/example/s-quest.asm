; Song: MoG2 - Shrine QUEST             
; By:   Gryzor87 (c)2021                

; [ Song start data ]
	db $07					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_002, .track_002, .track_004, .track_005, .track_006, .track_007	; Step:001 Pattern:000
	dw .track_008, .track_009, .track_002, .track_002, .track_012, .track_013, .track_014, .track_015	; Step:002 Pattern:001
	dw .track_016, .track_017, .track_018, .track_018, .track_020, .track_021, .track_022, .track_023	; Step:003 Pattern:002
	dw .track_024, .track_025, .track_018, .track_018, .track_028, .track_029, .track_030, .track_031	; Step:004 Pattern:003
	dw .track_032, .track_033, .track_018, .track_018, .track_036, .track_037, .track_038, .track_039	; Step:005 Pattern:004
.restart:
	dw .track_040, .track_041, .track_018, .track_018, .track_044, .track_045, .track_046, .track_047	; Step:006 Pattern:005
	dw .track_048, .track_049, .track_018, .track_018, .track_036, .track_053, .track_054, .track_055	; Step:007 Pattern:006
	dw .track_056, .track_057, .track_018, .track_018, .track_060, .track_061, .track_062, .track_063	; Step:008 Pattern:007
	dw .track_032, .track_065, .track_018, .track_018, .track_036, .track_069, .track_070, .track_071	; Step:009 Pattern:008
	dw .track_072, .track_073, .track_018, .track_018, .track_076, .track_077, .track_078, .track_079	; Step:010 Pattern:009
	dw .track_080, .track_081, .track_018, .track_018, .track_084, .track_085, .track_086, .track_087	; Step:011 Pattern:010
	dw .track_088, .track_089, .track_018, .track_018, .track_092, .track_093, .track_094, .track_095	; Step:012 Pattern:011
	dw .track_096, .track_097, .track_018, .track_018, .track_100, .track_101, .track_102, .track_103	; Step:013 Pattern:012
	dw .track_104, .track_105, .track_018, .track_018, .track_108, .track_109, .track_110, .track_111	; Step:014 Pattern:013
	dw .track_112, .track_113, .track_018, .track_018, .track_116, .track_117, .track_118, .track_119	; Step:015 Pattern:014
	dw .track_120, .track_121, .track_018, .track_018, .track_124, .track_125, .track_126, .track_127	; Step:016 Pattern:015
	dw .track_032, .track_033, .track_018, .track_018, .track_036, .track_133, .track_134, .track_135	; Step:017 Pattern:016
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $80, $b0, $c0, $10, $1a, $2a, $2c, $1a, $00, $e0, $d0, $e0, $22, $53, $70, $75, $70, $31, $ea, $80, $88, $8a, $8c, $8e, $00, $7f, $75, $73, $62, $00, $c0, $90				; Waveform:1
	db $00, $10, $20, $30, $40, $50, $60, $70, $7f, $70, $60, $50, $40, $30, $20, $10, $ff, $f0, $e0, $d0, $c0, $b0, $a0, $90, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0				; Waveform:3
	db $00, $30, $50, $60, $70, $60, $50, $30, $00, $d0, $b0, $a0, $90, $a0, $b0, $d0, $00, $40, $60, $70, $60, $40, $00, $c0, $a0, $90, $a0, $c0, $00, $70, $00, $90				; Waveform:4
	db $80, $8e, $a0, $c0, $e0, $00, $20, $3f, $3e, $3c, $3a, $37, $31, $29, $20, $1c, $10, $00, $e6, $c0, $d0, $00, $20, $3f, $10, $e0, $80, $c0, $00, $20, $00, $90				; Waveform:5
	db $00, $f8, $f0, $e8, $e0, $d8, $d0, $c8, $c0, $b8, $b0, $a8, $a0, $98, $90, $88, $80, $78, $70, $68, $60, $58, $50, $48, $40, $38, $30, $28, $20, $18, $10, $08				; Waveform:6
	db $a0, $90, $a0, $ac, $f0, $a0, $16, $00, $90, $00, $20, $40, $60, $50, $38, $1c, $f2, $e2, $d6, $d0, $d0, $da, $dc, $e0, $e2, $e2, $e2, $e0, $dc, $d8, $d0, $b0				; Waveform:7
	db $00, $f0, $e0, $d0, $c0, $b0, $a3, $9b, $93, $8e, $8a, $87, $84, $83, $83, $82, $81, $80, $80, $81, $82, $84, $8a, $93, $7f, $70, $60, $50, $40, $30, $20, $10				; Waveform:9
	db $30, $50, $50, $30, $00, $00, $10, $40, $60, $70, $60, $30, $f0, $e0, $e0, $00, $20, $20, $10, $c0, $a0, $90, $a0, $c0, $00, $00, $d0, $b0, $b0, $d0, $00, $00				; Waveform:13
	db $00, $00, $00, $00, $00, $78, $78, $00, $00, $80, $80, $80, $00, $00, $00, $00, $78, $78, $78, $00, $80, $80, $00, $00, $00, $00, $78, $78, $00, $00, $80, $80				; Waveform:15
	db $00, $38, $7f, $38, $10, $01, $ea, $d6, $c3, $b9, $af, $a4, $9c, $95, $8f, $8a, $86, $83, $81, $83, $86, $8a, $8f, $95, $9c, $a4, $af, $b9, $c3, $d6, $ea, $ff				; Waveform:16
	db $80, $c8, $20, $7f, $30, $c8, $80, $90, $a8, $c0, $e0, $00, $20, $38, $50, $60, $70, $78, $7c, $7f, $7c, $78, $70, $60, $50, $38, $20, $00, $e0, $c0, $a8, $90				; Waveform:17
	db $27, $5f, $4f, $4f, $5f, $67, $7f, $7f, $6f, $6f, $7f, $6f, $5f, $4f, $67, $5f, $37, $e7, $d7, $c7, $d7, $ff, $e7, $cf, $c7, $c7, $bf, $97, $87, $af, $d7, $ff				; Waveform:18
	db $90, $d0, $20, $0c, $bc, $aa, $e6, $dc, $bc, $e3, $40, $30, $e0, $d0, $10, $06, $e4, $0c, $70, $50, $e0, $d0, $10, $00, $d0, $f0, $40, $20, $c4, $c0, $f0, $90				; Waveform:19
	db $00, $68, $48, $18, $48, $68, $28, $00, $48, $77, $58, $08, $28, $38, $00, $b8, $08, $58, $00, $e8, $f8, $00, $b8, $98, $c8, $08, $e8, $a8, $c8, $f8, $c8, $a8				; Waveform:20
	db $30, $60, $78, $68, $48, $38, $48, $58, $48, $38, $20, $18, $20, $58, $40, $20, $e0, $b0, $80, $88, $a0, $c0, $b4, $a8, $b4, $d0, $e8, $d8, $c8, $b8, $a8, $d0				; Waveform:25
	db $08, $18, $28, $38, $50, $6b, $7f, $73, $5b, $4c, $45, $3d, $32, $21, $00, $d7, $be, $a3, $85, $9b, $a6, $c0, $d0, $d4, $d0, $cc, $c8, $cc, $d0, $d8, $e3, $f2				; Waveform:27
	db $08, $20, $40, $60, $70, $28, $08, $28, $58, $68, $70, $28, $c0, $80, $d0, $10, $00, $d8, $c8, $d0, $e0, $d8, $e0, $e8, $f8, $e8, $d8, $c8, $c8, $d8, $e8, $f8				; Waveform:28

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; TOM             
	dw .instrument_01				; SC Brass        
	dw .instrument_02				; SC Bass         
	dw .instrument_03				; SC PianoBell    
	dw .instrument_04				; PSG String snake
	dw .instrument_05				; IN              
	dw .instrument_06				; Piano tremolo   
	dw .instrument_07				; Piano tremolo   
	dw .instrument_08				; Brass tremolo   
	dw .instrument_09				; Legato          
	dw .instrument_10				; Main Melody     
	dw .instrument_11				; Response BELL   
	dw .instrument_12				; CYMBAL IN       
	dw .instrument_13				; Pizzicato       
	dw .instrument_14				; SCC backmelody  

.instrument_00:					; TOM             
	db $08							; Waveform 1
	db $1c							; Info byte: 00011100
	db $0f							; Volume _
	dw $002f							; Tone
	db $1c							; Info byte: 00011100
	db $0d							; Volume _
	dw $002f							; Tone
.rst_i00:
	db $1e							; Info byte: 00011110
	db $ff							; Volume -
	dw $002f							; Tone
	db $18							; Info byte: 00011000
	dw $002f							; Tone
	db $18							; Info byte: 00011000
	dw $002f							; Tone
	db $18							; Info byte: 00011000
	dw $002f							; Tone
	db $18							; Info byte: 00011000
	dw $002f							; Tone
	db $19							; Info byte: 00011001
	dw $002f							; Tone
	dw .rst_i00						; Loop address
.instrument_01:					; SC Brass        
	db $20							; Waveform 4
	db $14							; Info byte: 00010100
	db $07							; Volume _
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
	db $0a							; Volume _
.rst_i01:
	db $16							; Info byte: 00010110
	db $fe							; Volume -
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
	db $11							; Info byte: 00010001
	dw .rst_i01						; Loop address
.instrument_02:					; SC Bass         
	db $18							; Waveform 3
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
.rst_i02:
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
	db $11							; Info byte: 00010001
	dw .rst_i02						; Loop address
.instrument_03:					; SC PianoBell    
	db $28							; Waveform 5
	db $14							; Info byte: 00010100
	db $0f							; Volume _
.rst_i03:
	db $16							; Info byte: 00010110
	db $fd							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i03						; Loop address
.instrument_04:					; PSG String snake
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
.rst_i04:
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
	dw .rst_i04						; Loop address
.instrument_05:					; IN              
	db $38							; Waveform 7
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
.rst_i05:
	db $15							; Info byte: 00010101
	db $0a							; Volume _
	dw .rst_i05						; Loop address
.instrument_06:					; Piano tremolo   
	db $38							; Waveform 7
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
.rst_i06:
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
	dw .rst_i06						; Loop address
.instrument_07:					; Piano tremolo   
	db $68							; Waveform 13
	db $14							; Info byte: 00010100
	db $06							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
	db $14							; Info byte: 00010100
	db $08							; Volume _
	db $14							; Info byte: 00010100
	db $07							; Volume _
	db $14							; Info byte: 00010100
	db $06							; Volume _
.rst_i07:
	db $16							; Info byte: 00010110
	db $fd							; Volume -
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
	dw .rst_i07						; Loop address
.instrument_08:					; Brass tremolo   
	db $30							; Waveform 6
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
.rst_i08:
	db $16							; Info byte: 00010110
	db $fe							; Volume -
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
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $01							; Volume +
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i08						; Loop address
.instrument_09:					; Legato          
	db $60							; Waveform 12
	db $14							; Info byte: 00010100
	db $09							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
.rst_i09:
	db $17							; Info byte: 00010111
	db $ff							; Volume -
	dw .rst_i09						; Loop address
.instrument_10:					; Main Melody     
	db $48							; Waveform 9
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
.rst_i10:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i10						; Loop address
.instrument_11:					; Response BELL   
	db $58							; Waveform 11
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
.rst_i11:
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
	dw .rst_i11						; Loop address
.instrument_12:					; CYMBAL IN       
	db $30							; Waveform 6
	db $d4							; Info byte: 11010100
	db $06							; Volume _
	db $00							; Noise _
.rst_i12:
	db $d6							; Info byte: 11010110
	db $01							; Volume +
	db $00							; Noise _
	db $d0							; Info byte: 11010000
	db $00							; Noise _
	db $d0							; Info byte: 11010000
	db $00							; Noise _
	db $d0							; Info byte: 11010000
	db $00							; Noise _
	db $d1							; Info byte: 11010001
	db $00							; Noise _
	dw .rst_i12						; Loop address
.instrument_13:					; Pizzicato       
	db $10							; Waveform 2
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
	db $02							; Volume _
	db $14							; Info byte: 00010100
	db $03							; Volume _
	db $14							; Info byte: 00010100
	db $04							; Volume _
.rst_i13:
	db $05							; Info byte: 00000101
	db $05							; Volume _
	dw .rst_i13						; Loop address
.instrument_14:					; SCC backmelody  
	db $68							; Waveform 13
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
	db $14							; Info byte: 00010100
	db $08							; Volume _
	db $14							; Info byte: 00010100
	db $07							; Volume _
	db $14							; Info byte: 00010100
	db $06							; Volume _
.rst_i14:
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
	dw .rst_i14						; Loop address

; [ Song track data ]
.track_000:
	db $60			;Release 96
	db $c2			;Wait 3
	db $3a			;Note A#5
	db $6b			;Volume 10
	db $7a			;Instrument 9
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
	db $a3,$06			;CMD Speed
	db $c2			;Wait 3
	db $4d			;Note F-7
	db $6b			;Volume 10
	db $7a			;Instrument 9
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $69			;Volume 8
	db $74			;Instrument 3
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
	db $c0			;Wait 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $39			;Note A-5
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $a3,$08			;CMD Speed
					;Wait Repeat 1
	db $35			;Note F-5
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $32			;Note D-5
	db $a3,$08			;CMD Speed
					;Wait Repeat 1
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $2e			;Note A#4
	db $a3,$06			;CMD Speed
					;Wait Repeat 1
	db $a3,$07			;CMD Speed
					;Wait Repeat 1
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $2e			;Note A#4
	db $bf			;[End-Of-Track]
.track_002:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_004:
	db $3a			;Note A#5
	db $69			;Volume 8
	db $74			;Instrument 3
	db $a9,$38			; SCC Set Waveform 13
	db $c1			;Wait 2
	db $39			;Note A-5
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $c1			;Wait 2
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
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $74			;Instrument 3
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
	db $74			;Instrument 3
	db $a9,$60			; SCC Set Waveform 19
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
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $c1			;Wait 2
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
	db $7a			;Instrument 9
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
	db $7a			;Instrument 9
	db $c1			;Wait 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $69			;Volume 8
					;Wait Repeat 2
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $34			;Note E-5
	db $68			;Volume 7
					;Wait Repeat 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $67			;Volume 6
	db $bf			;[End-Of-Track]
.track_008:
	db $a3,$07			;CMD Speed
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_009:
	db $0e			;Note D-2
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a1,$0a			;CMD Track detune
	db $c7			;Wait 8
	db $15			;Note A-2
	db $c7			;Wait 8
	db $13			;Note G-2
	db $a1,$09			;CMD Track detune
					;Wait Repeat 8
	db $18			;Note C-3
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_012:
	db $0e			;Note D-2
	db $67			;Volume 6
	db $79			;Instrument 8
	db $a1,$05			;CMD Track detune
	db $c0			;Wait 1
	db $68			;Volume 7
	db $c0			;Wait 1
	db $69			;Volume 8
	db $ac,$04			; SCC Morph speed 4
					;Wait Repeat 1
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $6b			;Volume 10
	db $9c,$58			; SCC Morph to Waveform 18
	db $c3			;Wait 4
	db $15			;Note A-2
	db $c7			;Wait 8
	db $13			;Note G-2
	db $a1,$03			;CMD Track detune
					;Wait Repeat 8
	db $18			;Note C-3
	db $a9,$58			; SCC Set Waveform 18
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_013:
	db $0e			;Note D-2
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $a9,$80			; SCC Set Waveform 28
	db $c7			;Wait 8
	db $15			;Note A-2
					;Wait Repeat 8
	db $13			;Note G-2
					;Wait Repeat 8
	db $18			;Note C-3
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_014:
	db $21			;Note A-3
	db $6a			;Volume 9
	db $74			;Instrument 3
	db $a9,$60			; SCC Set Waveform 19
	db $c5			;Wait 6
	db $21			;Note A-3
	db $67			;Volume 6
	db $a9,$60			; SCC Set Waveform 19
					;Wait Repeat 6
	db $21			;Note A-3
	db $65			;Volume 4
	db $a9,$60			; SCC Set Waveform 19
					;Wait Repeat 6
	db $21			;Note A-3
	db $64			;Volume 3
	db $a9,$60			; SCC Set Waveform 19
					;Wait Repeat 6
	db $11			;Note F-2
	db $6c			;Volume 11
	db $7c			;Instrument 11
	db $c0			;Wait 1
	db $13			;Note G-2
	db $6c			;Volume 11
					;Wait Repeat 1
	db $15			;Note A-2
	db $6d			;Volume 12
					;Wait Repeat 1
	db $18			;Note C-3
	db $6d			;Volume 12
					;Wait Repeat 1
	db $1a			;Note D-3
	db $6e			;Volume 13
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 14
					;Wait Repeat 1
	db $1d			;Note F-3
	db $70			;Volume 15
					;Wait Repeat 1
	db $1f			;Note G-3
	db $bf			;[End-Of-Track]
.track_015:
	db $26			;Note D-4
	db $6a			;Volume 9
	db $74			;Instrument 3
	db $c5			;Wait 6
	db $26			;Note D-4
	db $67			;Volume 6
					;Wait Repeat 6
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 6
	db $26			;Note D-4
	db $64			;Volume 3
					;Wait Repeat 6
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_016:
	db $1d			;Note F-3
	db $6c			;Volume 11
	db $75			;Instrument 4
	db $cf			;Wait 16
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 16
	db $21			;Note A-3
	db $6c			;Volume 11
					;Wait Repeat 16
	db $26			;Note D-4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_017:
	db $16			;Note A#2
	db $6c			;Volume 11
	db $75			;Instrument 4
	db $cf			;Wait 16
	db $29			;Note F-4
	db $6b			;Volume 10
					;Wait Repeat 16
	db $23			;Note B-3
	db $6c			;Volume 11
					;Wait Repeat 16
	db $29			;Note F-4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_018:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_020:
	db $0a			;Note A#1
	db $70			;Volume 15
	db $73			;Instrument 2
	db $cf			;Wait 16
	db $13			;Note G-2
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $0e			;Note D-2
	db $c7			;Wait 8
	db $10			;Note E-2
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $a9,$50			; SCC Set Waveform 17
					;Wait Repeat 8
	db $17			;Note B-2
					;Wait Repeat 8
	db $16			;Note A#2
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_021:
	db $21			;Note A-3
	db $6b			;Volume 10
	db $72			;Instrument 1
	db $a9,$10			; SCC Set Waveform 4
	db $cb			;Wait 12
	db $24			;Note C-4
	db $c3			;Wait 4
	db $26			;Note D-4
	db $70			;Volume 15
	db $c7			;Wait 8
	db $29			;Note F-4
	db $c7			;Wait 8
	db $2b			;Note G-4
	db $70			;Volume 15
	db $a9,$78			; SCC Set Waveform 27
	db $c3			;Wait 4
	db $94,$44		;CMD Vibrato
	db $c7			;Wait 8
	db $2d			;Note A-4
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $30			;Note C-5
	db $c7			;Wait 8
	db $32			;Note D-5
	db $c2			;Wait 3
	db $94,$37		;CMD Vibrato
	db $c3			;Wait 4
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_022:
	db $26			;Note D-4
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c7			;Wait 8
	db $2d			;Note A-4
	db $c7			;Wait 8
	db $2b			;Note G-4
	db $6f			;Volume 14
					;Wait Repeat 8
	db $30			;Note C-5
					;Wait Repeat 8
	db $32			;Note D-5
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_023:
	db $60			;Release 96
	db $c2			;Wait 3
	db $26			;Note D-4
	db $68			;Volume 7
	db $72			;Instrument 1
	db $c7			;Wait 8
	db $2d			;Note A-4
					;Wait Repeat 8
	db $2b			;Note G-4
					;Wait Repeat 8
	db $30			;Note C-5
					;Wait Repeat 8
	db $32			;Note D-5
	db $c8			;Wait 9
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $30			;Note C-5
	db $c7			;Wait 8
	db $32			;Note D-5
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_024:
	db $37			;Note G-5
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $9d,$01			;CMD Arpegio speed
	db $c3			;Wait 4
	db $34			;Note E-5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $6c			;Volume 11
					;Wait Repeat 2
	db $2f			;Note B-4
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $34			;Note E-5
	db $6c			;Volume 11
					;Wait Repeat 2
	db $2b			;Note G-4
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $28			;Note E-4
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $23			;Note B-3
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $28			;Note E-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $1f			;Note G-3
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $23			;Note B-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $1c			;Note E-3
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6c			;Volume 11
	db $75			;Instrument 4
	db $d3			;Wait 20
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $7d			;Instrument 12
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_025:
	db $17			;Note B-2
	db $6c			;Volume 11
	db $75			;Instrument 4
	db $93,$c0			;CMD Arpeggio
	db $df			;Wait 32
	db $17			;Note B-2
	db $6a			;Volume 9
	db $c7			;Wait 8
	db $16			;Note A#2
					;Wait Repeat 8
	db $15			;Note A-2
					;Wait Repeat 8
	db $11			;Note F-2
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_028:
	db $0b			;Note B-1
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $a9,$48			; SCC Set Waveform 16
	db $df			;Wait 32
	db $17			;Note B-2
	db $70			;Volume 15
	db $72			;Instrument 1
	db $a9,$48			; SCC Set Waveform 16
	db $c7			;Wait 8
	db $16			;Note A#2
					;Wait Repeat 8
	db $15			;Note A-2
					;Wait Repeat 8
	db $11			;Note F-2
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_029:
	db $3b			;Note B-5
	db $70			;Volume 15
	db $7b			;Instrument 10
	db $a1,$08			;CMD Track detune
	db $c4			;Wait 5
	db $92,$01			;CMD Portamento down
	db $c2			;Wait 3
	db $37			;Note G-5
	db $6d			;Volume 12
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $6e			;Volume 13
	db $c0			;Wait 1
	db $6f			;Volume 14
					;Wait Repeat 1
	db $70			;Volume 15
	db $c3			;Wait 4
	db $34			;Note E-5
	db $70			;Volume 15
	db $7b			;Instrument 10
	db $c7			;Wait 8
	db $2f			;Note B-4
	db $c7			;Wait 8
	db $32			;Note D-5
	db $9b			;CMD End 
	db $c4			;Wait 5
	db $94,$36		;CMD Vibrato
	db $d9			;Wait 26
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_030:
	db $28			;Note E-4
	db $69			;Volume 8
	db $79			;Instrument 8
	db $93,$c0			;CMD Arpeggio
	db $de			;Wait 31
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $29			;Note F-4
	db $6b			;Volume 10
	db $a9,$48			; SCC Set Waveform 16
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_031:
	db $2b			;Note G-4
	db $68			;Volume 7
	db $79			;Instrument 8
	db $c5			;Wait 6
	db $3b			;Note B-5
	db $66			;Volume 5
	db $7b			;Instrument 10
	db $c5			;Wait 6
	db $92,$01			;CMD Portamento down
	db $c1			;Wait 2
	db $37			;Note G-5
	db $9b			;CMD End 
	db $c7			;Wait 8
	db $34			;Note E-5
					;Wait Repeat 8
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $79			;Instrument 8
	db $c5			;Wait 6
	db $32			;Note D-5
	db $9b			;CMD End 
	db $c4			;Wait 5
	db $94,$36		;CMD Vibrato
	db $d3			;Wait 20
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_032:
	db $1d			;Note F-3
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $6d			;Volume 12
	db $c2			;Wait 3
	db $18			;Note C-3
	db $6d			;Volume 12
	db $71			;Instrument 0
	db $cb			;Wait 12
	db $13			;Note G-2
	db $6d			;Volume 12
	db $d7			;Wait 24
	db $11			;Note F-2
	db $c7			;Wait 8
	db $11			;Note F-2
	db $cb			;Wait 12
	db $18			;Note C-3
	db $6f			;Volume 14
	db $c0			;Wait 1
	db $6d			;Volume 12
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_033:
	db $1c			;Note E-3
	db $6f			;Volume 14
	db $7c			;Instrument 11
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6f			;Volume 14
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6f			;Volume 14
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1e			;Note F#3
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6f			;Volume 14
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6a			;Volume 9
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6f			;Volume 14
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6f			;Volume 14
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1e			;Note F#3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1c			;Note E-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1e			;Note F#3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1a			;Note D-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1c			;Note E-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1e			;Note F#3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1f			;Note G-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1e			;Note F#3
	db $69			;Volume 8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_036:
	db $04			;Note E-1
	db $6f			;Volume 14
	db $7e			;Instrument 13
	db $a9,$00			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $04			;Note E-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $10			;Note E-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $04			;Note E-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $10			;Note E-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $04			;Note E-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $10			;Note E-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $0b			;Note B-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_037:
	db $47			;Note B-6
	db $68			;Volume 7
	db $77			;Instrument 6
	db $a9,$40			; SCC Set Waveform 15
	db $c0			;Wait 1
	db $a8				; SCC Soften Waveform
					;Wait Repeat 1
	db $66			;Volume 5
	db $c1			;Wait 2
	db $45			;Note A-6
	db $68			;Volume 7
	db $a1,$08			;CMD Track detune
	db $c3			;Wait 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $4a			;Note D-7
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $45			;Note A-6
	db $c3			;Wait 4
	db $47			;Note B-6
	db $67			;Volume 6
					;Wait Repeat 4
	db $45			;Note A-6
					;Wait Repeat 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $45			;Note A-6
					;Wait Repeat 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $45			;Note A-6
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_038:
	db $23			;Note B-3
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a9,$68			; SCC Set Waveform 20
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $78			;Instrument 7
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
	db $78			;Instrument 7
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $26			;Note D-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $21			;Note A-3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_039:
	db $60			;Release 96
	db $9d,$00			;CMD Arpegio speed
	db $c2			;Wait 3
	db $23			;Note B-3
	db $68			;Volume 7
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $26			;Note D-4
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $21			;Note A-3
	db $c3			;Wait 4
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $21			;Note A-3
	db $bf			;[End-Of-Track]
.track_040:
	db $1d			;Note F-3
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c3			;Wait 4
	db $18			;Note C-3
	db $6d			;Volume 12
	db $cb			;Wait 12
	db $1f			;Note G-3
	db $6d			;Volume 12
	db $c3			;Wait 4
	db $1b			;Note D#3
	db $6c			;Volume 11
	db $d3			;Wait 20
	db $11			;Note F-2
	db $c7			;Wait 8
	db $11			;Note F-2
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_041:
	db $1c			;Note E-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1e			;Note F#3
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1f			;Note G-3
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1e			;Note F#3
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1f			;Note G-3
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1e			;Note F#3
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1e			;Note F#3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1c			;Note E-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1e			;Note F#3
	db $69			;Volume 8
					;Wait Repeat 2
	db $19			;Note C#3
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1a			;Note D-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $19			;Note C#3
	db $69			;Volume 8
					;Wait Repeat 2
	db $19			;Note C#3
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1a			;Note D-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $17			;Note B-2
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $19			;Note C#3
	db $69			;Volume 8
					;Wait Repeat 2
	db $15			;Note A-2
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $17			;Note B-2
	db $69			;Volume 8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_044:
	db $04			;Note E-1
	db $6f			;Volume 14
	db $7e			;Instrument 13
	db $a9,$00			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $04			;Note E-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $10			;Note E-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $04			;Note E-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $10			;Note E-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $04			;Note E-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $10			;Note E-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_045:
	db $47			;Note B-6
	db $68			;Volume 7
	db $77			;Instrument 6
	db $a9,$40			; SCC Set Waveform 15
	db $c0			;Wait 1
	db $a8				; SCC Soften Waveform
					;Wait Repeat 1
	db $66			;Volume 5
	db $c1			;Wait 2
	db $45			;Note A-6
	db $69			;Volume 8
	db $a1,$08			;CMD Track detune
	db $c3			;Wait 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $4a			;Note D-7
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $45			;Note A-6
					;Wait Repeat 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $45			;Note A-6
					;Wait Repeat 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $42			;Note F#6
					;Wait Repeat 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $42			;Note F#6
					;Wait Repeat 4
	db $40			;Note E-6
					;Wait Repeat 4
	db $3e			;Note D-6
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_046:
	db $23			;Note B-3
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a9,$68			; SCC Set Waveform 20
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $78			;Instrument 7
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
	db $78			;Instrument 7
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $26			;Note D-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $1e			;Note F#3
					;Wait Repeat 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $1e			;Note F#3
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $1a			;Note D-3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_047:
	db $60			;Release 96
	db $9d,$00			;CMD Arpegio speed
	db $c2			;Wait 3
	db $23			;Note B-3
	db $68			;Volume 7
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $26			;Note D-4
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $1e			;Note F#3
					;Wait Repeat 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $1e			;Note F#3
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $1a			;Note D-3
	db $bf			;[End-Of-Track]
.track_048:
	db $1d			;Note F-3
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $6d			;Volume 12
	db $c2			;Wait 3
	db $18			;Note C-3
	db $6d			;Volume 12
	db $71			;Instrument 0
	db $cb			;Wait 12
	db $13			;Note G-2
	db $6d			;Volume 12
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_049:
	db $1c			;Note E-3
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1e			;Note F#3
	db $70			;Volume 15
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6a			;Volume 9
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $1e			;Note F#3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1c			;Note E-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1e			;Note F#3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1a			;Note D-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1c			;Note E-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1e			;Note F#3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1f			;Note G-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1e			;Note F#3
	db $69			;Volume 8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_053:
	db $23			;Note B-3
	db $6f			;Volume 14
	db $7f			;Instrument 14
	db $c1			;Wait 2
	db $66			;Volume 5
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $26			;Note D-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $21			;Note A-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $21			;Note A-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $1f			;Note G-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $21			;Note A-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $6d			;Volume 12
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_054:
	db $28			;Note E-4
	db $6e			;Volume 13
	db $7b			;Instrument 10
	db $a9,$30			; SCC Set Waveform 9
	db $c6			;Wait 7
	db $94,$36		;CMD Vibrato
	db $c7			;Wait 8
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $72			;Instrument 1
	db $a9,$30			; SCC Set Waveform 9
	db $c6			;Wait 7
	db $94,$36		;CMD Vibrato
	db $c0			;Wait 1
	db $a9,$30			; SCC Set Waveform 9
	db $de			;Wait 31
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $6d			;Volume 12
	db $a9,$20			; SCC Set Waveform 6
	db $c1			;Wait 2
	db $6c			;Volume 11
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6d			;Volume 12
	db $72			;Instrument 1
					;Wait Repeat 2
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_055:
	db $2b			;Note G-4
	db $68			;Volume 7
	db $74			;Instrument 3
	db $a1,$08			;CMD Track detune
	db $c7			;Wait 8
	db $26			;Note D-4
	db $68			;Volume 7
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $28			;Note E-4
	db $90,$04			;CMD Portamento tone
	db $c6			;Wait 7
	db $26			;Note D-4
	db $68			;Volume 7
	db $c7			;Wait 8
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $a1,$00			;CMD Track detune
					;Wait Repeat 8
	db $1e			;Note F#3
					;Wait Repeat 8
	db $21			;Note A-3
					;Wait Repeat 8
	db $1f			;Note G-3
	db $ca			;Wait 11
	db $2d			;Note A-4
	db $68			;Volume 7
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $bf			;[End-Of-Track]
.track_056:
	db $1e			;Note F#3
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $6d			;Volume 12
	db $c2			;Wait 3
	db $19			;Note C#3
	db $6d			;Volume 12
	db $71			;Instrument 0
	db $cb			;Wait 12
	db $14			;Note G#2
	db $6d			;Volume 12
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_057:
	db $21			;Note A-3
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1c			;Note E-3
	db $70			;Volume 15
	db $76			;Instrument 5
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6a			;Volume 9
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $1d			;Note F-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $21			;Note A-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $1d			;Note F-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $1c			;Note E-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $1a			;Note D-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $1c			;Note E-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $18			;Note C-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $1a			;Note D-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $17			;Note B-2
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $18			;Note C-3
	db $69			;Volume 8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_060:
	db $05			;Note F-1
	db $6f			;Volume 14
	db $7e			;Instrument 13
	db $a9,$00			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $11			;Note F-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $11			;Note F-2
	db $c3			;Wait 4
	db $11			;Note F-2
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $05			;Note F-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $11			;Note F-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $11			;Note F-2
					;Wait Repeat 4
	db $11			;Note F-2
					;Wait Repeat 4
	db $11			;Note F-2
					;Wait Repeat 4
	db $11			;Note F-2
	db $c3			;Wait 4
	db $05			;Note F-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $11			;Note F-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $05			;Note F-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $11			;Note F-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $11			;Note F-2
					;Wait Repeat 4
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_061:
	db $34			;Note E-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
	db $c1			;Wait 2
	db $66			;Volume 5
					;Wait Repeat 2
	db $30			;Note C-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $34			;Note E-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $30			;Note C-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2f			;Note B-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2d			;Note A-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $30			;Note C-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2f			;Note B-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $30			;Note C-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $34			;Note E-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $30			;Note C-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2f			;Note B-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $30			;Note C-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2f			;Note B-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2d			;Note A-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2d			;Note A-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2f			;Note B-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $29			;Note F-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_062:
	db $2d			;Note A-4
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $6c			;Volume 11
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6d			;Volume 12
	db $72			;Instrument 1
					;Wait Repeat 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $95,$01			;CMD Portamento up
					;Wait Repeat 1
	db $30			;Note C-5
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $9b			;CMD End 
	db $e7			;Wait 40
	db $32			;Note D-5
	db $c7			;Wait 8
	db $2d			;Note A-4
	db $9b			;CMD End 
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_063:
	db $26			;Note D-4
	db $6c			;Volume 11
	db $72			;Instrument 1
	db $c7			;Wait 8
	db $28			;Note E-4
	db $cf			;Wait 16
	db $21			;Note A-3
					;Wait Repeat 16
	db $26			;Note D-4
					;Wait Repeat 16
	db $1c			;Note E-3
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_065:
	db $26			;Note D-4
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $26			;Note D-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $26			;Note D-4
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $23			;Note B-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $28			;Note E-4
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $26			;Note D-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $26			;Note D-4
	db $70			;Volume 15
	db $76			;Instrument 5
					;Wait Repeat 2
	db $28			;Note E-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $26			;Note D-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $23			;Note B-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $26			;Note D-4
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $28			;Note E-4
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $26			;Note D-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $26			;Note D-4
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $28			;Note E-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $26			;Note D-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $24			;Note C-4
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $28			;Note E-4
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $28			;Note E-4
	db $69			;Volume 8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_069:
	db $2b			;Note G-4
	db $6f			;Volume 14
	db $7f			;Instrument 14
	db $a9,$38			; SCC Set Waveform 13
	db $c1			;Wait 2
	db $66			;Volume 5
					;Wait Repeat 2
	db $2a			;Note F#4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2a			;Note F#4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2d			;Note A-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2a			;Note F#4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $28			;Note E-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2a			;Note F#4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2a			;Note F#4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $28			;Note E-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6d			;Volume 12
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2a			;Note F#4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6d			;Volume 12
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6d			;Volume 12
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2d			;Note A-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2a			;Note F#4
	db $6d			;Volume 12
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $28			;Note E-4
	db $6d			;Volume 12
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2a			;Note F#4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2a			;Note F#4
	db $6d			;Volume 12
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $28			;Note E-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6d			;Volume 12
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2a			;Note F#4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6d			;Volume 12
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_070:
	db $2d			;Note A-4
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $90,$02			;CMD Portamento tone
	db $f6			;Wait 55
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $a9,$20			; SCC Set Waveform 6
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_071:
	db $1e			;Note F#3
	db $6c			;Volume 11
	db $72			;Instrument 1
	db $cf			;Wait 16
	db $1f			;Note G-3
	db $df			;Wait 32
	db $1c			;Note E-3
	db $c7			;Wait 8
	db $23			;Note B-3
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_072:
	db $1e			;Note F#3
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $6d			;Volume 12
	db $c2			;Wait 3
	db $19			;Note C#3
	db $6d			;Volume 12
	db $71			;Instrument 0
	db $cb			;Wait 12
	db $14			;Note G#2
	db $6d			;Volume 12
	db $d7			;Wait 24
	db $12			;Note F#2
	db $c7			;Wait 8
	db $12			;Note F#2
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_073:
	db $22			;Note A#3
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $28			;Note E-4
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $22			;Note A#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $26			;Note D-4
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $28			;Note E-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $28			;Note E-4
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $26			;Note D-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $26			;Note D-4
	db $70			;Volume 15
	db $76			;Instrument 5
					;Wait Repeat 2
	db $28			;Note E-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $22			;Note A#3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $26			;Note D-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $26			;Note D-4
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $22			;Note A#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $28			;Note E-4
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $26			;Note D-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $26			;Note D-4
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $28			;Note E-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $22			;Note A#3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $26			;Note D-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $26			;Note D-4
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $22			;Note A#3
	db $69			;Volume 8
					;Wait Repeat 2
	db $28			;Note E-4
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $26			;Note D-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $26			;Note D-4
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $28			;Note E-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $28			;Note E-4
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $26			;Note D-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $26			;Note D-4
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $28			;Note E-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $22			;Note A#3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $26			;Note D-4
	db $69			;Volume 8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_076:
	db $0e			;Note D-2
	db $6f			;Volume 14
	db $7e			;Instrument 13
	db $a9,$00			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $1a			;Note D-3
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $1a			;Note D-3
					;Wait Repeat 4
	db $1a			;Note D-3
					;Wait Repeat 4
	db $1a			;Note D-3
					;Wait Repeat 4
	db $1a			;Note D-3
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $0e			;Note D-2
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $1a			;Note D-3
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $1a			;Note D-3
					;Wait Repeat 4
	db $15			;Note A-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_077:
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
	db $c1			;Wait 2
	db $66			;Volume 5
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2d			;Note A-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $29			;Note F-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $29			;Note F-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $29			;Note F-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $29			;Note F-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2d			;Note A-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $29			;Note F-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $29			;Note F-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2d			;Note A-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $29			;Note F-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $29			;Note F-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $29			;Note F-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $29			;Note F-4
	db $65			;Volume 4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_078:
	db $29			;Note F-4
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $2b			;Note G-4
					;Wait Repeat 4
	db $2d			;Note A-4
	db $c6			;Wait 7
	db $2d			;Note A-4
	db $6c			;Volume 11
	db $c8			;Wait 9
	db $2b			;Note G-4
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $d7			;Wait 24
	db $26			;Note D-4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_079:
	db $22			;Note A#3
	db $6c			;Volume 11
	db $72			;Instrument 1
	db $c6			;Wait 7
	db $29			;Note F-4
	db $69			;Volume 8
	db $7b			;Instrument 10
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $c4			;Wait 5
	db $1d			;Note F-3
	db $6c			;Volume 11
	db $72			;Instrument 1
	db $cf			;Wait 16
	db $1f			;Note G-3
					;Wait Repeat 16
	db $1a			;Note D-3
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_080:
	db $09			;Note A-1
	db $6d			;Volume 12
	db $75			;Instrument 4
	db $cf			;Wait 16
	db $6c			;Volume 11
	db $df			;Wait 32
	db $6b			;Volume 10
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_081:
	db $23			;Note B-3
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $23			;Note B-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $23			;Note B-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $70			;Volume 15
	db $76			;Instrument 5
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $23			;Note B-3
	db $6a			;Volume 9
					;Wait Repeat 2
	db $23			;Note B-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $23			;Note B-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $6f			;Volume 14
	db $76			;Instrument 5
					;Wait Repeat 2
	db $21			;Note A-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $21			;Note A-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $21			;Note A-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $21			;Note A-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $76			;Instrument 5
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_084:
	db $28			;Note E-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
	db $c1			;Wait 2
	db $66			;Volume 5
					;Wait Repeat 2
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $28			;Note E-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $28			;Note E-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $28			;Note E-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $28			;Note E-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $28			;Note E-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $65			;Volume 4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_085:
	db $26			;Note D-4
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $28			;Note E-4
	db $90,$02			;CMD Portamento tone
	db $de			;Wait 31
	db $24			;Note C-4
	db $cf			;Wait 16
	db $28			;Note E-4
	db $6d			;Volume 12
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_086:
	db $23			;Note B-3
	db $6f			;Volume 14
	db $72			;Instrument 1
	db $a9,$70			; SCC Set Waveform 25
	db $cf			;Wait 16
	db $20			;Note G#3
					;Wait Repeat 16
	db $23			;Note B-3
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_087:
	db $28			;Note E-4
	db $6f			;Volume 14
	db $72			;Instrument 1
	db $cf			;Wait 16
	db $24			;Note C-4
					;Wait Repeat 16
	db $28			;Note E-4
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_088:
	db $0a			;Note A#1
	db $6d			;Volume 12
	db $75			;Instrument 4
	db $cf			;Wait 16
	db $6c			;Volume 11
	db $df			;Wait 32
	db $6b			;Volume 10
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_089:
	db $28			;Note E-4
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $6f			;Volume 14
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $29			;Note F-4
	db $6f			;Volume 14
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6f			;Volume 14
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $32			;Note D-5
	db $70			;Volume 15
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $6f			;Volume 14
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6f			;Volume 14
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $6f			;Volume 14
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6f			;Volume 14
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $32			;Note D-5
	db $6e			;Volume 13
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $32			;Note D-5
	db $6e			;Volume 13
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 13
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $a1,$08			;CMD Track detune
	db $bf			;[End-Of-Track]
.track_092:
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $7f			;Instrument 14
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 2
	db $66			;Volume 5
					;Wait Repeat 2
	db $32			;Note D-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2d			;Note A-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $35			;Note F-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $32			;Note D-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $39			;Note A-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $35			;Note F-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $37			;Note G-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $39			;Note A-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $35			;Note F-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $37			;Note G-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $35			;Note F-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $32			;Note D-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $34			;Note E-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $32			;Note D-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $35			;Note F-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $34			;Note E-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $35			;Note F-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $35			;Note F-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $34			;Note E-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $39			;Note A-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $35			;Note F-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $35			;Note F-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $39			;Note A-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $35			;Note F-5
	db $65			;Volume 4
					;Wait Repeat 2
	db $32			;Note D-5
	db $6b			;Volume 10
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $34			;Note E-5
	db $65			;Volume 4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_093:
	db $29			;Note F-4
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $90,$02			;CMD Portamento tone
	db $d6			;Wait 23
	db $21			;Note A-3
	db $68			;Volume 7
	db $a9,$50			; SCC Set Waveform 17
	db $cf			;Wait 16
	db $1a			;Note D-3
					;Wait Repeat 16
	db $1f			;Note G-3
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_094:
	db $1f			;Note G-3
	db $70			;Volume 15
	db $72			;Instrument 1
	db $a9,$58			; SCC Set Waveform 18
	db $cf			;Wait 16
	db $21			;Note A-3
					;Wait Repeat 16
	db $1a			;Note D-3
					;Wait Repeat 16
	db $1f			;Note G-3
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_095:
	db $26			;Note D-4
	db $6b			;Volume 10
	db $72			;Instrument 1
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_096:
	db $1c			;Note E-3
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $6d			;Volume 12
	db $db			;Wait 28
	db $1c			;Note E-3
	db $6d			;Volume 12
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $6c			;Volume 11
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_097:
	db $3c			;Note C-6
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $a1,$08			;CMD Track detune
	db $c3			;Wait 4
	db $34			;Note E-5
	db $c3			;Wait 4
	db $4c			;Note E-7
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4a			;Note D-7
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $4c			;Note E-7
	db $6b			;Volume 10
					;Wait Repeat 2
	db $48			;Note C-7
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $4a			;Note D-7
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $48			;Note C-7
	db $c9			;Wait 10
	db $40			;Note E-6
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $43			;Note G-6
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $48			;Note C-7
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $43			;Note G-6
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4a			;Note D-7
	db $6e			;Volume 13
					;Wait Repeat 2
	db $48			;Note C-7
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4c			;Note E-7
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $4a			;Note D-7
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $4c			;Note E-7
	db $c9			;Wait 10
	db $bf			;[End-Of-Track]
.track_100:
	db $09			;Note A-1
	db $6f			;Volume 14
	db $7e			;Instrument 13
	db $a9,$00			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $15			;Note A-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $15			;Note A-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
	db $c3			;Wait 4
	db $07			;Note G-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $13			;Note G-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $13			;Note G-2
	db $c3			;Wait 4
	db $13			;Note G-2
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $07			;Note G-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $13			;Note G-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $13			;Note G-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_101:
	db $1c			;Note E-3
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $a9,$20			; SCC Set Waveform 6
	db $c4			;Wait 5
	db $94,$26		;CMD Vibrato
	db $da			;Wait 27
	db $18			;Note C-3
	db $6b			;Volume 10
	db $9b			;CMD End 
	db $cf			;Wait 16
	db $1c			;Note E-3
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_102:
	db $30			;Note C-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $a9,$38			; SCC Set Waveform 13
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $34			;Note E-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $cb			;Wait 12
	db $28			;Note E-4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2f			;Note B-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $28			;Note E-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $30			;Note C-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $2f			;Note B-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $30			;Note C-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $cf			;Wait 16
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $32			;Note D-5
	db $69			;Volume 8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_103:
	db $34			;Note E-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $cb			;Wait 12
	db $2f			;Note B-4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $cf			;Wait 16
	db $32			;Note D-5
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_104:
	db $1c			;Note E-3
	db $6d			;Volume 12
	db $71			;Instrument 0
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $6c			;Volume 11
	db $db			;Wait 28
	db $11			;Note F-2
	db $6c			;Volume 11
	db $75			;Instrument 4
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_105:
	db $42			;Note F#6
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $a1,$08			;CMD Track detune
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $c1			;Wait 2
	db $42			;Note F#6
	db $69			;Volume 8
					;Wait Repeat 2
	db $3e			;Note D-6
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $3e			;Note D-6
	db $69			;Volume 8
					;Wait Repeat 2
	db $42			;Note F#6
	db $68			;Volume 7
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $3e			;Note D-6
	db $69			;Volume 8
					;Wait Repeat 2
	db $4a			;Note D-7
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $42			;Note F#6
	db $6a			;Volume 9
					;Wait Repeat 2
	db $45			;Note A-6
	db $6e			;Volume 13
					;Wait Repeat 2
	db $4a			;Note D-7
	db $6a			;Volume 9
					;Wait Repeat 2
	db $45			;Note A-6
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $45			;Note A-6
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $45			;Note A-6
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $6e			;Volume 13
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $45			;Note A-6
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $6a			;Volume 9
					;Wait Repeat 2
	db $41			;Note F-6
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $45			;Note A-6
	db $6a			;Volume 9
					;Wait Repeat 2
	db $3e			;Note D-6
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $41			;Note F-6
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4d			;Note F-7
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $3e			;Note D-6
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4c			;Note E-7
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $4d			;Note F-7
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4a			;Note D-7
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $4c			;Note E-7
	db $6a			;Volume 9
					;Wait Repeat 2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $4a			;Note D-7
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_108:
	db $06			;Note F#1
	db $6f			;Volume 14
	db $7e			;Instrument 13
	db $a9,$00			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $12			;Note F#2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $12			;Note F#2
	db $c3			;Wait 4
	db $12			;Note F#2
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $06			;Note F#1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $12			;Note F#2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $12			;Note F#2
					;Wait Repeat 4
	db $12			;Note F#2
	db $c3			;Wait 4
	db $05			;Note F-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $11			;Note F-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $11			;Note F-2
	db $c3			;Wait 4
	db $11			;Note F-2
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $05			;Note F-1
	db $6f			;Volume 14
	db $a9,$00			; SCC Set Waveform 1
					;Wait Repeat 4
	db $11			;Note F-2
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 18
					;Wait Repeat 4
	db $11			;Note F-2
					;Wait Repeat 4
	db $11			;Note F-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_109:
	db $1a			;Note D-3
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
	db $d7			;Wait 24
	db $11			;Note F-2
	db $c3			;Wait 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $1a			;Note D-3
	db $cf			;Wait 16
	db $30			;Note C-5
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $32			;Note D-5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_110:
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $a9,$38			; SCC Set Waveform 13
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $2a			;Note F#4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $32			;Note D-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $2a			;Note F#4
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $cd			;Wait 14
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $c5			;Wait 6
	db $32			;Note D-5
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $35			;Note F-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $d5			;Wait 22
	db $30			;Note C-5
	db $69			;Volume 8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_111:
	db $32			;Note D-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $cd			;Wait 14
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $c5			;Wait 6
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $cf			;Wait 16
	db $30			;Note C-5
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_112:
	db $17			;Note B-2
	db $6c			;Volume 11
	db $75			;Instrument 4
	db $c4			;Wait 5
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $67			;Volume 6
	db $c3			;Wait 4
	db $66			;Volume 5
	db $c2			;Wait 3
	db $65			;Volume 4
					;Wait Repeat 3
	db $64			;Volume 3
					;Wait Repeat 3
	db $63			;Volume 2
					;Wait Repeat 3
	db $60			;Release 96
	db $62			;Volume 1
	db $e2			;Wait 35
	db $bf			;[End-Of-Track]
.track_113:
	db $c2			;Wait 3
	db $34			;Note E-5
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $db			;Wait 28
	db $32			;Note D-5
	db $c3			;Wait 4
	db $34			;Note E-5
	db $c7			;Wait 8
	db $37			;Note G-5
					;Wait Repeat 8
	db $39			;Note A-5
					;Wait Repeat 8
	db $3c			;Note C-6
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_116:
	db $34			;Note E-5
	db $70			;Volume 15
	db $7b			;Instrument 10
	db $a9,$78			; SCC Set Waveform 27
	db $db			;Wait 28
	db $32			;Note D-5
	db $c3			;Wait 4
	db $34			;Note E-5
	db $c7			;Wait 8
	db $37			;Note G-5
					;Wait Repeat 8
	db $39			;Note A-5
					;Wait Repeat 8
	db $3c			;Note C-6
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_117:
	db $1c			;Note E-3
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $cb			;Wait 12
	db $1c			;Note E-3
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $1e			;Note F#3
	db $6c			;Volume 11
	db $cb			;Wait 12
	db $2a			;Note F#4
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $a9,$48			; SCC Set Waveform 16
	db $c7			;Wait 8
	db $2f			;Note B-4
					;Wait Repeat 8
	db $30			;Note C-5
					;Wait Repeat 8
	db $34			;Note E-5
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_118:
	db $21			;Note A-3
	db $6c			;Volume 11
	db $72			;Instrument 1
	db $cb			;Wait 12
	db $21			;Note A-3
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $23			;Note B-3
	db $6b			;Volume 10
	db $cb			;Wait 12
	db $2f			;Note B-4
	db $6a			;Volume 9
	db $a9,$10			; SCC Set Waveform 4
	db $c3			;Wait 4
	db $30			;Note C-5
	db $a9,$10			; SCC Set Waveform 4
	db $c7			;Wait 8
	db $34			;Note E-5
					;Wait Repeat 8
	db $35			;Note F-5
					;Wait Repeat 8
	db $39			;Note A-5
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_119:
	db $24			;Note C-4
	db $6c			;Volume 11
	db $72			;Instrument 1
	db $cb			;Wait 12
	db $24			;Note C-4
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6b			;Volume 10
	db $cb			;Wait 12
	db $32			;Note D-5
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $34			;Note E-5
	db $c7			;Wait 8
	db $37			;Note G-5
					;Wait Repeat 8
	db $39			;Note A-5
					;Wait Repeat 8
	db $3c			;Note C-6
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_120:
	db $c5			;Wait 6
	db $40			;Note E-6
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $3b			;Note B-5
					;Wait Repeat 4
	db $39			;Note A-5
					;Wait Repeat 4
	db $34			;Note E-5
					;Wait Repeat 4
	db $2f			;Note B-4
					;Wait Repeat 4
	db $2d			;Note A-4
					;Wait Repeat 4
	db $28			;Note E-4
					;Wait Repeat 4
	db $23			;Note B-3
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $6c			;Volume 11
					;Wait Repeat 4
	db $29			;Note F-4
					;Wait Repeat 4
	db $28			;Note E-4
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $27			;Note D#4
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_121:
	db $40			;Note E-6
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $3b			;Note B-5
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $39			;Note A-5
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $34			;Note E-5
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $2f			;Note B-4
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $2d			;Note A-4
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $28			;Note E-4
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $39			;Note A-5
	db $6c			;Volume 11
	db $75			;Instrument 4
					;Wait Repeat 2
	db $6b			;Volume 10
	db $da			;Wait 27
	db $28			;Note E-4
	db $7c			;Instrument 11
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_124:
	db $40			;Note E-6
	db $70			;Volume 15
	db $7b			;Instrument 10
	db $a1,$08			;CMD Track detune
	db $c3			;Wait 4
	db $94,$14		;CMD Vibrato
	db $d9			;Wait 26
	db $a1,$00			;CMD Track detune
	db $c0			;Wait 1
	db $9b			;CMD End 
					;Wait Repeat 1
	db $1d			;Note F-3
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $a9,$30			; SCC Set Waveform 9
	db $c4			;Wait 5
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $6e			;Volume 13
	db $c0			;Wait 1
	db $6d			;Volume 12
					;Wait Repeat 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $1b			;Note D#3
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $6e			;Volume 13
	db $c0			;Wait 1
	db $6d			;Volume 12
					;Wait Repeat 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6b			;Volume 10
	db $c6			;Wait 7
	db $2f			;Note B-4
	db $6e			;Volume 13
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_125:
	db $39			;Note A-5
	db $6b			;Volume 10
	db $72			;Instrument 1
	db $a1,$08			;CMD Track detune
	db $df			;Wait 32
	db $2d			;Note A-4
	db $6d			;Volume 12
	db $7f			;Instrument 14
	db $c3			;Wait 4
	db $29			;Note F-4
					;Wait Repeat 4
	db $28			;Note E-4
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $27			;Note D#4
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_126:
	db $3b			;Note B-5
	db $6b			;Volume 10
	db $72			;Instrument 1
	db $a1,$08			;CMD Track detune
	db $df			;Wait 32
	db $3c			;Note C-6
	db $6a			;Volume 9
	db $de			;Wait 31
	db $39			;Note A-5
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $bf			;[End-Of-Track]
.track_127:
	db $40			;Note E-6
	db $6b			;Volume 10
	db $72			;Instrument 1
	db $a1,$08			;CMD Track detune
	db $df			;Wait 32
	db $41			;Note F-6
	db $6a			;Volume 9
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_133:
	db $39			;Note A-5
	db $69			;Volume 8
	db $72			;Instrument 1
	db $a1,$08			;CMD Track detune
	db $c7			;Wait 8
	db $47			;Note B-6
	db $68			;Volume 7
	db $77			;Instrument 6
	db $a9,$40			; SCC Set Waveform 15
	db $c0			;Wait 1
	db $a8				; SCC Soften Waveform
					;Wait Repeat 1
	db $66			;Volume 5
	db $c1			;Wait 2
	db $48			;Note C-7
	db $c3			;Wait 4
	db $4a			;Note D-7
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $45			;Note A-6
	db $c3			;Wait 4
	db $47			;Note B-6
	db $67			;Volume 6
					;Wait Repeat 4
	db $45			;Note A-6
					;Wait Repeat 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $45			;Note A-6
					;Wait Repeat 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $45			;Note A-6
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_134:
	db $3b			;Note B-5
	db $6a			;Volume 9
	db $72			;Instrument 1
	db $a1,$08			;CMD Track detune
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a9,$68			; SCC Set Waveform 20
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
	db $78			;Instrument 7
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $26			;Note D-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $23			;Note B-3
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $21			;Note A-3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_135:
	db $40			;Note E-6
	db $6a			;Volume 9
	db $72			;Instrument 1
	db $a1,$08			;CMD Track detune
	db $ca			;Wait 11
	db $23			;Note B-3
	db $66			;Volume 5
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $26			;Note D-4
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $21			;Note A-3
	db $c3			;Wait 4
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $21			;Note A-3
	db $bf			;[End-Of-Track]

