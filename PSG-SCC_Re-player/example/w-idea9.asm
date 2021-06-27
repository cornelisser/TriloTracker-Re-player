; Song: MoG2- World IDEA 9              
; By:   Gryzor87 (c)2021                

; [ Song start data ]
	db $05					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_002, .track_002, .track_004, .track_005, .track_006, .track_007	; Step:001 Pattern:000
.restart:
	dw .track_008, .track_009, .track_002, .track_002, .track_012, .track_013, .track_014, .track_015	; Step:002 Pattern:001
	dw .track_016, .track_009, .track_002, .track_002, .track_020, .track_021, .track_022, .track_023	; Step:003 Pattern:002
	dw .track_024, .track_025, .track_002, .track_002, .track_028, .track_029, .track_030, .track_031	; Step:004 Pattern:003
	dw .track_032, .track_033, .track_002, .track_002, .track_036, .track_037, .track_038, .track_039	; Step:005 Pattern:004
	dw .track_032, .track_041, .track_002, .track_002, .track_044, .track_045, .track_046, .track_047	; Step:006 Pattern:005
	dw .track_032, .track_049, .track_002, .track_002, .track_052, .track_053, .track_054, .track_055	; Step:007 Pattern:006
	dw .track_008, .track_057, .track_002, .track_002, .track_060, .track_061, .track_062, .track_063	; Step:008 Pattern:007
	dw .track_064, .track_065, .track_066, .track_066, .track_068, .track_069, .track_070, .track_071	; Step:009 Pattern:008
	dw .track_072, .track_009, .track_002, .track_002, .track_020, .track_077, .track_022, .track_023	; Step:010 Pattern:009
	dw .track_016, .track_081, .track_002, .track_002, .track_084, .track_085, .track_086, .track_087	; Step:011 Pattern:010
	dw .track_024, .track_089, .track_002, .track_002, .track_092, .track_093, .track_094, .track_095	; Step:012 Pattern:011
	dw .track_024, .track_097, .track_002, .track_002, .track_100, .track_101, .track_102, .track_103	; Step:013 Pattern:012
	dw .track_024, .track_105, .track_002, .track_002, .track_108, .track_109, .track_110, .track_111	; Step:014 Pattern:013
	dw .track_112, .track_113, .track_002, .track_002, .track_116, .track_117, .track_118, .track_119	; Step:015 Pattern:014
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00				; Waveform:0
	db $80, $b0, $c0, $10, $1a, $2a, $2c, $1a, $00, $e0, $d0, $e0, $22, $53, $70, $75, $70, $31, $ea, $80, $88, $8a, $8c, $8e, $00, $7f, $75, $73, $62, $00, $c0, $90				; Waveform:1
	db $a0, $90, $a0, $ac, $f0, $a0, $16, $00, $90, $00, $20, $40, $60, $50, $38, $1c, $f2, $e2, $d6, $d0, $d0, $da, $dc, $e0, $e2, $e2, $e2, $e0, $dc, $d8, $d0, $b0				; Waveform:7
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0, $00, $10, $20, $30, $40, $50, $60, $70				; Waveform:8
	db $00, $f8, $e8, $d8, $c8, $b8, $ac, $9c, $90, $8c, $8a, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $77, $68, $58, $48, $38, $28, $18, $08				; Waveform:9
	db $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1, $c1				; Waveform:11
	db $28, $58, $58, $28, $00, $00, $18, $48, $68, $78, $68, $38, $e8, $d8, $e0, $00, $20, $20, $10, $c0, $a0, $90, $a0, $c0, $00, $00, $d0, $b0, $b0, $d0, $00, $00				; Waveform:13
	db $27, $5f, $4f, $4f, $5f, $67, $7f, $7f, $6f, $6f, $7f, $6f, $5f, $4f, $67, $5f, $37, $e7, $d7, $c7, $d7, $ff, $e7, $cf, $c7, $c7, $bf, $97, $87, $af, $d7, $ff				; Waveform:18
	db $90, $d0, $20, $0c, $bc, $aa, $e6, $dc, $bc, $e3, $40, $30, $e0, $d0, $10, $06, $e4, $0c, $70, $50, $e0, $d0, $10, $00, $d0, $f0, $40, $20, $c4, $c0, $f0, $90				; Waveform:19
	db $00, $68, $48, $18, $48, $68, $28, $00, $48, $77, $58, $08, $28, $38, $00, $b8, $08, $58, $00, $e8, $f8, $00, $b8, $98, $c8, $08, $e8, $a8, $c8, $f8, $c8, $a8				; Waveform:20
	db $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20, $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20				; Waveform:22
	db $30, $60, $78, $68, $48, $38, $48, $58, $48, $38, $20, $18, $20, $58, $40, $20, $e0, $b0, $80, $88, $a0, $c0, $b4, $a8, $b4, $d0, $e8, $d8, $c8, $b8, $a8, $d0				; Waveform:25
	db $08, $20, $48, $68, $7f, $30, $08, $30, $60, $70, $7f, $28, $b8, $80, $c8, $20, $f8, $c8, $b8, $c0, $d0, $c8, $d8, $e0, $00, $e0, $d0, $b8, $c8, $e0, $f0, $00				; Waveform:28
	db $07, $57, $37, $4f, $27, $e7, $9f, $2f, $6f, $b7, $ff, $e7, $1f, $ff, $4f, $d7, $e7, $ff, $f7, $df, $f7, $67, $47, $d7, $1f, $97, $b7, $e7, $d7, $c7, $f7, $ff				; Waveform:31

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; BD C2           
	dw .instrument_01				; SD A3           
	dw .instrument_02				; HH CL A8        
	dw .instrument_03				; TOM             
	dw .instrument_04				; GTR CHORDS      
	dw .instrument_05				; SC String solo  
	dw .instrument_06				; SC Bass         
	dw .instrument_07				; SC Brass Satan  
	dw .instrument_08				; PGS String snake
	dw .instrument_09				; Staccato BASS   
	dw .instrument_10				; ARP SQ          
	dw .instrument_11				; Piano tremolo   
	dw .instrument_12				; Piano Tremolo HI
	dw .instrument_13				; Response BELL   
	dw .instrument_14				; HH OP A8        
	dw .instrument_15				; SD-MAIN         
	dw .instrument_16				; SD-Roll         

.instrument_00:					; BD C2           
	db $28							; Waveform 5
	db $1c							; Info byte: 00011100
	db $0f							; Volume _
	dw $ffc0							; Tone
	db $1c							; Info byte: 00011100
	db $0f							; Volume _
	dw $ffc0							; Tone
.rst_i00:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i00						; Loop address
.instrument_01:					; SD A3           
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
.rst_i01:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i01						; Loop address
.instrument_02:					; HH CL A8        
	db $10							; Waveform 2
	db $d4							; Info byte: 11010100
	db $0f							; Volume _
	db $00							; Noise _
.rst_i02:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i02						; Loop address
.instrument_03:					; TOM             
	db $50							; Waveform 10
	db $1c							; Info byte: 00011100
	db $0f							; Volume _
	dw $0040							; Tone
	db $1c							; Info byte: 00011100
	db $0d							; Volume _
	dw $0040							; Tone
