; Song: TriloTracker v0.10.B1 SMS PSG+FM
; By:   Richard Cornelisse      (c) 2020

; [ Song start data ]
	db $24					; Initial song speed.
	dw .customvoice_start			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_056, .track_057, .track_057, .track_059, .track_057, .track_057, .track_057, .track_057	; Step:001 Pattern:007
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
.track_056:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $98,$1f			;CMD Tremolo
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
	db $98,$64			;CMD Tremolo
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c4			;Wait 5
	db $98,$00			;CMD Tremolo
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $60			;Release 96
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_057:
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]
.track_059:
	db $d7			;Wait 24
	db $24			;Note C-4
	db $70			;Volume 15
	db $71			;Instrument 0
	db $98,$1f			;CMD Tremolo
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
	db $98,$38			;CMD Tremolo
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c4			;Wait 5
	db $98,$00			;CMD Tremolo
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $60			;Release 96
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]

