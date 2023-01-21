; Song: v0.12.2 New envelope function   
; By:                                   
; Period table: A440 Modern

; [ Song start data ]
	db $05					; Initial song speed.
	db $00					; Channel setup.
	dw .customvoice_start-8			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_112, .track_112, .track_112, .track_112, .track_112, .track_112, .track_112, .track_112	; Step:000 Pattern:014
	dw .track_000, .track_001, .track_002, .track_003, .track_004, .track_004, .track_004, .track_007	; Step:001 Pattern:000
	dw .track_008, .track_009, .track_008, .track_008, .track_008, .track_008, .track_008, .track_015	; Step:002 Pattern:001
	dw .track_016, .track_009, .track_008, .track_008, .track_008, .track_008, .track_008, .track_023	; Step:003 Pattern:002
	dw .track_024, .track_025, .track_008, .track_008, .track_008, .track_008, .track_008, .track_031	; Step:004 Pattern:003
.restart:
	dw .track_016, .track_001, .track_034, .track_219, .track_004, .track_004, .track_004, .track_007	; Step:005 Pattern:027
	dw .track_224, .track_009, .track_008, .track_227, .track_008, .track_229, .track_008, .track_015	; Step:006 Pattern:028
	dw .track_016, .track_009, .track_050, .track_008, .track_008, .track_008, .track_008, .track_023	; Step:007 Pattern:029
	dw .track_240, .track_025, .track_008, .track_008, .track_008, .track_008, .track_008, .track_031	; Step:008 Pattern:030
	dw .track_016, .track_033, .track_034, .track_008, .track_036, .track_037, .track_038, .track_007	; Step:009 Pattern:004
	dw .track_040, .track_041, .track_008, .track_043, .track_044, .track_045, .track_008, .track_015	; Step:010 Pattern:005
	dw .track_016, .track_049, .track_050, .track_008, .track_052, .track_053, .track_038, .track_023	; Step:011 Pattern:006
	dw .track_056, .track_057, .track_008, .track_008, .track_060, .track_061, .track_008, .track_063	; Step:012 Pattern:007
	dw .track_080, .track_185, .track_034, .track_008, .track_188, .track_189, .track_038, .track_007	; Step:013 Pattern:023
	dw .track_088, .track_089, .track_008, .track_043, .track_132, .track_133, .track_008, .track_015	; Step:014 Pattern:024
	dw .track_080, .track_089, .track_050, .track_008, .track_140, .track_141, .track_038, .track_023	; Step:015 Pattern:025
	dw .track_064, .track_065, .track_066, .track_066, .track_068, .track_069, .track_066, .track_071	; Step:016 Pattern:008
	dw .track_072, .track_073, .track_074, .track_075, .track_076, .track_077, .track_078, .track_079	; Step:017 Pattern:009
	dw .track_080, .track_081, .track_082, .track_008, .track_084, .track_085, .track_086, .track_007	; Step:018 Pattern:010
	dw .track_088, .track_089, .track_008, .track_091, .track_092, .track_086, .track_094, .track_015	; Step:019 Pattern:011
	dw .track_080, .track_089, .track_008, .track_085, .track_100, .track_086, .track_094, .track_023	; Step:020 Pattern:012
	dw .track_080, .track_105, .track_106, .track_107, .track_108, .track_086, .track_110, .track_111	; Step:021 Pattern:013
	dw .track_080, .track_121, .track_008, .track_008, .track_124, .track_125, .track_038, .track_007	; Step:022 Pattern:015
	dw .track_088, .track_121, .track_043, .track_043, .track_132, .track_133, .track_008, .track_015	; Step:023 Pattern:016
	dw .track_080, .track_121, .track_008, .track_008, .track_140, .track_141, .track_038, .track_023	; Step:024 Pattern:017
	dw .track_080, .track_121, .track_146, .track_147, .track_148, .track_149, .track_008, .track_063	; Step:025 Pattern:018
	dw .track_080, .track_121, .track_154, .track_155, .track_124, .track_125, .track_038, .track_007	; Step:026 Pattern:019
	dw .track_088, .track_121, .track_162, .track_163, .track_132, .track_133, .track_008, .track_167	; Step:027 Pattern:020
	dw .track_080, .track_121, .track_170, .track_171, .track_140, .track_141, .track_038, .track_023	; Step:028 Pattern:021
	dw .track_080, .track_121, .track_178, .track_179, .track_180, .track_181, .track_008, .track_063	; Step:029 Pattern:022
	dw .track_080, .track_121, .track_154, .track_155, .track_124, .track_125, .track_038, .track_007	; Step:030 Pattern:019
	dw .track_088, .track_121, .track_162, .track_163, .track_132, .track_133, .track_008, .track_167	; Step:031 Pattern:020
	dw .track_080, .track_121, .track_170, .track_171, .track_140, .track_141, .track_038, .track_023	; Step:032 Pattern:021
	dw .track_080, .track_121, .track_178, .track_179, .track_180, .track_181, .track_008, .track_063	; Step:033 Pattern:022
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:
	db $00,$03,$08,$04,$21,$c0,$f0,$00 		; Custom voice:177
	db $00,$03,$09,$04,$c4,$d0,$f0,$00 		; Custom voice:178
	db $00,$03,$02,$03,$34,$f0,$d0,$00 		; Custom voice:179

