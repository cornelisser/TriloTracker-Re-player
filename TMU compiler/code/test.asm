; Song:                                 
; By:                                   

; [ Song start data ]
	db $07					; Initial song speed.
	dw .customvoice_start			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_000, .track_000, .track_003, .track_000, .track_000, .track_000, .track_000	; Step:001 Pattern:000
	dw 0x0000, .restart			; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:
	db $11,$18,$00,$03,$ef,$f1,$12,$20 		; Custom voice:65
	db $71,$71,$18,$07,$9f,$30,$14,$06 		; Custom voice:85

; [ SCC Waveforms ]
.waveform_start:

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				;                 
	dw .instrument_01				;                 

.instrument_00:					;                 
	db $00,$00					; FM Software Voice 65
.rst_i00:
	db $29			; Info byte: 00101001
	db $0f			; Volume _
	dw .rst_i00			; Loop address
.instrument_01:					;                 
	db $00,$08					; FM Software Voice 85
.rst_i01:
	db $29			; Info byte: 00101001
	db $0f			; Volume _
	dw .rst_i01			; Loop address

; [ Song track data ]
.track_000:
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_003:
	db $24			;Note C-4
	db $70			;Volume 15
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $60			;Sustain 97
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $60			;Sustain 97
					;Wait Repeat 2
	db $24			;Note C-4
	db $72			;Instrument 1
					;Wait Repeat 2
	db $60			;Sustain 97
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $60			;Sustain 97
					;Wait Repeat
	db $bf			;[End-Of-Track]

