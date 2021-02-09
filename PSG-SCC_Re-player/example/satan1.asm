; Song: Satan - Hospital                
; By:   Gryzor87 (c)2020                

; [ Song start data ]
	db $08							; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_001, .track_002, .track_002, .track_004, .track_005, .track_006, .track_007	; Step:001 Pattern:000
	dw .track_008, .track_009, .track_002, .track_002, .track_012, .track_013, .track_014, .track_015	; Step:002 Pattern:001
	dw .track_016, .track_017, .track_018, .track_018, .track_020, .track_021, .track_018, .track_018	; Step:003 Pattern:002
	dw .track_024, .track_025, .track_026, .track_026, .track_028, .track_029, .track_030, .track_031	; Step:004 Pattern:003
	dw .track_024, .track_033, .track_002, .track_002, .track_036, .track_037, .track_038, .track_039	; Step:005 Pattern:004
	dw .track_040, .track_041, .track_026, .track_026, .track_044, .track_045, .track_046, .track_047	; Step:006 Pattern:005
	dw .track_048, .track_049, .track_026, .track_026, .track_052, .track_053, .track_054, .track_055	; Step:007 Pattern:006
	dw .track_056, .track_057, .track_026, .track_026, .track_060, .track_061, .track_062, .track_063	; Step:008 Pattern:007
	dw .track_064, .track_065, .track_026, .track_026, .track_068, .track_069, .track_070, .track_071	; Step:009 Pattern:008
	dw .track_072, .track_073, .track_074, .track_074, .track_076, .track_077, .track_078, .track_074	; Step:010 Pattern:009
	dw .track_080, .track_081, .track_026, .track_026, .track_084, .track_085, .track_086, .track_087	; Step:011 Pattern:010
	dw .track_088, .track_089, .track_090, .track_090, .track_092, .track_093, .track_094, .track_095	; Step:012 Pattern:011
	dw .track_096, .track_097, .track_026, .track_026, .track_100, .track_085, .track_102, .track_103	; Step:013 Pattern:012
	dw .track_090, .track_090, .track_090, .track_090, .track_108, .track_109, .track_110, .track_111	; Step:014 Pattern:013
	dw .track_112, .track_113, .track_026, .track_026, .track_116, .track_117, .track_118, .track_119	; Step:015 Pattern:014
	dw .track_120, .track_121, .track_026, .track_026, .track_124, .track_125, .track_126, .track_127	; Step:016 Pattern:015
	dw .track_128, .track_129, .track_026, .track_026, .track_132, .track_133, .track_134, .track_135	; Step:017 Pattern:016
	dw .track_136, .track_137, .track_138, .track_138, .track_140, .track_141, .track_142, .track_143	; Step:018 Pattern:017
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00				; Waveform:0
	db $00, $30, $f0, $30, $40, $50, $60, $60, $70, $79, $70, $78, $40, $00, $00, $0e, $70, $83, $60, $50, $00, $00, $00, $26, $74, $82, $84, $65, $64, $e4, $93, $84				; Waveform:1
	db $00, $40, $77, $40, $01, $c8, $89, $c8, $01, $38, $77, $38, $01, $c8, $01, $30, $01, $f0, $01, $10, $01, $f8, $01, $08, $01, $ff, $ff, $ff, $ff, $30, $30, $30				; Waveform:2
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $00, $e7, $cf, $b9, $a6, $96, $8b, $83, $80, $83, $8b, $96, $a6, $b9, $cf, $e7				; Waveform:3
	db $00, $30, $50, $60, $70, $60, $50, $30, $00, $d0, $b0, $a0, $90, $a0, $b0, $d0, $00, $40, $60, $70, $60, $40, $00, $c0, $a0, $90, $a0, $c0, $00, $70, $00, $90				; Waveform:4
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20				; Waveform:5
	db $00, $f8, $e8, $d8, $c8, $b8, $a8, $98, $88, $70, $60, $50, $40, $30, $20, $10, $00, $f8, $e8, $d8, $c8, $b8, $a8, $98, $88, $70, $60, $50, $40, $30, $20, $10				; Waveform:6
	db $30, $50, $50, $30, $00, $00, $10, $40, $60, $70, $60, $30, $f0, $e0, $e0, $00, $20, $20, $10, $c0, $a0, $90, $a0, $c0, $00, $00, $d0, $b0, $b0, $d0, $00, $00				; Waveform:7
	db $80, $c8, $20, $7f, $30, $c8, $80, $90, $a8, $c0, $e0, $00, $20, $38, $50, $60, $70, $78, $7c, $7f, $7c, $78, $70, $60, $50, $38, $20, $00, $e0, $c0, $a8, $90				; Waveform:8
	db $80, $aa, $c8, $00, $24, $40, $5c, $70, $7f, $6a, $4a, $26, $00, $d0, $a8, $8c, $80, $aa, $c8, $00, $24, $40, $5c, $70, $7f, $6a, $4a, $26, $00, $d0, $a8, $8c				; Waveform:11
	db $80, $a0, $c0, $cc, $c0, $bc, $c0, $c4, $e0, $24, $f0, $58, $4c, $4a, $3c, $50, $7f, $60, $40, $30, $40, $46, $40, $46, $3c, $20, $c6, $f2, $a4, $b4, $b6, $a0				; Waveform:12
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $00, $f0, $e0, $d0, $c0, $b0, $a0, $90, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0				; Waveform:17
	db $90, $d0, $20, $0c, $bc, $aa, $e6, $dc, $bc, $e3, $40, $30, $e0, $d0, $10, $06, $e4, $0c, $70, $50, $e0, $d0, $10, $00, $d0, $f0, $40, $20, $c4, $c0, $f0, $90				; Waveform:19

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; BD E2           
	dw .instrument_01				; SD A3           
	dw .instrument_02				; HH CL A8        
	dw .instrument_03				; TOM             
	dw .instrument_04				; SHAKER G6       
	dw .instrument_05				; SC Mantabrass sn
	dw .instrument_06				; SC Bass         
	dw .instrument_07				; SC PianoBell    
	dw .instrument_08				; PGS String snake
	dw .instrument_09				; PULSE           
	dw .instrument_10				; IN              
	dw .instrument_11				; Piano tremolo   
	dw .instrument_12				; Piano Tremolo HI
	dw .instrument_13				; HH OP A8        
	dw .instrument_14				; Vlins Staccato  
	dw .instrument_15				; Low Lead        

.instrument_00:					; BD E2           
	db $30							; Waveform 6
	db $14							; Info byte: 00010100
	db $0f							; Volume _
.rst_i00:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i00						; Loop address
.instrument_01:					; SD A3           
	db $08							; Waveform 1
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $c4							; Info byte: 11000100
	db $0d							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $0b							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $08							; Volume _
	db $06							; Noise _
.rst_i01:
	db $c7							; Info byte: 11000111
	db $ff							; Volume -
	db $06							; Noise _
	dw .rst_i01						; Loop address
.instrument_02:					; HH CL A8        
	db $38							; Waveform 7
	db $d4							; Info byte: 11010100
	db $0b							; Volume _
	db $00							; Noise _
.rst_i02:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i02						; Loop address
.instrument_03:					; TOM             
	db $18							; Waveform 3
	db $1c							; Info byte: 00011100
	db $0f							; Volume _
	dw $002f							; Tone
	db $1c							; Info byte: 00011100
	db $0d							; Volume _
	dw $002f							; Tone
.rst_i03:
	db $1e							; Info byte: 00011110
	db $ff							; Volume -
	dw $002f							; Tone
	db $18							; Info byte: 00011000
	dw $002f							; Tone
	db $18							; Info byte: 00011000
	dw $002f							; Tone
	db $18							; Info byte: 00011000
	dw $002f							; Tone
	db $19							; Info byte: 00011001
	dw $002f							; Tone
	dw .rst_i03						; Loop address
.instrument_04:					; SHAKER G6       
	db $38							; Waveform 7
	db $d4							; Info byte: 11010100
	db $0e							; Volume _
	db $1f							; Noise _
	db $c4							; Info byte: 11000100
	db $0f							; Volume _
	db $1b							; Noise _
	db $c4							; Info byte: 11000100
	db $0e							; Volume _
	db $17							; Noise _
	db $c4							; Info byte: 11000100
	db $0d							; Volume _
	db $13							; Noise _
	db $c4							; Info byte: 11000100
	db $0c							; Volume _
	db $0a							; Noise _
	db $c4							; Info byte: 11000100
	db $0b							; Volume _
	db $09							; Noise _
	db $c4							; Info byte: 11000100
	db $0a							; Volume _
	db $07							; Noise _
	db $c4							; Info byte: 11000100
	db $09							; Volume _
	db $05							; Noise _
	db $c4							; Info byte: 11000100
	db $08							; Volume _
	db $04							; Noise _
	db $c4							; Info byte: 11000100
	db $07							; Volume _
	db $03							; Noise _
	db $c4							; Info byte: 11000100
	db $07							; Volume _
	db $02							; Noise _
	db $c4							; Info byte: 11000100
	db $06							; Volume _
	db $01							; Noise _
.rst_i04:
	db $c5							; Info byte: 11000101
	db $05							; Volume _
	db $00							; Noise _
	dw .rst_i04						; Loop address
.instrument_05:					; SC Mantabrass sn
	db $58							; Waveform 11
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
.rst_i05:
	db $15							; Info byte: 00010101
	db $06							; Volume _
	dw .rst_i05						; Loop address
.instrument_06:					; SC Bass         
	db $28							; Waveform 5
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
.rst_i06:
	db $15							; Info byte: 00010101
	db $0c							; Volume _
	dw .rst_i06						; Loop address