; [ FM Drum macros]
.drummacro_start:
	dw .drum_00
	dw .drum_02
	dw .drum_04

.drum_00:						; Drum 0. BSDR 01         
	db $04, $00							; volume Base drum
	db $12, $c2, $04						; note Bdrum
	db $1e, $10							; Percussion
	db $02							; STOP - End of Drum macro

.drum_02:						; Drum 1. SNDR 01         
	db $04, $01							; volume Base drum
	db $08, $01							; volume HiHat
	db $12, $c2, $06						; note Bdrum
	db $16, $22, $03						; note Snare 
	db $1e, $18							; Percussion
	db $02							; STOP - End of Drum macro

.drum_04:						; Drum 2.                 
	db $06, $20							; volume Snare
	db $16, $ad, $00						; note Snare 
	db $1e, $01							; Percussion
	db $02							; STOP - End of Drum macro

; [ Instruments]
.instrument_start:
	dw .instrument_00				; OPLL 01         
	dw .instrument_01				; PSG 01          
	dw .instrument_02				; OPLL 01 DT1     
	dw .instrument_03				; OPLL 02         
	dw .instrument_04				; OPLL-D          
	dw .instrument_05				; OPLL-4          
	dw .instrument_06				; OPLL 03         
	dw .instrument_07				; PSG 02          
	dw .instrument_08				; OPLL-5          
	dw .instrument_09				; OPLL-8 DT       
	dw .instrument_10				; SNDR NS 01      

.instrument_00:					; OPLL 01         
	db $00,$04					; FM Software Voice 0
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_01:					; PSG 01          
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $04,$04,$00					; Tone add
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $04,$fc,$ff					; Tone sub
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$00						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_02:					; OPLL 01 DT1     
	db $00,$04					; FM Software Voice 0
	db $02,$10						; Mixer (T)
	db $04,$02,$00					; Tone add
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_03:					; OPLL 02         
	db $00,$08					; FM Software Voice 1
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_04:					; OPLL-D          
	db $0F					; FM Hardware Voice was not set
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$d0						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_05:					; OPLL-4          
	db $0F					; FM Hardware Voice was not set
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$40						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_06:					; OPLL 03         
	db $00,$0c					; FM Software Voice 2
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_07:					; PSG 02          
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_08:					; OPLL-5          
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $16,$50						; FM Hardware Voice
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$50						; FM Hardware Voice
	db $08,$0e						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$50						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_09:					; OPLL-8 DT       
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $16,$50						; FM Hardware Voice
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$50						; FM Hardware Voice
	db $08,$0e						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$50						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_10:					; SNDR NS 01      
	db $0F					; FM Hardware Voice was not set
	db $02,$80						; Mixer (N)
	db $0E,$05						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$04						; Noise _
	db $08,$0e						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$03						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$12						; Noise _
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$13						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$14						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$15						; Noise _
	db $00							; Volume same
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$16						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0c,$01						; Volume -
	db $18,$f3						; Loop (-14)


