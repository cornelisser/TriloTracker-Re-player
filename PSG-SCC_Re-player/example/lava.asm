; Song: MoG2- Lava Area                 
; By:   Gryzor87 (c)2021                

; [ Song start data ]
	db $06					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_002, .track_002, .track_004, .track_005, .track_006, .track_007	; Step:001 Pattern:000
.restart:
	dw .track_008, .track_009, .track_002, .track_002, .track_012, .track_013, .track_014, .track_015	; Step:002 Pattern:001
	dw .track_016, .track_017, .track_002, .track_002, .track_020, .track_021, .track_022, .track_023	; Step:003 Pattern:002
	dw .track_016, .track_017, .track_002, .track_002, .track_028, .track_029, .track_030, .track_031	; Step:004 Pattern:003
	dw .track_016, .track_017, .track_002, .track_002, .track_028, .track_037, .track_038, .track_039	; Step:005 Pattern:004
	dw .track_016, .track_017, .track_002, .track_002, .track_020, .track_045, .track_046, .track_047	; Step:006 Pattern:005
	dw .track_016, .track_017, .track_002, .track_002, .track_020, .track_053, .track_054, .track_055	; Step:007 Pattern:006
	dw .track_016, .track_017, .track_002, .track_002, .track_020, .track_061, .track_062, .track_063	; Step:008 Pattern:007
	dw .track_016, .track_065, .track_002, .track_002, .track_068, .track_069, .track_070, .track_071	; Step:009 Pattern:008
	dw .track_072, .track_073, .track_002, .track_002, .track_076, .track_077, .track_078, .track_079	; Step:010 Pattern:009
	dw .track_000, .track_001, .track_002, .track_002, .track_084, .track_085, .track_086, .track_087	; Step:011 Pattern:010
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00				; Waveform:0
	db $80, $b0, $c0, $10, $1a, $2a, $2c, $1a, $00, $e0, $d0, $e0, $22, $53, $70, $75, $70, $31, $ea, $80, $88, $8a, $8c, $8e, $00, $7f, $75, $73, $62, $00, $c0, $90				; Waveform:1
	db $00, $fc, $f8, $f4, $f0, $ec, $e8, $e4, $e0, $dc, $d8, $d4, $d0, $cc, $c8, $c4, $c0, $40, $3c, $38, $34, $30, $2c, $28, $24, $20, $1c, $18, $14, $10, $0c, $08				; Waveform:6
	db $a0, $90, $a0, $ac, $f0, $a0, $16, $00, $90, $00, $20, $40, $60, $50, $38, $1c, $f2, $e2, $d6, $d0, $d0, $da, $dc, $e0, $e2, $e2, $e2, $e0, $dc, $d8, $d0, $b0				; Waveform:7
	db $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9, $b9				; Waveform:11
	db $80, $c8, $20, $7f, $30, $c8, $80, $90, $a8, $c0, $e0, $00, $20, $38, $50, $60, $70, $78, $7c, $7f, $7c, $78, $70, $60, $50, $38, $20, $00, $e0, $c0, $a8, $90				; Waveform:17
	db $08, $30, $6d, $38, $18, $08, $10, $1c, $38, $60, $44, $20, $e8, $10, $38, $18, $08, $f0, $cc, $e0, $f0, $d8, $b8, $a0, $b7, $b0, $a0, $b8, $c0, $d4, $e0, $f0				; Waveform:18
	db $98, $d8, $18, $04, $c4, $b2, $ee, $e4, $c4, $eb, $38, $28, $e8, $d8, $10, $06, $ec, $0c, $68, $48, $e8, $d8, $10, $00, $d8, $f8, $38, $18, $cc, $c8, $f8, $98				; Waveform:19
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $00, $e7, $cf, $b9, $a6, $96, $8b, $83, $80, $83, $8b, $96, $a6, $b9, $cf, $e7				; Waveform:21
	db $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20, $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20				; Waveform:22
	db $01, $2a, $40, $50, $5c, $68, $70, $78, $7f, $78, $70, $68, $5c, $50, $40, $2a, $ff, $d6, $c0, $b0, $a4, $98, $90, $88, $81, $88, $90, $98, $a4, $b0, $c0, $d6				; Waveform:30

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; Blob            
	dw .instrument_01				; HH CL A8        
	dw .instrument_02				; TOM             
	dw .instrument_03				; SC Bass         
	dw .instrument_04				; SC Brass Satan  
	dw .instrument_05				; Staccato BASS   
	dw .instrument_06				; ARP SQ          
	dw .instrument_07				; Piano tremolo   
	dw .instrument_08				; HH OP A8        
	dw .instrument_09				; SHAKER II G7    
	dw .instrument_10				; HH CL LOW A8    

