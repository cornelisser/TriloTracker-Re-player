; Song: Chriet Can Cope With Numbers    
; By:   Jorito 2022                     
; Period table: A440 Modern

; [ Song start data ]
	db $06					; Initial song speed.
	db $00					; Channel setup.
	dw .customvoice_start-8			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_002, .track_003, .track_003, .track_005, .track_006, .track_007	; Step:000 Pattern:000
	dw .track_008, .track_009, .track_010, .track_011, .track_011, .track_013, .track_014, .track_015	; Step:001 Pattern:001
.restart:
	dw .track_000, .track_001, .track_018, .track_019, .track_020, .track_005, .track_014, .track_023	; Step:002 Pattern:002
	dw .track_024, .track_001, .track_010, .track_027, .track_028, .track_013, .track_014, .track_031	; Step:003 Pattern:003
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:
	db $31,$12,$10,$06,$f0,$f1,$67,$95 		; Custom voice:57
	db $32,$a1,$16,$07,$c0,$c0,$20,$17 		; Custom voice:126

; [ FM Drum macros]
.drummacro_start:
	dw .drum_00
	dw .drum_02
	dw .drum_04
	dw .drum_06

.drum_00:						; Drum 0. Kick            
	db $04, $00							; volume Base drum
	db $0c, $10							; volume Cymbal
	db $12, $d8, $04						; note Bdrum
	db $1a, $00, $01						; note Cymbal 
	db $1e, $14							; Percussion
	db $02							; STOP - End of Drum macro

.drum_02:						; Drum 1. Snare           
	db $04, $00							; volume Base drum
	db $08, $00							; volume HiHat
	db $0c, $10							; volume Cymbal
	db $12, $43, $05						; note Bdrum
	db $16, $20, $03						; note Snare 
	db $1a, $00, $01						; note Cymbal 
	db $1e, $1c							; Percussion
	db $02							; STOP - End of Drum macro

.drum_04:						; Drum 2. Hihat           
	db $06, $30							; volume Snare
	db $16, $d8, $08						; note Snare 
	db $1e, $01							; Percussion
	db $02							; STOP - End of Drum macro

.drum_06:						; Drum 3. Open hihat      
	db $0e, $03							; volume Tom
	db $1a, $d8, $06						; note Cymbal 
	db $1e, $02							; Percussion
	db $02							; STOP - End of Drum macro

; [ Instruments]
.instrument_start:
	dw .instrument_00				; Violin          
	dw .instrument_01				; Synth           
	dw .instrument_02				; Short synth     
	dw .instrument_03				; Acoustic Bass   
	dw .instrument_04				; Electric Guitar 
	dw .instrument_05				; SD POW          
	dw .instrument_06				; PSG arp         
	dw .instrument_07				; Bassdrum XLR8 D2
	dw .instrument_08				; Bass-HHT        
	dw .instrument_09				; FM PSG lead     

.instrument_00:					; Violin          
	db $10					; FM Hardware Voice 1
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_01:					; Synth           
	db $a0					; FM Hardware Voice 10
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_02:					; Short synth     
	db $a0					; FM Hardware Voice 10
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$08						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$00						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_03:					; Acoustic Bass   
	db $e0					; FM Hardware Voice 14
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_04:					; Electric Guitar 
	db $f0					; FM Hardware Voice 15
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$00						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_05:					; SD POW          
	db $f0					; FM Hardware Voice 15
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$10						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$06						; Noise _
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$05						; Noise _
	db $08,$0b						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$04						; Noise _
	db $08,$0a						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$03						; Noise _
	db $08,$09						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$00						; Noise _
	db $08,$08						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$05						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$04						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$03						; Volume _
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$00						; Noise _
	db $08,$01						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_06:					; PSG arp         
	db $0F					; FM Hardware Voice was not set
	db $02,$90						; Mixer (TN)
	db $0E,$01						; Noise _
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$08						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$07						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$06						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$05						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$04						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$03						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$02						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$01						; Volume _
								; --- Macro loop
	db $08,$00						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_07:					; Bassdrum XLR8 D2
	db $00,$04					; FM Software Voice 0
	db $02,$90						; Mixer (TN)
	db $0E,$04						; Noise _
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
								; --- Macro loop
	db $08,$00						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_08:					; Bass-HHT        
	db $0F					; FM Hardware Voice was not set
	db $02,$90						; Mixer (TN)
	db $0E,$01						; Noise _
	db $08,$0f						; Volume _
	db $02,$90						; Mixer (TN)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
								; --- Macro loop
	db $08,$00						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_09:					; FM PSG lead     
	db $00,$08					; FM Software Voice 1
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $18,$fb						; Loop (-6)