; [ Song track data ]
.track_000:
	db $a4,$05			;CMD Speed
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_001:
	db $60			;Release 96
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_002:
	db $6e			;Volume 12
	db $95,$45			;CMD Vibrato
	db $c7			;Wait 8
	db $6d			;Volume 11
					;Wait Repeat 8
	db $6c			;Volume 10
					;Wait Repeat 8
	db $6b			;Volume 9
					;Wait Repeat 8
	db $6a			;Volume 8
					;Wait Repeat 8
	db $69			;Volume 7
					;Wait Repeat 8
	db $68			;Volume 6
					;Wait Repeat 8
	db $67			;Volume 5
	db $c6			;Wait 7
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_003:
	db $6e			;Volume 12
	db $95,$47			;CMD Vibrato
	db $c7			;Wait 8
	db $6d			;Volume 11
					;Wait Repeat 8
	db $6c			;Volume 10
					;Wait Repeat 8
	db $6b			;Volume 9
					;Wait Repeat 8
	db $6a			;Volume 8
					;Wait Repeat 8
	db $69			;Volume 7
					;Wait Repeat 8
	db $68			;Volume 6
					;Wait Repeat 8
	db $67			;Volume 5
	db $c6			;Wait 7
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_004:
	db $6c			;Volume 10
	db $c7			;Wait 8
	db $6b			;Volume 9
					;Wait Repeat 8
	db $6a			;Volume 8
					;Wait Repeat 8
	db $69			;Volume 7
					;Wait Repeat 8
	db $68			;Volume 6
					;Wait Repeat 8
	db $67			;Volume 5
					;Wait Repeat 8
	db $66			;Volume 4
					;Wait Repeat 8
	db $65			;Volume 3
	db $c6			;Wait 7
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_007:
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $c0			;Wait 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_008:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_009:
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_015:
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_016:
	db $34			;Note E-5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $a4,$05			;CMD Speed
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $34			;Note E-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $34			;Note E-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $34			;Note E-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_023:
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_024:
	db $34			;Note E-5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $a4,$05			;CMD Speed
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $34			;Note E-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $32			;Note D-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $32			;Note D-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $32			;Note D-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $32			;Note D-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_025:
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_031:
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_033:
	db $60			;Release 96
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 4
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 4
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9d,$04			;CMD Drum $03
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_034:
	db $28			;Note E-4
	db $6c			;Volume 10
	db $72			;Instrument 0
	db $95,$45			;CMD Vibrato
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_036:
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $95,$48			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $ca			;Wait 11
	db $3b			;Note B-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $6b			;Volume 9
	db $91,$03			;CMD Portamento tone
	db $ca			;Wait 11
	db $bf			;[End-Of-Track]
.track_037:
	db $39			;Note A-5
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$48			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $ca			;Wait 11
	db $3b			;Note B-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $6d			;Volume 11
	db $91,$03			;CMD Portamento tone
	db $ce			;Wait 15
	db $bf			;[End-Of-Track]
