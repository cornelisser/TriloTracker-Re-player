; Song: MoG2- Demon Room                
; By:   Gryzor87 (c)2021                

; [ Song start data ]
	db $05					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_001, .track_001, .track_004, .track_005, .track_006, .track_007	; Step:001 Pattern:000
.restart:
	dw .track_008, .track_009, .track_001, .track_001, .track_012, .track_013, .track_014, .track_015	; Step:002 Pattern:001
	dw .track_016, .track_017, .track_001, .track_001, .track_020, .track_005, .track_022, .track_023	; Step:003 Pattern:002
	dw .track_024, .track_025, .track_001, .track_001, .track_028, .track_029, .track_030, .track_031	; Step:004 Pattern:003
	dw .track_032, .track_033, .track_001, .track_001, .track_036, .track_005, .track_038, .track_039	; Step:005 Pattern:004
	dw .track_040, .track_041, .track_001, .track_001, .track_044, .track_045, .track_046, .track_047	; Step:006 Pattern:005
	dw .track_048, .track_041, .track_001, .track_001, .track_044, .track_053, .track_054, .track_055	; Step:007 Pattern:006
	dw .track_056, .track_041, .track_001, .track_001, .track_044, .track_061, .track_062, .track_063	; Step:008 Pattern:007
	dw .track_064, .track_041, .track_001, .track_001, .track_068, .track_069, .track_070, .track_071	; Step:009 Pattern:008
	dw .track_072, .track_009, .track_001, .track_001, .track_076, .track_077, .track_078, .track_079	; Step:010 Pattern:009
	dw .track_080, .track_081, .track_001, .track_001, .track_084, .track_085, .track_086, .track_087	; Step:011 Pattern:010
	dw .track_088, .track_089, .track_001, .track_001, .track_092, .track_093, .track_094, .track_095	; Step:012 Pattern:011
	dw .track_096, .track_097, .track_001, .track_001, .track_100, .track_101, .track_102, .track_103	; Step:013 Pattern:012
	dw .track_000, .track_105, .track_001, .track_001, .track_108, .track_109, .track_110, .track_111	; Step:014 Pattern:013
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00				; Waveform:0
	db $80, $b0, $c0, $10, $1a, $2a, $2c, $1a, $00, $e0, $d0, $e0, $22, $53, $70, $75, $70, $31, $ea, $80, $88, $8a, $8c, $8e, $00, $7f, $75, $73, $62, $00, $c0, $90				; Waveform:1
	db $00, $40, $7f, $40, $01, $c0, $81, $c0, $01, $40, $7f, $40, $01, $c0, $01, $40, $01, $e0, $01, $20, $01, $f0, $01, $10, $01, $ff, $ff, $ff, $ff, $40, $40, $40				; Waveform:2
	db $00, $10, $20, $30, $40, $50, $60, $70, $7f, $70, $60, $50, $40, $30, $20, $10, $ff, $f0, $e0, $d0, $c0, $b0, $a0, $90, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0				; Waveform:3
	db $80, $8e, $a0, $c0, $e0, $00, $20, $3f, $3e, $3c, $3a, $37, $31, $29, $20, $1c, $10, $00, $e6, $c0, $d0, $00, $20, $3f, $10, $e0, $80, $c0, $00, $20, $00, $90				; Waveform:5
	db $00, $fc, $f8, $f4, $f0, $ec, $e8, $e4, $e0, $dc, $d8, $d4, $d0, $cc, $c8, $c4, $c0, $40, $3c, $38, $34, $30, $2c, $28, $24, $20, $1c, $18, $14, $10, $0c, $08				; Waveform:6
	db $a0, $90, $a0, $ac, $f0, $a0, $16, $00, $90, $00, $20, $40, $60, $50, $38, $1c, $f2, $e2, $d6, $d0, $d0, $da, $dc, $e0, $e2, $e2, $e2, $e0, $dc, $d8, $d0, $b0				; Waveform:7
	db $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9				; Waveform:11
	db $77, $77, $77, $77, $77, $77, $77, $77, $87, $87, $87, $87, $87, $87, $87, $87, $77, $77, $77, $77, $77, $77, $77, $77, $87, $87, $87, $87, $87, $87, $87, $87				; Waveform:14
	db $00, $40, $7f, $40, $10, $01, $ea, $ce, $bb, $b1, $a7, $9c, $94, $8d, $87, $82, $81, $80, $80, $81, $81, $83, $87, $8d, $94, $9c, $a7, $b1, $bb, $ce, $ea, $ff				; Waveform:16
	db $08, $30, $6d, $38, $18, $08, $10, $1c, $38, $60, $44, $20, $e8, $10, $38, $18, $08, $f0, $cc, $e0, $f0, $d8, $b8, $a0, $b7, $b0, $a0, $b8, $c0, $d4, $e0, $f0				; Waveform:18
	db $90, $d0, $20, $0c, $bc, $aa, $e6, $dc, $bc, $e3, $40, $30, $e0, $d0, $10, $06, $e4, $0c, $70, $50, $e0, $d0, $10, $00, $d0, $f0, $40, $20, $c4, $c0, $f0, $90				; Waveform:19
	db $00, $68, $48, $18, $48, $68, $28, $00, $48, $77, $58, $08, $28, $38, $00, $b8, $08, $58, $00, $e8, $f8, $00, $b8, $98, $c8, $08, $e8, $a8, $c8, $f8, $c8, $a8				; Waveform:20
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $00, $e7, $cf, $b9, $a6, $96, $8b, $83, $80, $83, $8b, $96, $a6, $b9, $cf, $e7				; Waveform:21
	db $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20, $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20				; Waveform:22
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $00, $f0, $e0, $d0, $c0, $b0, $a0, $90, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0				; Waveform:23
	db $30, $60, $78, $68, $48, $38, $48, $58, $48, $38, $20, $18, $20, $58, $40, $20, $e0, $b0, $80, $88, $a0, $c0, $b4, $a8, $b4, $d0, $e8, $d8, $c8, $b8, $a8, $d0				; Waveform:25
	db $28, $60, $7d, $60, $38, $20, $38, $4c, $58, $60, $54, $18, $f0, $10, $28, $28, $10, $e8, $cc, $d0, $e8, $c8, $a8, $a0, $af, $a8, $98, $a8, $b0, $c4, $c0, $e0				; Waveform:26
	db $08, $20, $28, $40, $58, $73, $7f, $73, $63, $54, $3d, $2d, $22, $19, $00, $d7, $be, $a3, $85, $9b, $a6, $c8, $f0, $d4, $c8, $c4, $c0, $c4, $cd, $d8, $e6, $f6				; Waveform:27

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; SHAKER G6       
	dw .instrument_01				; Thrill STR      
	dw .instrument_02				; SC Bass         
	dw .instrument_03				; SC Brass Satan  
	dw .instrument_04				; PGS String snake
	dw .instrument_05				; IN              
	dw .instrument_06				; Piano tremolo   
	dw .instrument_07				; Piano Tremolo HI
	dw .instrument_08				; WAVE-LFO        
	dw .instrument_09				; SFX-Starfall    
	dw .instrument_10				; Clarinet low    
	dw .instrument_11				; SHAKER II G7    
	dw .instrument_12				; SHAKER III      