.instrument_00:					; Blob            
	db $50							; Waveform 10
.rst_i00:
	db $01							; Info byte: 00000001
	dw .rst_i00						; Loop address
.instrument_01:					; HH CL A8        
	db $18							; Waveform 3
	db $d4							; Info byte: 11010100
	db $0f							; Volume _
	db $00							; Noise _
.rst_i01:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i01						; Loop address
.instrument_02:					; TOM             
	db $48							; Waveform 9
	db $1c							; Info byte: 00011100
	db $0f							; Volume _
	dw $002f							; Tone
	db $1c							; Info byte: 00011100
	db $0d							; Volume _
	dw $002f							; Tone
.rst_i02:
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
	dw .rst_i02						; Loop address
.instrument_03:					; SC Bass         
	db $08							; Waveform 1
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i03:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i03						; Loop address
.instrument_04:					; SC Brass Satan  
	db $10							; Waveform 2
	db $14							; Info byte: 00010100
	db $08							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
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
	db $14							; Info byte: 00010100
	db $05							; Volume _
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
	db $06							; Volume _
.rst_i04:
	db $15							; Info byte: 00010101
	db $05							; Volume _
	dw .rst_i04						; Loop address
.instrument_05:					; Staccato BASS   
	db $08							; Waveform 1
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
.rst_i05:
	db $16							; Info byte: 00010110
	db $ff							; Volume -
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i05						; Loop address
.instrument_06:					; ARP SQ          
	db $38							; Waveform 7
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
.rst_i06:
	db $01							; Info byte: 00000001
	dw .rst_i06						; Loop address
.instrument_07:					; Piano tremolo   
	db $38							; Waveform 7
	db $14							; Info byte: 00010100
	db $0e							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i07:
	db $15							; Info byte: 00010101
	db $09							; Volume _
	dw .rst_i07						; Loop address
.instrument_08:					; HH OP A8        
	db $00							; Waveform 0
	db $d4							; Info byte: 11010100
	db $0d							; Volume _
	db $00							; Noise _
.rst_i08:
	db $d6							; Info byte: 11010110
	db $ff							; Volume -
	db $00							; Noise _
	db $d0							; Info byte: 11010000
	db $00							; Noise _
	db $d0							; Info byte: 11010000
	db $00							; Noise _
	db $d1							; Info byte: 11010001
	db $00							; Noise _
	dw .rst_i08						; Loop address
.instrument_09:					; SHAKER II G7    
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
.rst_i09:
	db $01							; Info byte: 00000001
	dw .rst_i09						; Loop address
.instrument_10:					; HH CL LOW A8    
	db $00							; Waveform 0
	db $d4							; Info byte: 11010100
	db $0f							; Volume _
	db $03							; Noise _
.rst_i10:
	db $05							; Info byte: 00000101
	db $00							; Volume _
	dw .rst_i10						; Loop address

