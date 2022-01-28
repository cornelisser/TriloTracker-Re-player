; Song:                                 
; By:                                   
; Period table: A440 Modern

; [ Song start data ]
	db $06					; Initial song speed.
	db $00					; Channel setup.
	dw .customvoice_start-8			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_002, .track_003, .track_004, .track_000, .track_000, .track_000	; Step:000 Pattern:000
	dw .track_008, .track_009, .track_010, .track_011, .track_012, .track_008, .track_008, .track_008	; Step:001 Pattern:001
	dw .track_008, .track_017, .track_018, .track_019, .track_020, .track_008, .track_008, .track_008	; Step:002 Pattern:002
	dw .track_008, .track_017, .track_026, .track_027, .track_028, .track_008, .track_008, .track_008	; Step:003 Pattern:003
	dw .track_008, .track_017, .track_018, .track_019, .track_036, .track_008, .track_008, .track_008	; Step:004 Pattern:004
	dw .track_008, .track_017, .track_026, .track_043, .track_044, .track_008, .track_008, .track_008	; Step:005 Pattern:005
	dw .track_008, .track_049, .track_050, .track_051, .track_052, .track_008, .track_008, .track_008	; Step:006 Pattern:006
	dw .track_008, .track_049, .track_058, .track_059, .track_060, .track_008, .track_008, .track_008	; Step:007 Pattern:007
	dw .track_008, .track_049, .track_050, .track_051, .track_068, .track_008, .track_008, .track_008	; Step:008 Pattern:008
	dw .track_008, .track_049, .track_074, .track_075, .track_076, .track_008, .track_008, .track_008	; Step:009 Pattern:009
	dw .track_008, .track_008, .track_082, .track_083, .track_084, .track_008, .track_008, .track_008	; Step:010 Pattern:010
	dw .track_008, .track_008, .track_090, .track_091, .track_092, .track_008, .track_008, .track_008	; Step:011 Pattern:011
.restart:
	dw .track_096, .track_096, .track_096, .track_096, .track_096, .track_096, .track_096, .track_096	; Step:012 Pattern:013
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:
	db $13,$10,$18,$06,$f7,$f3,$56,$85 		; Custom voice:31
	db $71,$74,$10,$05,$ff,$5f,$02,$07 		; Custom voice:51

; [ FM Drum macros]
.drummacro_start:
	dw .drum_00
	dw .drum_02
	dw .drum_04
	dw .drum_06

.drum_00:						; Drum 0.                 
	db $1e, $10							; Percussion
	db $04, $00							; volume Base drum
	db $12, $03, $05						; note Bdrum
	db $02							; STOP - End of Drum macro

.drum_02:						; Drum 1.                 
	db $1e, $08							; Percussion
	db $08, $00							; volume HiHat
	db $16, $ad, $00						; note Snare 
	db $02							; STOP - End of Drum macro

.drum_04:						; Drum 3.                 
	db $1e, $01							; Percussion
	db $06, $20							; volume Snare
	db $16, $f4, $06						; note Snare 
	db $02							; STOP - End of Drum macro

.drum_06:						; Drum 4.                 
	db $1e, $02							; Percussion
	db $0e, $02							; volume Tom
	db $1a, $cd, $04						; note Cymbal 
	db $02							; STOP - End of Drum macro

; [ Instruments]
.instrument_start:
	dw .instrument_00				;                 
	dw .instrument_01				;                 
	dw .instrument_02				;                 

.instrument_00:					;                 
	db $e0					; FM Hardware Voice 14
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_01:					;                 
	db $00,$04					; FM Software Voice 0
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_02:					;                 
	db $00,$08					; FM Software Voice 1
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $18,$fb						; Loop (-6)


; [ Song track data ]
.track_000:
	db $70			;Volume 15
	db $71			;Instrument 0
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_001:
	db $70			;Volume 15
	db $71			;Instrument 0
	db $9c,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $9c,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9c,$06			;CMD Drum $05
	db $c3			;Wait 4
	db $9c,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $9c,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9c,$06			;CMD Drum $05
	db $c3			;Wait 4
	db $9c,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $9c,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9c,$06			;CMD Drum $05
	db $c3			;Wait 4
	db $9c,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $9c,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9c,$06			;CMD Drum $05
	db $c3			;Wait 4
	db $9c,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $9c,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9c,$06			;CMD Drum $05
	db $c3			;Wait 4
	db $9c,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $9c,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9c,$06			;CMD Drum $05
	db $c3			;Wait 4
	db $9c,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $9c,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9c,$06			;CMD Drum $05
	db $c3			;Wait 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_002:
	db $1d			;Note F-3
	db $70			;Volume 15
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_003:
	db $2c			;Note G#4
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $50			;Note G#7
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $50			;Note G#7
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_004:
	db $60			;Release 96
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $a1,$02			;CMD Track detune
	db $c2			;Wait 3
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $50			;Note G#7
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $50			;Note G#7
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
	db $bf			;[End-Of-Track]
.track_008:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_009:
	db $9c,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9c,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9c,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9c,$02			;CMD Drum $02
	db $c0			;Wait 1
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 1
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_010:
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_011:
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $50			;Note G#7
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $50			;Note G#7
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_012:
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $50			;Note G#7
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $50			;Note G#7
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
	db $bf			;[End-Of-Track]
