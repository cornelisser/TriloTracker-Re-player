; Song: Triplets TEST                   
; By:   Gryzor87 (c)2020                

; [ Song start data ]
	db $07					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_000, .track_000, .track_003, .track_000, .track_000, .track_000, .track_000	; Step:001 Pattern:000
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $00, $30, $50, $60, $70, $60, $50, $30, $00, $d0, $b0, $a0, $90, $a0, $b0, $d0, $00, $40, $60, $70, $60, $40, $00, $c0, $a0, $90, $a0, $c0, $00, $70, $00, $90				; Waveform:4
	db $00, $f8, $f0, $e8, $e0, $d8, $d0, $c8, $c0, $b8, $b0, $a8, $a0, $98, $90, $88, $80, $78, $70, $68, $60, $58, $50, $48, $40, $38, $30, $28, $20, $18, $10, $08				; Waveform:10

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; SC Brass        

.instrument_00:					; SC Brass        
	db $08							; Waveform 1
	db $54							; Info byte: 01010100
	db $09							; Volume _
	db $08							; Waveform +
	db $14							; Info byte: 00010100
	db $0b							; Volume _
	db $14							; Info byte: 00010100
	db $0a							; Volume _
.rst_i00:
	db $56							; Info byte: 01010110
	db $ff							; Volume -
	db $00							; Waveform +
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $50							; Info byte: 01010000
	db $08							; Waveform +
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $10							; Info byte: 00010000
	db $11							; Info byte: 00010001
	dw .rst_i00						; Loop address

; [ Song track data ]
.track_000:
	db $e8			;Wait 41
	db $bf			;[End-Of-Track]
.track_003:
	db $28			;Note E-4
	db $70			;Volume 15
	db $71			;Instrument 0
	db $ce			;Wait 15
	db $1c			;Note E-3
	db $d9			;Wait 26
	db $bf			;[End-Of-Track]