; [ Song track data ]
.track_000:
	db $0c			;Note C-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
					;Wait Repeat 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $0c			;Note C-2
	db $71			;Volume 15
	db $79			;Instrument 7
					;Wait Repeat 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
					;Wait Repeat 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $0c			;Note C-2
	db $71			;Volume 15
	db $79			;Instrument 7
					;Wait Repeat 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
					;Wait Repeat 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $0c			;Note C-2
	db $71			;Volume 15
	db $79			;Instrument 7
					;Wait Repeat 2
	db $10			;Note E-2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $10			;Note E-2
	db $70			;Volume 14
					;Wait Repeat 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
					;Wait Repeat 2
	db $0b			;Note B-1
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0b			;Note B-1
	db $71			;Volume 15
	db $c1			;Wait 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_001:
	db $60			;Release 96
	db $c1			;Wait 2
	db $31			;Note C#5
	db $6f			;Volume 13
	db $78			;Instrument 6
	db $94,$37			;CMD Arpeggio
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $31			;Note C#5
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $34			;Note E-5
	db $94,$27			;CMD Arpeggio
					;Wait Repeat 2
	db $31			;Note C#5
	db $94,$37			;CMD Arpeggio
	db $c5			;Wait 6
	db $31			;Note C#5
	db $94,$27			;CMD Arpeggio
	db $c3			;Wait 4
	db $31			;Note C#5
	db $c1			;Wait 2
	db $31			;Note C#5
	db $94,$37			;CMD Arpeggio
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $31			;Note C#5
	db $94,$37			;CMD Arpeggio
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $31			;Note C#5
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $34			;Note E-5
	db $94,$27			;CMD Arpeggio
					;Wait Repeat 2
	db $31			;Note C#5
	db $94,$37			;CMD Arpeggio
	db $c5			;Wait 6
	db $34			;Note E-5
	db $94,$27			;CMD Arpeggio
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $31			;Note C#5
	db $94,$27			;CMD Arpeggio
					;Wait Repeat 2
	db $31			;Note C#5
	db $94,$57			;CMD Arpeggio
					;Wait Repeat 2
	db $2f			;Note B-4
	db $94,$27			;CMD Arpeggio
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_002:
	db $60			;Release 96
	db $c1			;Wait 2
	db $19			;Note C#3
	db $70			;Volume 14
	db $73			;Instrument 1
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $17			;Note B-2
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $17			;Note B-2
	db $c1			;Wait 2
	db $17			;Note B-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_003:
	db $60			;Release 96
	db $71			;Volume 15
	db $72			;Instrument 0
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_005:
	db $60			;Release 96
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $6f			;Volume 13
	db $76			;Instrument 4
	db $94,$37			;CMD Arpeggio
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $3d			;Note C#6
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $40			;Note E-6
	db $94,$27			;CMD Arpeggio
					;Wait Repeat 2
	db $3d			;Note C#6
	db $94,$37			;CMD Arpeggio
	db $c5			;Wait 6
	db $3d			;Note C#6
	db $94,$27			;CMD Arpeggio
	db $c3			;Wait 4
	db $3d			;Note C#6
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $94,$37			;CMD Arpeggio
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $94,$37			;CMD Arpeggio
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $3d			;Note C#6
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $40			;Note E-6
	db $94,$27			;CMD Arpeggio
					;Wait Repeat 2
	db $3d			;Note C#6
	db $94,$37			;CMD Arpeggio
	db $c5			;Wait 6
	db $40			;Note E-6
	db $94,$27			;CMD Arpeggio
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $94,$27			;CMD Arpeggio
					;Wait Repeat 2
	db $3d			;Note C#6
	db $94,$57			;CMD Arpeggio
					;Wait Repeat 2
	db $3b			;Note B-5
	db $94,$27			;CMD Arpeggio
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_006:
	db $60			;Release 96
	db $94,$c0			;CMD Arpeggio
	db $c1			;Wait 2
	db $49			;Note C#7
	db $70			;Volume 14
	db $74			;Instrument 2
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $60			;Release 96
	db $cf			;Wait 16
	db $3d			;Note C#6
	db $c1			;Wait 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $60			;Release 96
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_007:
	db $19			;Note C#3
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $9d,$04			;CMD Drum $03
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_008:
	db $0c			;Note C-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
					;Wait Repeat 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $0c			;Note C-2
	db $71			;Volume 15
	db $79			;Instrument 7
					;Wait Repeat 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
					;Wait Repeat 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $0c			;Note C-2
	db $71			;Volume 15
	db $79			;Instrument 7
					;Wait Repeat 2
	db $10			;Note E-2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $10			;Note E-2
	db $70			;Volume 14
					;Wait Repeat 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
					;Wait Repeat 2
	db $10			;Note E-2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $10			;Note E-2
	db $70			;Volume 14
					;Wait Repeat 2
	db $0c			;Note C-2
	db $71			;Volume 15
	db $79			;Instrument 7
					;Wait Repeat 2
	db $12			;Note F#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $12			;Note F#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $12			;Note F#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
					;Wait Repeat 2
	db $0b			;Note B-1
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_009:
	db $60			;Release 96
	db $c1			;Wait 2
	db $31			;Note C#5
	db $94,$37			;CMD Arpeggio
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $31			;Note C#5
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $34			;Note E-5
	db $94,$27			;CMD Arpeggio
					;Wait Repeat 2
	db $31			;Note C#5
	db $94,$37			;CMD Arpeggio
	db $c5			;Wait 6
	db $31			;Note C#5
	db $94,$27			;CMD Arpeggio
	db $c3			;Wait 4
	db $31			;Note C#5
	db $c1			;Wait 2
	db $31			;Note C#5
	db $94,$37			;CMD Arpeggio
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $31			;Note C#5
	db $94,$37			;CMD Arpeggio
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $31			;Note C#5
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $34			;Note E-5
	db $94,$27			;CMD Arpeggio
					;Wait Repeat 2
	db $31			;Note C#5
	db $94,$37			;CMD Arpeggio
	db $c5			;Wait 6
	db $34			;Note E-5
	db $94,$27			;CMD Arpeggio
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $31			;Note C#5
	db $94,$27			;CMD Arpeggio
					;Wait Repeat 2
	db $31			;Note C#5
	db $94,$57			;CMD Arpeggio
					;Wait Repeat 2
	db $2f			;Note B-4
	db $94,$27			;CMD Arpeggio
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_010:
	db $60			;Release 96
	db $c1			;Wait 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1e			;Note F#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1e			;Note F#3
	db $c1			;Wait 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $17			;Note B-2
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $17			;Note B-2
	db $c1			;Wait 2
	db $17			;Note B-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_011:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_013:
	db $60			;Release 96
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $94,$37			;CMD Arpeggio
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $3d			;Note C#6
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $40			;Note E-6
	db $94,$27			;CMD Arpeggio
					;Wait Repeat 2
	db $3d			;Note C#6
	db $94,$37			;CMD Arpeggio
	db $c5			;Wait 6
	db $3d			;Note C#6
	db $94,$27			;CMD Arpeggio
	db $c3			;Wait 4
	db $3d			;Note C#6
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $94,$37			;CMD Arpeggio
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $94,$37			;CMD Arpeggio
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $3d			;Note C#6
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $40			;Note E-6
	db $94,$27			;CMD Arpeggio
					;Wait Repeat 2
	db $3d			;Note C#6
	db $94,$37			;CMD Arpeggio
	db $c5			;Wait 6
	db $40			;Note E-6
	db $94,$27			;CMD Arpeggio
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $94,$27			;CMD Arpeggio
					;Wait Repeat 2
	db $3d			;Note C#6
	db $94,$57			;CMD Arpeggio
					;Wait Repeat 2
	db $3b			;Note B-5
	db $94,$27			;CMD Arpeggio
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_014:
	db $60			;Release 96
	db $94,$c0			;CMD Arpeggio
	db $c1			;Wait 2
	db $49			;Note C#7
	db $6f			;Volume 13
	db $74			;Instrument 2
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $60			;Release 96
	db $cf			;Wait 16
	db $3d			;Note C#6
	db $c1			;Wait 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $60			;Release 96
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_015:
	db $19			;Note C#3
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $1e			;Note F#3
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1e			;Note F#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $17			;Note B-2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $17			;Note B-2
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $9d,$02			;CMD Drum $02
	db $c0			;Wait 1
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_018:
	db $60			;Release 96
	db $c1			;Wait 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $19			;Note C#3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $17			;Note B-2
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $17			;Note B-2
	db $c1			;Wait 2
	db $17			;Note B-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_019:
	db $2f			;Note B-4
	db $71			;Volume 15
	db $7b			;Instrument 9
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $31			;Note C#5
	db $91,$06			;CMD Portamento tone
					;Wait Repeat 2
	db $95,$44			;CMD Vibrato
					;Wait Repeat 2
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $31			;Note C#5
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $31			;Note C#5
	db $c1			;Wait 2
	db $93,$01			;CMD Portamento down
					;Wait Repeat 2
	db $33			;Note D#5
	db $91,$04			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $34			;Note E-5
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $36			;Note F#5
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $34			;Note E-5
	db $91,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $95,$44			;CMD Vibrato
	db $c7			;Wait 8
	db $96,$06			;CMD Portamento up
	db $c1			;Wait 2
	db $60			;Release 96
	db $9c			;CMD End 
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $31			;Note C#5
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $33			;Note D#5
	db $91,$04			;CMD Portamento tone
					;Wait Repeat 2
	db $2f			;Note B-4
	db $9c			;CMD End 
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2a			;Note F#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_020:
	db $60			;Release 96
	db $a2,$02			;CMD Track detune
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6b			;Volume 9
	db $7b			;Instrument 9
	db $9c			;CMD End 
					;Wait Repeat 2
	db $31			;Note C#5
	db $91,$06			;CMD Portamento tone
					;Wait Repeat 2
	db $95,$44			;CMD Vibrato
					;Wait Repeat 2
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $31			;Note C#5
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $31			;Note C#5
	db $c1			;Wait 2
	db $93,$01			;CMD Portamento down
					;Wait Repeat 2
	db $33			;Note D#5
	db $91,$04			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $34			;Note E-5
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $36			;Note F#5
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $34			;Note E-5
	db $91,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $95,$44			;CMD Vibrato
	db $c7			;Wait 8
	db $96,$06			;CMD Portamento up
	db $c1			;Wait 2
	db $60			;Release 96
	db $9c			;CMD End 
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $31			;Note C#5
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $33			;Note D#5
	db $91,$04			;CMD Portamento tone
					;Wait Repeat 2
	db $2f			;Note B-4
	db $9c			;CMD End 
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_023:
	db $19			;Note C#3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $9d,$04			;CMD Drum $03
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_024:
	db $0c			;Note C-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
					;Wait Repeat 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $0c			;Note C-2
	db $71			;Volume 15
	db $79			;Instrument 7
					;Wait Repeat 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
					;Wait Repeat 2
	db $0d			;Note C#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $0c			;Note C-2
	db $71			;Volume 15
	db $79			;Instrument 7
					;Wait Repeat 2
	db $10			;Note E-2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $10			;Note E-2
	db $70			;Volume 14
					;Wait Repeat 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
					;Wait Repeat 2
	db $10			;Note E-2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $10			;Note E-2
	db $70			;Volume 14
					;Wait Repeat 2
	db $0c			;Note C-2
	db $71			;Volume 15
	db $79			;Instrument 7
					;Wait Repeat 2
	db $12			;Note F#2
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $12			;Note F#2
	db $71			;Volume 15
	db $c1			;Wait 2
	db $12			;Note F#2
	db $70			;Volume 14
					;Wait Repeat 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $77			;Instrument 5
					;Wait Repeat 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $19			;Note C#3
	db $71			;Volume 15
	db $c1			;Wait 2
	db $19			;Note C#3
	db $71			;Volume 15
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_027:
	db $2d			;Note A-4
	db $93,$01			;CMD Portamento down
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $9c			;CMD End 
					;Wait Repeat 2
	db $95,$44			;CMD Vibrato
					;Wait Repeat 2
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
					;Wait Repeat 3
	db $34			;Note E-5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $36			;Note F#5
	db $93,$01			;CMD Portamento down
	db $c3			;Wait 4
	db $38			;Note G#5
	db $91,$04			;CMD Portamento tone
	db $c1			;Wait 2
	db $36			;Note F#5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $2f			;Note B-4
	db $93,$02			;CMD Portamento down
	db $c1			;Wait 2
	db $31			;Note C#5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $95,$44			;CMD Vibrato
					;Wait Repeat 2
	db $33			;Note D#5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $34			;Note E-5
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $c1			;Wait 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $38			;Note G#5
	db $91,$04			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$44			;CMD Vibrato
	db $c5			;Wait 6
	db $95,$48			;CMD Vibrato
	db $c1			;Wait 2
	db $96,$06			;CMD Portamento up
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_028:
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $93,$01			;CMD Portamento down
					;Wait Repeat 2
	db $2f			;Note B-4
	db $9c			;CMD End 
					;Wait Repeat 2
	db $95,$44			;CMD Vibrato
					;Wait Repeat 2
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
					;Wait Repeat 3
	db $34			;Note E-5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $36			;Note F#5
	db $93,$01			;CMD Portamento down
	db $c3			;Wait 4
	db $38			;Note G#5
	db $91,$04			;CMD Portamento tone
	db $c1			;Wait 2
	db $36			;Note F#5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $2f			;Note B-4
	db $93,$02			;CMD Portamento down
	db $c1			;Wait 2
	db $31			;Note C#5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $95,$44			;CMD Vibrato
					;Wait Repeat 2
	db $33			;Note D#5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $34			;Note E-5
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $c1			;Wait 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $38			;Note G#5
	db $91,$04			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$44			;CMD Vibrato
	db $c5			;Wait 6
	db $95,$48			;CMD Vibrato
	db $c1			;Wait 2
	db $96,$06			;CMD Portamento up
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_031:
	db $19			;Note C#3
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $19			;Note C#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $1e			;Note F#3
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1e			;Note F#3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $17			;Note B-2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $17			;Note B-2
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $9d,$02			;CMD Drum $02
	db $c0			;Wait 1
	db $60			;Release 96
	db $bf			;[End-Of-Track]