.instrument_00:					; SHAKER G6       
	db $30							; Waveform 6
	db $d4							; Info byte: 11010100
	db $08							; Volume _
	db $1b							; Noise _
	db $c4							; Info byte: 11000100
	db $0b							; Volume _
	db $1b							; Noise _
.rst_i00:
	db $e7							; Info byte: 11100111
	db $ff							; Volume -
	db $fc							; Noise +
	dw .rst_i00						; Loop address
.instrument_01:					; Thrill STR      
	db $48							; Waveform 9
	db $54							; Info byte: 01010100
	db $0a							; Volume _
	db $50							; Waveform +
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $54							; Info byte: 01010100
	db $0f							; Volume _
	db $88							; Waveform +
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $54							; Info byte: 01010100
	db $0b							; Volume _
	db $50							; Waveform +
.rst_i01:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $56							; Info byte: 01010110
	db $01							; Volume +
	db $88							; Waveform +
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $56							; Info byte: 01010110
	db $01							; Volume +
	db $50							; Waveform +
	db $16							; Info byte: 00010110
	db $fe							; Volume -
	db $56							; Info byte: 01010110
	db $01							; Volume +
	db $88							; Waveform +
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $57							; Info byte: 01010111
	db $01							; Volume +
	db $50							; Waveform +
	dw .rst_i01						; Loop address
.instrument_02:					; SC Bass         
	db $20							; Waveform 4
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
.instrument_03:					; SC Brass Satan  
	db $28							; Waveform 5
	db $14							; Info byte: 00010100
	db $06							; Volume _
	db $14							; Info byte: 00010100
	db $07							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
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
	db $10							; Info byte: 00010000
	db $16							; Info byte: 00010110
	db $01							; Volume +
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i03						; Loop address
.instrument_04:					; PGS String snake
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
	dw .rst_i04						; Loop address
.instrument_05:					; IN              
	db $38							; Waveform 7
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
.rst_i05:
	db $01							; Info byte: 00000001
	dw .rst_i05						; Loop address
.instrument_06:					; Piano tremolo   
	db $30							; Waveform 6
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
	db $14							; Info byte: 00010100
	db $09							; Volume _
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
.instrument_07:					; Piano Tremolo HI
	db $08							; Waveform 1
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
	db $14							; Info byte: 00010100
	db $07							; Volume _
	db $14							; Info byte: 00010100
	db $06							; Volume _
	db $14							; Info byte: 00010100
	db $05							; Volume _
	db $14							; Info byte: 00010100
	db $03							; Volume _
.rst_i07:
	db $01							; Info byte: 00000001
	dw .rst_i07						; Loop address
.instrument_08:					; WAVE-LFO        
	db $18							; Waveform 3
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
.rst_i08:
	db $15							; Info byte: 00010101
	db $08							; Volume _
	dw .rst_i08						; Loop address
.instrument_09:					; SFX-Starfall    
	db $40							; Waveform 8
.rst_i09:
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $c4							; Info byte: 11000100
	db $07							; Volume _
	db $06							; Noise _
	db $c4							; Info byte: 11000100
	db $07							; Volume _
	db $06							; Noise _
	db $04							; Info byte: 00000100
	db $06							; Volume _
	db $04							; Info byte: 00000100
	db $06							; Volume _
	db $05							; Info byte: 00000101
	db $06							; Volume _
	dw .rst_i09						; Loop address
.instrument_10:					; Clarinet low    
	db $80							; Waveform 16
	db $14							; Info byte: 00010100
	db $04							; Volume _
	db $14							; Info byte: 00010100
	db $06							; Volume _
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
.instrument_11:					; SHAKER II G7    
	db $00							; Waveform 0
	db $d4							; Info byte: 11010100
	db $0b							; Volume _
	db $1a							; Noise _
	db $c4							; Info byte: 11000100
	db $0c							; Volume _
	db $18							; Noise _
	db $c4							; Info byte: 11000100
	db $0b							; Volume _
	db $10							; Noise _
	db $c4							; Info byte: 11000100
	db $0a							; Volume _
	db $0e							; Noise _
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
	db $04							; Volume _
	db $02							; Noise _
.rst_i11:
	db $01							; Info byte: 00000001
	dw .rst_i11						; Loop address
.instrument_12:					; SHAKER III      
	db $00							; Waveform 0
	db $c4							; Info byte: 11000100
	db $0c							; Volume _
	db $15							; Noise _
	db $c4							; Info byte: 11000100
	db $0d							; Volume _
	db $11							; Noise _
	db $c4							; Info byte: 11000100
	db $0b							; Volume _
	db $0e							; Noise _
	db $c4							; Info byte: 11000100
	db $0a							; Volume _
	db $09							; Noise _
	db $c4							; Info byte: 11000100
	db $09							; Volume _
	db $03							; Noise _
	db $c4							; Info byte: 11000100
	db $08							; Volume _
	db $02							; Noise _
	db $c4							; Info byte: 11000100
	db $07							; Volume _
	db $01							; Noise _
.rst_i12:
	db $05							; Info byte: 00000101
	db $07							; Volume _
	dw .rst_i12						; Loop address

; [ Song track data ]
.track_000:
	db $06			;Note F#1
	db $67			;Volume 6
	db $75			;Instrument 4
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $6c			;Volume 11
	db $c5			;Wait 6
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $6a			;Volume 9
					;Wait Repeat 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6c			;Volume 11
					;Wait Repeat 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6a			;Volume 9
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_001:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_004:
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $92,$10			;CMD Portamento down
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $68			;Volume 7
	db $c1			;Wait 2
	db $69			;Volume 8
	db $95,$0f			;CMD Portamento up
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $6b			;Volume 10
	db $cb			;Wait 12
	db $92,$10			;CMD Portamento down
	db $d8			;Wait 25
	db $95,$10			;CMD Portamento up
	db $ca			;Wait 11
	db $bf			;[End-Of-Track]
