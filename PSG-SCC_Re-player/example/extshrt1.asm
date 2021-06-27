; Song: MoG2- Exterior Short 1          
; By:   Gryzor87 (c)2021                

; [ Song start data ]
	db $0a					; Initial song speed.
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
	db $80, $b0, $c0, $10, $1a, $2a, $2c, $1a, $00, $e0, $d0, $e0, $22, $53, $70, $75, $70, $31, $ea, $80, $88, $8a, $8c, $8e, $00, $7f, $75, $73, $62, $00, $c0, $90				; Waveform:1
	db $00, $40, $7f, $40, $01, $c0, $81, $c0, $01, $40, $7f, $40, $01, $c0, $01, $40, $01, $e0, $01, $20, $01, $f0, $01, $10, $01, $ff, $ff, $ff, $ff, $40, $40, $40				; Waveform:2
	db $00, $10, $20, $30, $40, $50, $60, $70, $7f, $70, $60, $50, $40, $30, $20, $10, $ff, $f0, $e0, $d0, $c0, $b0, $a0, $90, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0				; Waveform:3
	db $00, $30, $50, $60, $70, $60, $50, $30, $00, $d0, $b0, $a0, $90, $a0, $b0, $d0, $00, $40, $60, $70, $60, $40, $00, $c0, $a0, $90, $a0, $c0, $00, $70, $00, $90				; Waveform:4
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0, $00, $10, $20, $30, $40, $50, $60, $70				; Waveform:8
	db $00, $f8, $e8, $d8, $c8, $b8, $ac, $9c, $90, $8c, $8a, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $77, $68, $58, $48, $38, $28, $18, $08				; Waveform:9
	db $00, $40, $7f, $40, $10, $01, $ea, $ce, $bb, $b1, $a7, $9c, $94, $8d, $87, $82, $81, $80, $80, $81, $81, $83, $87, $8d, $94, $9c, $a7, $b1, $bb, $ce, $ea, $ff				; Waveform:16
	db $00, $68, $48, $18, $48, $68, $28, $00, $48, $77, $58, $08, $28, $38, $00, $b8, $08, $58, $00, $e8, $f8, $00, $b8, $98, $c8, $08, $e8, $a8, $c8, $f8, $c8, $a8				; Waveform:20
	db $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20, $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20				; Waveform:22
	db $30, $68, $7d, $68, $38, $20, $40, $54, $60, $68, $5c, $20, $e8, $18, $30, $28, $10, $e0, $bc, $c0, $d8, $b8, $98, $90, $9f, $98, $88, $98, $a0, $b4, $b0, $d8				; Waveform:26

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; SD A3           
	dw .instrument_01				; TOM             
	dw .instrument_02				; SC Brass Satan  
	dw .instrument_03				; Piano tremolo   
	dw .instrument_04				; Response BELL   
	dw .instrument_05				; SD-MAIN         
	dw .instrument_06				; SD-Roll         

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
.instrument_01:					; TOM             
	db $48							; Waveform 9
	db $1c							; Info byte: 00011100
	db $0e							; Volume _
	dw $0040							; Tone
	db $1c							; Info byte: 00011100
	db $0d							; Volume _
	dw $0040							; Tone
.rst_i01:
	db $1e							; Info byte: 00011110
	db $ff							; Volume -
	dw $0040							; Tone
	db $18							; Info byte: 00011000
	dw $0040							; Tone
	db $19							; Info byte: 00011001
	dw $0040							; Tone
	dw .rst_i01						; Loop address
.instrument_02:					; SC Brass Satan  
	db $30							; Waveform 6
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
.rst_i02:
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
	dw .rst_i02						; Loop address
.instrument_03:					; Piano tremolo   
	db $38							; Waveform 7
	db $14							; Info byte: 00010100
	db $07							; Volume _
	db $14							; Info byte: 00010100
	db $08							; Volume _
	db $14							; Info byte: 00010100
	db $09							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0d							; Volume _
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
.rst_i03:
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
	dw .rst_i03						; Loop address
.instrument_04:					; Response BELL   
	db $50							; Waveform 10
	db $14							; Info byte: 00010100
	db $0c							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
	db $14							; Info byte: 00010100
	db $07							; Volume _
.rst_i04:
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
	db $10							; Info byte: 00010000
	db $17							; Info byte: 00010111
	db $ff							; Volume -
	dw .rst_i04						; Loop address
.instrument_05:					; SD-MAIN         
	db $00							; Waveform 0
	db $14							; Info byte: 00010100
	db $0d							; Volume _
	db $c4							; Info byte: 11000100
	db $0c							; Volume _
	db $05							; Noise _
.rst_i05:
	db $e6							; Info byte: 11100110
	db $ff							; Volume -
	db $02							; Noise +
	db $80							; Info byte: 10000000
	db $81							; Info byte: 10000001
	dw .rst_i05						; Loop address
.instrument_06:					; SD-Roll         
	db $00							; Waveform 0
.rst_i06:
	db $14							; Info byte: 00010100
	db $0f							; Volume _
	db $c4							; Info byte: 11000100
	db $0d							; Volume _
	db $07							; Noise _
	db $c5							; Info byte: 11000101
	db $0b							; Volume _
	db $07							; Noise _
	dw .rst_i06						; Loop address