.instrument_07:					; SC PianoBell    
	db $38							; Waveform 7
	db $14							; Info byte: 00010100
	db $0f							; Volume _
.rst_i07:
	db $16							; Info byte: 00010110
	db $fd							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i07						; Loop address
.instrument_08:					; PGS String snake
	db $28							; Waveform 5
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
	dw .rst_i08						; Loop address
.instrument_09:					; PULSE           
	db $48							; Waveform 9
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i09:
	db $15							; Info byte: 00010101
	db $09							; Volume _
	dw .rst_i09						; Loop address
.instrument_10:					; IN              
	db $18							; Waveform 3
.rst_i10:
	db $15							; Info byte: 00010101
	db $0f							; Volume _
	dw .rst_i10						; Loop address
.instrument_11:					; Piano tremolo   
	db $38							; Waveform 7
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
.rst_i11:
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
	db $16							; Info byte: 00010110
	db $01							; Volume +
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $fe							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i11						; Loop address
.instrument_12:					; Piano Tremolo HI
	db $28							; Waveform 5
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
.rst_i12:
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
	dw .rst_i12						; Loop address
.instrument_13:					; HH OP A8        
	db $00							; Waveform 0
	db $d4							; Info byte: 11010100
	db $0d							; Volume _
	db $00							; Noise _
	db $d4							; Info byte: 11010100
	db $0b							; Volume _
	db $00							; Noise _
.rst_i13:
	db $d6							; Info byte: 11010110
	db $ff							; Volume -
	db $00							; Noise _
	db $d0							; Info byte: 11010000
	db $00							; Noise _
	db $d0							; Info byte: 11010000
	db $00							; Noise _
	db $d1							; Info byte: 11010001
	db $00							; Noise _
	dw .rst_i13						; Loop address
.instrument_14:					; Vlins Staccato  
	db $40							; Waveform 8
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
.rst_i14:
	db $17							; Info byte: 00010111
	db $ff							; Volume -
	dw .rst_i14						; Loop address
.instrument_15:					; Low Lead        
	db $10							; Waveform 2
	db $14							; Info byte: 00010100
	db $0d							; Volume _
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
	db $0d							; Volume _
.rst_i15:
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $15							; Info byte: 00010101
	db $0b							; Volume _
	dw .rst_i15						; Loop address

; [ Song track data ]
.track_000:
	db $21			;Note A-3
	db $6d			;Volume 12
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $5d			;Note A-8
	db $73			;Instrument 2
					;Wait Repeat 4
	db $5d			;Note A-8
					;Wait Repeat 4
	db $43			;Note G-6
	db $6b			;Volume 10
	db $75			;Instrument 4
					;Wait Repeat 4
	db $43			;Note G-6
	db $6a			;Volume 9
					;Wait Repeat 4
	db $43			;Note G-6
	db $69			;Volume 8
					;Wait Repeat 4
	db $43			;Note G-6
	db $68			;Volume 7
					;Wait Repeat 4
	db $10			;Note E-2
	db $6b			;Volume 10
	db $78			;Instrument 7
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_001:
	db $04			;Note E-1
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $a1,$0f		;CMD Track detune
	db $de			;Wait 31
	db $60			;Release 96
	db $c0			;Wait 1
	db $17			;Note B-2
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $9a,$08			;CMD Note delay
	db $c4			;Wait 5
	db $94,$55		;CMD Vibrato
	db $c5			;Wait 6
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $16			;Note A#2
	db $6a			;Volume 9
	db $c5			;Wait 6
	db $94,$54		;CMD Vibrato
	db $c3			;Wait 4
	db $69			;Volume 8
	db $c2			;Wait 3
	db $9b			;CMD End 
					;Wait Repeat 3
	db $67			;Volume 6
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_002:
	db $60			;Release 96
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_004:
	db $04			;Note E-1
	db $6d			;Volume 12
	db $77			;Instrument 6
	db $a9,$28			; SCC Set Waveform 5
	db $c6			;Wait 7
			;CMD $c1a Waveform Not implemented [WARNING]
	db $c0			;Wait 1
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $6a			;Volume 9
					;Wait Repeat 4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
			;CMD $c50 Waveform Not implemented [WARNING]
					;Wait Repeat 4
	db $67			;Volume 6
					;Wait Repeat 4
	db $66			;Volume 5
	db $cc			;Wait 13
			;CMD $c10 Waveform Not implemented [WARNING]
	db $d2			;Wait 19
	db $bf			;[End-Of-Track]
.track_005:
	db $10			;Note E-2
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$28			; SCC Set Waveform 5
	db $c3			;Wait 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
	db $6a			;Volume 9
					;Wait Repeat 4
	db $10			;Note E-2
	db $69			;Volume 8
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $17			;Note B-2
	db $66			;Volume 5
	db $79			;Instrument 8
	db $a9,$50			; SCC Set Waveform 12
	db $c4			;Wait 5
	db $94,$55		;CMD Vibrato
	db $c5			;Wait 6
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $16			;Note A#2
	db $c5			;Wait 6
	db $94,$54		;CMD Vibrato
	db $c3			;Wait 4
	db $65			;Volume 4
	db $c2			;Wait 3
	db $64			;Volume 3
	db $9b			;CMD End 
					;Wait Repeat 3
	db $63			;Volume 2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_006:
	db $1c			;Note E-3
	db $69			;Volume 8
	db $7c			;Instrument 11
	db $df			;Wait 32
	db $10			;Note E-2
	db $67			;Volume 6
	db $7a			;Instrument 9
	db $c1			;Wait 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $68			;Volume 7
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $69			;Volume 8
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $6d			;Volume 12
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $69			;Volume 8
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_007:
	db $60			;Release 96
	db $e2			;Wait 35
	db $10			;Note E-2
	db $64			;Volume 3
	db $7a			;Instrument 9
	db $a1,$07		;CMD Track detune
	db $c1			;Wait 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $bf			;[End-Of-Track]
.track_008:
	db $21			;Note A-3
	db $6d			;Volume 12
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $5d			;Note A-8
	db $73			;Instrument 2
					;Wait Repeat 4
	db $5d			;Note A-8
					;Wait Repeat 4
	db $43			;Note G-6
	db $6b			;Volume 10
	db $75			;Instrument 4
					;Wait Repeat 4
	db $43			;Note G-6
	db $6a			;Volume 9
					;Wait Repeat 4
	db $43			;Note G-6
	db $69			;Volume 8
					;Wait Repeat 4
	db $43			;Note G-6
	db $68			;Volume 7
	db $db			;Wait 28
	db $2b			;Note G-4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_009:
	db $04			;Note E-1
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $a1,$0f		;CMD Track detune
	db $df			;Wait 32
	db $23			;Note B-3
	db $69			;Volume 8
	db $79			;Instrument 8
	db $9a,$01			;CMD Note delay
	db $c4			;Wait 5
	db $94,$55		;CMD Vibrato
	db $c5			;Wait 6
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $22			;Note A#3
	db $c5			;Wait 6
	db $94,$54		;CMD Vibrato
	db $c7			;Wait 8
	db $9b			;CMD End 
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_012:
	db $04			;Note E-1
	db $6d			;Volume 12
	db $77			;Instrument 6
	db $a9,$28			; SCC Set Waveform 5
	db $c6			;Wait 7
			;CMD $c1a Waveform Not implemented [WARNING]
	db $c0			;Wait 1
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $6a			;Volume 9
					;Wait Repeat 4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
			;CMD $c50 Waveform Not implemented [WARNING]
					;Wait Repeat 4
	db $67			;Volume 6
	db $d0			;Wait 17
			;CMD $c10 Waveform Not implemented [WARNING]
	db $d2			;Wait 19
	db $bf			;[End-Of-Track]
.track_013:
	db $10			;Note E-2
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$28			; SCC Set Waveform 5
	db $c3			;Wait 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
	db $6a			;Volume 9
					;Wait Repeat 4
	db $10			;Note E-2
	db $69			;Volume 8
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
	db $68			;Volume 7
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_014:
	db $60			;Release 96
	db $df			;Wait 32
	db $1c			;Note E-3
	db $67			;Volume 6
	db $7a			;Instrument 9
	db $a9,$38			; SCC Set Waveform 7
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
	db $68			;Volume 7
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6d			;Volume 12
	db $a9,$38			; SCC Set Waveform 7
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6a			;Volume 9
					;Wait Repeat 2
	db $1d			;Note F-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1c			;Note E-3
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $67			;Volume 6
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_015:
	db $60			;Release 96
	db $e2			;Wait 35
	db $10			;Note E-2
	db $64			;Volume 3
	db $7a			;Instrument 9
	db $a1,$07		;CMD Track detune
	db $c1			;Wait 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
	db $bf			;[End-Of-Track]