.track_005:
	db $c7			;Wait 8
	db $26			;Note D-4
	db $62			;Volume 1
	db $79			;Instrument 8
	db $92,$10			;CMD Portamento down
	db $c0			;Wait 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $64			;Volume 3
					;Wait Repeat 1
	db $65			;Volume 4
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $69			;Volume 8
	db $c4			;Wait 5
	db $95,$0d			;CMD Portamento up
	db $cc			;Wait 13
	db $92,$10			;CMD Portamento down
	db $c2			;Wait 3
	db $92,$10			;CMD Portamento down
	db $cf			;Wait 16
	db $95,$10			;CMD Portamento up
	db $ca			;Wait 11
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_006:
	db $06			;Note F#1
	db $68			;Volume 7
	db $75			;Instrument 4
	db $c0			;Wait 1
	db $ab,$01			; SCC Morph follow (Carbon C0poy) 1
					;Wait Repeat 1
	db $ac,$06			; SCC Morph speed 6
	db $c4			;Wait 5
	db $9c,$10			; SCC Morph to Waveform 2
	db $d8			;Wait 25
	db $9c,$68			; SCC Morph to Waveform 21
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_007:
	db $c3			;Wait 4
	db $06			;Note F#1
	db $66			;Volume 5
	db $75			;Instrument 4
	db $a1,$07			;CMD Track detune
	db $c6			;Wait 7
	db $aa				; SCC Morph foloow (Carbon C0poy) 0
	db $f4			;Wait 53
	db $bf			;[End-Of-Track]
.track_008:
	db $06			;Note F#1
	db $6d			;Volume 12
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $6c			;Volume 11
	db $c2			;Wait 3
	db $6b			;Volume 10
					;Wait Repeat 3
	db $6a			;Volume 9
					;Wait Repeat 3
	db $69			;Volume 8
					;Wait Repeat 3
	db $68			;Volume 7
	db $c1			;Wait 2
	db $69			;Volume 8
	db $c2			;Wait 3
	db $6a			;Volume 9
					;Wait Repeat 3
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $69			;Volume 8
					;Wait Repeat 8
	db $68			;Volume 7
					;Wait Repeat 8
	db $67			;Volume 6
					;Wait Repeat 8
	db $66			;Volume 5
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_009:
	db $4f			;Note G-7
	db $69			;Volume 8
	db $7a			;Instrument 9
	db $92,$01			;CMD Portamento down
	db $fe			;Wait 63
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_012:
	db $26			;Note D-4
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $92,$0e			;CMD Portamento down
	db $c0			;Wait 1
	db $ab,$01			; SCC Morph follow (Carbon C0poy) 1
					;Wait Repeat 1
	db $6a			;Volume 9
	db $ac,$06			; SCC Morph speed 6
					;Wait Repeat 1
	db $9c,$68			; SCC Morph to Waveform 21
					;Wait Repeat 1
	db $69			;Volume 8
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $6b			;Volume 10
	db $cb			;Wait 12
	db $95,$0e			;CMD Portamento up
	db $c5			;Wait 6
	db $9c,$18			; SCC Morph to Waveform 3
	db $d3			;Wait 20
	db $92,$10			;CMD Portamento down
	db $c9			;Wait 10
	db $bf			;[End-Of-Track]
.track_013:
	db $34			;Note E-5
	db $70			;Volume 15
	db $78			;Instrument 7
	db $a9,$58			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $34			;Note E-5
	db $64			;Volume 3
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $34			;Note E-5
	db $69			;Volume 8
	db $c3			;Wait 4
	db $34			;Note E-5
	db $63			;Volume 2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $34			;Note E-5
	db $68			;Volume 7
	db $c3			;Wait 4
	db $34			;Note E-5
	db $64			;Volume 3
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $34			;Note E-5
	db $68			;Volume 7
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $34			;Note E-5
	db $63			;Volume 2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $70			;Volume 15
	db $78			;Instrument 7
	db $a9,$60			; SCC Set Waveform 20
	db $c3			;Wait 4
	db $2e			;Note A#4
	db $64			;Volume 3
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $69			;Volume 8
	db $c3			;Wait 4
	db $2e			;Note A#4
	db $63			;Volume 2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $68			;Volume 7
	db $c3			;Wait 4
	db $2e			;Note A#4
	db $64			;Volume 3
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $68			;Volume 7
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $2e			;Note A#4
	db $63			;Volume 2
	db $c2			;Wait 3
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_014:
	db $39			;Note A-5
	db $70			;Volume 15
	db $78			;Instrument 7
	db $a9,$58			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $39			;Note A-5
	db $63			;Volume 2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $39			;Note A-5
	db $64			;Volume 3
	db $c3			;Wait 4
	db $39			;Note A-5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $39			;Note A-5
	db $68			;Volume 7
	db $78			;Instrument 7
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $39			;Note A-5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $39			;Note A-5
	db $66			;Volume 5
	db $c3			;Wait 4
	db $39			;Note A-5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $33			;Note D#5
	db $70			;Volume 15
	db $78			;Instrument 7
	db $a9,$58			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $33			;Note D#5
	db $63			;Volume 2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $33			;Note D#5
	db $64			;Volume 3
	db $c3			;Wait 4
	db $33			;Note D#5
	db $63			;Volume 2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $33			;Note D#5
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $33			;Note D#5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $33			;Note D#5
	db $68			;Volume 7
	db $c3			;Wait 4
	db $33			;Note D#5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_015:
	db $3e			;Note D-6
	db $70			;Volume 15
	db $78			;Instrument 7
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $63			;Volume 2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $64			;Volume 3
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $68			;Volume 7
	db $78			;Instrument 7
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $66			;Volume 5
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $38			;Note G#5
	db $70			;Volume 15
	db $78			;Instrument 7
	db $a9,$58			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $38			;Note G#5
	db $63			;Volume 2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $38			;Note G#5
	db $64			;Volume 3
	db $c3			;Wait 4
	db $38			;Note G#5
	db $63			;Volume 2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $38			;Note G#5
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $38			;Note G#5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $38			;Note G#5
	db $68			;Volume 7
	db $c3			;Wait 4
	db $38			;Note G#5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_016:
	db $cf			;Wait 16
	db $67			;Volume 6
	db $c7			;Wait 8
	db $68			;Volume 7
					;Wait Repeat 8
	db $69			;Volume 8
					;Wait Repeat 8
	db $6a			;Volume 9
					;Wait Repeat 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6c			;Volume 11
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_017:
	db $43			;Note G-6
	db $70			;Volume 15
	db $71			;Instrument 0
	db $c9			;Wait 10
	db $43			;Note G-6
	db $6e			;Volume 13
					;Wait Repeat 10
	db $43			;Note G-6
	db $6d			;Volume 12
	db $7c			;Instrument 11
					;Wait Repeat 10
	db $43			;Note G-6
	db $6c			;Volume 11
					;Wait Repeat 10
	db $43			;Note G-6
	db $6b			;Volume 10
					;Wait Repeat 10
	db $43			;Note G-6
	db $6a			;Volume 9
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_020:
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $92,$0e			;CMD Portamento down
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $6b			;Volume 10
	db $95,$10			;CMD Portamento up
	db $cf			;Wait 16
	db $92,$10			;CMD Portamento down
					;Wait Repeat 16
	db $95,$10			;CMD Portamento up
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_022:
	db $34			;Note E-5
	db $6a			;Volume 9
	db $76			;Instrument 5
	db $a9,$38			; SCC Set Waveform 11
	db $c1			;Wait 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $40			;Note E-6
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $34			;Note E-5
	db $c1			;Wait 2
	db $35			;Note F-5
	db $a9,$38			; SCC Set Waveform 11
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $40			;Note E-6
	db $c1			;Wait 2
	db $41			;Note F-6
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $36			;Note F#5
	db $a9,$38			; SCC Set Waveform 11
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $41			;Note F-6
	db $c1			;Wait 2
	db $42			;Note F#6
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $a9,$38			; SCC Set Waveform 11
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $42			;Note F#6
	db $c1			;Wait 2
	db $43			;Note G-6
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $37			;Note G-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_023:
	db $c1			;Wait 2
	db $a1,$02			;CMD Track detune
	db $c0			;Wait 1
	db $34			;Note E-5
	db $66			;Volume 5
	db $76			;Instrument 5
	db $a9,$38			; SCC Set Waveform 11
	db $c1			;Wait 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $40			;Note E-6
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $34			;Note E-5
	db $c1			;Wait 2
	db $35			;Note F-5
	db $a9,$38			; SCC Set Waveform 11
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $40			;Note E-6
	db $c1			;Wait 2
	db $41			;Note F-6
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $36			;Note F#5
	db $a9,$38			; SCC Set Waveform 11
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $41			;Note F-6
	db $c1			;Wait 2
	db $42			;Note F#6
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $a9,$38			; SCC Set Waveform 11
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $42			;Note F#6
	db $c1			;Wait 2
	db $43			;Note G-6
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $3d			;Note C#6
	db $bf			;[End-Of-Track]