; [ Song track data ]
.track_000:
	db $13			;Note G-2
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6c			;Volume 11
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $21			;Note A-3
	db $6f			;Volume 14
	db $71			;Instrument 0
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $76			;Instrument 5
	db $c7			;Wait 8
	db $21			;Note A-3
	db $6c			;Volume 11
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6c			;Volume 11
	db $77			;Instrument 6
					;Wait Repeat 2
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $18			;Note C-3
	db $6f			;Volume 14
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6c			;Volume 11
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $76			;Instrument 5
	db $c5			;Wait 6
	db $21			;Note A-3
	db $6c			;Volume 11
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_001:
	db $32			;Note D-5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $c0			;Wait 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $36			;Note F#5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $34			;Note E-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $36			;Note F#5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $39			;Note A-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $36			;Note F#5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $34			;Note E-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $36			;Note F#5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $39			;Note A-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $36			;Note F#5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $34			;Note E-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $36			;Note F#5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $39			;Note A-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $36			;Note F#5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $34			;Note E-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $36			;Note F#5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $39			;Note A-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $36			;Note F#5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $34			;Note E-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $36			;Note F#5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $39			;Note A-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
	db $bf			;[End-Of-Track]
.track_002:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_004:
	db $09			;Note A-1
	db $70			;Volume 15
	db $73			;Instrument 2
	db $a9,$28			; SCC Set Waveform 8
	db $c0			;Wait 1
	db $ab,$01			; SCC Morph follow (Carbon C0poy) 1
					;Wait Repeat 1
	db $ac,$05			; SCC Morph speed 5
					;Wait Repeat 1
	db $9c,$20			; SCC Morph to Waveform 4
	db $dc			;Wait 29
	db $0c			;Note C-2
	db $a9,$20			; SCC Set Waveform 4
	db $c1			;Wait 2
	db $9c,$10			; SCC Morph to Waveform 2
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_005:
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a8				; SCC Soften Waveform
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $36			;Note F#5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $36			;Note F#5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $39			;Note A-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $36			;Note F#5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $36			;Note F#5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $39			;Note A-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $36			;Note F#5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $36			;Note F#5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $39			;Note A-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $36			;Note F#5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $36			;Note F#5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $39			;Note A-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $36			;Note F#5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $36			;Note F#5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $39			;Note A-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $36			;Note F#5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
	db $bf			;[End-Of-Track]
.track_006:
	db $26			;Note D-4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $df			;Wait 32
	db $23			;Note B-3
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_007:
	db $2f			;Note B-4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $df			;Wait 32
	db $28			;Note E-4
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_008:
	db $28			;Note E-4
	db $6f			;Volume 14
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $28			;Note E-4
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $6c			;Volume 11
	db $77			;Instrument 6
					;Wait Repeat 2
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $21			;Note A-3
	db $6f			;Volume 14
	db $71			;Instrument 0
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $76			;Instrument 5
	db $c7			;Wait 8
	db $21			;Note A-3
	db $6c			;Volume 11
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6c			;Volume 11
	db $77			;Instrument 6
					;Wait Repeat 2
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $26			;Note D-4
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $26			;Note D-4
	db $6d			;Volume 12
					;Wait Repeat 2
	db $21			;Note A-3
	db $6c			;Volume 11
	db $71			;Instrument 0
					;Wait Repeat 2
	db $21			;Note A-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $76			;Instrument 5
	db $c5			;Wait 6
	db $21			;Note A-3
	db $6c			;Volume 11
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6c			;Volume 11
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $6f			;Volume 14
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_009:
	db $29			;Note F-4
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $c1			;Wait 2
	db $28			;Note E-4
	db $6f			;Volume 14
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $29			;Note F-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $29			;Note F-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $29			;Note F-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $29			;Note F-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $32			;Note D-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $29			;Note F-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $29			;Note F-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $34			;Note E-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $32			;Note D-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $26			;Note D-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $32			;Note D-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $32			;Note D-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $32			;Note D-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $32			;Note D-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $3b			;Note B-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $39			;Note A-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $32			;Note D-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $32			;Note D-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $6f			;Volume 14
	db $75			;Instrument 4
					;Wait Repeat 1
	db $32			;Note D-5
	db $6b			;Volume 10
	db $bf			;[End-Of-Track]
.track_012:
	db $11			;Note F-2
	db $70			;Volume 15
	db $73			;Instrument 2
	db $a9,$20			; SCC Set Waveform 4
	db $c0			;Wait 1
	db $ac,$05			; SCC Morph speed 5
					;Wait Repeat 1
	db $9c,$18			; SCC Morph to Waveform 3
	db $dd			;Wait 30
	db $13			;Note G-2
	db $a9,$20			; SCC Set Waveform 4
	db $c1			;Wait 2
	db $9c,$10			; SCC Morph to Waveform 2
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_013:
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a8				; SCC Soften Waveform
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $32			;Note D-5
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $a9,$40			; SCC Set Waveform 20
					;Wait Repeat 1
	db $6b			;Volume 10
	db $a8				; SCC Soften Waveform
					;Wait Repeat 1
	db $30			;Note C-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $3b			;Note B-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $39			;Note A-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $32			;Note D-5
	db $6e			;Volume 13
	db $75			;Instrument 4
					;Wait Repeat 1
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $37			;Note G-5
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $a9,$50			; SCC Set Waveform 26
					;Wait Repeat 1
	db $68			;Volume 7
	db $bf			;[End-Of-Track]
.track_014:
	db $1f			;Note G-3
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $df			;Wait 32
	db $23			;Note B-3
	db $cf			;Wait 16
	db $24			;Note C-4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_015:
	db $28			;Note E-4
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $cf			;Wait 16
	db $26			;Note D-4
	db $c7			;Wait 8
	db $24			;Note C-4
					;Wait Repeat 8
	db $26			;Note D-4
	db $cf			;Wait 16
	db $2f			;Note B-4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]

