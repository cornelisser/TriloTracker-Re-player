; Song:                                 
; By:                                   

; [ Song start data ]
	db $0c					; Initial song speed.
	dw .customvoice_start			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_001, .track_002, .track_003, .track_003, .track_003, .track_003, .track_003	; Step:001 Pattern:000
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
	db $00					; FM Voice 0
.rst_i00:
	db $29			; Info byte: 00101001
	db $0f			; Volume _
	dw .rst_i00			; Loop address

; [ Song track data ]
.track_000:
	db $24			;Note C-4
	db $70			;Volume 15
	db $71			;Instrument 1
	db $c1			;Wait 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $60			;Release 96
	db $d1			;Wait 18
	db $24			;Note C-4
	db $94,$82			;CMD Vibrato
	db $c3			;Wait 4
	db $60			;Release 96
	db $cd			;Wait 14
	db $24			;Note C-4
	db $92,$01			;CMD Portamento down
	db $c3			;Wait 4
	db $60			;Release 96
	db $d1			;Wait 18
	db $bf			;[End-Of-Track]
.track_001:
	db $c7			;Wait 8
	db $24			;Note C-4
	db $70			;Volume 15
	db $71			;Instrument 1
	db $c1			;Wait 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $60			;Release 96
	db $cf			;Wait 16
	db $24			;Note C-4
	db $94,$82			;CMD Vibrato
	db $c3			;Wait 4
	db $60			;Release 96
	db $cd			;Wait 14
	db $24			;Note C-4
	db $91,$01			;CMD Portamento up
	db $c3			;Wait 4
	db $60			;Release 96
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_002:
	db $cf			;Wait 16
	db $24			;Note C-4
	db $70			;Volume 15
	db $71			;Instrument 1
	db $c1			;Wait 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $60			;Release 96
	db $cd			;Wait 14
	db $24			;Note C-4
	db $94,$82			;CMD Vibrato
	db $c3			;Wait 4
	db $60			;Release 96
	db $cd			;Wait 14
	db $24			;Note C-4
	db $91,$01			;CMD Portamento up
	db $c3			;Wait 4
	db $60			;Release 96
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_003:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]