.track_016:
	db $21			;Note A-3
	db $6d			;Volume 12
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $5d			;Note A-8
	db $73			;Instrument 2
					;Wait Repeat 4
	db $5d			;Note A-8
					;Wait Repeat 4
	db $43			;Note G-6
	db $6b			;Volume 10
	db $75			;Instrument 4
					;Wait Repeat 4
	db $43			;Note G-6
	db $6a			;Volume 9
					;Wait Repeat 4
	db $43			;Note G-6
	db $69			;Volume 8
					;Wait Repeat 4
	db $43			;Note G-6
	db $68			;Volume 7
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_017:
	db $04			;Note E-1
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $a1,$0f		;CMD Track detune
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_018:
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_020:
	db $04			;Note E-1
	db $6d			;Volume 12
	db $77			;Instrument 6
	db $a9,$28			; SCC Set Waveform 5
	db $c6			;Wait 7
			;CMD $c1a Waveform Not implemented [WARNING]
	db $c0			;Wait 1
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $6a			;Volume 9
					;Wait Repeat 4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
			;CMD $c50 Waveform Not implemented [WARNING]
					;Wait Repeat 4
	db $67			;Volume 6
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_021:
	db $10			;Note E-2
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$28			; SCC Set Waveform 5
	db $c3			;Wait 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
	db $6a			;Volume 9
					;Wait Repeat 4
	db $10			;Note E-2
	db $69			;Volume 8
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_024:
	db $10			;Note E-2
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
	db $6b			;Volume 10
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_025:
	db $23			;Note B-3
	db $67			;Volume 6
	db $79			;Instrument 8
	db $9a,$01			;CMD Note delay
	db $c4			;Wait 5
	db $94,$85		;CMD Vibrato
	db $c7			;Wait 8
	db $9b			;CMD End 
	db $c4			;Wait 5
	db $94,$84		;CMD Vibrato
	db $c8			;Wait 9
	db $9b			;CMD End 
	db $c4			;Wait 5
	db $22			;Note A#3
	db $67			;Volume 6
	db $9a,$01			;CMD Note delay
					;Wait Repeat 5
	db $94,$85		;CMD Vibrato
	db $c7			;Wait 8
	db $9b			;CMD End 
	db $c4			;Wait 5
	db $94,$64		;CMD Vibrato
	db $c8			;Wait 9
	db $9b			;CMD End 
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_026:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_028:
	db $66			;Volume 5
	db $cc			;Wait 13
			;CMD $c10 Waveform Not implemented [WARNING]
	db $d2			;Wait 19
	db $66			;Volume 5
	db $cc			;Wait 13
			;CMD $c10 Waveform Not implemented [WARNING]
	db $c2			;Wait 3
	db $65			;Volume 4
	db $c7			;Wait 8
	db $64			;Volume 3
	db $c3			;Wait 4
	db $63			;Volume 2
	db $c1			;Wait 2
	db $64			;Volume 3
	db $c0			;Wait 1
	db $65			;Volume 4
	db $bf			;[End-Of-Track]
.track_029:
	db $23			;Note B-3
	db $69			;Volume 8
	db $79			;Instrument 8
	db $a9,$18			; SCC Set Waveform 3
	db $c4			;Wait 5
	db $94,$85		;CMD Vibrato
	db $c8			;Wait 9
	db $94,$a5		;CMD Vibrato
	db $cb			;Wait 12
	db $67			;Volume 6
	db $c3			;Wait 4
	db $65			;Volume 4
	db $c0			;Wait 1
	db $60			;Release 96
	db $9b			;CMD End 
					;Wait Repeat 1
	db $22			;Note A#3
	db $69			;Volume 8
	db $79			;Instrument 8
	db $a9,$18			; SCC Set Waveform 3
	db $c4			;Wait 5
	db $94,$35		;CMD Vibrato
	db $c8			;Wait 9
	db $94,$95		;CMD Vibrato
	db $cb			;Wait 12
	db $67			;Volume 6
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $65			;Volume 4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_030:
	db $10			;Note E-2
	db $67			;Volume 6
	db $7a			;Instrument 9
	db $a9,$48			; SCC Set Waveform 11
	db $c1			;Wait 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $68			;Volume 7
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $13			;Note G-2
	db $69			;Volume 8
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $13			;Note G-2
	db $6d			;Volume 12
					;Wait Repeat 2
	db $11			;Note F-2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $10			;Note E-2
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $0e			;Note D-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $10			;Note E-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $11			;Note F-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $13			;Note G-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $10			;Note E-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1d			;Note F-3
	db $67			;Volume 6
	db $a9,$38			; SCC Set Waveform 7
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1d			;Note F-3
	db $68			;Volume 7
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1c			;Note E-3
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1d			;Note F-3
	db $69			;Volume 8
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1f			;Note G-3
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $68			;Volume 7
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_031:
	db $c2			;Wait 3
	db $10			;Note E-2
	db $65			;Volume 4
	db $7a			;Instrument 9
	db $a1,$07		;CMD Track detune
	db $c1			;Wait 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $0e			;Note D-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $10			;Note E-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $11			;Note F-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $13			;Note G-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1c			;Note E-3
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1d			;Note F-3
	db $64			;Volume 3
	db $a1,$07		;CMD Track detune
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $bf			;[End-Of-Track]
.track_033:
	db $23			;Note B-3
	db $67			;Volume 6
	db $79			;Instrument 8
	db $9a,$01			;CMD Note delay
	db $c4			;Wait 5
	db $94,$35		;CMD Vibrato
	db $c5			;Wait 6
	db $9b			;CMD End 
	db $c6			;Wait 7
	db $94,$34		;CMD Vibrato
					;Wait Repeat 7
	db $9b			;CMD End 
					;Wait Repeat 7
	db $22			;Note A#3
	db $67			;Volume 6
	db $9a,$01			;CMD Note delay
	db $c4			;Wait 5
	db $94,$35		;CMD Vibrato
					;Wait Repeat 5
	db $9b			;CMD End 
	db $c7			;Wait 8
	db $94,$34		;CMD Vibrato
	db $c6			;Wait 7
	db $9b			;CMD End 
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_036:
	db $66			;Volume 5
	db $cc			;Wait 13
			;CMD $c10 Waveform Not implemented [WARNING]
	db $d2			;Wait 19
	db $66			;Volume 5
	db $cc			;Wait 13
			;CMD $c10 Waveform Not implemented [WARNING]
	db $c2			;Wait 3
	db $65			;Volume 4
	db $c7			;Wait 8
	db $64			;Volume 3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_037:
	db $23			;Note B-3
	db $69			;Volume 8
	db $79			;Instrument 8
	db $a9,$18			; SCC Set Waveform 3
	db $c4			;Wait 5
	db $94,$35		;CMD Vibrato
	db $c8			;Wait 9
	db $94,$55		;CMD Vibrato
	db $cb			;Wait 12
	db $67			;Volume 6
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $65			;Volume 4
	db $c1			;Wait 2
	db $22			;Note A#3
	db $69			;Volume 8
	db $79			;Instrument 8
	db $a9,$18			; SCC Set Waveform 3
	db $c4			;Wait 5
	db $94,$35		;CMD Vibrato
	db $c8			;Wait 9
	db $94,$55		;CMD Vibrato
	db $cb			;Wait 12
	db $67			;Volume 6
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $29			;Note F-4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_038:
	db $10			;Note E-2
	db $67			;Volume 6
	db $7a			;Instrument 9
	db $a9,$48			; SCC Set Waveform 11
	db $c1			;Wait 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $68			;Volume 7
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $13			;Note G-2
	db $69			;Volume 8
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $13			;Note G-2
	db $6d			;Volume 12
					;Wait Repeat 2
	db $11			;Note F-2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $10			;Note E-2
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $0e			;Note D-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $10			;Note E-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $11			;Note F-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $13			;Note G-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $10			;Note E-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1d			;Note F-3
	db $67			;Volume 6
	db $a9,$38			; SCC Set Waveform 7
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1d			;Note F-3
	db $68			;Volume 7
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $69			;Volume 8
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1c			;Note E-3
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1d			;Note F-3
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1f			;Note G-3
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $23			;Note B-3
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_039:
	db $60			;Release 96
	db $c2			;Wait 3
	db $10			;Note E-2
	db $65			;Volume 4
	db $7a			;Instrument 9
	db $a1,$07		;CMD Track detune
	db $c1			;Wait 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $0e			;Note D-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $10			;Note E-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $11			;Note F-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $13			;Note G-2
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1c			;Note E-3
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1d			;Note F-3
	db $64			;Volume 3
	db $a1,$07		;CMD Track detune
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
	db $c0			;Wait 1
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $a1,$00		;CMD Track detune
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_040:
	db $43			;Note G-6
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $43			;Note G-6
	db $6a			;Volume 9
					;Wait Repeat 4
	db $43			;Note G-6
	db $69			;Volume 8
					;Wait Repeat 4
	db $43			;Note G-6
	db $68			;Volume 7
					;Wait Repeat 4
	db $60			;Release 96
	db $cf			;Wait 16
	db $5d			;Note A-8
	db $70			;Volume 15
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6b			;Volume 10
					;Wait Repeat 2
	db $43			;Note G-6
	db $6a			;Volume 9
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $43			;Note G-6
	db $69			;Volume 8
					;Wait Repeat 4
	db $43			;Note G-6
	db $68			;Volume 7
					;Wait Repeat 4
	db $60			;Release 96
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_041:
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7d			;Instrument 12
	db $a1,$01		;CMD Track detune
	db $c3			;Wait 4
	db $3d			;Note C#6
	db $6a			;Volume 9
					;Wait Repeat 4
	db $3d			;Note C#6
	db $69			;Volume 8
					;Wait Repeat 4
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 4
	db $3d			;Note C#6
	db $6a			;Volume 9
					;Wait Repeat 4
	db $3d			;Note C#6
	db $69			;Volume 8
					;Wait Repeat 4
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 4
	db $3d			;Note C#6
	db $67			;Volume 6
					;Wait Repeat 4
	db $3e			;Note D-6
	db $6b			;Volume 10
	db $7d			;Instrument 12
					;Wait Repeat 4
	db $3e			;Note D-6
	db $6a			;Volume 9
					;Wait Repeat 4
	db $3e			;Note D-6
	db $69			;Volume 8
					;Wait Repeat 4
	db $3e			;Note D-6
	db $68			;Volume 7
					;Wait Repeat 4
	db $39			;Note A-5
	db $6b			;Volume 10
	db $7d			;Instrument 12
					;Wait Repeat 4
	db $39			;Note A-5
	db $6a			;Volume 9
					;Wait Repeat 4
	db $39			;Note A-5
	db $69			;Volume 8
					;Wait Repeat 4
	db $39			;Note A-5
	db $68			;Volume 7
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_044:
	db $28			;Note E-4
	db $63			;Volume 2
	db $7b			;Instrument 10
	db $92,$10			;CMD Portamento down
	db $c3			;Wait 4
	db $92,$20			;CMD Portamento down
					;Wait Repeat 4
	db $95,$10			;CMD Portamento up
					;Wait Repeat 4
	db $95,$20			;CMD Portamento up
					;Wait Repeat 4
	db $62			;Volume 1
	db $92,$10			;CMD Portamento down
					;Wait Repeat 4
	db $92,$20			;CMD Portamento down
					;Wait Repeat 4
	db $95,$10			;CMD Portamento up
	db $c5			;Wait 6
	db $95,$20			;CMD Portamento up
	db $c1			;Wait 2
	db $92,$10			;CMD Portamento down
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $68			;Volume 7
	db $7c			;Instrument 11
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $26			;Note D-4
	db $67			;Volume 6
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $24			;Note C-4
	db $c7			;Wait 8
	db $23			;Note B-3
	db $c1			;Wait 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1b			;Note D#3
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_045:
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $cf			;Wait 16
	db $6c			;Volume 11
	db $cd			;Wait 14
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $26			;Note D-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $24			;Note C-4
	db $c7			;Wait 8
	db $23			;Note B-3
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $21			;Note A-3
	db $c7			;Wait 8
	db $20			;Note G#3
	db $c3			;Wait 4
	db $1f			;Note G-3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_046:
	db $25			;Note C#4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $d1			;Wait 18
	db $6c			;Volume 11
	db $cb			;Wait 12
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6a			;Volume 9
	db $cf			;Wait 16
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1b			;Note D#3
	db $c3			;Wait 4
	db $1a			;Note D-3
					;Wait Repeat 4
	db $19			;Note C#3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_047:
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $dd			;Wait 30
	db $1e			;Note F#3
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6a			;Volume 9
	db $9d,$00			;CMD Arpegio speed
	db $c2			;Wait 3
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $68			;Volume 7
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $62			;Volume 1
	db $7c			;Instrument 11
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $60			;Release 96
	db $cc			;Wait 13
	db $1f			;Note G-3
	db $65			;Volume 4
	db $c3			;Wait 4
	db $1e			;Note F#3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_048:
	db $43			;Note G-6
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $43			;Note G-6
	db $6a			;Volume 9
					;Wait Repeat 4
	db $43			;Note G-6
	db $69			;Volume 8
					;Wait Repeat 4
	db $43			;Note G-6
	db $68			;Volume 7
	db $d3			;Wait 20
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
					;Wait Repeat 4
	db $5d			;Note A-8
	db $7e			;Instrument 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $73			;Instrument 2
	db $c7			;Wait 8
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_049:
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7d			;Instrument 12
	db $a1,$01		;CMD Track detune
	db $c3			;Wait 4
	db $3d			;Note C#6
	db $6a			;Volume 9
					;Wait Repeat 4
	db $3d			;Note C#6
	db $69			;Volume 8
					;Wait Repeat 4
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 4
	db $3d			;Note C#6
	db $6a			;Volume 9
					;Wait Repeat 4
	db $3d			;Note C#6
	db $69			;Volume 8
					;Wait Repeat 4
	db $3c			;Note C-6
	db $6b			;Volume 10
	db $7d			;Instrument 12
	db $a1,$00		;CMD Track detune
					;Wait Repeat 4
	db $3c			;Note C-6
	db $6a			;Volume 9
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6b			;Volume 10
	db $c5			;Wait 6
	db $2f			;Note B-4
	db $6a			;Volume 9
					;Wait Repeat 6
	db $2f			;Note B-4
	db $69			;Volume 8
	db $c3			;Wait 4
	db $31			;Note C#5
	db $6b			;Volume 10
	db $c5			;Wait 6
	db $31			;Note C#5
	db $6a			;Volume 9
					;Wait Repeat 6
	db $31			;Note C#5
	db $69			;Volume 8
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_052:
	db $28			;Note E-4
	db $63			;Volume 2
	db $7b			;Instrument 10
	db $92,$10			;CMD Portamento down
	db $c3			;Wait 4
	db $92,$20			;CMD Portamento down
					;Wait Repeat 4
	db $95,$10			;CMD Portamento up
					;Wait Repeat 4
	db $95,$20			;CMD Portamento up
					;Wait Repeat 4
	db $62			;Volume 1
	db $92,$10			;CMD Portamento down
					;Wait Repeat 4
	db $92,$20			;CMD Portamento down
					;Wait Repeat 4
	db $95,$10			;CMD Portamento up
	db $c5			;Wait 6
	db $95,$20			;CMD Portamento up
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $9b			;CMD End 
	db $cf			;Wait 16
	db $16			;Note A#2
	db $6b			;Volume 10
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_053:
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $cf			;Wait 16
	db $6c			;Volume 11
	db $c7			;Wait 8
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 8
	db $24			;Note C-4
	db $6b			;Volume 10
	db $cf			;Wait 16
	db $25			;Note C#4
	db $6b			;Volume 10
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_054:
	db $25			;Note C#4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $d1			;Wait 18
	db $6c			;Volume 11
	db $c5			;Wait 6
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c7			;Wait 8
	db $1c			;Note E-3
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6b			;Volume 10
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_055:
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $d7			;Wait 24
	db $1e			;Note F#3
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $60			;Release 96
	db $c2			;Wait 3
	db $1c			;Note E-3
	db $68			;Volume 7
	db $a1,$03		;CMD Track detune
	db $c3			;Wait 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $1d			;Note F-3
	db $bf			;[End-Of-Track]
