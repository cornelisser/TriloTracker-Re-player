; Song: TriloTracker v0.10.B1 SMS PSG+FM
; By:   Richard Cornelisse      (c) 2020

; [ Song start data ]
	db $24					; Initial song speed.
	dw .customvoice_start			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_040, .track_041, .track_041, .track_043, .track_041, .track_041, .track_041, .track_041	; Step:001 Pattern:005
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
.track_040:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $90,$0f			;CMD Portamento tone
					;Wait Repeat 1
	db $30			;Note C-5
	db $c2			;Wait 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $27			;Note D#4
	db $c1			;Wait 2
	db $91,$8f			;CMD Portamento tone + Volume slide
	db $c2			;Wait 3
	db $60			;Release 96
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_041:
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_043:
	db $cf			;Wait 16
	db $24			;Note C-4
	db $70			;Volume 15
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $90,$0f			;CMD Portamento tone
					;Wait Repeat 1
	db $30			;Note C-5
	db $91,$81			;CMD Portamento tone + Volume slide
					;Wait Repeat 1
	db $91,$8c			;CMD Portamento tone + Volume slide
	db $c1			;Wait 2
	db $24			;Note C-4
	db $c2			;Wait 3
	db $27			;Note D#4
	db $c1			;Wait 2
	db $9a			;CMD End 
	db $c2			;Wait 3
	db $60			;Release 96
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]

