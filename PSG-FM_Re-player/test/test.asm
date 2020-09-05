; Song: TriloTracker v0.10.B1 SMS PSG+FM
; By:   Richard Cornelisse      (c) 2020

; [ Song start data ]
	db $0c					; Initial song speed.
	dw .customvoice_start			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_168, .track_169, .track_170, .track_171, .track_172, .track_168, .track_168, .track_168	; Step:001 Pattern:021
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
	dw .instrument_01				;                 

.instrument_00:					;                 
	db $10					; FM Hardware Voice 1
.rst_i00:
	db $29			; Info byte: 00101001
	db $0f			; Volume _
	dw .rst_i00			; Loop address
.instrument_01:					;                 
	db $30					; FM Hardware Voice 3
.rst_i01:
	db $29			; Info byte: 00101001
	db $0f			; Volume _
	dw .rst_i01			; Loop address

; [ Song track data ]
.track_168:
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_169:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $60			;Release 96
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_170:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $9a,$10			;CMD Note delay
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6e			;Volume 13
	db $9a,$10			;CMD Note delay
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6e			;Volume 13
	db $9a,$10			;CMD Note delay
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6e			;Volume 13
	db $9a,$10			;CMD Note delay
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $60			;Release 96
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_171:
	db $cc			;Wait 13
	db $24			;Note C-4
	db $72			;Instrument 2
	db $c0			;Wait 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $c0			;Wait 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $c0			;Wait 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $9a,$03			;CMD Note delay
	db $c0			;Wait 1
	db $60			;Release 96
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_172:
	db $cc			;Wait 13
	db $24			;Note C-4
	db $72			;Instrument 2
	db $9a,$03			;CMD Note delay
	db $c0			;Wait 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $9a,$05			;CMD Note delay
	db $c0			;Wait 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $9a,$0f			;CMD Note delay
	db $c0			;Wait 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $9a,$10			;CMD Note delay
	db $c0			;Wait 1
	db $60			;Release 96
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]