.track_017:
	db $9c,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_018:
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_019:
	db $48			;Note C-7
	db $c1			;Wait 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $49			;Note C#7
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_020:
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $4b			;Note D#7
	db $bf			;[End-Of-Track]
.track_026:
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $30			;Note C-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_027:
	db $48			;Note C-7
	db $c1			;Wait 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_028:
	db $c0			;Wait 1
	db $49			;Note C#7
	db $c1			;Wait 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
	db $bf			;[End-Of-Track]
.track_036:
	db $c0			;Wait 1
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $4b			;Note D#7
	db $bf			;[End-Of-Track]
.track_043:
	db $48			;Note C-7
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_044:
	db $c0			;Wait 1
	db $49			;Note C#7
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
	db $bf			;[End-Of-Track]
.track_049:
	db $9c,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $9c,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9c,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $9c,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $9c,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9c,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $9c,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $9c,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9c,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9c,$00			;CMD Drum $01
					;Wait Repeat 2
	db $9c,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9c,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $9c,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9c,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $9c,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $9c,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9c,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 4
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_050:
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $24			;Note C-4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_051:
	db $48			;Note C-7
	db $c1			;Wait 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $48			;Note C-7
	db $c3			;Wait 4
	db $46			;Note A#6
	db $c5			;Wait 6
	db $44			;Note G#6
	db $c3			;Wait 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $44			;Note G#6
					;Wait Repeat 4
	db $48			;Note C-7
	db $c1			;Wait 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $48			;Note C-7
	db $c3			;Wait 4
	db $46			;Note A#6
	db $c5			;Wait 6
	db $44			;Note G#6
	db $c3			;Wait 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $44			;Note G#6
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_052:
	db $c0			;Wait 1
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $48			;Note C-7
	db $c3			;Wait 4
	db $46			;Note A#6
	db $c5			;Wait 6
	db $44			;Note G#6
	db $c3			;Wait 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $44			;Note G#6
					;Wait Repeat 4
	db $48			;Note C-7
	db $c1			;Wait 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $48			;Note C-7
	db $c3			;Wait 4
	db $46			;Note A#6
	db $c5			;Wait 6
	db $44			;Note G#6
	db $c3			;Wait 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $44			;Note G#6
	db $bf			;[End-Of-Track]
.track_058:
	db $18			;Note C-3
	db $c1			;Wait 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $24			;Note C-4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_059:
	db $46			;Note A#6
	db $c1			;Wait 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $46			;Note A#6
	db $c3			;Wait 4
	db $44			;Note G#6
	db $c5			;Wait 6
	db $43			;Note G-6
	db $c3			;Wait 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $46			;Note A#6
	db $c1			;Wait 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $46			;Note A#6
	db $c3			;Wait 4
	db $44			;Note G#6
	db $c5			;Wait 6
	db $43			;Note G-6
	db $c3			;Wait 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $44			;Note G#6
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_060:
	db $c2			;Wait 3
	db $46			;Note A#6
	db $c1			;Wait 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $46			;Note A#6
	db $c3			;Wait 4
	db $44			;Note G#6
	db $c5			;Wait 6
	db $43			;Note G-6
	db $c3			;Wait 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $46			;Note A#6
	db $c1			;Wait 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $46			;Note A#6
	db $c3			;Wait 4
	db $44			;Note G#6
	db $c5			;Wait 6
	db $43			;Note G-6
	db $c3			;Wait 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $44			;Note G#6
	db $bf			;[End-Of-Track]
.track_068:
	db $c2			;Wait 3
	db $48			;Note C-7
	db $c1			;Wait 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $48			;Note C-7
	db $c3			;Wait 4
	db $46			;Note A#6
	db $c5			;Wait 6
	db $44			;Note G#6
	db $c3			;Wait 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $44			;Note G#6
					;Wait Repeat 4
	db $48			;Note C-7
	db $c1			;Wait 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $48			;Note C-7
	db $c3			;Wait 4
	db $46			;Note A#6
	db $c5			;Wait 6
	db $44			;Note G#6
	db $c3			;Wait 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $44			;Note G#6
	db $bf			;[End-Of-Track]
.track_074:
	db $1b			;Note D#3
	db $c1			;Wait 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $1b			;Note D#3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_075:
	db $43			;Note G-6
	db $c1			;Wait 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $52			;Note A#7
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_076:
	db $c2			;Wait 3
	db $43			;Note G-6
	db $c1			;Wait 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $52			;Note A#7
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3f			;Note D#6
	db $bf			;[End-Of-Track]
.track_082:
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_083:
	db $35			;Note F-5
	db $c1			;Wait 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_084:
	db $c0			;Wait 1
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $37			;Note G-5
	db $bf			;[End-Of-Track]
.track_090:
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $1b			;Note D#3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_091:
	db $4b			;Note D#7
	db $c1			;Wait 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $49			;Note C#7
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $49			;Note C#7
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $49			;Note C#7
					;Wait Repeat 2
	db $4b			;Note D#7
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_092:
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $60			;Release 96
	db $fc			;Wait 61
	db $bf			;[End-Of-Track]
.track_096:
	db $60			;Release 96
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]