.track_024:
	db $06			;Note F#1
	db $6d			;Volume 12
	db $75			;Instrument 4
	db $c7			;Wait 8
	db $6c			;Volume 11
					;Wait Repeat 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6a			;Volume 9
					;Wait Repeat 8
	db $69			;Volume 8
					;Wait Repeat 8
	db $68			;Volume 7
					;Wait Repeat 8
	db $67			;Volume 6
					;Wait Repeat 8
	db $66			;Volume 5
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_025:
	db $4f			;Note G-7
	db $69			;Volume 8
	db $7a			;Instrument 9
	db $92,$01			;CMD Portamento down
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_028:
	db $26			;Note D-4
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $92,$10			;CMD Portamento down
	db $c0			;Wait 1
	db $ab,$01			; SCC Morph follow (Carbon C0poy) 1
					;Wait Repeat 1
	db $6a			;Volume 9
	db $ac,$06			; SCC Morph speed 6
					;Wait Repeat 1
	db $9c,$68			; SCC Morph to Waveform 21
					;Wait Repeat 1
	db $69			;Volume 8
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $6b			;Volume 10
	db $95,$11			;CMD Portamento up
	db $cb			;Wait 12
	db $92,$10			;CMD Portamento down
	db $c5			;Wait 6
	db $9c,$18			; SCC Morph to Waveform 3
	db $c9			;Wait 10
	db $95,$10			;CMD Portamento up
	db $cf			;Wait 16
	db $92,$10			;CMD Portamento down
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_029:
	db $2a			;Note F#4
	db $70			;Volume 15
	db $78			;Instrument 7
	db $a9,$18			; SCC Set Waveform 3
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $64			;Volume 3
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $69			;Volume 8
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $63			;Volume 2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $68			;Volume 7
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $64			;Volume 3
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $68			;Volume 7
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $63			;Volume 2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $70			;Volume 15
	db $78			;Instrument 7
	db $a9,$18			; SCC Set Waveform 3
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $64			;Volume 3
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $69			;Volume 8
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $63			;Volume 2
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $68			;Volume 7
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $64			;Volume 3
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $68			;Volume 7
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $63			;Volume 2
	db $c2			;Wait 3
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_030:
	db $2f			;Note B-4
	db $70			;Volume 15
	db $78			;Instrument 7
	db $a9,$58			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $63			;Volume 2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $64			;Volume 3
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $a9,$58			; SCC Set Waveform 19
					;Wait Repeat 1
	db $2f			;Note B-4
	db $66			;Volume 5
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $66			;Volume 5
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $32			;Note D-5
	db $70			;Volume 15
	db $78			;Instrument 7
	db $a9,$58			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $32			;Note D-5
	db $63			;Volume 2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $32			;Note D-5
	db $64			;Volume 3
	db $c3			;Wait 4
	db $32			;Note D-5
	db $63			;Volume 2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $32			;Note D-5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $32			;Note D-5
	db $68			;Volume 7
	db $c3			;Wait 4
	db $32			;Note D-5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_031:
	db $34			;Note E-5
	db $70			;Volume 15
	db $78			;Instrument 7
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $34			;Note E-5
	db $63			;Volume 2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $34			;Note E-5
	db $64			;Volume 3
	db $c3			;Wait 4
	db $34			;Note E-5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $a9,$58			; SCC Set Waveform 19
					;Wait Repeat 1
	db $34			;Note E-5
	db $66			;Volume 5
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $34			;Note E-5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $34			;Note E-5
	db $66			;Volume 5
	db $c3			;Wait 4
	db $34			;Note E-5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $37			;Note G-5
	db $70			;Volume 15
	db $78			;Instrument 7
	db $a9,$58			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $37			;Note G-5
	db $63			;Volume 2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $37			;Note G-5
	db $64			;Volume 3
	db $c3			;Wait 4
	db $37			;Note G-5
	db $63			;Volume 2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $37			;Note G-5
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $37			;Note G-5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $37			;Note G-5
	db $68			;Volume 7
	db $c3			;Wait 4
	db $37			;Note G-5
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_032:
	db $cf			;Wait 16
	db $67			;Volume 6
	db $c7			;Wait 8
	db $68			;Volume 7
					;Wait Repeat 8
	db $69			;Volume 8
					;Wait Repeat 8
	db $6a			;Volume 9
					;Wait Repeat 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $69			;Volume 8
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_033:
	db $43			;Note G-6
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c9			;Wait 10
	db $43			;Note G-6
	db $6d			;Volume 12
					;Wait Repeat 10
	db $43			;Note G-6
	db $6b			;Volume 10
	db $7c			;Instrument 11
					;Wait Repeat 10
	db $43			;Note G-6
	db $6a			;Volume 9
					;Wait Repeat 10
	db $43			;Note G-6
	db $69			;Volume 8
					;Wait Repeat 10
	db $43			;Note G-6
	db $68			;Volume 7
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_036:
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $92,$0e			;CMD Portamento down
	db $c0			;Wait 1
	db $ab,$01			; SCC Morph follow (Carbon C0poy) 1
					;Wait Repeat 1
	db $6a			;Volume 9
	db $ac,$06			; SCC Morph speed 6
					;Wait Repeat 1
	db $9c,$68			; SCC Morph to Waveform 21
					;Wait Repeat 1
	db $69			;Volume 8
	db $c1			;Wait 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $6b			;Volume 10
	db $cb			;Wait 12
	db $95,$0e			;CMD Portamento up
	db $c5			;Wait 6
	db $9c,$18			; SCC Morph to Waveform 3
	db $d3			;Wait 20
	db $92,$10			;CMD Portamento down
	db $c9			;Wait 10
	db $bf			;[End-Of-Track]
