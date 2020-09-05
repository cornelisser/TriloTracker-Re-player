; Song: TriloTracker v0.10.B1 SMS PSG+FM
; By:   Richard Cornelisse      (c) 2020

; [ Song start data ]
	db $18					; Initial song speed.
	dw .customvoice_start			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_128, .track_128, .track_130, .track_131, .track_128, .track_128, .track_128, .track_128	; Step:001 Pattern:016
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
.track_128:
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_130:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $a1,$02			;CMD Track detune
					;Wait Repeat 1
	db $a1,$04			;CMD Track detune
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1,$06			;CMD Track detune
					;Wait Repeat 1
	db $a1,$04			;CMD Track detune
					;Wait Repeat 1
	db $a1,$08			;CMD Track detune
					;Wait Repeat 1
	db $a1,$0a			;CMD Track detune
					;Wait Repeat 1
	db $a1,$00			;CMD Track detune
					;Wait Repeat 1
	db $60			;Release 96
	db $d3			;Wait 20
	db $bf			;[End-Of-Track]
.track_131:
	db $cf			;Wait 16
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $a1,$02			;CMD Track detune
					;Wait Repeat 1
	db $a1,$04			;CMD Track detune
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1,$06			;CMD Track detune
					;Wait Repeat 1
	db $a1,$04			;CMD Track detune
					;Wait Repeat 1
	db $a1,$08			;CMD Track detune
					;Wait Repeat 1
	db $a1,$0a			;CMD Track detune
					;Wait Repeat 1
	db $a1,$00			;CMD Track detune
					;Wait Repeat 1
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]