; [ Song track data ]
.track_000:
	db $09			;Note A-1
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $a1,$0f			;CMD Track detune
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6d			;Volume 12
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6f			;Volume 14
					;Wait Repeat 4
	db $09			;Note A-1
	db $6d			;Volume 12
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6f			;Volume 14
					;Wait Repeat 4
	db $0c			;Note C-2
	db $6e			;Volume 13
					;Wait Repeat 4
	db $0c			;Note C-2
					;Wait Repeat 4
	db $0b			;Note B-1
					;Wait Repeat 4
	db $0b			;Note B-1
					;Wait Repeat 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_001:
	db $15			;Note A-2
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $cb			;Wait 12
	db $21			;Note A-3
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $c7			;Wait 8
	db $43			;Note G-6
	db $6d			;Volume 12
	db $7a			;Instrument 9
	db $c5			;Wait 6
	db $43			;Note G-6
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $12			;Note F#2
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $c7			;Wait 8
	db $43			;Note G-6
	db $66			;Volume 5
	db $7a			;Instrument 9
					;Wait Repeat 8
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $79			;Instrument 8
					;Wait Repeat 4
	db $5d			;Note A-8
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $79			;Instrument 8
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_002:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_004:
	db $09			;Note A-1
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6a			;Volume 9
	db $a9,$40			; SCC Set Waveform 21
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $a9,$08			; SCC Set Waveform 1
					;Wait Repeat 4
	db $09			;Note A-1
	db $a9,$40			; SCC Set Waveform 21
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $0c			;Note C-2
					;Wait Repeat 4
	db $0c			;Note C-2
					;Wait Repeat 4
	db $0b			;Note B-1
					;Wait Repeat 4
	db $0b			;Note B-1
					;Wait Repeat 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_005:
	db $10			;Note E-2
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$28			; SCC Set Waveform 17
	db $c3			;Wait 4
	db $62			;Volume 1
					;Wait Repeat 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $10			;Note E-2
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $62			;Volume 1
					;Wait Repeat 4
	db $60			;Release 96
	db $cb			;Wait 12
	db $13			;Note G-2
	db $68			;Volume 7
	db $76			;Instrument 5
	db $c3			;Wait 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $12			;Note F#2
					;Wait Repeat 4
	db $12			;Note F#2
					;Wait Repeat 4
	db $11			;Note F-2
					;Wait Repeat 4
	db $11			;Note F-2
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_006:
	db $60			;Release 96
	db $cd			;Wait 14
	db $a9,$38			; SCC Set Waveform 19
	db $c0			;Wait 1
	db $a1,$09			;CMD Track detune
					;Wait Repeat 1
	db $34			;Note E-5
	db $6a			;Volume 9
	db $77			;Instrument 6
	db $a8				; SCC Soften Waveform
	db $c1			;Wait 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6e			;Volume 13
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6c			;Volume 11
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $68			;Volume 7
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_007:
	db $60			;Release 96
	db $d1			;Wait 18
	db $a1,$00			;CMD Track detune
	db $c0			;Wait 1
	db $34			;Note E-5
	db $67			;Volume 6
	db $77			;Instrument 6
	db $a8				; SCC Soften Waveform
	db $c1			;Wait 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
	db $bf			;[End-Of-Track]
.track_008:
	db $09			;Note A-1
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $a1,$0f			;CMD Track detune
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6d			;Volume 12
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6f			;Volume 14
					;Wait Repeat 4
	db $09			;Note A-1
	db $6d			;Volume 12
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6f			;Volume 14
					;Wait Repeat 4
	db $10			;Note E-2
	db $6e			;Volume 13
					;Wait Repeat 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $0f			;Note D#2
					;Wait Repeat 4
	db $0f			;Note D#2
					;Wait Repeat 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_009:
	db $21			;Note A-3
	db $6b			;Volume 10
	db $73			;Instrument 2
	db $c5			;Wait 6
	db $1e			;Note F#3
	db $6a			;Volume 9
					;Wait Repeat 6
	db $21			;Note A-3
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $1d			;Note F-3
	db $6d			;Volume 12
	db $de			;Wait 31
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $7b			;Instrument 10
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $5d			;Note A-8
	db $6c			;Volume 11
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $79			;Instrument 8
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_012:
	db $09			;Note A-1
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6a			;Volume 9
	db $a9,$40			; SCC Set Waveform 21
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $a9,$08			; SCC Set Waveform 1
					;Wait Repeat 4
	db $09			;Note A-1
	db $a9,$40			; SCC Set Waveform 21
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $15			;Note A-2
	db $68			;Volume 7
	db $76			;Instrument 5
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_013:
	db $10			;Note E-2
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$28			; SCC Set Waveform 17
	db $c3			;Wait 4
	db $62			;Volume 1
					;Wait Repeat 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $10			;Note E-2
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $62			;Volume 1
					;Wait Repeat 4
	db $60			;Release 96
	db $cb			;Wait 12
	db $10			;Note E-2
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$30			; SCC Set Waveform 18
	db $c3			;Wait 4
	db $10			;Note E-2
					;Wait Repeat 4
	db $0f			;Note D#2
					;Wait Repeat 4
	db $0f			;Note D#2
					;Wait Repeat 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_014:
	db $60			;Release 96
	db $ce			;Wait 15
	db $a1,$09			;CMD Track detune
	db $c0			;Wait 1
	db $40			;Note E-6
	db $6a			;Volume 9
	db $77			;Instrument 6
	db $a8				; SCC Soften Waveform
	db $c1			;Wait 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $40			;Note E-6
	db $6b			;Volume 10
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $40			;Note E-6
	db $6e			;Volume 13
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $40			;Note E-6
	db $6c			;Volume 11
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $6b			;Volume 10
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $40			;Note E-6
	db $6a			;Volume 9
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $69			;Volume 8
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $40			;Note E-6
	db $68			;Volume 7
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_015:
	db $60			;Release 96
	db $d1			;Wait 18
	db $a1,$01			;CMD Track detune
	db $c0			;Wait 1
	db $40			;Note E-6
	db $66			;Volume 5
	db $77			;Instrument 6
	db $a8				; SCC Soften Waveform
	db $c1			;Wait 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
	db $bf			;[End-Of-Track]