.track_038:
	db $3e			;Note D-6
	db $6a			;Volume 9
	db $76			;Instrument 5
	db $a9,$38			; SCC Set Waveform 11
	db $c1			;Wait 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $31			;Note C#5
	db $c1			;Wait 2
	db $30			;Note C-5
	db $a9,$38			; SCC Set Waveform 11
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $3d			;Note C#6
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $30			;Note C-5
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $a9,$38			; SCC Set Waveform 11
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $3b			;Note B-5
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $a9,$38			; SCC Set Waveform 11
					;Wait Repeat 2
	db $2d			;Note A-4
	db $67			;Volume 6
					;Wait Repeat 2
	db $33			;Note D#5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $33			;Note D#5
	db $67			;Volume 6
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6b			;Volume 10
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $35			;Note F-5
	db $67			;Volume 6
					;Wait Repeat 2
	db $3d			;Note C#6
	db $6b			;Volume 10
					;Wait Repeat 2
	db $3d			;Note C#6
	db $67			;Volume 6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_039:
	db $c1			;Wait 2
	db $a1,$02			;CMD Track detune
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $66			;Volume 5
	db $76			;Instrument 5
	db $a9,$38			; SCC Set Waveform 11
	db $c1			;Wait 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $31			;Note C#5
	db $c1			;Wait 2
	db $30			;Note C-5
	db $a9,$38			; SCC Set Waveform 11
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $3d			;Note C#6
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $30			;Note C-5
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $a9,$38			; SCC Set Waveform 11
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $3b			;Note B-5
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $36			;Note F#5
	db $68			;Volume 7
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $a9,$38			; SCC Set Waveform 11
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $35			;Note F-5
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $3d			;Note C#6
	db $bf			;[End-Of-Track]
.track_040:
	db $48			;Note C-7
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $48			;Note C-7
	db $67			;Volume 6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $48			;Note C-7
	db $6d			;Volume 12
	db $c3			;Wait 4
	db $48			;Note C-7
	db $68			;Volume 7
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $48			;Note C-7
	db $6c			;Volume 11
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $48			;Note C-7
	db $68			;Volume 7
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $48			;Note C-7
	db $68			;Volume 7
	db $cd			;Wait 14
	db $4e			;Note F#7
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $54			;Note C-8
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $4e			;Note F#7
	db $68			;Volume 7
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $54			;Note C-8
	db $c5			;Wait 6
	db $4e			;Note F#7
	db $67			;Volume 6
	db $c1			;Wait 2
	db $43			;Note G-6
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $42			;Note F#6
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_041:
	db $df			;Wait 32
	db $43			;Note G-6
	db $6d			;Volume 12
	db $7c			;Instrument 11
	db $c7			;Wait 8
	db $43			;Note G-6
	db $6c			;Volume 11
					;Wait Repeat 8
	db $43			;Note G-6
	db $6b			;Volume 10
					;Wait Repeat 8
	db $43			;Note G-6
	db $6a			;Volume 9
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_044:
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $92,$10			;CMD Portamento down
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $68			;Volume 7
	db $c1			;Wait 2
	db $69			;Volume 8
	db $95,$0f			;CMD Portamento up
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $6b			;Volume 10
	db $cb			;Wait 12
	db $92,$10			;CMD Portamento down
	db $cf			;Wait 16
	db $95,$10			;CMD Portamento up
					;Wait Repeat 16
	db $92,$10			;CMD Portamento down
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_045:
	db $60			;Release 96
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $a8				; SCC Soften Waveform
	db $da			;Wait 27
	db $a1,$00			;CMD Track detune
	db $c0			;Wait 1
	db $36			;Note F#5
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $a9,$58			; SCC Set Waveform 19
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $77			;Instrument 6
	db $a9,$58			; SCC Set Waveform 19
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
	db $d2			;Wait 19
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_046:
	db $2a			;Note F#4
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $a1,$01			;CMD Track detune
	db $f7			;Wait 56
	db $25			;Note C#4
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $24			;Note C-4
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_047:
	db $30			;Note C-5
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $94,$53		;CMD Vibrato
	db $d1			;Wait 18
	db $9b			;CMD End 
	db $dd			;Wait 30
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_048:
	db $41			;Note F-6
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $41			;Note F-6
	db $67			;Volume 6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $41			;Note F-6
	db $6d			;Volume 12
	db $c3			;Wait 4
	db $41			;Note F-6
	db $68			;Volume 7
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $41			;Note F-6
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $41			;Note F-6
	db $67			;Volume 6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $41			;Note F-6
	db $66			;Volume 5
	db $cd			;Wait 14
	db $47			;Note B-6
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $4d			;Note F-7
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $47			;Note B-6
	db $68			;Volume 7
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $4d			;Note F-7
	db $c5			;Wait 6
	db $47			;Note B-6
	db $66			;Volume 5
	db $c1			;Wait 2
	db $4d			;Note F-7
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_053:
	db $60			;Release 96
	db $a1,$01			;CMD Track detune
	db $c1			;Wait 2
	db $23			;Note B-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a8				; SCC Soften Waveform
	db $da			;Wait 27
	db $a1,$00			;CMD Track detune
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $a9,$58			; SCC Set Waveform 19
	db $c1			;Wait 2
	db $35			;Note F-5
	db $77			;Instrument 6
	db $a9,$58			; SCC Set Waveform 19
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_054:
	db $23			;Note B-3
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_055:
	db $29			;Note F-4
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $94,$53		;CMD Vibrato
	db $d1			;Wait 18
	db $9b			;CMD End 
	db $e5			;Wait 38
	db $bf			;[End-Of-Track]