.rst_i03:
	db $1e							; Info byte: 00011110
	db $ff							; Volume -
	dw $0040							; Tone
	db $18							; Info byte: 00011000
	dw $0040							; Tone
	db $19							; Info byte: 00011001
	dw $0040							; Tone
	dw .rst_i03						; Loop address
.instrument_04:					; GTR CHORDS      
	db $68							; Waveform 13
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
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
	db $04							; Volume _
	db $14							; Info byte: 00010100
	db $05							; Volume _
.rst_i04:
	db $15							; Info byte: 00010101
	db $07							; Volume _
	dw .rst_i04						; Loop address
.instrument_05:					; SC String solo  
	db $38							; Waveform 7
	db $14							; Info byte: 00010100
	db $08							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $08							; Volume _
.rst_i05:
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
	dw .rst_i05						; Loop address
.instrument_06:					; SC Bass         
	db $08							; Waveform 1
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i06:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i06						; Loop address
.instrument_07:					; SC Brass Satan  
	db $20							; Waveform 4
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
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
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
	db $14							; Info byte: 00010100
	db $06							; Volume _
.rst_i07:
	db $15							; Info byte: 00010101
	db $05							; Volume _
	dw .rst_i07						; Loop address
.instrument_08:					; PGS String snake
	db $60							; Waveform 12
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
.rst_i08:
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
	dw .rst_i08						; Loop address
.instrument_09:					; Staccato BASS   
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
.rst_i09:
	db $01							; Info byte: 00000001
	dw .rst_i09						; Loop address
.instrument_10:					; ARP SQ          
	db $40							; Waveform 8
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
	db $14							; Info byte: 00010100
	db $08							; Volume _
.rst_i10:
	db $01							; Info byte: 00000001
	dw .rst_i10						; Loop address
.instrument_11:					; Piano tremolo   
	db $48							; Waveform 9
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i11:
	db $15							; Info byte: 00010101
	db $08							; Volume _
	dw .rst_i11						; Loop address
.instrument_12:					; Piano Tremolo HI
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
.rst_i12:
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
	dw .rst_i12						; Loop address
.instrument_13:					; Response BELL   
	db $30							; Waveform 6
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
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
	db $0e							; Volume _
	db $00							; Noise _
.rst_i14:
	db $d6							; Info byte: 11010110
	db $ff							; Volume -
	db $00							; Noise _
	db $d0							; Info byte: 11010000
	db $00							; Noise _
	db $d0							; Info byte: 11010000
	db $00							; Noise _
	db $d1							; Info byte: 11010001
	db $00							; Noise _
	dw .rst_i14						; Loop address
.instrument_15:					; SD-MAIN         
	db $00							; Waveform 0
	db $1c							; Info byte: 00011100
	db $0e							; Volume _
	dw $0050							; Tone
	db $c4							; Info byte: 11000100
	db $0c							; Volume _
	db $08							; Noise _
	db $c4							; Info byte: 11000100
	db $0b							; Volume _
	db $08							; Noise _
	db $c4							; Info byte: 11000100
	db $0a							; Volume _
	db $08							; Noise _
	db $c4							; Info byte: 11000100
	db $09							; Volume _
	db $08							; Noise _
	db $c4							; Info byte: 11000100
	db $08							; Volume _
	db $08							; Noise _
	db $c4							; Info byte: 11000100
	db $07							; Volume _
	db $08							; Noise _
	db $c4							; Info byte: 11000100
	db $06							; Volume _
	db $08							; Noise _
	db $c4							; Info byte: 11000100
	db $05							; Volume _
	db $08							; Noise _
	db $c4							; Info byte: 11000100
	db $04							; Volume _
	db $08							; Noise _
.rst_i15:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i15						; Loop address
.instrument_16:					; SD-Roll         
	db $00							; Waveform 0
.rst_i16:
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $c4							; Info byte: 11000100
	db $0d							; Volume _
	db $07							; Noise _
	db $c5							; Info byte: 11000101
	db $0b							; Volume _
	db $07							; Noise _
	dw .rst_i16						; Loop address

; [ Song track data ]
.track_000:
	db $21			;Note A-3
	db $6f			;Volume 14
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $18			;Note C-3
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $18			;Note C-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $81			;Instrument 16
	db $c1			;Wait 2
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7f			;Instrument 14
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6f			;Volume 14
	db $72			;Instrument 1
					;Wait Repeat 4
	db $21			;Note A-3
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $28			;Note E-4
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $a5,$4d		;CMD Envelope multiplier
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_001:
	db $15			;Note A-2
	db $70			;Volume 15
	db $7a			;Instrument 9
	db $c1			;Wait 2
	db $13			;Note G-2
	db $6f			;Volume 14
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $16			;Note A#2
	db $c1			;Wait 2
	db $18			;Note C-3
	db $70			;Volume 15
					;Wait Repeat 2
	db $16			;Note A#2
	db $6f			;Volume 14
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $70			;Volume 15
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $22			;Note A#3
	db $c1			;Wait 2
	db $43			;Note G-6
	db $6e			;Volume 13
	db $7e			;Instrument 13
	db $a1,$08			;CMD Track detune
	db $c3			;Wait 4
	db $4f			;Note G-7
					;Wait Repeat 4
	db $45			;Note A-6
					;Wait Repeat 4
	db $51			;Note A-7
					;Wait Repeat 4
	db $46			;Note A#6
					;Wait Repeat 4
	db $52			;Note A#7
	db $c3			;Wait 4
	db $46			;Note A#6
	db $6f			;Volume 14
	db $7b			;Instrument 10
	db $c0			;Wait 1
	db $44			;Note G#6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $41			;Note F-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $40			;Note E-6
	db $6e			;Volume 13
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $3a			;Note A#5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_002:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_004:
	db $09			;Note A-1
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $09			;Note A-1
	db $c1			;Wait 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $09			;Note A-1
	db $c1			;Wait 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $05			;Note F-1
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $05			;Note F-1
					;Wait Repeat 2
	db $05			;Note F-1
					;Wait Repeat 2
	db $04			;Note E-1
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $04			;Note E-1
					;Wait Repeat 2
	db $04			;Note E-1
					;Wait Repeat 2
	db $10			;Note E-2
	db $c3			;Wait 4
	db $04			;Note E-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_005:
	db $21			;Note A-3
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $cd			;Wait 14
	db $21			;Note A-3
	db $c1			;Wait 2
	db $22			;Note A#3
	db $cd			;Wait 14
	db $22			;Note A#3
	db $c1			;Wait 2
	db $22			;Note A#3
	db $c7			;Wait 8
	db $21			;Note A-3
					;Wait Repeat 8
	db $26			;Note D-4
	db $c7			;Wait 8
	db $29			;Note F-4
	db $6c			;Volume 11
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_006:
	db $24			;Note C-4
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $cd			;Wait 14
	db $24			;Note C-4
	db $c1			;Wait 2
	db $26			;Note D-4
	db $cd			;Wait 14
	db $26			;Note D-4
	db $c1			;Wait 2
	db $26			;Note D-4
	db $c7			;Wait 8
	db $26			;Note D-4
					;Wait Repeat 8
	db $29			;Note F-4
	db $c7			;Wait 8
	db $2e			;Note A#4
	db $6c			;Volume 11
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_007:
	db $28			;Note E-4
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c5			;Wait 6
	db $94,$87		;CMD Vibrato
	db $c7			;Wait 8
	db $28			;Note E-4
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $29			;Note F-4
	db $c4			;Wait 5
	db $94,$97		;CMD Vibrato
	db $c8			;Wait 9
	db $29			;Note F-4
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c7			;Wait 8
	db $2d			;Note A-4
					;Wait Repeat 8
	db $2e			;Note A#4
	db $c7			;Wait 8
	db $32			;Note D-5
	db $6c			;Volume 11
	db $c2			;Wait 3
	db $94,$77		;CMD Vibrato
	db $c3			;Wait 4
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_008:
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
					;Wait Repeat 1
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
					;Wait Repeat 1
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_009:
	db $09			;Note A-1
	db $6d			;Volume 12
	db $79			;Instrument 8
	db $a1,$0f			;CMD Track detune
	db $c3			;Wait 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $0c			;Note C-2
	db $c7			;Wait 8
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $0e			;Note D-2
	db $c7			;Wait 8
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $0f			;Note D#2
	db $c7			;Wait 8
	db $0e			;Note D-2
					;Wait Repeat 8
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_012:
	db $09			;Note A-1
	db $70			;Volume 15
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $09			;Note A-1
	db $6e			;Volume 13
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $0c			;Note C-2
	db $c7			;Wait 8
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $0e			;Note D-2
	db $c7			;Wait 8
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $10			;Note E-2
	db $c3			;Wait 4
	db $0f			;Note D#2
	db $c7			;Wait 8
	db $0e			;Note D-2
					;Wait Repeat 8
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_013:
	db $38			;Note G#5
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a9,$40			; SCC Set Waveform 19
	db $c0			;Wait 1
	db $39			;Note A-5
	db $90,$20			;CMD Portamento tone
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $38			;Note G#5
	db $6d			;Volume 12
	db $a8				; SCC Soften Waveform
	db $c0			;Wait 1
	db $39			;Note A-5
	db $90,$20			;CMD Portamento tone
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $38			;Note G#5
	db $68			;Volume 7
	db $a8				; SCC Soften Waveform
	db $c0			;Wait 1
	db $39			;Note A-5
	db $90,$20			;CMD Portamento tone
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $38			;Note G#5
	db $67			;Volume 6
	db $a8				; SCC Soften Waveform
	db $c0			;Wait 1
	db $39			;Note A-5
	db $90,$20			;CMD Portamento tone
					;Wait Repeat 1
	db $60			;Release 96
	db $f0			;Wait 49
	db $a1,$08			;CMD Track detune
	db $bf			;[End-Of-Track]