.track_016:
	db $09			;Note A-1
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $a1,$0f			;CMD Track detune
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6d			;Volume 12
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6f			;Volume 14
					;Wait Repeat 4
	db $09			;Note A-1
	db $6d			;Volume 12
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6f			;Volume 14
					;Wait Repeat 4
	db $09			;Note A-1
	db $6d			;Volume 12
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6f			;Volume 14
					;Wait Repeat 4
	db $09			;Note A-1
	db $6d			;Volume 12
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_017:
	db $15			;Note A-2
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $cb			;Wait 12
	db $21			;Note A-3
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $c7			;Wait 8
	db $43			;Note G-6
	db $6d			;Volume 12
	db $7a			;Instrument 9
	db $c3			;Wait 4
	db $43			;Note G-6
	db $6b			;Volume 10
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6c			;Volume 11
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $79			;Instrument 8
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $72			;Instrument 1
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 4
	db $5d			;Note A-8
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6c			;Volume 11
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $79			;Instrument 8
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_020:
	db $09			;Note A-1
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6a			;Volume 9
	db $a9,$40			; SCC Set Waveform 21
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $a9,$08			; SCC Set Waveform 1
					;Wait Repeat 4
	db $09			;Note A-1
	db $a9,$40			; SCC Set Waveform 21
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $a9,$08			; SCC Set Waveform 1
					;Wait Repeat 4
	db $09			;Note A-1
	db $a9,$40			; SCC Set Waveform 21
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $a9,$08			; SCC Set Waveform 1
					;Wait Repeat 4
	db $09			;Note A-1
	db $a9,$40			; SCC Set Waveform 21
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_021:
	db $10			;Note E-2
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$28			; SCC Set Waveform 17
	db $c3			;Wait 4
	db $62			;Volume 1
					;Wait Repeat 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $10			;Note E-2
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $62			;Volume 1
					;Wait Repeat 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $10			;Note E-2
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $62			;Volume 1
					;Wait Repeat 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $10			;Note E-2
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $62			;Volume 1
					;Wait Repeat 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_022:
	db $60			;Release 96
	db $cd			;Wait 14
	db $a1,$09			;CMD Track detune
	db $c0			;Wait 1
	db $77			;Instrument 6
	db $a9,$20			; SCC Set Waveform 11
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
	db $a8				; SCC Soften Waveform
	db $c1			;Wait 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $6c			;Volume 11
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $6e			;Volume 13
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $6c			;Volume 11
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $68			;Volume 7
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_023:
	db $60			;Release 96
	db $d2			;Wait 19
	db $37			;Note G-5
	db $66			;Volume 5
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $67			;Volume 6
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $68			;Volume 7
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $66			;Volume 5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $34			;Note E-5
	db $bf			;[End-Of-Track]
.track_028:
	db $09			;Note A-1
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6a			;Volume 9
	db $a9,$30			; SCC Set Waveform 18
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6b			;Volume 10
	db $a9,$08			; SCC Set Waveform 1
					;Wait Repeat 4
	db $15			;Note A-2
	db $6a			;Volume 9
	db $a9,$30			; SCC Set Waveform 18
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6b			;Volume 10
	db $a9,$08			; SCC Set Waveform 1
					;Wait Repeat 4
	db $15			;Note A-2
	db $6a			;Volume 9
	db $a9,$30			; SCC Set Waveform 18
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6b			;Volume 10
	db $a9,$08			; SCC Set Waveform 1
					;Wait Repeat 4
	db $15			;Note A-2
	db $6a			;Volume 9
	db $a9,$30			; SCC Set Waveform 18
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_029:
	db $26			;Note D-4
	db $69			;Volume 8
	db $78			;Instrument 7
	db $a9,$38			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $24			;Note C-4
	db $69			;Volume 8
	db $c1			;Wait 2
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $6c			;Volume 11
	db $78			;Instrument 7
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $26			;Note D-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $26			;Note D-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $26			;Note D-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $26			;Note D-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_030:
	db $29			;Note F-4
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $28			;Note E-4
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a9,$38			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $28			;Note E-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $26			;Note D-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $6e			;Volume 13
	db $a9,$38			; SCC Set Waveform 19
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $69			;Volume 8
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$38			; SCC Set Waveform 19
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $29			;Note F-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_031:
	db $60			;Release 96
	db $c1			;Wait 2
	db $a1,$01			;CMD Track detune
	db $c0			;Wait 1
	db $29			;Note F-4
	db $68			;Volume 7
	db $78			;Instrument 7
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $29			;Note F-4
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
	db $bf			;[End-Of-Track]
