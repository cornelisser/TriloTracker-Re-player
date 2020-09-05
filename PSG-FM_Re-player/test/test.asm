; Song: TriloTracker v0.10.B1 SMS PSG+FM
; By:   Richard Cornelisse      (c) 2020

; [ Song start data ]
	db $24					; Initial song speed.
	dw .customvoice_start			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_032, .track_033, .track_033, .track_035, .track_033, .track_033, .track_033, .track_033	; Step:001 Pattern:004
	dw 0x0000, .restart			; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				;                 

.instrument_00:					;                 
	db $10					; FM Hardware Voice 1
.rst_i00:
	db $29			; Info byte: 00101001
	db $0f			; Volume _
	dw .rst_i00			; Loop address

; [ Song track data ]
.track_032:
	db $30			;Note C-5
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $94,$c1			;CMD Vibrato
	db $c8			;Wait 9
	db $94,$01			;CMD Vibrato
	db $c4			;Wait 5
	db $94,$c0			;CMD Vibrato
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $30			;Note C-5
	db $c2			;Wait 3
	db $9a			;CMD End 
	db $c0			;Wait 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $94,$c5			;CMD Vibrato
	db $c0			;Wait 1
	db $94,$c0			;CMD Vibrato
					;Wait Repeat 1
	db $94,$c0			;CMD Vibrato
					;Wait Repeat 1
	db $94,$c0			;CMD Vibrato
	db $c1			;Wait 2
	db $60			;Release 96
	db $e2			;Wait 35
	db $bf			;[End-Of-Track]
.track_033:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_035:
	db $df			;Wait 32
	db $30			;Note C-5
	db $70			;Volume 15
	db $71			;Instrument 0
	db $94,$4f			;CMD Vibrato
	db $c1			;Wait 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $30			;Note C-5
	db $c2			;Wait 3
	db $94,$01			;CMD Vibrato
	db $c4			;Wait 5
	db $94,$c0			;CMD Vibrato
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $30			;Note C-5
	db $c2			;Wait 3
	db $9a			;CMD End 
	db $c0			;Wait 1
	db $30			;Note C-5
	db $c3			;Wait 4
	db $60			;Release 96
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]