.track_038:
	db $40			;Note E-6
	db $6c			;Volume 10
	db $72			;Instrument 0
	db $95,$58			;CMD Vibrato
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_040:
	db $34			;Note E-5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $34			;Note E-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $34			;Note E-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $34			;Note E-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c0			;Wait 1
	db $01			;Note C#1
	db $c0			;Wait 1
	db $34			;Note E-5
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_041:
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 4
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 4
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_043:
	db $60			;Release 96
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_044:
	db $c3			;Wait 4
	db $3b			;Note B-5
	db $6c			;Volume 10
	db $91,$05			;CMD Portamento tone
					;Wait Repeat 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $c6			;Wait 7
	db $96,$01			;CMD Portamento up
	db $c4			;Wait 5
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
					;Wait Repeat 5
	db $96,$01			;CMD Portamento up
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_045:
	db $3b			;Note B-5
	db $6d			;Volume 11
	db $91,$05			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $c6			;Wait 7
	db $96,$01			;CMD Portamento up
	db $c4			;Wait 5
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
					;Wait Repeat 5
	db $96,$01			;CMD Portamento up
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_049:
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 4
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 4
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9d,$04			;CMD Drum $03
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_050:
	db $2b			;Note G-4
	db $6c			;Volume 10
	db $72			;Instrument 0
	db $95,$45			;CMD Vibrato
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_052:
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $95,$48			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $ca			;Wait 11
	db $3b			;Note B-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $6b			;Volume 9
	db $91,$03			;CMD Portamento tone
	db $c6			;Wait 7
	db $93,$03			;CMD Portamento down
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_053:
	db $39			;Note A-5
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$48			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $ca			;Wait 11
	db $3b			;Note B-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $6d			;Volume 11
	db $91,$03			;CMD Portamento tone
	db $c8			;Wait 9
	db $93,$03			;CMD Portamento down
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_056:
	db $34			;Note E-5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $a4,$05			;CMD Speed
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $32			;Note D-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $32			;Note D-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 4
	db $32			;Note D-5
	db $6a			;Volume 8
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $32			;Note D-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_057:
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_060:
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $6c			;Volume 10
	db $95,$48			;CMD Vibrato
					;Wait Repeat 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $c7			;Wait 8
	db $96,$02			;CMD Portamento up
	db $c3			;Wait 4
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c9			;Wait 10
	db $39			;Note A-5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_061:
	db $3e			;Note D-6
	db $6d			;Volume 11
	db $95,$48			;CMD Vibrato
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $c7			;Wait 8
	db $96,$02			;CMD Portamento up
	db $c3			;Wait 4
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c9			;Wait 10
	db $39			;Note A-5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $c4			;Wait 5
	db $96,$02			;CMD Portamento up
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_063:
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $78			;Instrument 6
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_064:
	db $34			;Note E-5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $a4,$05			;CMD Speed
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 4
	db $34			;Note E-5
	db $6a			;Volume 8
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_065:
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_066:
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_068:
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $6c			;Volume 10
	db $95,$48			;CMD Vibrato
					;Wait Repeat 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $c7			;Wait 8
	db $96,$02			;CMD Portamento up
					;Wait Repeat 8
	db $96,$0a			;CMD Portamento up
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_069:
	db $3e			;Note D-6
	db $6d			;Volume 11
	db $95,$48			;CMD Vibrato
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $c7			;Wait 8
	db $96,$02			;CMD Portamento up
	db $cb			;Wait 12
	db $96,$0a			;CMD Portamento up
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_071:
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $78			;Instrument 6
	db $9e,$00			;CMD Arpegio speed
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_072:
	db $60			;Release 96
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_073:
	db $60			;Release 96
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_074:
	db $5f			;Note B-8
	db $64			;Volume 2
	db $77			;Instrument 5
	db $96,$03			;CMD Portamento up
	db $c0			;Wait 1
	db $65			;Volume 3
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $6f			;Volume 13
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_075:
	db $c3			;Wait 4
	db $5f			;Note B-8
	db $63			;Volume 1
	db $77			;Instrument 5
	db $96,$03			;CMD Portamento up
	db $c0			;Wait 1
	db $64			;Volume 2
					;Wait Repeat 1
	db $65			;Volume 3
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $6e			;Volume 12
	db $bf			;[End-Of-Track]