.track_056:
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $7e			;Instrument 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c7			;Wait 8
	db $5d			;Note A-8
	db $6d			;Volume 12
					;Wait Repeat 8
	db $13			;Note G-2
	db $6e			;Volume 13
	db $7c			;Instrument 11
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_057:
	db $32			;Note D-5
	db $6b			;Volume 10
	db $7d			;Instrument 12
	db $c5			;Wait 6
	db $32			;Note D-5
	db $6a			;Volume 9
					;Wait Repeat 6
	db $32			;Note D-5
	db $69			;Volume 8
	db $c3			;Wait 4
	db $33			;Note D#5
	db $6b			;Volume 10
	db $c5			;Wait 6
	db $33			;Note D#5
	db $6a			;Volume 9
					;Wait Repeat 6
	db $33			;Note D#5
	db $69			;Volume 8
	db $d3			;Wait 20
	db $21			;Note A-3
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $22			;Note A#3
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $22			;Note A#3
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $a1,$00		;CMD Track detune
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_060:
	db $15			;Note A-2
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $cf			;Wait 16
	db $14			;Note G#2
	db $6d			;Volume 12
					;Wait Repeat 16
	db $1b			;Note D#3
	db $6b			;Volume 10
					;Wait Repeat 16
	db $19			;Note C#3
	db $69			;Volume 8
	db $cd			;Wait 14
	db $22			;Note A#3
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_061:
	db $26			;Note D-4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $cf			;Wait 16
	db $27			;Note D#4
	db $6d			;Volume 12
					;Wait Repeat 16
	db $28			;Note E-4
	db $6b			;Volume 10
	db $d6			;Wait 23
	db $37			;Note G-5
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $6a			;Volume 9
	db $c4			;Wait 5
	db $26			;Note D-4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_062:
	db $1c			;Note E-3
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
	db $6c			;Volume 11
					;Wait Repeat 4
	db $1e			;Note F#3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1e			;Note F#3
					;Wait Repeat 4
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 4
	db $22			;Note A#3
	db $6a			;Volume 9
					;Wait Repeat 4
	db $21			;Note A-3
	db $69			;Volume 8
					;Wait Repeat 4
	db $22			;Note A#3
					;Wait Repeat 4
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 4
	db $22			;Note A#3
	db $69			;Volume 8
					;Wait Repeat 4
	db $3d			;Note C#6
	db $68			;Volume 7
	db $c0			;Wait 1
	db $94,$23		;CMD Vibrato
	db $c2			;Wait 3
	db $67			;Volume 6
	db $c1			;Wait 2
	db $66			;Volume 5
	db $c0			;Wait 1
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_063:
	db $60			;Release 96
	db $c2			;Wait 3
	db $1c			;Note E-3
	db $68			;Volume 7
	db $7c			;Instrument 11
	db $a1,$03		;CMD Track detune
	db $c3			;Wait 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
	db $6a			;Volume 9
					;Wait Repeat 4
	db $1e			;Note F#3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1e			;Note F#3
					;Wait Repeat 4
	db $21			;Note A-3
	db $68			;Volume 7
					;Wait Repeat 4
	db $22			;Note A#3
	db $67			;Volume 6
					;Wait Repeat 4
	db $21			;Note A-3
	db $66			;Volume 5
					;Wait Repeat 4
	db $22			;Note A#3
					;Wait Repeat 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $22			;Note A#3
	db $c1			;Wait 2
	db $42			;Note F#6
	db $65			;Volume 4
	db $7c			;Instrument 11
	db $a1,$00		;CMD Track detune
	db $c0			;Wait 1
	db $94,$23		;CMD Vibrato
	db $c1			;Wait 2
	db $64			;Volume 3
	db $c2			;Wait 3
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_064:
	db $df			;Wait 32
	db $29			;Note F-4
	db $6d			;Volume 12
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $21			;Note A-3
	db $c7			;Wait 8
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $10			;Note E-2
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c3			;Wait 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $43			;Note G-6
	db $6b			;Volume 10
	db $75			;Instrument 4
					;Wait Repeat 4
	db $43			;Note G-6
	db $6a			;Volume 9
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_065:
	db $df			;Wait 32
	db $12			;Note F#2
	db $6d			;Volume 12
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $10			;Note E-2
	db $c7			;Wait 8
	db $12			;Note F#2
	db $c1			;Wait 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $0e			;Note D-2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $0e			;Note D-2
	db $6d			;Volume 12
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $6d			;Volume 12
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_068:
	db $23			;Note B-3
	db $6d			;Volume 12
	db $7d			;Instrument 12
	db $c5			;Wait 6
	db $1f			;Note G-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c5			;Wait 6
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $c5			;Wait 6
	db $1b			;Note D#3
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $c5			;Wait 6
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $17			;Note B-2
	db $c3			;Wait 4
	db $10			;Note E-2
	db $68			;Volume 7
					;Wait Repeat 4
	db $19			;Note C#3
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $15			;Note A-2
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6d			;Volume 12
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_069:
	db $27			;Note D#4
	db $6d			;Volume 12
	db $7d			;Instrument 12
	db $a9,$38			; SCC Set Waveform 7
	db $c5			;Wait 6
	db $23			;Note B-3
	db $c1			;Wait 2
	db $25			;Note C#4
	db $c5			;Wait 6
	db $21			;Note A-3
	db $c1			;Wait 2
	db $23			;Note B-3
	db $c5			;Wait 6
	db $1f			;Note G-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c5			;Wait 6
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $1e			;Note F#3
	db $6e			;Volume 13
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1e			;Note F#3
	db $c3			;Wait 4
	db $1e			;Note F#3
	db $68			;Volume 7
					;Wait Repeat 4
	db $20			;Note G#3
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $27			;Note D#4
	db $6b			;Volume 10
	db $a9,$28			; SCC Set Waveform 19
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $27			;Note D#4
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $27			;Note D#4
	db $6d			;Volume 12
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_070:
	db $2b			;Note G-4
	db $6d			;Volume 12
	db $7d			;Instrument 12
	db $a9,$38			; SCC Set Waveform 7
	db $c5			;Wait 6
	db $27			;Note D#4
	db $c1			;Wait 2
	db $29			;Note F-4
	db $c5			;Wait 6
	db $25			;Note C#4
	db $c1			;Wait 2
	db $27			;Note D#4
	db $c5			;Wait 6
	db $23			;Note B-3
	db $c1			;Wait 2
	db $25			;Note C#4
	db $c5			;Wait 6
	db $21			;Note A-3
	db $c1			;Wait 2
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $23			;Note B-3
	db $c3			;Wait 4
	db $23			;Note B-3
	db $68			;Volume 7
					;Wait Repeat 4
	db $25			;Note C#4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $22			;Note A#3
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $22			;Note A#3
	db $6d			;Volume 12
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_071:
	db $60			;Release 96
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $63			;Volume 2
	db $7d			;Instrument 12
	db $a9,$38			; SCC Set Waveform 7
					;Wait Repeat 2
	db $2b			;Note G-4
	db $68			;Volume 7
	db $c5			;Wait 6
	db $27			;Note D#4
	db $63			;Volume 2
	db $c1			;Wait 2
	db $29			;Note F-4
	db $68			;Volume 7
	db $c5			;Wait 6
	db $25			;Note C#4
	db $63			;Volume 2
	db $c1			;Wait 2
	db $27			;Note D#4
	db $68			;Volume 7
	db $c5			;Wait 6
	db $23			;Note B-3
	db $63			;Volume 2
	db $c1			;Wait 2
	db $25			;Note C#4
	db $68			;Volume 7
	db $c6			;Wait 7
	db $1d			;Note F-3
	db $65			;Volume 4
	db $c1			;Wait 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1e			;Note F#3
	db $d6			;Wait 23
	db $bf			;[End-Of-Track]