.track_014:
	db $32			;Note D-5
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $c1			;Wait 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $13			;Note G-2
	db $c7			;Wait 8
	db $10			;Note E-2
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $15			;Note A-2
	db $c7			;Wait 8
	db $10			;Note E-2
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $17			;Note B-2
	db $c3			;Wait 4
	db $16			;Note A#2
	db $c7			;Wait 8
	db $15			;Note A-2
					;Wait Repeat 8
	db $13			;Note G-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_015:
	db $34			;Note E-5
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $a1,$04			;CMD Track detune
	db $c1			;Wait 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $18			;Note C-3
	db $c7			;Wait 8
	db $15			;Note A-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $c1			;Wait 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $1a			;Note D-3
	db $c7			;Wait 8
	db $15			;Note A-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $c1			;Wait 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c3			;Wait 4
	db $1b			;Note D#3
	db $c7			;Wait 8
	db $1a			;Note D-3
					;Wait Repeat 8
	db $18			;Note C-3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_016:
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
					;Wait Repeat 1
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
					;Wait Repeat 1
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6f			;Volume 14
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $27			;Note D#4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $27			;Note D#4
	db $6d			;Volume 12
					;Wait Repeat 2
	db $26			;Note D-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $22			;Note A#3
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $a5,$4d		;CMD Envelope multiplier
	db $bf			;[End-Of-Track]
.track_020:
	db $09			;Note A-1
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $0c			;Note C-2
	db $c7			;Wait 8
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $0e			;Note D-2
	db $c7			;Wait 8
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $10			;Note E-2
	db $c3			;Wait 4
	db $0f			;Note D#2
	db $c7			;Wait 8
	db $0e			;Note D-2
					;Wait Repeat 8
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_021:
	db $39			;Note A-5
	db $6d			;Volume 12
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 19
	db $c1			;Wait 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $40			;Note E-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $40			;Note E-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $40			;Note E-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $67			;Volume 6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $40			;Note E-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $66			;Volume 5
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $60			;Release 96
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_022:
	db $10			;Note E-2
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $13			;Note G-2
	db $c7			;Wait 8
	db $10			;Note E-2
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $15			;Note A-2
	db $c7			;Wait 8
	db $10			;Note E-2
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $17			;Note B-2
	db $c3			;Wait 4
	db $16			;Note A#2
	db $6a			;Volume 9
	db $c7			;Wait 8
	db $15			;Note A-2
	db $69			;Volume 8
					;Wait Repeat 8
	db $13			;Note G-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_023:
	db $15			;Note A-2
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $18			;Note C-3
	db $c7			;Wait 8
	db $15			;Note A-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $c1			;Wait 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $1a			;Note D-3
	db $c7			;Wait 8
	db $15			;Note A-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $c1			;Wait 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c3			;Wait 4
	db $1b			;Note D#3
	db $6a			;Volume 9
	db $c7			;Wait 8
	db $1a			;Note D-3
	db $69			;Volume 8
					;Wait Repeat 8
	db $18			;Note C-3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_024:
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
					;Wait Repeat 1
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $a5,$4d		;CMD Envelope multiplier
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
					;Wait Repeat 2
	db $26			;Note D-4
	db $6d			;Volume 12
	db $72			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $26			;Note D-4
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c0			;Wait 1
	db $a5,$20		;CMD Envelope multiplier
					;Wait Repeat 1
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c1			;Wait 2
	db $26			;Note D-4
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c2			;Wait 3
	db $a5,$4d		;CMD Envelope multiplier
	db $c0			;Wait 1
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
					;Wait Repeat 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $26			;Note D-4
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
					;Wait Repeat 1
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7f			;Instrument 14
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_025:
	db $21			;Note A-3
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $2a			;Note F#4
	db $c1			;Wait 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $26			;Note D-4
	db $c3			;Wait 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $2b			;Note G-4
	db $70			;Volume 15
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $29			;Note F-4
					;Wait Repeat 4
	db $28			;Note E-4
					;Wait Repeat 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_028:
	db $09			;Note A-1
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $09			;Note A-1
	db $c1			;Wait 2
	db $09			;Note A-1
	db $c2			;Wait 3
	db $60			;Release 96
					;Wait Repeat 3
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $15			;Note A-2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $1a			;Note D-3
	db $c4			;Wait 5
	db $92,$20			;CMD Portamento down
	db $c2			;Wait 3
	db $18			;Note C-3
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $13			;Note G-2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $0c			;Note C-2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c4			;Wait 5
	db $07			;Note G-1
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $07			;Note G-1
	db $c3			;Wait 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $13			;Note G-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_029:
	db $1c			;Note E-3
	db $6e			;Volume 13
	db $7d			;Instrument 12
	db $c4			;Wait 5
	db $60			;Release 96
	db $c2			;Wait 3
	db $1f			;Note G-3
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $28			;Note E-4
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $6c			;Volume 11
	db $a9,$40			; SCC Set Waveform 19
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2a			;Note F#4
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $26			;Note D-4
					;Wait Repeat 4
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $29			;Note F-4
	db $c3			;Wait 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $2b			;Note G-4
					;Wait Repeat 4
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c7			;Wait 8
	db $26			;Note D-4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_030:
	db $21			;Note A-3
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c4			;Wait 5
	db $60			;Release 96
	db $c2			;Wait 3
	db $28			;Note E-4
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $70			;Volume 15
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $26			;Note D-4
	db $c4			;Wait 5
	db $60			;Release 96
	db $c2			;Wait 3
	db $29			;Note F-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $24			;Note C-4
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $27			;Note D#4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $22			;Note A#3
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $1f			;Note G-3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_031:
	db $19			;Note C#3
	db $67			;Volume 6
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $a1,$01			;CMD Track detune
	db $c6			;Wait 7
	db $28			;Note E-4
	db $c3			;Wait 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $26			;Note D-4
	db $c4			;Wait 5
	db $60			;Release 96
	db $c2			;Wait 3
	db $29			;Note F-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $24			;Note C-4
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $27			;Note D#4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $22			;Note A#3
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $1f			;Note G-3
	db $bf			;[End-Of-Track]