.track_076:
	db $60			;Release 96
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6d			;Volume 11
	db $75			;Instrument 3
	db $95,$35			;CMD Vibrato
	db $c0			;Wait 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_077:
	db $60			;Release 96
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6d			;Volume 11
	db $75			;Instrument 3
	db $95,$35			;CMD Vibrato
	db $c0			;Wait 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_078:
	db $60			;Release 96
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6d			;Volume 11
	db $75			;Instrument 3
	db $95,$35			;CMD Vibrato
	db $c0			;Wait 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_079:
	db $60			;Release 96
	db $c1			;Wait 2
	db $39			;Note A-5
	db $6d			;Volume 11
	db $75			;Instrument 3
	db $95,$35			;CMD Vibrato
	db $c0			;Wait 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_080:
	db $34			;Note E-5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $a4,$05			;CMD Speed
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 4
	db $34			;Note E-5
	db $6a			;Volume 8
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $34			;Note E-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_081:
	db $6f			;Volume 13
	db $79			;Instrument 7
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_082:
	db $fe			;Wait 63
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_084:
	db $40			;Note E-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $40			;Note E-6
	db $6d			;Volume 11
					;Wait Repeat 8
	db $40			;Note E-6
	db $6c			;Volume 10
					;Wait Repeat 8
	db $40			;Note E-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_085:
	db $43			;Note G-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $43			;Note G-6
	db $6d			;Volume 11
					;Wait Repeat 8
	db $43			;Note G-6
	db $6c			;Volume 10
					;Wait Repeat 8
	db $43			;Note G-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_086:
	db $47			;Note B-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $47			;Note B-6
	db $6d			;Volume 11
					;Wait Repeat 8
	db $47			;Note B-6
	db $6c			;Volume 10
					;Wait Repeat 8
	db $47			;Note B-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_088:
	db $34			;Note E-5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 4
	db $34			;Note E-5
	db $6a			;Volume 8
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $34			;Note E-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_089:
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_091:
	db $43			;Note G-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $9c			;CMD End 
	db $c7			;Wait 8
	db $43			;Note G-6
	db $6d			;Volume 11
					;Wait Repeat 8
	db $43			;Note G-6
	db $6c			;Volume 10
					;Wait Repeat 8
	db $43			;Note G-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_092:
	db $45			;Note A-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c5			;Wait 6
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $45			;Note A-6
	db $6d			;Volume 11
	db $c7			;Wait 8
	db $45			;Note A-6
	db $6c			;Volume 10
					;Wait Repeat 8
	db $45			;Note A-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_094:
	db $4a			;Note D-7
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $4a			;Note D-7
	db $6d			;Volume 11
					;Wait Repeat 8
	db $4a			;Note D-7
	db $6c			;Volume 10
					;Wait Repeat 8
	db $4a			;Note D-7
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_100:
	db $45			;Note A-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $45			;Note A-6
	db $6d			;Volume 11
					;Wait Repeat 8
	db $45			;Note A-6
	db $6c			;Volume 10
					;Wait Repeat 8
	db $45			;Note A-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_105:
	db $1c			;Note E-3
	db $6e			;Volume 12
	db $79			;Instrument 7
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $21			;Note A-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $26			;Note D-4
	db $c1			;Wait 2
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $26			;Note D-4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $21			;Note A-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1f			;Note G-3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $23			;Note B-3
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $28			;Note E-4
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $26			;Note D-4
	db $c1			;Wait 2
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $28			;Note E-4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $2b			;Note G-4
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $26			;Note D-4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1f			;Note G-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $28			;Note E-4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_106:
	db $f3			;Wait 52
	db $1c			;Note E-3
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $93,$06			;CMD Portamento down
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_107:
	db $43			;Note G-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $43			;Note G-6
	db $6d			;Volume 11
					;Wait Repeat 8
	db $43			;Note G-6
	db $6c			;Volume 10
					;Wait Repeat 8
	db $43			;Note G-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $d7			;Wait 24
	db $1c			;Note E-3
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $93,$06			;CMD Portamento down
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_108:
	db $45			;Note A-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $45			;Note A-6
	db $6d			;Volume 11
					;Wait Repeat 8
	db $45			;Note A-6
	db $6c			;Volume 10
					;Wait Repeat 8
	db $45			;Note A-6
	db $6a			;Volume 8
	db $c5			;Wait 6
	db $01			;Note C#1
	db $c1			;Wait 2
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_110:
	db $3e			;Note D-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $3e			;Note D-6
	db $6d			;Volume 11
					;Wait Repeat 8
	db $3e			;Note D-6
	db $6c			;Volume 10
					;Wait Repeat 8
	db $3e			;Note D-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_111:
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $60			;Release 96
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $6f			;Volume 13
					;Wait Repeat 4
	db $6d			;Volume 11
					;Wait Repeat 4
	db $6f			;Volume 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_112:
	db $60			;Release 96
	db $71			;Volume 15
	db $72			;Instrument 0
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_121:
	db $1c			;Note E-3
	db $6e			;Volume 12
	db $79			;Instrument 7
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $21			;Note A-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $26			;Note D-4
	db $c1			;Wait 2
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $26			;Note D-4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $21			;Note A-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1f			;Note G-3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $23			;Note B-3
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $28			;Note E-4
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $21			;Note A-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $21			;Note A-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $28			;Note E-4
	db $c1			;Wait 2
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_124:
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $95,$48			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c5			;Wait 6
	db $96,$01			;CMD Portamento up
	db $c4			;Wait 5
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$05			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_125:
	db $39			;Note A-5
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$48			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c5			;Wait 6
	db $96,$01			;CMD Portamento up
	db $c4			;Wait 5
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$05			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c9			;Wait 10
	db $bf			;[End-Of-Track]