.track_072:
	db $43			;Note G-6
	db $69			;Volume 8
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $43			;Note G-6
	db $68			;Volume 7
					;Wait Repeat 4
	db $28			;Note E-4
	db $6d			;Volume 12
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $23			;Note B-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6a			;Volume 9
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_073:
	db $60			;Release 96
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $6d			;Volume 12
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $0e			;Note D-2
	db $6d			;Volume 12
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_074:
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_076:
	db $60			;Release 96
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $15			;Note A-2
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_077:
	db $60			;Release 96
	db $c3			;Wait 4
	db $27			;Note D#4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $27			;Note D#4
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_078:
	db $60			;Release 96
	db $c3			;Wait 4
	db $22			;Note A#3
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $22			;Note A#3
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_080:
	db $1b			;Note D#3
	db $6d			;Volume 12
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
					;Wait Repeat 2
	db $43			;Note G-6
	db $68			;Volume 7
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $43			;Note G-6
	db $67			;Volume 6
	db $cb			;Wait 12
	db $1b			;Note D#3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
					;Wait Repeat 2
	db $43			;Note G-6
	db $68			;Volume 7
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $43			;Note G-6
	db $67			;Volume 6
	db $cb			;Wait 12
	db $1b			;Note D#3
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
					;Wait Repeat 2
	db $43			;Note G-6
	db $68			;Volume 7
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $43			;Note G-6
	db $67			;Volume 6
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_081:
	db $1b			;Note D#3
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $a1,$01		;CMD Track detune
	db $c1			;Wait 2
	db $1b			;Note D#3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6e			;Volume 13
	db $a1,$01		;CMD Track detune
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6e			;Volume 13
	db $a1,$01		;CMD Track detune
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6b			;Volume 10
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_084:
	db $1b			;Note D#3
	db $6b			;Volume 10
	db $7f			;Instrument 14
	db $a9,$18			; SCC Set Waveform 3
	db $c1			;Wait 2
	db $1b			;Note D#3
	db $68			;Volume 7
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $1a			;Note D-3
	db $68			;Volume 7
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6b			;Volume 10
	db $7f			;Instrument 14
	db $a9,$18			; SCC Set Waveform 3
					;Wait Repeat 2
	db $1b			;Note D#3
	db $68			;Volume 7
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $31			;Note C#5
	db $69			;Volume 8
					;Wait Repeat 2
	db $32			;Note D-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $31			;Note C#5
	db $69			;Volume 8
					;Wait Repeat 2
	db $32			;Note D-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6b			;Volume 10
	db $7f			;Instrument 14
	db $a9,$18			; SCC Set Waveform 3
					;Wait Repeat 2
	db $1b			;Note D#3
	db $68			;Volume 7
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_085:
	db $28			;Note E-4
	db $6e			;Volume 13
	db $7d			;Instrument 12
	db $95,$08			;CMD Portamento up
	db $c0			;Wait 1
	db $29			;Note F-4
	db $6e			;Volume 13
	db $9b			;CMD End 
					;Wait Repeat 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $69			;Volume 8
	db $ca			;Wait 11
	db $29			;Note F-4
	db $6b			;Volume 10
	db $7d			;Instrument 12
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6d			;Volume 12
	db $7d			;Instrument 12
					;Wait Repeat 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $69			;Volume 8
	db $c5			;Wait 6
	db $29			;Note F-4
	db $6e			;Volume 13
	db $7d			;Instrument 12
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $69			;Volume 8
	db $cb			;Wait 12
	db $29			;Note F-4
	db $6b			;Volume 10
	db $7d			;Instrument 12
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6d			;Volume 12
	db $7d			;Instrument 12
					;Wait Repeat 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $69			;Volume 8
	db $c5			;Wait 6
	db $29			;Note F-4
	db $6e			;Volume 13
	db $7d			;Instrument 12
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $69			;Volume 8
	db $cb			;Wait 12
	db $29			;Note F-4
	db $6b			;Volume 10
	db $7d			;Instrument 12
	db $c0			;Wait 1
	db $6a			;Volume 9
	db $bf			;[End-Of-Track]