.track_056:
	db $48			;Note C-7
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $48			;Note C-7
	db $67			;Volume 6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $48			;Note C-7
	db $6d			;Volume 12
	db $c3			;Wait 4
	db $48			;Note C-7
	db $68			;Volume 7
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $48			;Note C-7
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $48			;Note C-7
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $48			;Note C-7
	db $66			;Volume 5
	db $cd			;Wait 14
	db $54			;Note C-8
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $4e			;Note F#7
	db $6b			;Volume 10
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $54			;Note C-8
	db $68			;Volume 7
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $4e			;Note F#7
	db $c5			;Wait 6
	db $54			;Note C-8
	db $67			;Volume 6
	db $c1			;Wait 2
	db $4e			;Note F#7
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $42			;Note F#6
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_061:
	db $42			;Note F#6
	db $6f			;Volume 14
	db $78			;Instrument 7
	db $a9,$58			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $42			;Note F#6
	db $67			;Volume 6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $42			;Note F#6
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $42			;Note F#6
	db $68			;Volume 7
	db $c1			;Wait 2
	db $60			;Release 96
	db $cf			;Wait 16
	db $48			;Note C-7
	db $70			;Volume 15
	db $a9,$58			; SCC Set Waveform 19
	db $c1			;Wait 2
	db $42			;Note F#6
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $a9,$58			; SCC Set Waveform 19
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
	db $d2			;Wait 19
	db $1f			;Note G-3
	db $c3			;Wait 4
	db $1e			;Note F#3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_062:
	db $1e			;Note F#3
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $f7			;Wait 56
	db $19			;Note C#3
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $18			;Note C-3
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_063:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $94,$53		;CMD Vibrato
	db $d1			;Wait 18
	db $9b			;CMD End 
	db $dd			;Wait 30
	db $1f			;Note G-3
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $1e			;Note F#3
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_064:
	db $41			;Note F-6
	db $6d			;Volume 12
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $41			;Note F-6
	db $67			;Volume 6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $41			;Note F-6
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $41			;Note F-6
	db $68			;Volume 7
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $41			;Note F-6
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $41			;Note F-6
	db $62			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $41			;Note F-6
	db $66			;Volume 5
	db $cd			;Wait 14
	db $4d			;Note F-7
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $47			;Note B-6
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $4d			;Note F-7
	db $68			;Volume 7
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $47			;Note B-6
	db $c5			;Wait 6
	db $4d			;Note F-7
	db $66			;Volume 5
	db $c1			;Wait 2
	db $47			;Note B-6
	db $c5			;Wait 6
	db $4d			;Note F-7
	db $66			;Volume 5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_068:
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $92,$10			;CMD Portamento down
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $68			;Volume 7
	db $c1			;Wait 2
	db $69			;Volume 8
	db $95,$0f			;CMD Portamento up
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $6b			;Volume 10
	db $cb			;Wait 12
	db $92,$10			;CMD Portamento down
	db $cf			;Wait 16
	db $95,$10			;CMD Portamento up
					;Wait Repeat 16
	db $92,$10			;CMD Portamento down
	db $c2			;Wait 3
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_069:
	db $60			;Release 96
	db $a1,$02			;CMD Track detune
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$90			; SCC Set Waveform 27
	db $da			;Wait 27
	db $a1,$00			;CMD Track detune
	db $c0			;Wait 1
	db $41			;Note F-6
	db $6d			;Volume 12
	db $78			;Instrument 7
	db $a9,$70			; SCC Set Waveform 22
	db $c1			;Wait 2
	db $3b			;Note B-5
	db $77			;Instrument 6
	db $a9,$58			; SCC Set Waveform 19
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $65			;Volume 4
					;Wait Repeat 1
	db $64			;Volume 3
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $62			;Volume 1
	db $c4			;Wait 5
	db $60			;Release 96
	db $ce			;Wait 15
	db $a1,$00			;CMD Track detune
	db $bf			;[End-Of-Track]
.track_070:
	db $17			;Note B-2
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_071:
	db $1d			;Note F-3
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $c7			;Wait 8
	db $94,$53		;CMD Vibrato
	db $d1			;Wait 18
	db $9b			;CMD End 
	db $e5			;Wait 38
	db $bf			;[End-Of-Track]