.track_132:
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $6c			;Volume 10
	db $9c			;CMD End 
					;Wait Repeat 4
	db $95,$48			;CMD Vibrato
	db $c7			;Wait 8
	db $96,$03			;CMD Portamento up
	db $c3			;Wait 4
	db $3b			;Note B-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$08			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_133:
	db $3e			;Note D-6
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $c7			;Wait 8
	db $96,$03			;CMD Portamento up
	db $c3			;Wait 4
	db $3b			;Note B-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$08			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $ca			;Wait 11
	db $bf			;[End-Of-Track]
.track_140:
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $95,$48			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c5			;Wait 6
	db $96,$01			;CMD Portamento up
	db $c4			;Wait 5
	db $3b			;Note B-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $6b			;Volume 9
	db $91,$03			;CMD Portamento tone
	db $ca			;Wait 11
	db $bf			;[End-Of-Track]
.track_141:
	db $39			;Note A-5
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$48			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
					;Wait Repeat 5
	db $96,$01			;CMD Portamento up
	db $c5			;Wait 6
	db $3b			;Note B-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $6d			;Volume 11
	db $91,$03			;CMD Portamento tone
	db $ce			;Wait 15
	db $bf			;[End-Of-Track]
.track_146:
	db $60			;Release 96
	db $e7			;Wait 40
	db $40			;Note E-6
	db $6f			;Volume 13
	db $7a			;Instrument 8
	db $95,$46			;CMD Vibrato
	db $c6			;Wait 7
	db $43			;Note G-6
	db $91,$06			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$46			;CMD Vibrato
	db $c4			;Wait 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $4c			;Note E-7
	db $91,$12			;CMD Portamento tone
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_147:
	db $60			;Release 96
	db $ea			;Wait 43
	db $40			;Note E-6
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $95,$46			;CMD Vibrato
	db $c6			;Wait 7
	db $43			;Note G-6
	db $91,$06			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$46			;CMD Vibrato
	db $c4			;Wait 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $4c			;Note E-7
	db $91,$12			;CMD Portamento tone
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_148:
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $6c			;Volume 10
	db $95,$48			;CMD Vibrato
					;Wait Repeat 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $c7			;Wait 8
	db $96,$02			;CMD Portamento up
	db $c3			;Wait 4
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_149:
	db $3e			;Note D-6
	db $6d			;Volume 11
	db $95,$48			;CMD Vibrato
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $c7			;Wait 8
	db $96,$02			;CMD Portamento up
	db $c3			;Wait 4
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $ca			;Wait 11
	db $bf			;[End-Of-Track]
.track_154:
	db $43			;Note G-6
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $45			;Note A-6
	db $91,$05			;CMD Portamento tone
	db $c6			;Wait 7
	db $95,$46			;CMD Vibrato
	db $d7			;Wait 24
	db $47			;Note B-6
	db $91,$03			;CMD Portamento tone
	db $cc			;Wait 13
	db $95,$46			;CMD Vibrato
	db $d1			;Wait 18
	db $9c			;CMD End 
	db $bf			;[End-Of-Track]