.track_032:
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
					;Wait Repeat 1
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $a5,$52		;CMD Envelope multiplier
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
					;Wait Repeat 2
	db $26			;Note D-4
	db $6d			;Volume 12
	db $72			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $26			;Note D-4
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c0			;Wait 1
	db $a5,$20		;CMD Envelope multiplier
					;Wait Repeat 1
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c1			;Wait 2
	db $26			;Note D-4
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c2			;Wait 3
	db $a5,$4d		;CMD Envelope multiplier
	db $c0			;Wait 1
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
					;Wait Repeat 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $26			;Note D-4
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
					;Wait Repeat 1
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7f			;Instrument 14
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_033:
	db $21			;Note A-3
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $2a			;Note F#4
	db $c1			;Wait 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $26			;Note D-4
	db $c3			;Wait 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $28			;Note E-4
	db $6c			;Volume 11
	db $79			;Instrument 8
	db $c1			;Wait 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $24			;Note C-4
	db $c3			;Wait 4
	db $23			;Note B-3
	db $c1			;Wait 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $26			;Note D-4
	db $c3			;Wait 4
	db $24			;Note C-4
	db $6c			;Volume 11
					;Wait Repeat 4
	db $6b			;Volume 10
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_036:
	db $09			;Note A-1
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $09			;Note A-1
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $10			;Note E-2
	db $c3			;Wait 4
	db $0c			;Note C-2
					;Wait Repeat 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $0e			;Note D-2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c4			;Wait 5
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $c7			;Wait 8
	db $04			;Note E-1
					;Wait Repeat 8
	db $05			;Note F-1
	db $c3			;Wait 4
	db $05			;Note F-1
					;Wait Repeat 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $07			;Note G-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_037:
	db $1c			;Note E-3
	db $6f			;Volume 14
	db $7d			;Instrument 12
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $1f			;Note G-3
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $28			;Note E-4
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2a			;Note F#4
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $26			;Note D-4
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $69			;Volume 8
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $65			;Volume 4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 1
	db $65			;Volume 4
					;Wait Repeat 1
	db $26			;Note D-4
	db $69			;Volume 8
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $23			;Note B-3
	db $6c			;Volume 11
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c4			;Wait 5
	db $94,$86		;CMD Vibrato
	db $c2			;Wait 3
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $6b			;Volume 10
	db $c2			;Wait 3
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_038:
	db $21			;Note A-3
	db $6e			;Volume 13
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $28			;Note E-4
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $70			;Volume 15
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $26			;Note D-4
	db $c4			;Wait 5
	db $60			;Release 96
	db $c2			;Wait 3
	db $29			;Note F-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $70			;Volume 15
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $23			;Note B-3
	db $70			;Volume 15
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a9,$20			; SCC Set Waveform 9
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6d			;Volume 12
					;Wait Repeat 4
	db $28			;Note E-4
	db $6c			;Volume 11
					;Wait Repeat 4
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_039:
	db $60			;Release 96
	db $c2			;Wait 3
	db $21			;Note A-3
	db $68			;Volume 7
	db $7c			;Instrument 11
	db $a1,$01			;CMD Track detune
					;Wait Repeat 3
	db $60			;Release 96
	db $c4			;Wait 5
	db $28			;Note E-4
	db $c3			;Wait 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $26			;Note D-4
	db $c4			;Wait 5
	db $60			;Release 96
	db $c2			;Wait 3
	db $29			;Note F-4
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $26			;Note D-4
	db $c0			;Wait 1
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $69			;Volume 8
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_041:
	db $21			;Note A-3
	db $6c			;Volume 11
	db $79			;Instrument 8
	db $a1,$00			;CMD Track detune
	db $c7			;Wait 8
	db $24			;Note C-4
	db $6c			;Volume 11
					;Wait Repeat 8
	db $26			;Note D-4
	db $cf			;Wait 16
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 16
	db $32			;Note D-5
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_044:
	db $09			;Note A-1
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $09			;Note A-1
	db $c1			;Wait 2
	db $09			;Note A-1
	db $c2			;Wait 3
	db $60			;Release 96
					;Wait Repeat 3
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $0b			;Note B-1
					;Wait Repeat 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $17			;Note B-2
	db $c4			;Wait 5
	db $60			;Release 96
	db $c2			;Wait 3
	db $18			;Note C-3
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $13			;Note G-2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $0c			;Note C-2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c4			;Wait 5
	db $07			;Note G-1
	db $c3			;Wait 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $13			;Note G-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_045:
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $a9,$60			; SCC Set Waveform 28
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $6f			;Volume 14
	db $7c			;Instrument 11
	db $c2			;Wait 3
	db $28			;Note E-4
	db $6b			;Volume 10
					;Wait Repeat 3
	db $2b			;Note G-4
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $70			;Volume 15
					;Wait Repeat 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $26			;Note D-4
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c2			;Wait 3
	db $26			;Note D-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $60			;Release 96
	db $c2			;Wait 3
	db $29			;Note F-4
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 3
	db $29			;Note F-4
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $28			;Note E-4
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $28			;Note E-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $24			;Note C-4
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c2			;Wait 3
	db $24			;Note C-4
	db $6b			;Volume 10
					;Wait Repeat 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c2			;Wait 3
	db $28			;Note E-4
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $26			;Note D-4
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $26			;Note D-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $23			;Note B-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $23			;Note B-3
	db $6b			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c2			;Wait 3
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $bf			;[End-Of-Track]
.track_046:
	db $1c			;Note E-3
	db $6c			;Volume 11
	db $78			;Instrument 7
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $6b			;Volume 10
	db $a1,$00			;CMD Track detune
	db $cb			;Wait 12
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $cf			;Wait 16
	db $29			;Note F-4
	db $c7			;Wait 8
	db $28			;Note E-4
					;Wait Repeat 8
	db $23			;Note B-3
					;Wait Repeat 8
	db $1f			;Note G-3
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_047:
	db $24			;Note C-4
	db $6c			;Volume 11
	db $78			;Instrument 7
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $24			;Note C-4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $1f			;Note G-3
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $26			;Note D-4
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $94,$86		;CMD Vibrato
	db $cb			;Wait 12
	db $2b			;Note G-4
	db $9b			;CMD End 
	db $c7			;Wait 8
	db $2b			;Note G-4
					;Wait Repeat 8
	db $2b			;Note G-4
					;Wait Repeat 8
	db $26			;Note D-4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_049:
	db $21			;Note A-3
	db $6c			;Volume 11
	db $79			;Instrument 8
	db $a1,$00			;CMD Track detune
	db $c7			;Wait 8
	db $24			;Note C-4
	db $6c			;Volume 11
					;Wait Repeat 8
	db $26			;Note D-4
	db $cf			;Wait 16
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 16
	db $28			;Note E-4
	db $c7			;Wait 8
	db $28			;Note E-4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_052:
	db $09			;Note A-1
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $09			;Note A-1
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $10			;Note E-2
	db $c3			;Wait 4
	db $0c			;Note C-2
					;Wait Repeat 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $0e			;Note D-2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c4			;Wait 5
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $c7			;Wait 8
	db $07			;Note G-1
					;Wait Repeat 8
	db $11			;Note F-2
	db $c3			;Wait 4
	db $0c			;Note C-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $0b			;Note B-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_053:
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $a9,$60			; SCC Set Waveform 28
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $6f			;Volume 14
	db $7c			;Instrument 11
	db $c2			;Wait 3
	db $28			;Note E-4
	db $6b			;Volume 10
					;Wait Repeat 3
	db $2b			;Note G-4
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $70			;Volume 15
					;Wait Repeat 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $26			;Note D-4
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c2			;Wait 3
	db $26			;Note D-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $60			;Release 96
	db $c2			;Wait 3
	db $29			;Note F-4
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 3
	db $29			;Note F-4
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $28			;Note E-4
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $26			;Note D-4
	db $c0			;Wait 1
	db $28			;Note E-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $24			;Note C-4
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 1
	db $26			;Note D-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $24			;Note C-4
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $26			;Note D-4
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $24			;Note C-4
	db $70			;Volume 15
	db $c0			;Wait 1
	db $26			;Note D-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $23			;Note B-3
	db $70			;Volume 15
	db $7c			;Instrument 11
					;Wait Repeat 1
	db $24			;Note C-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $23			;Note B-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c2			;Wait 3
	db $21			;Note A-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c2			;Wait 3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $23			;Note B-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c2			;Wait 3
	db $23			;Note B-3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c2			;Wait 3
	db $6b			;Volume 10
	db $bf			;[End-Of-Track]