.track_072:
	db $11			;Note F-2
	db $6d			;Volume 12
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $69			;Volume 8
	db $7b			;Instrument 10
	db $cf			;Wait 16
	db $37			;Note G-5
					;Wait Repeat 16
	db $3b			;Note B-5
					;Wait Repeat 16
	db $36			;Note F#5
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_076:
	db $11			;Note F-2
	db $6e			;Volume 13
	db $7b			;Instrument 10
	db $a9,$80			; SCC Set Waveform 25
	db $df			;Wait 32
	db $10			;Note E-2
	db $a9,$80			; SCC Set Waveform 25
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_077:
	db $16			;Note A#2
	db $6e			;Volume 13
	db $7b			;Instrument 10
	db $a9,$80			; SCC Set Waveform 25
	db $c5			;Wait 6
	db $94,$94		;CMD Vibrato
	db $d8			;Wait 25
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $15			;Note A-2
	db $a9,$80			; SCC Set Waveform 25
	db $c7			;Wait 8
	db $94,$94		;CMD Vibrato
	db $d6			;Wait 23
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_078:
	db $30			;Note C-5
	db $6c			;Volume 11
	db $72			;Instrument 1
	db $cf			;Wait 16
	db $2b			;Note G-4
					;Wait Repeat 16
	db $2f			;Note B-4
					;Wait Repeat 16
	db $2a			;Note F#4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_079:
	db $60			;Release 96
	db $a1,$01			;CMD Track detune
	db $c1			;Wait 2
	db $30			;Note C-5
	db $66			;Volume 5
	db $72			;Instrument 1
	db $cf			;Wait 16
	db $2b			;Note G-4
					;Wait Repeat 16
	db $2f			;Note B-4
					;Wait Repeat 16
	db $2a			;Note F#4
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_080:
	db $0f			;Note D#2
	db $6c			;Volume 11
	db $75			;Instrument 4
	db $d3			;Wait 20
	db $30			;Note C-5
	db $6b			;Volume 10
	db $cf			;Wait 16
	db $34			;Note E-5
					;Wait Repeat 16
	db $2f			;Note B-4
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_081:
	db $48			;Note C-7
	db $69			;Volume 8
	db $7a			;Instrument 9
	db $92,$01			;CMD Portamento down
	db $fe			;Wait 63
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_084:
	db $0f			;Note D#2
	db $70			;Volume 15
	db $7b			;Instrument 10
	db $a9,$80			; SCC Set Waveform 25
	db $df			;Wait 32
	db $0e			;Note D-2
	db $a9,$80			; SCC Set Waveform 25
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_085:
	db $14			;Note G#2
	db $70			;Volume 15
	db $7b			;Instrument 10
	db $a9,$80			; SCC Set Waveform 25
	db $c5			;Wait 6
	db $94,$94		;CMD Vibrato
	db $d8			;Wait 25
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $13			;Note G-2
	db $a9,$80			; SCC Set Waveform 25
	db $c7			;Wait 8
	db $94,$94		;CMD Vibrato
	db $d6			;Wait 23
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_086:
	db $29			;Note F-4
	db $6c			;Volume 11
	db $72			;Instrument 1
	db $cf			;Wait 16
	db $24			;Note C-4
					;Wait Repeat 16
	db $28			;Note E-4
					;Wait Repeat 16
	db $23			;Note B-3
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_087:
	db $60			;Release 96
	db $a1,$01			;CMD Track detune
	db $c1			;Wait 2
	db $29			;Note F-4
	db $66			;Volume 5
	db $72			;Instrument 1
	db $cf			;Wait 16
	db $24			;Note C-4
					;Wait Repeat 16
	db $28			;Note E-4
					;Wait Repeat 16
	db $23			;Note B-3
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_088:
	db $60			;Release 96
	db $c5			;Wait 6
	db $52			;Note A#7
	db $66			;Volume 5
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $5e			;Note A#8
					;Wait Repeat 4
	db $4e			;Note F#7
					;Wait Repeat 4
	db $5a			;Note F#8
					;Wait Repeat 4
	db $4a			;Note D-7
					;Wait Repeat 4
	db $56			;Note D-8
					;Wait Repeat 4
	db $46			;Note A#6
					;Wait Repeat 4
	db $52			;Note A#7
					;Wait Repeat 4
	db $4c			;Note E-7
					;Wait Repeat 4
	db $58			;Note E-8
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $54			;Note C-8
					;Wait Repeat 4
	db $45			;Note A-6
					;Wait Repeat 4
	db $51			;Note A-7
					;Wait Repeat 4
	db $42			;Note F#6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_089:
	db $2e			;Note A#4
	db $69			;Volume 8
	db $73			;Instrument 2
	db $93,$c7			;CMD Arpeggio
	db $c3			;Wait 4
	db $68			;Volume 7
					;Wait Repeat 4
	db $67			;Volume 6
					;Wait Repeat 4
	db $66			;Volume 5
					;Wait Repeat 4
	db $2a			;Note F#4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
					;Wait Repeat 4
	db $67			;Volume 6
					;Wait Repeat 4
	db $66			;Volume 5
					;Wait Repeat 4
	db $28			;Note E-4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
					;Wait Repeat 4
	db $67			;Volume 6
					;Wait Repeat 4
	db $66			;Volume 5
					;Wait Repeat 4
	db $24			;Note C-4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
					;Wait Repeat 4
	db $67			;Volume 6
					;Wait Repeat 4
	db $66			;Volume 5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_092:
	db $52			;Note A#7
	db $69			;Volume 8
	db $77			;Instrument 6
	db $a9,$58			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $5e			;Note A#8
	db $68			;Volume 7
					;Wait Repeat 4
	db $4e			;Note F#7
	db $69			;Volume 8
					;Wait Repeat 4
	db $5a			;Note F#8
	db $68			;Volume 7
					;Wait Repeat 4
	db $4a			;Note D-7
	db $69			;Volume 8
					;Wait Repeat 4
	db $56			;Note D-8
	db $68			;Volume 7
					;Wait Repeat 4
	db $46			;Note A#6
	db $69			;Volume 8
					;Wait Repeat 4
	db $52			;Note A#7
	db $68			;Volume 7
					;Wait Repeat 4
	db $4c			;Note E-7
					;Wait Repeat 4
	db $58			;Note E-8
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $54			;Note C-8
					;Wait Repeat 4
	db $45			;Note A-6
					;Wait Repeat 4
	db $51			;Note A-7
					;Wait Repeat 4
	db $42			;Note F#6
					;Wait Repeat 4
	db $4e			;Note F#7
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_093:
	db $0f			;Note D#2
	db $70			;Volume 15
	db $75			;Instrument 4
	db $c0			;Wait 1
	db $ab,$01			; SCC Morph follow (Carbon C0poy) 1
					;Wait Repeat 1
	db $ac,$06			; SCC Morph speed 6
	db $c4			;Wait 5
	db $9c,$10			; SCC Morph to Waveform 2
	db $d8			;Wait 25
	db $09			;Note A-1
	db $72			;Instrument 1
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_094:
	db $22			;Note A#3
	db $70			;Volume 15
	db $72			;Instrument 1
	db $cf			;Wait 16
	db $1e			;Note F#3
					;Wait Repeat 16
	db $1c			;Note E-3
					;Wait Repeat 16
	db $18			;Note C-3
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_095:
	db $c5			;Wait 6
	db $22			;Note A#3
	db $68			;Volume 7
	db $72			;Instrument 1
	db $a1,$04			;CMD Track detune
	db $cf			;Wait 16
	db $1e			;Note F#3
					;Wait Repeat 16
	db $1c			;Note E-3
					;Wait Repeat 16
	db $18			;Note C-3
	db $c9			;Wait 10
	db $bf			;[End-Of-Track]