.track_155:
	db $c2			;Wait 3
	db $43			;Note G-6
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $45			;Note A-6
	db $91,$05			;CMD Portamento tone
	db $c6			;Wait 7
	db $95,$46			;CMD Vibrato
	db $d7			;Wait 24
	db $47			;Note B-6
	db $91,$03			;CMD Portamento tone
	db $cc			;Wait 13
	db $95,$46			;CMD Vibrato
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_162:
	db $4a			;Note D-7
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $91,$03			;CMD Portamento tone
	db $c7			;Wait 8
	db $95,$46			;CMD Vibrato
	db $d7			;Wait 24
	db $4c			;Note E-7
	db $91,$05			;CMD Portamento tone
	db $c7			;Wait 8
	db $47			;Note B-6
	db $95,$46			;CMD Vibrato
	db $c6			;Wait 7
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $45			;Note A-6
	db $91,$05			;CMD Portamento tone
	db $c7			;Wait 8
	db $43			;Note G-6
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_163:
	db $c1			;Wait 2
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $4a			;Note D-7
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $91,$03			;CMD Portamento tone
	db $ca			;Wait 11
	db $95,$46			;CMD Vibrato
	db $d4			;Wait 21
	db $4c			;Note E-7
	db $91,$05			;CMD Portamento tone
	db $c7			;Wait 8
	db $47			;Note B-6
	db $95,$46			;CMD Vibrato
	db $c6			;Wait 7
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $45			;Note A-6
	db $91,$05			;CMD Portamento tone
	db $c7			;Wait 8
	db $43			;Note G-6
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_167:
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $01			;Note C#1
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_170:
	db $40			;Note E-6
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $91,$1a			;CMD Portamento tone
	db $c1			;Wait 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $4c			;Note E-7
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $47			;Note B-6
	db $c9			;Wait 10
	db $4c			;Note E-7
	db $91,$10			;CMD Portamento tone
	db $c7			;Wait 8
	db $4f			;Note G-7
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_171:
	db $c2			;Wait 3
	db $40			;Note E-6
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $91,$1a			;CMD Portamento tone
	db $c1			;Wait 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $4c			;Note E-7
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $47			;Note B-6
	db $c9			;Wait 10
	db $4c			;Note E-7
	db $91,$10			;CMD Portamento tone
	db $c7			;Wait 8
	db $4f			;Note G-7
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_178:
	db $51			;Note A-7
	db $cf			;Wait 16
	db $53			;Note B-7
					;Wait Repeat 16
	db $4e			;Note F#7
					;Wait Repeat 16
	db $4a			;Note D-7
	db $c3			;Wait 4
	db $96,$02			;CMD Portamento up
					;Wait Repeat 4
	db $47			;Note B-6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $47			;Note B-6
	db $91,$10			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$46			;CMD Vibrato
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_179:
	db $c2			;Wait 3
	db $51			;Note A-7
	db $cf			;Wait 16
	db $53			;Note B-7
					;Wait Repeat 16
	db $4e			;Note F#7
	db $ce			;Wait 15
	db $4a			;Note D-7
	db $c3			;Wait 4
	db $96,$02			;CMD Portamento up
					;Wait Repeat 4
	db $47			;Note B-6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $47			;Note B-6
	db $91,$10			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$46			;CMD Vibrato
	db $bf			;[End-Of-Track]
.track_180:
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $6c			;Volume 10
	db $95,$48			;CMD Vibrato
					;Wait Repeat 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_181:
	db $3e			;Note D-6
	db $6d			;Volume 11
	db $95,$48			;CMD Vibrato
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $ca			;Wait 11
	db $bf			;[End-Of-Track]
.track_185:
	db $60			;Release 96
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_188:
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $95,$48			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c6			;Wait 7
	db $96,$01			;CMD Portamento up
	db $c3			;Wait 4
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$05			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_189:
	db $39			;Note A-5
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$48			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c6			;Wait 7
	db $96,$01			;CMD Portamento up
	db $c3			;Wait 4
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$05			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$48			;CMD Vibrato
	db $c9			;Wait 10
	db $bf			;[End-Of-Track]
.track_219:
	db $6e			;Volume 12
	db $95,$47			;CMD Vibrato
	db $c7			;Wait 8
	db $6d			;Volume 11
					;Wait Repeat 8
	db $6c			;Volume 10
					;Wait Repeat 8
	db $6b			;Volume 9
					;Wait Repeat 8
	db $6a			;Volume 8
					;Wait Repeat 8
	db $69			;Volume 7
					;Wait Repeat 8
	db $68			;Volume 6
					;Wait Repeat 8
	db $67			;Volume 5
	db $c2			;Wait 3
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_224:
	db $34			;Note E-5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $34			;Note E-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $34			;Note E-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $34			;Note E-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $34			;Note E-5
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_227:
	db $f9			;Wait 58
	db $94,$02			;CMD Arpeggio
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_229:
	db $d9			;Wait 26
	db $9c			;CMD End 
	db $e5			;Wait 38
	db $bf			;[End-Of-Track]
.track_240:
	db $32			;Note D-5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $a4,$05			;CMD Speed
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $32			;Note D-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $32			;Note D-5
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $32			;Note D-5
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $32			;Note D-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $32			;Note D-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $32			;Note D-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $32			;Note D-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $32			;Note D-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $32			;Note D-5
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]