.track_054:
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7d			;Instrument 12
	db $a9,$20			; SCC Set Waveform 9
	db $c5			;Wait 6
	db $26			;Note D-4
	db $c1			;Wait 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $24			;Note C-4
	db $c3			;Wait 4
	db $26			;Note D-4
	db $c1			;Wait 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $26			;Note D-4
	db $c7			;Wait 8
	db $26			;Note D-4
	db $c3			;Wait 4
	db $18			;Note C-3
	db $a9,$20			; SCC Set Waveform 9
	db $c7			;Wait 8
	db $1f			;Note G-3
	db $c7			;Wait 8
	db $45			;Note A-6
	db $6d			;Volume 12
	db $7b			;Instrument 10
	db $c1			;Wait 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_055:
	db $28			;Note E-4
	db $6b			;Volume 10
	db $7d			;Instrument 12
	db $c5			;Wait 6
	db $2a			;Note F#4
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $28			;Note E-4
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2a			;Note F#4
	db $c7			;Wait 8
	db $2d			;Note A-4
	db $c3			;Wait 4
	db $24			;Note C-4
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $28			;Note E-4
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $26			;Note D-4
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c7			;Wait 8
	db $2b			;Note G-4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_057:
	db $c4			;Wait 5
	db $30			;Note C-5
	db $6c			;Volume 11
	db $79			;Instrument 8
					;Wait Repeat 5
	db $6b			;Volume 10
	db $c2			;Wait 3
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $32			;Note D-5
	db $c6			;Wait 7
	db $2d			;Note A-4
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $30			;Note C-5
	db $c5			;Wait 6
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c3			;Wait 4
	db $4a			;Note D-7
	db $70			;Volume 15
	db $7e			;Instrument 13
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 2
	db $4c			;Note E-7
					;Wait Repeat 2
	db $4e			;Note F#7
	db $c3			;Wait 4
	db $4e			;Note F#7
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_060:
	db $0e			;Note D-2
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $1a			;Note D-3
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $17			;Note B-2
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c1			;Wait 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $07			;Note G-1
	db $c1			;Wait 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $06			;Note F#1
	db $c3			;Wait 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $12			;Note F#2
					;Wait Repeat 4
	db $12			;Note F#2
	db $c1			;Wait 2
	db $12			;Note F#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_061:
	db $24			;Note C-4
	db $70			;Volume 15
	db $78			;Instrument 7
	db $c2			;Wait 3
	db $94,$85		;CMD Vibrato
	db $c0			;Wait 1
	db $6f			;Volume 14
	db $c1			;Wait 2
	db $6e			;Volume 13
	db $c0			;Wait 1
	db $6d			;Volume 12
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $67			;Volume 6
	db $c0			;Wait 1
	db $23			;Note B-3
	db $70			;Volume 15
	db $78			;Instrument 7
	db $9b			;CMD End 
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $24			;Note C-4
	db $70			;Volume 15
	db $78			;Instrument 7
					;Wait Repeat 1
	db $60			;Release 96
	db $67			;Volume 6
					;Wait Repeat 1
	db $26			;Note D-4
	db $70			;Volume 15
	db $78			;Instrument 7
	db $c2			;Wait 3
	db $94,$85		;CMD Vibrato
	db $c0			;Wait 1
	db $6f			;Volume 14
					;Wait Repeat 1
	db $6e			;Volume 13
					;Wait Repeat 1
	db $6c			;Volume 11
	db $c4			;Wait 5
	db $60			;Release 96
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $30			;Note C-5
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $a9,$18			; SCC Set Waveform 8
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $32			;Note D-5
	db $70			;Volume 15
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $34			;Note E-5
	db $70			;Volume 15
					;Wait Repeat 1
	db $6e			;Volume 13
					;Wait Repeat 1
	db $32			;Note D-5
	db $70			;Volume 15
					;Wait Repeat 1
	db $6e			;Volume 13
					;Wait Repeat 1
	db $34			;Note E-5
	db $70			;Volume 15
	db $c5			;Wait 6
	db $32			;Note D-5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $37			;Note G-5
	db $c1			;Wait 2
	db $39			;Note A-5
	db $70			;Volume 15
	db $c2			;Wait 3
	db $6f			;Volume 14
	db $94,$34		;CMD Vibrato
	db $c1			;Wait 2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $70			;Volume 15
	db $78			;Instrument 7
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $70			;Volume 15
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_062:
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1d			;Note F-3
	db $7c			;Instrument 11
	db $c7			;Wait 8
	db $26			;Note D-4
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c3			;Wait 4
	db $37			;Note G-5
	db $6d			;Volume 12
	db $a9,$40			; SCC Set Waveform 19
	db $c1			;Wait 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3b			;Note B-5
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $24			;Note C-4
	db $78			;Instrument 7
	db $c7			;Wait 8
	db $23			;Note B-3
					;Wait Repeat 8
	db $2d			;Note A-4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_063:
	db $29			;Note F-4
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $3b			;Note B-5
	db $6d			;Volume 12
	db $75			;Instrument 4
	db $c1			;Wait 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3e			;Note D-6
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $7c			;Instrument 11
					;Wait Repeat 4
	db $28			;Note E-4
	db $78			;Instrument 7
	db $c7			;Wait 8
	db $28			;Note E-4
					;Wait Repeat 8
	db $26			;Note D-4
	db $c2			;Wait 3
	db $94,$64		;CMD Vibrato
	db $cb			;Wait 12
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_064:
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
					;Wait Repeat 1
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_065:
	db $2b			;Note G-4
	db $6c			;Volume 11
	db $79			;Instrument 8
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c7			;Wait 8
	db $28			;Note E-4
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c7			;Wait 8
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_066:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_068:
	db $0e			;Note D-2
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $c4			;Wait 5
	db $60			;Release 96
	db $c2			;Wait 3
	db $09			;Note A-1
					;Wait Repeat 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $13			;Note G-2
	db $c7			;Wait 8
	db $10			;Note E-2
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_069:
	db $24			;Note C-4
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $cb			;Wait 12
	db $24			;Note C-4
	db $c3			;Wait 4
	db $37			;Note G-5
	db $7c			;Instrument 11
	db $a9,$58			; SCC Set Waveform 25
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $23			;Note B-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_070:
	db $30			;Note C-5
	db $70			;Volume 15
	db $78			;Instrument 7
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $32			;Note D-5
	db $70			;Volume 15
	db $78			;Instrument 7
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $34			;Note E-5
	db $70			;Volume 15
	db $78			;Instrument 7
	db $c2			;Wait 3
	db $94,$55		;CMD Vibrato
	db $c4			;Wait 5
	db $34			;Note E-5
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $37			;Note G-5
	db $c3			;Wait 4
	db $94,$55		;CMD Vibrato
	db $c7			;Wait 8
	db $30			;Note C-5
	db $70			;Volume 15
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $70			;Volume 15
	db $78			;Instrument 7
					;Wait Repeat 1
	db $6b			;Volume 10
	db $bf			;[End-Of-Track]