.track_096:
	db $2a			;Note F#4
	db $68			;Volume 7
	db $73			;Instrument 2
	db $93,$c5			;CMD Arpeggio
	db $c3			;Wait 4
	db $67			;Volume 6
					;Wait Repeat 4
	db $66			;Volume 5
					;Wait Repeat 4
	db $65			;Volume 4
	db $c3			;Wait 4
	db $36			;Note F#5
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $9b			;CMD End 
					;Wait Repeat 4
	db $6a			;Volume 9
					;Wait Repeat 4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
					;Wait Repeat 4
	db $34			;Note E-5
	db $6b			;Volume 10
					;Wait Repeat 4
	db $6a			;Volume 9
					;Wait Repeat 4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
					;Wait Repeat 4
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 4
	db $6a			;Volume 9
					;Wait Repeat 4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_097:
	db $3c			;Note C-6
	db $69			;Volume 8
	db $7a			;Instrument 9
	db $92,$01			;CMD Portamento down
	db $fe			;Wait 63
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_100:
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $92,$10			;CMD Portamento down
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $6d			;Volume 12
	db $95,$10			;CMD Portamento up
	db $c3			;Wait 4
	db $6e			;Volume 13
	db $c4			;Wait 5
	db $6f			;Volume 14
					;Wait Repeat 5
	db $70			;Volume 15
	db $c1			;Wait 2
	db $6f			;Volume 14
					;Wait Repeat 2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6d			;Volume 12
	db $c3			;Wait 4
	db $6e			;Volume 13
	db $95,$10			;CMD Portamento up
					;Wait Repeat 4
	db $6f			;Volume 14
	db $92,$10			;CMD Portamento down
	db $cb			;Wait 12
	db $92,$10			;CMD Portamento down
	db $c2			;Wait 3
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_101:
	db $12			;Note F#2
	db $72			;Instrument 1
	db $cf			;Wait 16
	db $11			;Note F-2
					;Wait Repeat 16
	db $10			;Note E-2
					;Wait Repeat 16
	db $0c			;Note C-2
	db $c7			;Wait 8
	db $92,$10			;CMD Portamento down
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_102:
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6d			;Volume 12
					;Wait Repeat 1
	db $6e			;Volume 13
					;Wait Repeat 1
	db $6f			;Volume 14
					;Wait Repeat 1
	db $70			;Volume 15
	db $c2			;Wait 3
	db $94,$55		;CMD Vibrato
	db $f6			;Wait 55
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_103:
	db $16			;Note A#2
	db $6b			;Volume 10
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6d			;Volume 12
					;Wait Repeat 1
	db $6e			;Volume 13
					;Wait Repeat 1
	db $6f			;Volume 14
					;Wait Repeat 1
	db $70			;Volume 15
	db $da			;Wait 27
	db $17			;Note B-2
	db $72			;Instrument 1
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_105:
	db $43			;Note G-6
	db $6e			;Volume 13
	db $7c			;Instrument 11
	db $c7			;Wait 8
	db $43			;Note G-6
	db $6d			;Volume 12
					;Wait Repeat 8
	db $43			;Note G-6
	db $6b			;Volume 10
					;Wait Repeat 8
	db $43			;Note G-6
	db $6a			;Volume 9
					;Wait Repeat 8
	db $4c			;Note E-7
	db $69			;Volume 8
	db $7d			;Instrument 12
					;Wait Repeat 8
	db $4c			;Note E-7
	db $68			;Volume 7
					;Wait Repeat 8
	db $4c			;Note E-7
	db $67			;Volume 6
					;Wait Repeat 8
	db $4c			;Note E-7
	db $66			;Volume 5
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_108:
	db $18			;Note C-3
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $92,$10			;CMD Portamento down
	db $c1			;Wait 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $69			;Volume 8
					;Wait Repeat 2
	db $68			;Volume 7
					;Wait Repeat 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $68			;Volume 7
	db $c1			;Wait 2
	db $69			;Volume 8
	db $95,$0f			;CMD Portamento up
					;Wait Repeat 2
	db $6a			;Volume 9
					;Wait Repeat 2
	db $6b			;Volume 10
	db $cb			;Wait 12
	db $92,$10			;CMD Portamento down
	db $cf			;Wait 16
	db $95,$10			;CMD Portamento up
					;Wait Repeat 16
	db $92,$10			;CMD Portamento down
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_109:
	db $06			;Note F#1
	db $70			;Volume 15
	db $72			;Instrument 1
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $64			;Volume 3
					;Wait Repeat 1
	db $63			;Volume 2
	db $c0			;Wait 1
	db $24			;Note C-4
	db $62			;Volume 1
	db $79			;Instrument 8
	db $92,$10			;CMD Portamento down
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $64			;Volume 3
					;Wait Repeat 1
	db $65			;Volume 4
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $69			;Volume 8
	db $c4			;Wait 5
	db $95,$0d			;CMD Portamento up
	db $cc			;Wait 13
	db $92,$10			;CMD Portamento down
	db $c2			;Wait 3
	db $92,$10			;CMD Portamento down
	db $cf			;Wait 16
	db $95,$10			;CMD Portamento up
	db $ca			;Wait 11
	db $60			;Release 96
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_110:
	db $06			;Note F#1
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c0			;Wait 1
	db $ab,$01			; SCC Morph follow (Carbon C0poy) 1
					;Wait Repeat 1
	db $ac,$06			; SCC Morph speed 6
	db $c4			;Wait 5
	db $9c,$10			; SCC Morph to Waveform 2
	db $d8			;Wait 25
	db $9c,$68			; SCC Morph to Waveform 21
	db $de			;Wait 31
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_111:
	db $c3			;Wait 4
	db $06			;Note F#1
	db $66			;Volume 5
	db $75			;Instrument 4
	db $a1,$07			;CMD Track detune
	db $c6			;Wait 7
	db $aa				; SCC Morph foloow (Carbon C0poy) 0
	db $f3			;Wait 52
	db $60			;Release 96
	db $bf			;[End-Of-Track]