.track_086:
	db $2d			;Note A-4
	db $6c			;Volume 11
	db $7d			;Instrument 12
	db $a9,$38			; SCC Set Waveform 7
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $6c			;Volume 11
	db $a0			;CMD Note link
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $2e			;Note A#4
	db $62			;Volume 1
	db $7b			;Instrument 10
	db $a9,$38			; SCC Set Waveform 7
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6a			;Volume 9
	db $7d			;Instrument 12
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $68			;Volume 7
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $62			;Volume 1
	db $7b			;Instrument 10
	db $a9,$38			; SCC Set Waveform 7
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6c			;Volume 11
	db $7d			;Instrument 12
	db $a9,$38			; SCC Set Waveform 7
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $68			;Volume 7
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $62			;Volume 1
	db $7b			;Instrument 10
	db $a9,$38			; SCC Set Waveform 7
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6a			;Volume 9
	db $7d			;Instrument 12
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $68			;Volume 7
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $62			;Volume 1
	db $7b			;Instrument 10
	db $a9,$38			; SCC Set Waveform 7
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6c			;Volume 11
	db $7d			;Instrument 12
	db $a9,$38			; SCC Set Waveform 7
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $68			;Volume 7
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $62			;Volume 1
	db $7b			;Instrument 10
	db $a9,$38			; SCC Set Waveform 7
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6a			;Volume 9
	db $7d			;Instrument 12
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_087:
	db $60			;Release 96
	db $c3			;Wait 4
	db $22			;Note A#3
	db $62			;Volume 1
	db $7d			;Instrument 12
	db $c1			;Wait 2
	db $60			;Release 96
	db $62			;Volume 1
					;Wait Repeat 2
	db $22			;Note A#3
	db $62			;Volume 1
	db $7d			;Instrument 12
					;Wait Repeat 2
	db $60			;Release 96
	db $62			;Volume 1
					;Wait Repeat 2
	db $22			;Note A#3
	db $62			;Volume 1
	db $7d			;Instrument 12
	db $c7			;Wait 8
	db $23			;Note B-3
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $22			;Note A#3
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $62			;Volume 1
					;Wait Repeat 2
	db $22			;Note A#3
	db $62			;Volume 1
	db $7d			;Instrument 12
					;Wait Repeat 2
	db $60			;Release 96
	db $62			;Volume 1
					;Wait Repeat 2
	db $22			;Note A#3
	db $62			;Volume 1
	db $7d			;Instrument 12
	db $c3			;Wait 4
	db $31			;Note C#5
	db $65			;Volume 4
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $22			;Note A#3
	db $62			;Volume 1
	db $7d			;Instrument 12
	db $c1			;Wait 2
	db $60			;Release 96
	db $62			;Volume 1
					;Wait Repeat 2
	db $22			;Note A#3
	db $62			;Volume 1
	db $7d			;Instrument 12
					;Wait Repeat 2
	db $60			;Release 96
	db $62			;Volume 1
					;Wait Repeat 2
	db $22			;Note A#3
	db $62			;Volume 1
	db $7d			;Instrument 12
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_088:
	db $2a			;Note F#4
	db $68			;Volume 7
	db $79			;Instrument 8
	db $c7			;Wait 8
	db $28			;Note E-4
					;Wait Repeat 8
	db $27			;Note D#4
					;Wait Repeat 8
	db $28			;Note E-4
	db $c3			;Wait 4
	db $29			;Note F-4
	db $6d			;Volume 12
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $24			;Note C-4
	db $6c			;Volume 11
					;Wait Repeat 1
	db $1d			;Note F-3
	db $bf			;[End-Of-Track]
.track_089:
	db $2d			;Note A-4
	db $68			;Volume 7
	db $79			;Instrument 8
	db $c7			;Wait 8
	db $2d			;Note A-4
					;Wait Repeat 8
	db $2a			;Note F#4
					;Wait Repeat 8
	db $2d			;Note A-4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_090:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_092:
	db $06			;Note F#1
	db $69			;Volume 8
	db $77			;Instrument 6
	db $a9,$40			; SCC Set Waveform 8
	db $c0			;Wait 1
			;CMD $c11 Waveform Not implemented [WARNING]
					;Wait Repeat 1
	db $68			;Volume 7
	db $c1			;Wait 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $66			;Volume 5
					;Wait Repeat 2
	db $09			;Note A-1
	db $69			;Volume 8
	db $a9,$10			; SCC Set Waveform 2
	db $c0			;Wait 1
			;CMD $c11 Waveform Not implemented [WARNING]
					;Wait Repeat 1
	db $68			;Volume 7
	db $c1			;Wait 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $66			;Volume 5
					;Wait Repeat 2
	db $0a			;Note A#1
	db $6a			;Volume 9
	db $77			;Instrument 6
	db $a9,$40			; SCC Set Waveform 8
	db $c0			;Wait 1
			;CMD $c11 Waveform Not implemented [WARNING]
					;Wait Repeat 1
	db $69			;Volume 8
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $03			;Note D#1
	db $6b			;Volume 10
	db $a9,$10			; SCC Set Waveform 2
	db $c0			;Wait 1
			;CMD $c11 Waveform Not implemented [WARNING]
					;Wait Repeat 1
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $67			;Volume 6
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_093:
	db $31			;Note C#5
	db $6d			;Volume 12
	db $7d			;Instrument 12
	db $c3			;Wait 4
	db $31			;Note C#5
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $2e			;Note A#4
	db $6d			;Volume 12
					;Wait Repeat 4
	db $2e			;Note A#4
					;Wait Repeat 4
	db $31			;Note C#5
					;Wait Repeat 4
	db $31			;Note C#5
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_094:
	db $42			;Note F#6
	db $68			;Volume 7
	db $7f			;Instrument 14
	db $c0			;Wait 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $36			;Note F#5
	db $67			;Volume 6
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $40			;Note E-6
	db $68			;Volume 7
	db $a9,$38			; SCC Set Waveform 7
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $34			;Note E-5
	db $67			;Volume 6
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $24			;Note C-4
					;Wait Repeat 1
	db $27			;Note D#4
	db $68			;Volume 7
	db $a9,$10			; SCC Set Waveform 2
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $2a			;Note F#4
	db $67			;Volume 6
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
	db $a9,$28			; SCC Set Waveform 5
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $31			;Note C#5
	db $67			;Volume 6
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $39			;Note A-5
	db $bf			;[End-Of-Track]
.track_095:
	db $c1			;Wait 2
	db $42			;Note F#6
	db $62			;Volume 1
	db $7f			;Instrument 14
	db $c0			;Wait 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $40			;Note E-6
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $24			;Note C-4
					;Wait Repeat 1
	db $27			;Note D#4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $31			;Note C#5
	db $bf			;[End-Of-Track]
.track_096:
	db $1f			;Note G-3
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $73			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6d			;Volume 12
					;Wait Repeat 2
	db $43			;Note G-6
	db $68			;Volume 7
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $43			;Note G-6
	db $67			;Volume 6
	db $cf			;Wait 16
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
					;Wait Repeat 2
	db $43			;Note G-6
	db $68			;Volume 7
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $43			;Note G-6
	db $67			;Volume 6
	db $cf			;Wait 16
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
					;Wait Repeat 2
	db $43			;Note G-6
	db $68			;Volume 7
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $43			;Note G-6
	db $67			;Volume 6
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_097:
	db $1b			;Note D#3
	db $6e			;Volume 13
	db $7f			;Instrument 14
	db $a1,$01		;CMD Track detune
	db $c1			;Wait 2
	db $1b			;Note D#3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
	db $6c			;Volume 11
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6e			;Volume 13
	db $a1,$01		;CMD Track detune
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6e			;Volume 13
	db $a1,$01		;CMD Track detune
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $1b			;Note D#3
	db $6b			;Volume 10
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_100:
	db $1b			;Note D#3
	db $6b			;Volume 10
	db $7f			;Instrument 14
	db $a9,$18			; SCC Set Waveform 3
	db $c1			;Wait 2
	db $1b			;Note D#3
	db $67			;Volume 6
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $2e			;Note A#4
	db $62			;Volume 1
	db $7b			;Instrument 10
	db $a9,$38			; SCC Set Waveform 7
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6a			;Volume 9
	db $7d			;Instrument 12
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $68			;Volume 7
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $62			;Volume 1
	db $7b			;Instrument 10
	db $a9,$38			; SCC Set Waveform 7
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6c			;Volume 11
	db $7d			;Instrument 12
	db $a9,$38			; SCC Set Waveform 7
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $68			;Volume 7
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $62			;Volume 1
	db $7b			;Instrument 10
	db $a9,$38			; SCC Set Waveform 7
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6a			;Volume 9
	db $7d			;Instrument 12
					;Wait Repeat 2
	db $31			;Note C#5
	db $69			;Volume 8
	db $7c			;Instrument 11
					;Wait Repeat 2
	db $32			;Note D-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $31			;Note C#5
	db $69			;Volume 8
	db $a9,$38			; SCC Set Waveform 7
					;Wait Repeat 2
	db $32			;Note D-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6c			;Volume 11
	db $7d			;Instrument 12
	db $a9,$38			; SCC Set Waveform 7
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $68			;Volume 7
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $62			;Volume 1
	db $7b			;Instrument 10
	db $a9,$38			; SCC Set Waveform 7
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6a			;Volume 9
	db $7d			;Instrument 12
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_102:
	db $2d			;Note A-4
	db $6c			;Volume 11
	db $7d			;Instrument 12
	db $a9,$38			; SCC Set Waveform 7
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $6c			;Volume 11
	db $a0			;CMD Note link
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $2e			;Note A#4
	db $62			;Volume 1
	db $7b			;Instrument 10
	db $a9,$38			; SCC Set Waveform 7
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
	db $80			;Instrument 15
	db $c0			;Wait 1
	db $22			;Note A#3
	db $c1			;Wait 2
	db $94,$53		;CMD Vibrato
	db $c0			;Wait 1
	db $6a			;Volume 9
	db $c2			;Wait 3
	db $69			;Volume 8
					;Wait Repeat 3
	db $68			;Volume 7
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6b			;Volume 10
	db $9b			;CMD End 
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6a			;Volume 9
					;Wait Repeat 2
	db $1d			;Note F-3
	db $69			;Volume 8
					;Wait Repeat 2
	db $18			;Note C-3
	db $68			;Volume 7
	db $c3			;Wait 4
	db $17			;Note B-2
	db $c2			;Wait 3
	db $94,$53		;CMD Vibrato
	db $c4			;Wait 5
	db $12			;Note F#2
	db $6b			;Volume 10
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $17			;Note B-2
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $16			;Note A#2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $68			;Volume 7
	db $94,$53		;CMD Vibrato
	db $c1			;Wait 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $66			;Volume 5
	db $c0			;Wait 1
	db $1e			;Note F#3
	db $68			;Volume 7
	db $80			;Instrument 15
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_103:
	db $60			;Release 96
	db $c3			;Wait 4
	db $22			;Note A#3
	db $62			;Volume 1
	db $7d			;Instrument 12
	db $c1			;Wait 2
	db $60			;Release 96
	db $62			;Volume 1
	db $c5			;Wait 6
	db $21			;Note A-3
	db $67			;Volume 6
	db $80			;Instrument 15
	db $a1,$06		;CMD Track detune
	db $c0			;Wait 1
	db $22			;Note A#3
	db $c1			;Wait 2
	db $94,$23		;CMD Vibrato
	db $c8			;Wait 9
	db $21			;Note A-3
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1d			;Note F-3
	db $63			;Volume 2
					;Wait Repeat 2
	db $18			;Note C-3
	db $c3			;Wait 4
	db $17			;Note B-2
	db $c7			;Wait 8
	db $12			;Note F#2
	db $c1			;Wait 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $16			;Note A#2
	db $c7			;Wait 8
	db $1e			;Note F#3
	db $c1			;Wait 2
	db $22			;Note A#3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_108:
	db $26			;Note D-4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c7			;Wait 8
	db $22			;Note A#3
					;Wait Repeat 8
	db $60			;Release 96
					;Wait Repeat 8
	db $16			;Note A#2
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_109:
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c7			;Wait 8
	db $26			;Note D-4
					;Wait Repeat 8
	db $23			;Note B-3
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_110:
	db $31			;Note C#5
	db $68			;Volume 7
	db $80			;Instrument 15
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $29			;Note F-4
	db $67			;Volume 6
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $28			;Note E-4
	db $66			;Volume 5
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_111:
	db $c2			;Wait 3
	db $31			;Note C#5
	db $64			;Volume 3
	db $80			;Instrument 15
	db $a1,$08		;CMD Track detune
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $29			;Note F-4
	db $63			;Volume 2
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $20			;Note G#3
	db $62			;Volume 1
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $20			;Note G#3
	db $bf			;[End-Of-Track]