.track_037:
	db $26			;Note D-4
	db $69			;Volume 8
	db $78			;Instrument 7
	db $a9,$38			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $24			;Note C-4
	db $69			;Volume 8
	db $c1			;Wait 2
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $26			;Note D-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $28			;Note E-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $29			;Note F-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $28			;Note E-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $29			;Note F-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $29			;Note F-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $26			;Note D-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $29			;Note F-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $26			;Note D-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $26			;Note D-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_038:
	db $29			;Note F-4
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $28			;Note E-4
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $26			;Note D-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a9,$38			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $28			;Note E-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $26			;Note D-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $6e			;Volume 13
	db $a9,$38			; SCC Set Waveform 19
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $69			;Volume 8
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a9,$38			; SCC Set Waveform 19
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $29			;Note F-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_039:
	db $60			;Release 96
	db $c1			;Wait 2
	db $a1,$01			;CMD Track detune
	db $c0			;Wait 1
	db $29			;Note F-4
	db $68			;Volume 7
	db $78			;Instrument 7
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $29			;Note F-4
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
	db $bf			;[End-Of-Track]
.track_045:
	db $1c			;Note E-3
	db $69			;Volume 8
	db $78			;Instrument 7
	db $a9,$38			; SCC Set Waveform 19
	db $c1			;Wait 2
	db $60			;Release 96
	db $e1			;Wait 34
	db $30			;Note C-5
	db $68			;Volume 7
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $34			;Note E-5
	db $c1			;Wait 2
	db $32			;Note D-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 13
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $30			;Note C-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_046:
	db $21			;Note A-3
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a1,$00			;CMD Track detune
	db $c1			;Wait 2
	db $60			;Release 96
	db $e0			;Wait 33
	db $a1,$09			;CMD Track detune
	db $c0			;Wait 1
	db $34			;Note E-5
	db $6a			;Volume 9
	db $77			;Instrument 6
	db $a8				; SCC Soften Waveform
	db $c1			;Wait 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $36			;Note F#5
	db $69			;Volume 8
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 13
					;Wait Repeat 2
	db $32			;Note D-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_047:
	db $60			;Release 96
	db $c1			;Wait 2
	db $a1,$01			;CMD Track detune
	db $c0			;Wait 1
	db $21			;Note A-3
	db $68			;Volume 7
	db $78			;Instrument 7
	db $a8				; SCC Soften Waveform
	db $c4			;Wait 5
	db $60			;Release 96
	db $dd			;Wait 30
	db $a1,$00			;CMD Track detune
	db $c0			;Wait 1
	db $34			;Note E-5
	db $66			;Volume 5
	db $77			;Instrument 6
	db $a8				; SCC Soften Waveform
	db $c1			;Wait 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $67			;Volume 6
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $37			;Note G-5
	db $bf			;[End-Of-Track]
.track_053:
	db $39			;Note A-5
	db $68			;Volume 7
	db $77			;Instrument 6
	db $a9,$20			; SCC Set Waveform 11
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $40			;Note E-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $45			;Note A-6
	db $a8				; SCC Soften Waveform
	db $c0			;Wait 1
	db $39			;Note A-5
	db $69			;Volume 8
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $3e			;Note D-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $40			;Note E-6
	db $c0			;Wait 1
	db $45			;Note A-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $39			;Note A-5
	db $68			;Volume 7
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $c0			;Wait 1
	db $40			;Note E-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $45			;Note A-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $39			;Note A-5
	db $67			;Volume 6
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $40			;Note E-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $45			;Note A-6
	db $c0			;Wait 1
	db $39			;Note A-5
	db $66			;Volume 5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $3e			;Note D-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $40			;Note E-6
	db $c0			;Wait 1
	db $45			;Note A-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $39			;Note A-5
	db $65			;Volume 4
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $c0			;Wait 1
	db $40			;Note E-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $45			;Note A-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $39			;Note A-5
	db $68			;Volume 7
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $40			;Note E-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $30			;Note C-5
	db $68			;Volume 7
	db $77			;Instrument 6
					;Wait Repeat 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 13
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $30			;Note C-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_054:
	db $30			;Note C-5
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $60			;Release 96
	db $e0			;Wait 33
	db $a1,$09			;CMD Track detune
	db $c0			;Wait 1
	db $34			;Note E-5
	db $6a			;Volume 9
	db $a8				; SCC Soften Waveform
	db $c1			;Wait 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $32			;Note D-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 13
					;Wait Repeat 2
	db $32			;Note D-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $30			;Note C-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_055:
	db $34			;Note E-5
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $34			;Note E-5
	db $66			;Volume 5
	db $a8				; SCC Soften Waveform
	db $c4			;Wait 5
	db $60			;Release 96
	db $dd			;Wait 30
	db $a1,$00			;CMD Track detune
	db $c0			;Wait 1
	db $34			;Note E-5
	db $66			;Volume 5
	db $a8				; SCC Soften Waveform
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $30			;Note C-5
	db $67			;Volume 6
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $30			;Note C-5
	db $bf			;[End-Of-Track]