.track_071:
	db $1d			;Note F-3
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c7			;Wait 8
	db $1a			;Note D-3
	db $c7			;Wait 8
	db $2f			;Note B-4
	db $7c			;Instrument 11
	db $c5			;Wait 6
	db $6c			;Volume 11
	db $c2			;Wait 3
	db $6b			;Volume 10
					;Wait Repeat 3
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $66			;Volume 5
	db $bf			;[End-Of-Track]
.track_072:
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
					;Wait Repeat 1
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
					;Wait Repeat 1
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $11			;Note F-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$03			;CMD Envelope shape
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope shape
	db $c2			;Wait 3
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $80			;Instrument 15
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $80			;Instrument 15
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7f			;Instrument 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_077:
	db $2d			;Note A-4
	db $70			;Volume 15
	db $78			;Instrument 7
	db $c2			;Wait 3
	db $94,$64		;CMD Vibrato
	db $c0			;Wait 1
	db $6f			;Volume 14
	db $c1			;Wait 2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6d			;Volume 12
					;Wait Repeat 2
	db $6c			;Volume 11
					;Wait Repeat 2
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $60			;Release 96
	db $9b			;CMD End 
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_081:
	db $09			;Note A-1
	db $6d			;Volume 12
	db $79			;Instrument 8
	db $a1,$0f			;CMD Track detune
	db $c3			;Wait 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $0c			;Note C-2
	db $c7			;Wait 8
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $0e			;Note D-2
	db $c7			;Wait 8
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $06			;Note F#1
	db $c7			;Wait 8
	db $05			;Note F-1
	db $ca			;Wait 11
	db $a1,$00			;CMD Track detune
	db $bf			;[End-Of-Track]
.track_084:
	db $09			;Note A-1
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $0c			;Note C-2
	db $c7			;Wait 8
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $0e			;Note D-2
	db $c7			;Wait 8
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $07			;Note G-1
	db $c3			;Wait 4
	db $06			;Note F#1
	db $c7			;Wait 8
	db $05			;Note F-1
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_085:
	db $39			;Note A-5
	db $6e			;Volume 13
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 19
	db $c1			;Wait 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $40			;Note E-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $40			;Note E-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $40			;Note E-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $67			;Volume 6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $40			;Note E-6
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $a9,$68			; SCC Set Waveform 31
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $cf			;Wait 16
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $a9,$58			; SCC Set Waveform 25
	db $c1			;Wait 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $c0			;Wait 1
	db $a1,$00			;CMD Track detune
	db $bf			;[End-Of-Track]