.track_112:
	db $c7			;Wait 8
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $7e			;Instrument 13
	db $d3			;Wait 20
	db $5d			;Note A-8
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $7e			;Instrument 13
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $d9			;Wait 26
	db $bf			;[End-Of-Track]
.track_113:
	db $60			;Release 96
	db $c2			;Wait 3
	db $21			;Note A-3
	db $67			;Volume 6
	db $7b			;Instrument 10
	db $a1,$03		;CMD Track detune
	db $c1			;Wait 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $21			;Note A-3
	db $c1			;Wait 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $21			;Note A-3
	db $c1			;Wait 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $21			;Note A-3
	db $c1			;Wait 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $21			;Note A-3
	db $c1			;Wait 2
	db $20			;Note G#3
	db $bf			;[End-Of-Track]
.track_116:
	db $21			;Note A-3
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $63			;Volume 2
	db $c1			;Wait 2
	db $21			;Note A-3
	db $64			;Volume 3
					;Wait Repeat 2
	db $20			;Note G#3
	db $67			;Volume 6
	db $7f			;Instrument 14
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $21			;Note A-3
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $20			;Note G#3
	db $63			;Volume 2
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $63			;Volume 2
	db $c1			;Wait 2
	db $21			;Note A-3
	db $64			;Volume 3
					;Wait Repeat 2
	db $20			;Note G#3
	db $67			;Volume 6
	db $7f			;Instrument 14
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $21			;Note A-3
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $20			;Note G#3
	db $63			;Volume 2
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $63			;Volume 2
	db $c1			;Wait 2
	db $21			;Note A-3
	db $64			;Volume 3
					;Wait Repeat 2
	db $20			;Note G#3
	db $67			;Volume 6
	db $7f			;Instrument 14
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $21			;Note A-3
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $20			;Note G#3
	db $63			;Volume 2
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $63			;Volume 2
	db $c1			;Wait 2
	db $21			;Note A-3
	db $64			;Volume 3
					;Wait Repeat 2
	db $20			;Note G#3
	db $67			;Volume 6
	db $7f			;Instrument 14
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $21			;Note A-3
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $20			;Note G#3
	db $63			;Volume 2
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_117:
	db $1d			;Note F-3
	db $69			;Volume 8
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
	db $69			;Volume 8
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
	db $69			;Volume 8
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
	db $69			;Volume 8
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_118:
	db $60			;Release 96
	db $cf			;Wait 16
	db $19			;Note C#3
	db $69			;Volume 8
	db $80			;Instrument 15
	db $a9,$28			; SCC Set Waveform 5
	db $c0			;Wait 1
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $94,$53		;CMD Vibrato
	db $c0			;Wait 1
	db $68			;Volume 7
	db $c2			;Wait 3
	db $67			;Volume 6
	db $c0			;Wait 1
	db $19			;Note C#3
	db $69			;Volume 8
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $68			;Volume 7
	db $94,$53		;CMD Vibrato
	db $c1			;Wait 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $66			;Volume 5
	db $c4			;Wait 5
	db $14			;Note G#2
	db $6a			;Volume 9
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $13			;Note G-2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $17			;Note B-2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $16			;Note A#2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $94,$53		;CMD Vibrato
	db $c0			;Wait 1
	db $69			;Volume 8
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c2			;Wait 3
	db $11			;Note F-2
	db $6a			;Volume 9
	db $9b			;CMD End 
					;Wait Repeat 3
	db $69			;Volume 8
					;Wait Repeat 3
	db $68			;Volume 7
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_119:
	db $c0			;Wait 1
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $60			;Release 96
	db $cf			;Wait 16
	db $19			;Note C#3
	db $66			;Volume 5
	db $80			;Instrument 15
	db $a1,$07		;CMD Track detune
	db $c0			;Wait 1
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $65			;Volume 4
	db $94,$53		;CMD Vibrato
	db $c2			;Wait 3
	db $64			;Volume 3
	db $c1			;Wait 2
	db $19			;Note C#3
	db $66			;Volume 5
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $94,$53		;CMD Vibrato
	db $c8			;Wait 9
	db $14			;Note G#2
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $17			;Note B-2
					;Wait Repeat 4
	db $16			;Note A#2
	db $c1			;Wait 2
	db $94,$53		;CMD Vibrato
	db $c4			;Wait 5
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $11			;Note F-2
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_120:
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $7e			;Instrument 13
	db $db			;Wait 28
	db $5d			;Note A-8
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $73			;Instrument 2
	db $cf			;Wait 16
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_121:
	db $c0			;Wait 1
	db $20			;Note G#3
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $21			;Note A-3
	db $67			;Volume 6
	db $7b			;Instrument 10
	db $a1,$03		;CMD Track detune
	db $c1			;Wait 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $21			;Note A-3
	db $c1			;Wait 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $21			;Note A-3
	db $c1			;Wait 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1,$01		;CMD Track detune
	db $c1			;Wait 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $27			;Note D#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $27			;Note D#4
	db $c1			;Wait 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $27			;Note D#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $28			;Note E-4
	db $c1			;Wait 2
	db $27			;Note D#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $27			;Note D#4
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $bf			;[End-Of-Track]
.track_124:
	db $21			;Note A-3
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $63			;Volume 2
	db $c1			;Wait 2
	db $21			;Note A-3
	db $64			;Volume 3
					;Wait Repeat 2
	db $20			;Note G#3
	db $67			;Volume 6
	db $7f			;Instrument 14
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $21			;Note A-3
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $20			;Note G#3
	db $63			;Volume 2
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
					;Wait Repeat 2
	db $20			;Note G#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $63			;Volume 2
	db $c1			;Wait 2
	db $21			;Note A-3
	db $64			;Volume 3
					;Wait Repeat 2
	db $20			;Note G#3
	db $67			;Volume 6
	db $7f			;Instrument 14
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $21			;Note A-3
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $20			;Note G#3
	db $63			;Volume 2
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $20			;Note G#3
	db $c1			;Wait 2
	db $28			;Note E-4
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
					;Wait Repeat 2
	db $27			;Note D#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $27			;Note D#4
	db $63			;Volume 2
	db $c1			;Wait 2
	db $28			;Note E-4
	db $64			;Volume 3
					;Wait Repeat 2
	db $27			;Note D#4
	db $67			;Volume 6
	db $7f			;Instrument 14
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $28			;Note E-4
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $27			;Note D#4
	db $63			;Volume 2
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $27			;Note D#4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $63			;Volume 2
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $64			;Volume 3
					;Wait Repeat 2
	db $2b			;Note G-4
	db $67			;Volume 6
	db $7f			;Instrument 14
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2c			;Note G#4
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $63			;Volume 2
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_125:
	db $1d			;Note F-3
	db $69			;Volume 8
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
	db $69			;Volume 8
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
	db $69			;Volume 8
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $26			;Note D-4
	db $69			;Volume 8
					;Wait Repeat 4
	db $26			;Note D-4
					;Wait Repeat 4
	db $26			;Note D-4
					;Wait Repeat 4
	db $26			;Note D-4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_126:
	db $10			;Note E-2
	db $6a			;Volume 9
	db $80			;Instrument 15
	db $a9,$28			; SCC Set Waveform 5
	db $c2			;Wait 3
	db $69			;Volume 8
	db $94,$53		;CMD Vibrato
					;Wait Repeat 3
	db $68			;Volume 7
	db $c1			;Wait 2
	db $14			;Note G#2
	db $6a			;Volume 9
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $69			;Volume 8
	db $94,$53		;CMD Vibrato
					;Wait Repeat 3
	db $68			;Volume 7
	db $c1			;Wait 2
	db $13			;Note G-2
	db $6a			;Volume 9
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $69			;Volume 8
	db $94,$53		;CMD Vibrato
					;Wait Repeat 3
	db $68			;Volume 7
	db $c1			;Wait 2
	db $07			;Note G-1
	db $6a			;Volume 9
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $69			;Volume 8
	db $94,$53		;CMD Vibrato
					;Wait Repeat 3
	db $68			;Volume 7
					;Wait Repeat 3
	db $67			;Volume 6
	db $c3			;Wait 4
	db $66			;Volume 5
	db $c1			;Wait 2
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $65			;Volume 4
	db $c7			;Wait 8
	db $0d			;Note C#2
	db $69			;Volume 8
	db $c2			;Wait 3
	db $68			;Volume 7
	db $94,$53		;CMD Vibrato
					;Wait Repeat 3
	db $67			;Volume 6
					;Wait Repeat 3
	db $66			;Volume 5
	db $c3			;Wait 4
	db $65			;Volume 4
	db $c1			;Wait 2
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_127:
	db $c2			;Wait 3
	db $10			;Note E-2
	db $66			;Volume 5
	db $80			;Instrument 15
	db $c7			;Wait 8
	db $14			;Note G#2
					;Wait Repeat 8
	db $13			;Note G-2
					;Wait Repeat 8
	db $07			;Note G-1
	db $66			;Volume 5
	db $c5			;Wait 6
	db $65			;Volume 4
	db $c4			;Wait 5
	db $64			;Volume 3
	db $c3			;Wait 4
	db $63			;Volume 2
	db $c8			;Wait 9
	db $0d			;Note C#2
	db $66			;Volume 5
	db $c5			;Wait 6
	db $65			;Volume 4
	db $c4			;Wait 5
	db $64			;Volume 3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_128:
	db $c7			;Wait 8
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $73			;Instrument 2
	db $c7			;Wait 8
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $29			;Note F-4
	db $74			;Instrument 3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $7e			;Instrument 13
	db $c7			;Wait 8
	db $10			;Note E-2
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $10			;Note E-2
	db $c3			;Wait 4
	db $10			;Note E-2
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $6d			;Volume 12
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_129:
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $67			;Volume 6
	db $7b			;Instrument 10
	db $a1,$01		;CMD Track detune
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $68			;Volume 7
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2e			;Note A#4
	db $68			;Volume 7
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $31			;Note C#5
	db $69			;Volume 8
	db $a1,$00		;CMD Track detune
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2c			;Note G#4
	db $bf			;[End-Of-Track]
