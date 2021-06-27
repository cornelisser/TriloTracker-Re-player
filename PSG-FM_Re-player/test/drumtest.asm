; Song: v0.10.0b                        
; By:                                   

; [ Song start data ]
	db $07					; Initial song speed.
	dw .customvoice_start-8			; Start of the custom voices data.
	dw .drummacro_start				; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_000, .track_002, .track_000, .track_000, .track_000, .track_000, .track_000	; Step:001 Pattern:000
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:

; [ FM Drum macros]
.drummacro_start:
	dw .drum_00

.drum_00:						; Drum 0. Test drum       
	db $1e, $10							; Percussion
	db $04, $00							; volume Base drum
	db $12, $ad, $00						; note Bdrum
	db $00							; END  - End of row
	db $04, $01							; volume Base drum
	db $12, $ad, $02						; note Bdrum
	db $00							; END  - End of row
	db $1e, $10							; Percussion
	db $04, $02							; volume Base drum
	db $12, $ad, $04						; note Bdrum
	db $00							; END  - End of row
	db $04, $03							; volume Base drum
	db $12, $ad, $06						; note Bdrum
	db $00							; END  - End of row
	db $1e, $10							; Percussion
	db $04, $04							; volume Base drum
	db $12, $ad, $08						; note Bdrum
	db $00							; END  - End of row
	db $04, $05							; volume Base drum
	db $12, $ad, $0a						; note Bdrum
	db $00							; END  - End of row
	db $1e, $10							; Percussion
	db $04, $06							; volume Base drum
	db $12, $ad, $0c						; note Bdrum
	db $02							; STOP - End of Drum macro

; [ Instruments]
.instrument_start:


; [ Song track data ]
.track_000:
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_002:
	db $9c,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9c,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9c,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9c,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]