.track_061:
	db $2d			;Note A-4
	db $68			;Volume 7
	db $77			;Instrument 6
	db $a9,$20			; SCC Set Waveform 11
	db $c0			;Wait 1
	db $32			;Note D-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $34			;Note E-5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $39			;Note A-5
	db $a8				; SCC Soften Waveform
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $69			;Volume 8
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $32			;Note D-5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $34			;Note E-5
	db $c0			;Wait 1
	db $39			;Note A-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $2d			;Note A-4
	db $68			;Volume 7
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $32			;Note D-5
	db $c0			;Wait 1
	db $34			;Note E-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $39			;Note A-5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $67			;Volume 6
	db $c0			;Wait 1
	db $32			;Note D-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $34			;Note E-5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $39			;Note A-5
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $66			;Volume 5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $32			;Note D-5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $34			;Note E-5
	db $c0			;Wait 1
	db $39			;Note A-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $2d			;Note A-4
	db $65			;Volume 4
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $32			;Note D-5
	db $c0			;Wait 1
	db $34			;Note E-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $39			;Note A-5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $63			;Volume 2
	db $77			;Instrument 6
	db $c0			;Wait 1
	db $32			;Note D-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $34			;Note E-5
	db $62			;Volume 1
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $39			;Note A-5
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $60			;Release 96
	db $d9			;Wait 26
	db $bf			;[End-Of-Track]
.track_062:
	db $28			;Note E-4
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $60			;Release 96
	db $dd			;Wait 30
	db $10			;Note E-2
	db $68			;Volume 7
	db $74			;Instrument 3
	db $a9,$28			; SCC Set Waveform 17
	db $c2			;Wait 3
	db $60			;Release 96
	db $c8			;Wait 9
	db $10			;Note E-2
	db $67			;Volume 6
	db $76			;Instrument 5
	db $a9,$28			; SCC Set Waveform 17
	db $c3			;Wait 4
	db $10			;Note E-2
	db $67			;Volume 6
					;Wait Repeat 4
	db $60			;Release 96
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_063:
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $66			;Volume 5
	db $a8				; SCC Soften Waveform
	db $c4			;Wait 5
	db $60			;Release 96
	db $f7			;Wait 56
	db $bf			;[End-Of-Track]