.track_132:
	db $2c			;Note G#4
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2b			;Note G-4
	db $68			;Volume 7
	db $7f			;Instrument 14
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2c			;Note G#4
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $67			;Volume 6
	db $77			;Instrument 6
	db $a9,$40			; SCC Set Waveform 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $68			;Volume 7
	db $7f			;Instrument 14
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2f			;Note B-4
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $67			;Volume 6
	db $77			;Instrument 6
	db $a9,$40			; SCC Set Waveform 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $68			;Volume 7
	db $7f			;Instrument 14
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2f			;Note B-4
	db $64			;Volume 3
	db $7b			;Instrument 10
	db $a9,$40			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $31			;Note C#5
	db $6c			;Volume 11
	db $78			;Instrument 7
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $33			;Note D#5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $2f			;Note B-4
	db $68			;Volume 7
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_133:
	db $1c			;Note E-3
	db $69			;Volume 8
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $1c			;Note E-3
					;Wait Repeat 4
	db $2b			;Note G-4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $2b			;Note G-4
					;Wait Repeat 4
	db $2b			;Note G-4
					;Wait Repeat 4
	db $2b			;Note G-4
					;Wait Repeat 4
	db $28			;Note E-4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $28			;Note E-4
					;Wait Repeat 4
	db $28			;Note E-4
					;Wait Repeat 4
	db $28			;Note E-4
					;Wait Repeat 4
	db $2c			;Note G#4
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $28			;Note E-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $2c			;Note G#4
	db $68			;Volume 7
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_134:
	db $19			;Note C#3
	db $69			;Volume 8
	db $80			;Instrument 15
	db $a9,$28			; SCC Set Waveform 5
	db $c2			;Wait 3
	db $68			;Volume 7
	db $94,$53		;CMD Vibrato
					;Wait Repeat 3
	db $67			;Volume 6
					;Wait Repeat 3
	db $66			;Volume 5
	db $c3			;Wait 4
	db $65			;Volume 4
	db $c1			;Wait 2
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $10			;Note E-2
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $a9,$20			; SCC Set Waveform 4
	db $c2			;Wait 3
	db $68			;Volume 7
	db $94,$53		;CMD Vibrato
					;Wait Repeat 3
	db $67			;Volume 6
					;Wait Repeat 3
	db $66			;Volume 5
	db $c3			;Wait 4
	db $65			;Volume 4
	db $c1			;Wait 2
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $0a			;Note A#1
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $a9,$20			; SCC Set Waveform 4
	db $c2			;Wait 3
	db $68			;Volume 7
	db $94,$53		;CMD Vibrato
					;Wait Repeat 3
	db $67			;Volume 6
					;Wait Repeat 3
	db $66			;Volume 5
	db $c3			;Wait 4
	db $65			;Volume 4
	db $c1			;Wait 2
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $68			;Volume 7
	db $79			;Instrument 8
	db $93,$c0			;CMD Arpeggio
	db $c2			;Wait 3
	db $67			;Volume 6
					;Wait Repeat 3
	db $66			;Volume 5
	db $c1			;Wait 2
	db $08			;Note G#1
	db $68			;Volume 7
	db $79			;Instrument 8
	db $c2			;Wait 3
	db $67			;Volume 6
					;Wait Repeat 3
	db $66			;Volume 5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_135:
	db $c2			;Wait 3
	db $19			;Note C#3
	db $66			;Volume 5
	db $80			;Instrument 15
	db $c5			;Wait 6
	db $65			;Volume 4
	db $c4			;Wait 5
	db $64			;Volume 3
					;Wait Repeat 5
	db $10			;Note E-2
	db $66			;Volume 5
	db $c5			;Wait 6
	db $65			;Volume 4
	db $c4			;Wait 5
	db $64			;Volume 3
					;Wait Repeat 5
	db $0a			;Note A#1
	db $66			;Volume 5
	db $c5			;Wait 6
	db $65			;Volume 4
	db $c4			;Wait 5
	db $64			;Volume 3
					;Wait Repeat 5
	db $2c			;Note G#4
	db $64			;Volume 3
	db $79			;Instrument 8
	db $a1,$00		;CMD Track detune
	db $c1			;Wait 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $27			;Note D#4
	db $bf			;[End-Of-Track]
.track_136:
	db $11			;Note F-2
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $11			;Note F-2
	db $c5			;Wait 6
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $7e			;Instrument 13
	db $cb			;Wait 12
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $73			;Instrument 2
	db $cf			;Wait 16
	db $5d			;Note A-8
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_137:
	db $13			;Note G-2
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $c3			;Wait 4
	db $94,$65		;CMD Vibrato
	db $cb			;Wait 12
	db $13			;Note G-2
	db $68			;Volume 7
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $94,$64		;CMD Vibrato
	db $c3			;Wait 4
	db $67			;Volume 6
	db $c8			;Wait 9
	db $11			;Note F-2
	db $79			;Instrument 8
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $94,$64		;CMD Vibrato
	db $c4			;Wait 5
	db $66			;Volume 5
	db $c6			;Wait 7
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_138:
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_140:
	db $22			;Note A#3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $c2			;Wait 3
	db $6f			;Volume 14
	db $94,$53		;CMD Vibrato
	db $ca			;Wait 11
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c8			;Wait 9
	db $1a			;Note D-3
	db $c7			;Wait 8
	db $19			;Note C#3
	db $6a			;Volume 9
					;Wait Repeat 8
	db $17			;Note B-2
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_141:
	db $32			;Note D-5
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $68			;Volume 7
					;Wait Repeat 2
	db $2a			;Note F#4
	db $67			;Volume 6
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $32			;Note D-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $67			;Volume 6
					;Wait Repeat 2
	db $2a			;Note F#4
	db $66			;Volume 5
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $20			;Note G#3
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $cf			;Wait 16
	db $20			;Note G#3
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $1f			;Note G-3
	db $c7			;Wait 8
	db $1d			;Note F-3
	db $68			;Volume 7
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_142:
	db $07			;Note G-1
	db $68			;Volume 7
	db $79			;Instrument 8
	db $93,$c0			;CMD Arpeggio
	db $c2			;Wait 3
	db $67			;Volume 6
					;Wait Repeat 3
	db $66			;Volume 5
					;Wait Repeat 3
	db $65			;Volume 4
					;Wait Repeat 3
	db $64			;Volume 3
	db $c1			;Wait 2
	db $63			;Volume 2
					;Wait Repeat 2
	db $25			;Note C#4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $24			;Note C-4
	db $6a			;Volume 9
	db $c7			;Wait 8
	db $23			;Note B-3
	db $69			;Volume 8
	db $c4			;Wait 5
	db $22			;Note A#3
	db $6a			;Volume 9
	db $ce			;Wait 15
	db $bf			;[End-Of-Track]
.track_143:
	db $c2			;Wait 3
	db $32			;Note D-5
	db $64			;Volume 3
	db $79			;Instrument 8
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $63			;Volume 2
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $2e			;Note A#4
	db $62			;Volume 1
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $25			;Note C#4
	db $63			;Volume 2
	db $7c			;Instrument 11
	db $a1,$01		;CMD Track detune
	db $c3			;Wait 4
	db $24			;Note C-4
	db $c7			;Wait 8
	db $23			;Note B-3
	db $c4			;Wait 5
	db $22			;Note A#3
	db $c2			;Wait 3
	db $1f			;Note G-3
	db $c7			;Wait 8
	db $1d			;Note F-3
	db $bf			;[End-Of-Track]