.track_086:
	db $10			;Note E-2
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $13			;Note G-2
	db $c7			;Wait 8
	db $10			;Note E-2
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $15			;Note A-2
	db $c7			;Wait 8
	db $28			;Note E-4
	db $69			;Volume 8
	db $78			;Instrument 7
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $69			;Volume 8
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $28			;Note E-4
	db $6b			;Volume 10
	db $78			;Instrument 7
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $28			;Note E-4
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $28			;Note E-4
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $6a			;Volume 9
					;Wait Repeat 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $94,$64		;CMD Vibrato
	db $c6			;Wait 7
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_087:
	db $15			;Note A-2
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $18			;Note C-3
	db $c7			;Wait 8
	db $15			;Note A-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $c1			;Wait 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $1a			;Note D-3
	db $c7			;Wait 8
	db $21			;Note A-3
	db $70			;Volume 15
	db $78			;Instrument 7
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $21			;Note A-3
	db $70			;Volume 15
	db $78			;Instrument 7
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $23			;Note B-3
	db $6f			;Volume 14
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $24			;Note C-4
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $6a			;Volume 9
					;Wait Repeat 4
	db $26			;Note D-4
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $94,$64		;CMD Vibrato
	db $c6			;Wait 7
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_089:
	db $60			;Release 96
	db $c2			;Wait 3
	db $2f			;Note B-4
	db $6c			;Volume 11
	db $79			;Instrument 8
	db $d4			;Wait 21
	db $2b			;Note G-4
	db $c7			;Wait 8
	db $29			;Note F-4
					;Wait Repeat 8
	db $28			;Note E-4
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6e			;Volume 13
	db $7a			;Instrument 9
	db $c7			;Wait 8
	db $28			;Note E-4
	db $c3			;Wait 4
	db $29			;Note F-4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_092:
	db $04			;Note E-1
	db $6f			;Volume 14
	db $77			;Instrument 6
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $04			;Note E-1
	db $c1			;Wait 2
	db $02			;Note D-1
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $04			;Note E-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $04			;Note E-1
	db $c1			;Wait 2
	db $02			;Note D-1
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $04			;Note E-1
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $02			;Note D-1
	db $c3			;Wait 4
	db $05			;Note F-1
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $05			;Note F-1
	db $c1			;Wait 2
	db $04			;Note E-1
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $05			;Note F-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $05			;Note F-1
	db $c3			;Wait 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_093:
	db $2f			;Note B-4
	db $70			;Volume 15
	db $75			;Instrument 4
	db $a9,$58			; SCC Set Waveform 25
	db $cb			;Wait 12
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $2b			;Note G-4
					;Wait Repeat 4
	db $2a			;Note F#4
					;Wait Repeat 4
	db $2b			;Note G-4
					;Wait Repeat 4
	db $28			;Note E-4
					;Wait Repeat 4
	db $28			;Note E-4
	db $cb			;Wait 12
	db $3e			;Note D-6
	db $6c			;Volume 11
	db $75			;Instrument 4
	db $a9,$40			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $39			;Note A-5
					;Wait Repeat 4
	db $35			;Note F-5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $2d			;Note A-4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_094:
	db $2f			;Note B-4
	db $70			;Volume 15
	db $76			;Instrument 5
	db $a1,$08			;CMD Track detune
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $68			;Volume 7
	db $c7			;Wait 8
	db $34			;Note E-5
	db $70			;Volume 15
	db $76			;Instrument 5
	db $c3			;Wait 4
	db $6f			;Volume 14
	db $c7			;Wait 8
	db $2f			;Note B-4
	db $70			;Volume 15
	db $76			;Instrument 5
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $6f			;Volume 14
	db $c4			;Wait 5
	db $32			;Note D-5
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $c1			;Wait 2
	db $32			;Note D-5
	db $70			;Volume 15
	db $c4			;Wait 5
	db $6c			;Volume 11
	db $c2			;Wait 3
	db $35			;Note F-5
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c7			;Wait 8
	db $34			;Note E-5
	db $c3			;Wait 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $2d			;Note A-4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_095:
	db $1f			;Note G-3
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $1e			;Note F#3
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $1f			;Note G-3
	db $c7			;Wait 8
	db $1e			;Note F#3
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $c7			;Wait 8
	db $21			;Note A-3
	db $c2			;Wait 3
	db $32			;Note D-5
	db $67			;Volume 6
	db $c1			;Wait 2
	db $34			;Note E-5
	db $c2			;Wait 3
	db $29			;Note F-4
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $cb			;Wait 12
	db $21			;Note A-3
	db $c3			;Wait 4
	db $1f			;Note G-3
					;Wait Repeat 4
	db $1d			;Note F-3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_097:
	db $2d			;Note A-4
	db $6c			;Volume 11
	db $79			;Instrument 8
	db $c3			;Wait 4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $6a			;Volume 9
	db $cf			;Wait 16
	db $30			;Note C-5
	db $6c			;Volume 11
	db $79			;Instrument 8
	db $c7			;Wait 8
	db $23			;Note B-3
	db $cf			;Wait 16
	db $43			;Note G-6
	db $6f			;Volume 14
	db $7e			;Instrument 13
	db $c1			;Wait 2
	db $43			;Note G-6
	db $6c			;Volume 11
					;Wait Repeat 2
	db $40			;Note E-6
	db $6f			;Volume 14
	db $7e			;Instrument 13
					;Wait Repeat 2
	db $40			;Note E-6
	db $6c			;Volume 11
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $7e			;Instrument 13
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $37			;Note G-5
	db $6f			;Volume 14
	db $7e			;Instrument 13
					;Wait Repeat 2
	db $37			;Note G-5
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_100:
	db $09			;Note A-1
	db $6f			;Volume 14
	db $77			;Instrument 6
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $09			;Note A-1
	db $c1			;Wait 2
	db $07			;Note G-1
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $09			;Note A-1
	db $c1			;Wait 2
	db $07			;Note G-1
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $09			;Note A-1
	db $c3			;Wait 4
	db $13			;Note G-2
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $13			;Note G-2
	db $c1			;Wait 2
	db $0e			;Note D-2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $07			;Note G-1
	db $c5			;Wait 6
	db $07			;Note G-1
	db $c1			;Wait 2
	db $09			;Note A-1
	db $c3			;Wait 4
	db $0b			;Note B-1
					;Wait Repeat 4
	db $07			;Note G-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_101:
	db $23			;Note B-3
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c7			;Wait 8
	db $21			;Note A-3
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $d3			;Wait 20
	db $28			;Note E-4
	db $c3			;Wait 4
	db $23			;Note B-3
	db $c7			;Wait 8
	db $28			;Note E-4
					;Wait Repeat 8
	db $28			;Note E-4
	db $c3			;Wait 4
	db $23			;Note B-3
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_102:
	db $30			;Note C-5
	db $70			;Volume 15
	db $76			;Instrument 5
	db $d7			;Wait 24
	db $34			;Note E-5
	db $c7			;Wait 8
	db $2f			;Note B-4
	db $cb			;Wait 12
	db $95,$03			;CMD Portamento up
	db $c3			;Wait 4
	db $34			;Note E-5
	db $9b			;CMD End 
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_103:
	db $28			;Note E-4
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c3			;Wait 4
	db $26			;Note D-4
					;Wait Repeat 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $26			;Note D-4
	db $c7			;Wait 8
	db $24			;Note C-4
	db $c3			;Wait 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $2b			;Note G-4
					;Wait Repeat 4
	db $28			;Note E-4
	db $c7			;Wait 8
	db $2b			;Note G-4
	db $cb			;Wait 12
	db $28			;Note E-4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_105:
	db $2a			;Note F#4
	db $6c			;Volume 11
	db $79			;Instrument 8
	db $c4			;Wait 5
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $26			;Note D-4
	db $6c			;Volume 11
	db $79			;Instrument 8
	db $d3			;Wait 20
	db $39			;Note A-5
	db $70			;Volume 15
	db $7e			;Instrument 13
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3e			;Note D-6
	db $c4			;Wait 5
	db $3e			;Note D-6
	db $9a,$03			;CMD Note delay
					;Wait Repeat 5
	db $3e			;Note D-6
	db $9a,$05			;CMD Note delay
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_108:
	db $12			;Note F#2
	db $70			;Volume 15
	db $77			;Instrument 6
	db $cb			;Wait 12
	db $0e			;Note D-2
					;Wait Repeat 12
	db $06			;Note F#1
	db $c3			;Wait 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $11			;Note F-2
					;Wait Repeat 4
	db $11			;Note F-2
	db $c1			;Wait 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $c3			;Wait 4
	db $10			;Note E-2
	db $c1			;Wait 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $0e			;Note D-2
	db $c4			;Wait 5
	db $0c			;Note C-2
	db $9a,$03			;CMD Note delay
					;Wait Repeat 5
	db $0b			;Note B-1
	db $9a,$05			;CMD Note delay
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_109:
	db $2d			;Note A-4
	db $6d			;Volume 12
	db $76			;Instrument 5
	db $a1,$09			;CMD Track detune
	db $c7			;Wait 8
	db $2d			;Note A-4
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $d3			;Wait 20
	db $21			;Note A-3
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $cb			;Wait 12
	db $1a			;Note D-3
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $1a			;Note D-3
	db $6c			;Volume 11
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $c4			;Wait 5
	db $1c			;Note E-3
	db $9a,$03			;CMD Note delay
					;Wait Repeat 5
	db $1c			;Note E-3
	db $9a,$05			;CMD Note delay
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_110:
	db $32			;Note D-5
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $a1,$08			;CMD Track detune
	db $c2			;Wait 3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6d			;Volume 12
	db $78			;Instrument 7
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $d3			;Wait 20
	db $28			;Note E-4
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $cb			;Wait 12
	db $2b			;Note G-4
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6c			;Volume 11
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $c4			;Wait 5
	db $2d			;Note A-4
	db $9a,$03			;CMD Note delay
					;Wait Repeat 5
	db $2d			;Note A-4
	db $9a,$05			;CMD Note delay
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_111:
	db $39			;Note A-5
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $a1,$08			;CMD Track detune
	db $c2			;Wait 3
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $32			;Note D-5
	db $6d			;Volume 12
	db $78			;Instrument 7
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $32			;Note D-5
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c4			;Wait 5
	db $94,$35		;CMD Vibrato
	db $ce			;Wait 15
	db $2d			;Note A-4
	db $6d			;Volume 12
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $30			;Note C-5
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $cb			;Wait 12
	db $30			;Note C-5
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $30			;Note C-5
	db $6c			;Volume 11
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $32			;Note D-5
	db $c4			;Wait 5
	db $32			;Note D-5
	db $9a,$03			;CMD Note delay
					;Wait Repeat 5
	db $32			;Note D-5
	db $9a,$05			;CMD Note delay
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_112:
	db $21			;Note A-3
	db $6f			;Volume 14
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $18			;Note C-3
	db $6d			;Volume 12
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $18			;Note C-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $81			;Instrument 16
	db $c1			;Wait 2
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $80			;Instrument 15
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7f			;Instrument 14
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6f			;Volume 14
	db $72			;Instrument 1
					;Wait Repeat 4
	db $21			;Note A-3
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $28			;Note E-4
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $a5,$4d		;CMD Envelope multiplier
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_113:
	db $1c			;Note E-3
	db $70			;Volume 15
	db $7a			;Instrument 9
	db $c1			;Wait 2
	db $1a			;Note D-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $70			;Volume 15
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $24			;Note C-4
	db $70			;Volume 15
					;Wait Repeat 2
	db $22			;Note A#3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $04			;Note E-1
	db $6c			;Volume 11
	db $79			;Instrument 8
	db $a1,$0f			;CMD Track detune
	db $cf			;Wait 16
	db $40			;Note E-6
	db $6d			;Volume 12
	db $7b			;Instrument 10
	db $a1,$08			;CMD Track detune
	db $c0			;Wait 1
	db $41			;Note F-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $46			;Note A#6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $6e			;Volume 13
	db $c0			;Wait 1
	db $4c			;Note E-7
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $4d			;Note F-7
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $51			;Note A-7
	db $6e			;Volume 13
	db $c0			;Wait 1
	db $4d			;Note F-7
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $4c			;Note E-7
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $46			;Note A#6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $41			;Note F-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_116:
	db $04			;Note E-1
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $04			;Note E-1
	db $c1			;Wait 2
	db $04			;Note E-1
					;Wait Repeat 2
	db $04			;Note E-1
	db $c3			;Wait 4
	db $04			;Note E-1
	db $c1			;Wait 2
	db $04			;Note E-1
					;Wait Repeat 2
	db $10			;Note E-2
	db $c3			;Wait 4
	db $10			;Note E-2
	db $c1			;Wait 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $c3			;Wait 4
	db $04			;Note E-1
	db $c1			;Wait 2
	db $04			;Note E-1
					;Wait Repeat 2
	db $10			;Note E-2
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_117:
	db $21			;Note A-3
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $21			;Note A-3
	db $68			;Volume 7
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $22			;Note A#3
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $22			;Note A#3
	db $6a			;Volume 9
	db $78			;Instrument 7
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $22			;Note A#3
	db $6a			;Volume 9
	db $78			;Instrument 7
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $24			;Note C-4
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $24			;Note C-4
	db $68			;Volume 7
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $26			;Note D-4
	db $6d			;Volume 12
	db $78			;Instrument 7
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $26			;Note D-4
	db $6d			;Volume 12
	db $78			;Instrument 7
					;Wait Repeat 1
	db $69			;Volume 8
	db $c0			;Wait 1
	db $26			;Note D-4
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a9,$58			; SCC Set Waveform 25
	db $c3			;Wait 4
	db $28			;Note E-4
					;Wait Repeat 4
	db $29			;Note F-4
	db $c6			;Wait 7
	db $28			;Note E-4
	db $c3			;Wait 4
	db $6d			;Volume 12
	db $c2			;Wait 3
	db $6c			;Volume 11
					;Wait Repeat 3
	db $6b			;Volume 10
					;Wait Repeat 3
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_118:
	db $30			;Note C-5
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $32			;Note D-5
	db $6a			;Volume 9
	db $78			;Instrument 7
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $32			;Note D-5
	db $6a			;Volume 9
	db $78			;Instrument 7
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $34			;Note E-5
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $34			;Note E-5
	db $68			;Volume 7
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $35			;Note F-5
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $35			;Note F-5
	db $6d			;Volume 12
	db $78			;Instrument 7
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $35			;Note F-5
	db $6d			;Volume 12
	db $78			;Instrument 7
					;Wait Repeat 1
	db $69			;Volume 8
	db $c0			;Wait 1
	db $30			;Note C-5
	db $70			;Volume 15
	db $75			;Instrument 4
	db $a9,$40			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $2e			;Note A#4
					;Wait Repeat 4
	db $29			;Note F-4
					;Wait Repeat 4
	db $26			;Note D-4
					;Wait Repeat 4
	db $39			;Note A-5
	db $c3			;Wait 4
	db $38			;Note G#5
	db $6f			;Volume 14
					;Wait Repeat 4
	db $32			;Note D-5
	db $6e			;Volume 13
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6d			;Volume 12
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_119:
	db $34			;Note E-5
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $34			;Note E-5
	db $68			;Volume 7
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $35			;Note F-5
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $35			;Note F-5
	db $6a			;Volume 9
	db $78			;Instrument 7
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $35			;Note F-5
	db $6a			;Volume 9
	db $78			;Instrument 7
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $37			;Note G-5
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $37			;Note G-5
	db $68			;Volume 7
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $39			;Note A-5
	db $6d			;Volume 12
	db $78			;Instrument 7
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $39			;Note A-5
	db $6d			;Volume 12
	db $78			;Instrument 7
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $29			;Note F-4
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $c7			;Wait 8
	db $23			;Note B-3
	db $c8			;Wait 9
	db $32			;Note D-5
	db $c3			;Wait 4
	db $6d			;Volume 12
	db $c2			;Wait 3
	db $6c			;Volume 11
					;Wait Repeat 3
	db $6b			;Volume 10
					;Wait Repeat 3
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]