.track_065:
	db $15			;Note A-2
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $cb			;Wait 12
	db $21			;Note A-3
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $c7			;Wait 8
	db $43			;Note G-6
	db $6d			;Volume 12
	db $7a			;Instrument 9
	db $c3			;Wait 4
	db $43			;Note G-6
	db $6b			;Volume 10
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6c			;Volume 11
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $79			;Instrument 8
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6c			;Volume 11
	db $72			;Instrument 1
					;Wait Repeat 4
	db $21			;Note A-3
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_068:
	db $09			;Note A-1
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6a			;Volume 9
	db $a9,$30			; SCC Set Waveform 18
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6b			;Volume 10
	db $a9,$08			; SCC Set Waveform 1
					;Wait Repeat 4
	db $15			;Note A-2
	db $6a			;Volume 9
	db $a9,$30			; SCC Set Waveform 18
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6b			;Volume 10
	db $a9,$08			; SCC Set Waveform 1
					;Wait Repeat 4
	db $15			;Note A-2
	db $6a			;Volume 9
	db $a9,$30			; SCC Set Waveform 18
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $15			;Note A-2
	db $c3			;Wait 4
	db $20			;Note G#3
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $c7			;Wait 8
	db $20			;Note G#3
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_069:
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
	db $a9,$38			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $24			;Note C-4
	db $69			;Volume 8
	db $c1			;Wait 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $6c			;Volume 11
	db $78			;Instrument 7
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $23			;Note B-3
	db $65			;Volume 4
					;Wait Repeat 2
	db $28			;Note E-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $24			;Note C-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $28			;Note E-4
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $28			;Note E-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $23			;Note B-3
	db $69			;Volume 8
	db $78			;Instrument 7
					;Wait Repeat 2
	db $28			;Note E-4
	db $65			;Volume 4
					;Wait Repeat 2
	db $29			;Note F-4
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $c7			;Wait 8
	db $26			;Note D-4
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_070:
	db $29			;Note F-4
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $28			;Note E-4
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a9,$38			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $28			;Note E-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $26			;Note D-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $6e			;Volume 13
	db $a9,$38			; SCC Set Waveform 19
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $69			;Volume 8
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$38			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $24			;Note C-4
	db $62			;Volume 1
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $62			;Volume 1
					;Wait Repeat 2
	db $24			;Note C-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $62			;Volume 1
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_071:
	db $60			;Release 96
	db $c1			;Wait 2
	db $a1,$01			;CMD Track detune
	db $c0			;Wait 1
	db $29			;Note F-4
	db $68			;Volume 7
	db $78			;Instrument 7
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $29			;Note F-4
	db $a8				; SCC Soften Waveform
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $28			;Note E-4
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $6b			;Volume 10
	db $a7,$00			; SCC Duty cycle Waveform
	db $c3			;Wait 4
	db $28			;Note E-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $62			;Volume 1
					;Wait Repeat 2
	db $28			;Note E-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $28			;Note E-4
	db $62			;Volume 1
					;Wait Repeat 2
	db $2b			;Note G-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $28			;Note E-4
	db $62			;Volume 1
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_072:
	db $09			;Note A-1
	db $6f			;Volume 14
	db $76			;Instrument 5
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6e			;Volume 13
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6f			;Volume 14
					;Wait Repeat 4
	db $09			;Note A-1
	db $6e			;Volume 13
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6f			;Volume 14
					;Wait Repeat 4
	db $09			;Note A-1
	db $6e			;Volume 13
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6f			;Volume 14
					;Wait Repeat 4
	db $09			;Note A-1
	db $6e			;Volume 13
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_073:
	db $21			;Note A-3
	db $6d			;Volume 12
	db $73			;Instrument 2
	db $cf			;Wait 16
	db $21			;Note A-3
	db $6d			;Volume 12
					;Wait Repeat 16
	db $21			;Note A-3
	db $6d			;Volume 12
					;Wait Repeat 16
	db $21			;Note A-3
	db $6d			;Volume 12
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_076:
	db $1e			;Note F#3
	db $6d			;Volume 12
	db $75			;Instrument 4
	db $c7			;Wait 8
	db $1e			;Note F#3
					;Wait Repeat 8
	db $1f			;Note G-3
					;Wait Repeat 8
	db $1b			;Note D#3
					;Wait Repeat 8
	db $1c			;Note E-3
					;Wait Repeat 8
	db $1d			;Note F-3
					;Wait Repeat 8
	db $18			;Note C-3
					;Wait Repeat 8
	db $15			;Note A-2
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_077:
	db $21			;Note A-3
	db $6d			;Volume 12
	db $75			;Instrument 4
	db $c7			;Wait 8
	db $23			;Note B-3
					;Wait Repeat 8
	db $24			;Note C-4
					;Wait Repeat 8
	db $21			;Note A-3
					;Wait Repeat 8
	db $21			;Note A-3
					;Wait Repeat 8
	db $22			;Note A#3
					;Wait Repeat 8
	db $1f			;Note G-3
					;Wait Repeat 8
	db $1a			;Note D-3
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_078:
	db $23			;Note B-3
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$38			; SCC Set Waveform 19
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $23			;Note B-3
	db $62			;Volume 1
					;Wait Repeat 2
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $62			;Volume 1
					;Wait Repeat 2
	db $20			;Note G#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $62			;Volume 1
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$38			; SCC Set Waveform 19
					;Wait Repeat 2
	db $21			;Note A-3
	db $62			;Volume 1
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1f			;Note G-3
	db $62			;Volume 1
					;Wait Repeat 2
	db $1e			;Note F#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1e			;Note F#3
	db $62			;Volume 1
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $78			;Instrument 7
					;Wait Repeat 2
	db $1e			;Note F#3
	db $62			;Volume 1
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6b			;Volume 10
	db $78			;Instrument 7
					;Wait Repeat 2
	db $1d			;Note F-3
	db $62			;Volume 1
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6b			;Volume 10
	db $78			;Instrument 7
					;Wait Repeat 2
	db $1c			;Note E-3
	db $62			;Volume 1
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $78			;Instrument 7
					;Wait Repeat 2
	db $1c			;Note E-3
	db $62			;Volume 1
					;Wait Repeat 2
	db $20			;Note G#3
	db $6b			;Volume 10
	db $78			;Instrument 7
					;Wait Repeat 2
	db $1d			;Note F-3
	db $62			;Volume 1
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $a9,$38			; SCC Set Waveform 19
					;Wait Repeat 2
	db $20			;Note G#3
	db $62			;Volume 1
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $78			;Instrument 7
					;Wait Repeat 2
	db $1f			;Note G-3
	db $62			;Volume 1
					;Wait Repeat 2
	db $1a			;Note D-3
	db $6b			;Volume 10
	db $78			;Instrument 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $62			;Volume 1
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $78			;Instrument 7
					;Wait Repeat 2
	db $1a			;Note D-3
	db $62			;Volume 1
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_079:
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $62			;Volume 1
					;Wait Repeat 2
	db $26			;Note D-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $26			;Note D-4
	db $62			;Volume 1
					;Wait Repeat 2
	db $29			;Note F-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $26			;Note D-4
	db $62			;Volume 1
					;Wait Repeat 2
	db $28			;Note E-4
	db $6b			;Volume 10
	db $78			;Instrument 7
					;Wait Repeat 2
	db $29			;Note F-4
	db $62			;Volume 1
					;Wait Repeat 2
	db $24			;Note C-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $28			;Note E-4
	db $62			;Volume 1
					;Wait Repeat 2
	db $24			;Note C-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $24			;Note C-4
	db $62			;Volume 1
					;Wait Repeat 2
	db $27			;Note D#4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $24			;Note C-4
	db $62			;Volume 1
					;Wait Repeat 2
	db $26			;Note D-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $29			;Note F-4
	db $62			;Volume 1
					;Wait Repeat 2
	db $22			;Note A#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $26			;Note D-4
	db $62			;Volume 1
					;Wait Repeat 2
	db $22			;Note A#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $22			;Note A#3
	db $62			;Volume 1
					;Wait Repeat 2
	db $25			;Note C#4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $22			;Note A#3
	db $62			;Volume 1
					;Wait Repeat 2
	db $24			;Note C-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $25			;Note C#4
	db $62			;Volume 1
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $24			;Note C-4
	db $62			;Volume 1
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1f			;Note G-3
	db $62			;Volume 1
					;Wait Repeat 2
	db $22			;Note A#3
	db $6b			;Volume 10
					;Wait Repeat 2
	db $1f			;Note G-3
	db $62			;Volume 1
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_084:
	db $09			;Note A-1
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6a			;Volume 9
	db $a9,$40			; SCC Set Waveform 21
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $a9,$08			; SCC Set Waveform 1
					;Wait Repeat 4
	db $09			;Note A-1
	db $a9,$40			; SCC Set Waveform 21
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $0c			;Note C-2
					;Wait Repeat 4
	db $0c			;Note C-2
					;Wait Repeat 4
	db $0b			;Note B-1
					;Wait Repeat 4
	db $0b			;Note B-1
					;Wait Repeat 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_085:
	db $10			;Note E-2
	db $6b			;Volume 10
	db $76			;Instrument 5
	db $c3			;Wait 4
	db $62			;Volume 1
					;Wait Repeat 4
	db $60			;Release 96
	db $c5			;Wait 6
	db $0c			;Note C-2
	db $62			;Volume 1
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $60			;Release 96
	db $f0			;Wait 49
	db $bf			;[End-Of-Track]
.track_086:
	db $1c			;Note E-3
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $60			;Release 96
	db $cd			;Wait 14
	db $34			;Note E-5
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6e			;Volume 13
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6c			;Volume 11
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 10
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6a			;Volume 9
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $68			;Volume 7
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_087:
	db $21			;Note A-3
	db $6e			;Volume 13
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $21			;Note A-3
	db $66			;Volume 5
	db $a8				; SCC Soften Waveform
	db $c4			;Wait 5
	db $60			;Release 96
	db $ca			;Wait 11
	db $34			;Note E-5
	db $67			;Volume 6
	db $a8				; SCC Soften Waveform
	db $c1			;Wait 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
	db $bf			;[End-Of-Track]

