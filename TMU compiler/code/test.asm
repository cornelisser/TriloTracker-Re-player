; Song: TriloTracker v0.10.B1 SMS PSG+FM
; By:   Richard Cornelisse      (c) 2020

; [ Song start data ]
	db $0c					; Initial song speed.
	dw .customvoice_start			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_001, .track_001, .track_003, .track_001, .track_001, .track_001, .track_001	; Step:001 Pattern:000
	dw .track_008, .track_001, .track_001, .track_011, .track_001, .track_001, .track_001, .track_001	; Step:002 Pattern:001
	dw .track_016, .track_001, .track_001, .track_019, .track_001, .track_001, .track_001, .track_001	; Step:003 Pattern:002
	dw .track_024, .track_025, .track_025, .track_027, .track_025, .track_025, .track_025, .track_025	; Step:004 Pattern:003
	dw .track_032, .track_001, .track_001, .track_035, .track_001, .track_001, .track_001, .track_001	; Step:005 Pattern:004
	dw .track_040, .track_041, .track_041, .track_043, .track_041, .track_041, .track_041, .track_041	; Step:006 Pattern:005
	dw .track_048, .track_049, .track_049, .track_051, .track_049, .track_049, .track_049, .track_049	; Step:007 Pattern:006
	dw .track_056, .track_057, .track_057, .track_059, .track_057, .track_057, .track_057, .track_057	; Step:008 Pattern:007
	dw .track_064, .track_064, .track_064, .track_064, .track_064, .track_064, .track_064, .track_064	; Step:009 Pattern:008
	dw .track_064, .track_064, .track_064, .track_064, .track_064, .track_064, .track_064, .track_064	; Step:010 Pattern:009
	dw .track_080, .track_001, .track_001, .track_083, .track_001, .track_001, .track_001, .track_001	; Step:011 Pattern:010
	dw .track_064, .track_064, .track_090, .track_064, .track_064, .track_064, .track_064, .track_064	; Step:012 Pattern:011
	dw .track_064, .track_064, .track_098, .track_064, .track_064, .track_064, .track_064, .track_064	; Step:013 Pattern:012
	dw .track_064, .track_064, .track_064, .track_064, .track_064, .track_064, .track_064, .track_064	; Step:014 Pattern:013
	dw .track_112, .track_113, .track_001, .track_115, .track_116, .track_001, .track_001, .track_001	; Step:015 Pattern:014
	dw .track_120, .track_120, .track_122, .track_123, .track_120, .track_120, .track_120, .track_120	; Step:016 Pattern:015
	dw .track_128, .track_128, .track_130, .track_131, .track_128, .track_128, .track_128, .track_128	; Step:017 Pattern:016
	dw .track_136, .track_136, .track_136, .track_139, .track_136, .track_136, .track_136, .track_136	; Step:018 Pattern:017
	dw .track_144, .track_144, .track_146, .track_144, .track_144, .track_144, .track_144, .track_144	; Step:019 Pattern:018
	dw .track_144, .track_144, .track_154, .track_144, .track_144, .track_144, .track_144, .track_144	; Step:020 Pattern:019
	dw .track_160, .track_161, .track_162, .track_163, .track_164, .track_160, .track_160, .track_160	; Step:021 Pattern:020
	dw .track_128, .track_169, .track_170, .track_171, .track_172, .track_128, .track_128, .track_128	; Step:022 Pattern:021
	dw 0x0000, .restart			; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:

; [ FM Drum macros]
.drummacro_start:
	dw .drum_00
	dw .drum_01
	dw .drum_02
	dw .drum_03
	dw .drum_04
	dw .drum_05
	dw .drum_06
	dw .drum_07
	dw .drum_08

.drum_00:

.drum_01:

.drum_02:

.drum_03:

.drum_04:

.drum_05:

.drum_06:

.drum_07:

.drum_08:

; [ Instruments]
.instrument_start:
	dw .instrument_00				;                 
	dw .instrument_01				;                 
	dw .instrument_02				;                 
	dw .instrument_03				;                 

.instrument_00:					;                 
	db $10					; FM Hardware Voice 1
.rst_i00:
	db $29			; Info byte: 00101001
	db $0f			; Volume _
	dw .rst_i00			; Loop address
.instrument_01:					;                 
	db $20					; FM Hardware Voice 2
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $28			; Info byte: 00101000
	db $0e			; Volume _
	db $28			; Info byte: 00101000
	db $0d			; Volume _
	db $28			; Info byte: 00101000
	db $0c			; Volume _
	db $28			; Info byte: 00101000
	db $0b			; Volume _
	db $28			; Info byte: 00101000
	db $0a			; Volume _
	db $28			; Info byte: 00101000
	db $0a			; Volume _
.rst_i01:
	db $29			; Info byte: 00101001
	db $0a			; Volume _
	dw .rst_i01			; Loop address
.instrument_02:					;                 
	db $30					; FM Hardware Voice 3
.rst_i02:
	db $29			; Info byte: 00101001
	db $0f			; Volume _
	dw .rst_i02			; Loop address
.instrument_03:					;                 
	db $40					; FM Hardware Voice 4
.rst_i03:
	db $c9			; Info byte: 11001001
	db $00			; Volume _
	db $04			; Noise
	db $0f			; Noise volume
	dw .rst_i03			; Loop address

; [ Song track data ]
.track_000:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $90,$47			;CMD Arpeggio
	db $c3			;Wait 4
	db $2d			;Note A-4
					;Wait Repeat 4
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $90,$35			;CMD Arpeggio
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $24			;Note C-4
	db $c0			;Wait 1
	db $90,$40			;CMD Arpeggio
					;Wait Repeat 1
	db $90,$50			;CMD Arpeggio
					;Wait Repeat 1
	db $90,$60			;CMD Arpeggio
					;Wait Repeat 1
	db $90,$70			;CMD Arpeggio
					;Wait Repeat 1
	db $90,$80			;CMD Arpeggio
					;Wait Repeat 1
	db $90,$90			;CMD Arpeggio
					;Wait Repeat 1
	db $90,$a0			;CMD Arpeggio
					;Wait Repeat 1
	db $90,$b0			;CMD Arpeggio
					;Wait Repeat 1
	db $90,$c0			;CMD Arpeggio
					;Wait Repeat 1
	db $90,$d0			;CMD Arpeggio
					;Wait Repeat 1
	db $90,$e0			;CMD Arpeggio
					;Wait Repeat 1
	db $90,$f0			;CMD Arpeggio
	db $c2			;Wait 3
	db $9a			;CMD End 
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $c2			;Wait 3
	db $60			;Release 96
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_001:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_003:
	db $70			;Volume 15
	db $71			;Instrument 0
	db $e7			;Wait 40
	db $30			;Note C-5
	db $90,$14			;CMD Arpeggio
	db $c3			;Wait 4
	db $90,$20			;CMD Arpeggio
	db $c1			;Wait 2
	db $90,$47			;CMD Arpeggio
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c3			;Wait 4
	db $9a			;CMD End 
					;Wait Repeat 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_008:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $91,$01			;CMD Portamento up
	db $c2			;Wait 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $34			;Note E-5
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $0e			;Note D-2
	db $c5			;Wait 6
	db $0c			;Note C-2
	db $91,$10			;CMD Portamento up
	db $c3			;Wait 4
	db $91,$01			;CMD Portamento up
	db $c2			;Wait 3
	db $9a			;CMD End 
					;Wait Repeat 3
	db $60			;Release 96
	db $e3			;Wait 36
	db $bf			;[End-Of-Track]
.track_011:
	db $df			;Wait 32
	db $3c			;Note C-6
	db $70			;Volume 15
	db $71			;Instrument 0
	db $92,$01			;CMD Portamento down
	db $c2			;Wait 3
	db $3c			;Note C-6
					;Wait Repeat 3
	db $4c			;Note E-7
	db $c1			;Wait 2
	db $43			;Note G-6
	db $c0			;Wait 1
	db $45			;Note A-6
					;Wait Repeat 1
	db $47			;Note B-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $26			;Note D-4
	db $c5			;Wait 6
	db $24			;Note C-4
	db $92,$10			;CMD Portamento down
	db $c3			;Wait 4
	db $92,$01			;CMD Portamento down
	db $c2			;Wait 3
	db $9a			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_016:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $92,$01			;CMD Portamento down
	db $c2			;Wait 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $34			;Note E-5
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $28			;Note E-4
	db $c5			;Wait 6
	db $3c			;Note C-6
	db $92,$09			;CMD Portamento down
	db $c3			;Wait 4
	db $92,$01			;CMD Portamento down
	db $c2			;Wait 3
	db $9a			;CMD End 
					;Wait Repeat 3
	db $60			;Release 96
	db $e3			;Wait 36
	db $bf			;[End-Of-Track]
.track_019:
	db $df			;Wait 32
	db $24			;Note C-4
	db $70			;Volume 15
	db $71			;Instrument 0
	db $91,$01			;CMD Portamento up
	db $c2			;Wait 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $34			;Note E-5
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $28			;Note E-4
	db $c5			;Wait 6
	db $34			;Note E-5
	db $91,$09			;CMD Portamento up
	db $c3			;Wait 4
	db $91,$01			;CMD Portamento up
	db $c2			;Wait 3
	db $9a			;CMD End 
					;Wait Repeat 3
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_024:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c2			;Wait 3
	db $28			;Note E-4
	db $93,$04			;CMD Portamento tone
	db $c1			;Wait 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $41			;Note F-6
	db $c2			;Wait 3
	db $24			;Note C-4
	db $93,$0f			;CMD Portamento tone
					;Wait Repeat 3
	db $26			;Note D-4
					;Wait Repeat 3
	db $35			;Note F-5
	db $c1			;Wait 2
	db $9a			;CMD End 
					;Wait Repeat 2
	db $60			;Release 96
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_025:
	db $f0			;Wait 49
	db $bf			;[End-Of-Track]
.track_027:
	db $d7			;Wait 24
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c2			;Wait 3
	db $28			;Note E-4
	db $93,$04			;CMD Portamento tone
	db $c1			;Wait 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $41			;Note F-6
	db $c2			;Wait 3
	db $24			;Note C-4
	db $93,$0f			;CMD Portamento tone
					;Wait Repeat 3
	db $32			;Note D-5
	db $c0			;Wait 1
	db $9a			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_032:
	db $30			;Note C-5
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $94,$4d			;CMD Vibrato
	db $c1			;Wait 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $30			;Note C-5
	db $c2			;Wait 3
	db $94,$01			;CMD Vibrato
	db $c4			;Wait 5
	db $94,$c0			;CMD Vibrato
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $30			;Note C-5
	db $c2			;Wait 3
	db $9a			;CMD End 
	db $c0			;Wait 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $94,$c5			;CMD Vibrato
	db $c0			;Wait 1
	db $94,$d0			;CMD Vibrato
					;Wait Repeat 1
	db $94,$e0			;CMD Vibrato
					;Wait Repeat 1
	db $94,$f0			;CMD Vibrato
	db $c1			;Wait 2
	db $60			;Release 96
	db $e2			;Wait 35
	db $bf			;[End-Of-Track]
.track_035:
	db $df			;Wait 32
	db $30			;Note C-5
	db $70			;Volume 15
	db $71			;Instrument 0
	db $94,$4d			;CMD Vibrato
	db $c1			;Wait 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $30			;Note C-5
	db $c2			;Wait 3
	db $94,$01			;CMD Vibrato
	db $c4			;Wait 5
	db $94,$c0			;CMD Vibrato
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $30			;Note C-5
	db $c2			;Wait 3
	db $9a			;CMD End 
	db $c0			;Wait 1
	db $30			;Note C-5
	db $c3			;Wait 4
	db $60			;Release 96
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_040:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $93,$0f			;CMD Portamento tone
					;Wait Repeat 1
	db $30			;Note C-5
	db $95,$08			;CMD Portamento tone + Volume slide
	db $c2			;Wait 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $27			;Note D#4
	db $c1			;Wait 2
	db $9a			;CMD End 
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
	db $93,$0f			;CMD Portamento tone
					;Wait Repeat 1
	db $30			;Note C-5
	db $95,$0f			;CMD Portamento tone + Volume slide
					;Wait Repeat 1
	db $95,$04			;CMD Portamento tone + Volume slide
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
.track_048:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $94,$4d			;CMD Vibrato
	db $c1			;Wait 2
	db $24			;Note C-4
	db $96,$02			;CMD Vibrato + Volume slide
	db $c4			;Wait 5
	db $29			;Note F-4
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $96,$0c			;CMD Vibrato + Volume slide
					;Wait Repeat 1
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $94,$0d			;CMD Vibrato
	db $c5			;Wait 6
	db $60			;Release 96
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_049:
	db $ed			;Wait 46
	db $bf			;[End-Of-Track]
.track_051:
	db $d7			;Wait 24
	db $24			;Note C-4
	db $70			;Volume 15
	db $71			;Instrument 0
	db $94,$4d			;CMD Vibrato
	db $c1			;Wait 2
	db $96,$04			;CMD Vibrato + Volume slide
	db $c4			;Wait 5
	db $29			;Note F-4
	db $c0			;Wait 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $94,$0d			;CMD Vibrato
					;Wait Repeat 2
	db $9a			;CMD End 
	db $c2			;Wait 3
	db $60			;Release 96
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_056:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
			;CMD 7 Unused
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
			;CMD 7 Unused
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c4			;Wait 5
			;CMD 7 Unused
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
			;CMD 7 Unused
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
			;CMD 7 Unused
					;Wait Repeat 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c4			;Wait 5
			;CMD 7 Unused
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $60			;Release 96
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_064:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_080:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $97,$04			;CMD Volume slide up
	db $c0			;Wait 1
	db $26			;Note D-4
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $24			;Note C-4
	db $6e			;Volume 13
	db $97,$06			;CMD Volume slide up
	db $c3			;Wait 4
	db $24			;Note C-4
	db $6e			;Volume 13
	db $97,$0f			;CMD Volume slide up
	db $c0			;Wait 1
	db $29			;Note F-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $2d			;Note A-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $71			;Instrument 0
	db $97,$30			;CMD Volume slide up
	db $c0			;Wait 1
	db $26			;Note D-4
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $24			;Note C-4
	db $67			;Volume 6
	db $97,$60			;CMD Volume slide up
	db $c3			;Wait 4
	db $24			;Note C-4
	db $65			;Volume 4
	db $97,$f0			;CMD Volume slide up
	db $c0			;Wait 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $60			;Release 96
	db $e3			;Wait 36
	db $bf			;[End-Of-Track]
.track_083:
	db $df			;Wait 32
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $97,$03			;CMD Volume slide up
	db $c0			;Wait 1
	db $26			;Note D-4
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $24			;Note C-4
	db $6e			;Volume 13
	db $97,$06			;CMD Volume slide up
	db $c3			;Wait 4
	db $24			;Note C-4
	db $6e			;Volume 13
	db $97,$0f			;CMD Volume slide up
	db $c0			;Wait 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $69			;Volume 8
	db $71			;Instrument 0
	db $97,$30			;CMD Volume slide up
	db $c0			;Wait 1
	db $26			;Note D-4
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $24			;Note C-4
	db $67			;Volume 6
	db $97,$60			;CMD Volume slide up
	db $c3			;Wait 4
	db $24			;Note C-4
	db $65			;Volume 4
	db $97,$f0			;CMD Volume slide up
	db $c0			;Wait 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_090:
	db $24			;Note C-4
	db $6c			;Volume 11
	db $71			;Instrument 0
	db $a5,$01			;CMD Channel setup
	db $c0			;Wait 1
	db $94,$72			;CMD Vibrato
					;Wait Repeat 1
	db $24			;Note C-4
	db $70			;Volume 15
	db $a5,$00			;CMD Channel setup
	db $c1			;Wait 2
	db $28			;Note E-4
	db $6c			;Volume 11
	db $a5,$01			;CMD Channel setup
					;Wait Repeat 2
	db $28			;Note E-4
	db $70			;Volume 15
	db $a5,$00			;CMD Channel setup
					;Wait Repeat 2
	db $60			;Release 96
	db $a5,$01			;CMD Channel setup
	db $bf			;[End-Of-Track]
.track_098:
	db $9b,$01			;CMD Drum $01
	db $c0			;Wait 1
	db $9b,$02			;CMD Drum $02
					;Wait Repeat 1
	db $9b,$03			;CMD Drum $03
					;Wait Repeat 1
	db $9b,$04			;CMD Drum $04
					;Wait Repeat 1
	db $9b,$05			;CMD Drum $05
					;Wait Repeat 1
	db $9b,$06			;CMD Drum $06
					;Wait Repeat 1
	db $9b,$07			;CMD Drum $07
					;Wait Repeat 1
	db $9b,$08			;CMD Drum $08
					;Wait Repeat 1
	db $9b,$09			;CMD Drum $09
	db $bf			;[End-Of-Track]
.track_112:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $24			;Note C-4
	db $9d,$02			;CMD Portamento fine up
	db $c0			;Wait 1
	db $9d,$04			;CMD Portamento fine up
					;Wait Repeat 1
	db $24			;Note C-4
	db $9d,$06			;CMD Portamento fine up
					;Wait Repeat 1
	db $9d,$08			;CMD Portamento fine up
					;Wait Repeat 1
	db $9d,$0a			;CMD Portamento fine up
					;Wait Repeat 1
	db $9d,$0c			;CMD Portamento fine up
					;Wait Repeat 1
	db $24			;Note C-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $24			;Note C-4
					;Wait Repeat 1
	db $9a			;CMD End 
					;Wait Repeat 1
	db $24			;Note C-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $24			;Note C-4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $24			;Note C-4
	db $9e,$02			;CMD Portamento fine up
	db $c0			;Wait 1
	db $9e,$04			;CMD Portamento fine up
					;Wait Repeat 1
	db $24			;Note C-4
	db $9e,$06			;CMD Portamento fine up
					;Wait Repeat 1
	db $9e,$08			;CMD Portamento fine up
					;Wait Repeat 1
	db $9e,$0a			;CMD Portamento fine up
					;Wait Repeat 1
	db $9e,$0c			;CMD Portamento fine up
	db $c1			;Wait 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $60			;Release 96
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_113:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $ce			;Wait 15
	db $60			;Release 96
	db $c3			;Wait 4
	db $24			;Note C-4
	db $c7			;Wait 8
	db $60			;Release 96
					;Wait Repeat 8
	db $60			;Release 96
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_115:
	db $df			;Wait 32
	db $3c			;Note C-6
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $9e,$02			;CMD Portamento fine up
	db $c0			;Wait 1
	db $9e,$04			;CMD Portamento fine up
					;Wait Repeat 1
	db $3c			;Note C-6
	db $9e,$06			;CMD Portamento fine up
					;Wait Repeat 1
	db $9e,$08			;CMD Portamento fine up
					;Wait Repeat 1
	db $9e,$0a			;CMD Portamento fine up
					;Wait Repeat 1
	db $9e,$0c			;CMD Portamento fine up
					;Wait Repeat 1
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $9a			;CMD End 
					;Wait Repeat 1
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $9d,$02			;CMD Portamento fine up
	db $c0			;Wait 1
	db $9d,$04			;CMD Portamento fine up
					;Wait Repeat 1
	db $3c			;Note C-6
	db $9d,$06			;CMD Portamento fine up
					;Wait Repeat 1
	db $9d,$08			;CMD Portamento fine up
					;Wait Repeat 1
	db $9d,$0a			;CMD Portamento fine up
					;Wait Repeat 1
	db $9d,$0c			;CMD Portamento fine up
	db $c1			;Wait 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_116:
	db $df			;Wait 32
	db $3c			;Note C-6
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $ce			;Wait 15
	db $60			;Release 96
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $c7			;Wait 8
	db $60			;Release 96
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_120:
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_122:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c2			;Wait 3
	db $24			;Note C-4
	db $9f			;CMD Note link
	db $c1			;Wait 2
	db $24			;Note C-4
	db $9f			;CMD Note link
	db $c0			;Wait 1
	db $28			;Note E-4
	db $9f			;CMD Note link
	db $c1			;Wait 2
	db $24			;Note C-4
	db $9f			;CMD Note link
	db $c3			;Wait 4
	db $60			;Release 96
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_123:
	db $cf			;Wait 16
	db $24			;Note C-4
	db $70			;Volume 15
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $30			;Note C-5
	db $9f			;CMD Note link
	db $c0			;Wait 1
	db $24			;Note C-4
	db $9f			;CMD Note link
	db $c1			;Wait 2
	db $24			;Note C-4
	db $9f			;CMD Note link
	db $c0			;Wait 1
	db $28			;Note E-4
	db $9f			;CMD Note link
	db $c1			;Wait 2
	db $24			;Note C-4
	db $9f			;CMD Note link
	db $c2			;Wait 3
	db $60			;Release 96
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_128:
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_130:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $a0,$02			;CMD Track detune
					;Wait Repeat 1
	db $a0,$04			;CMD Track detune
					;Wait Repeat 1
	db $24			;Note C-4
	db $a0,$06			;CMD Track detune
					;Wait Repeat 1
	db $a0,$04			;CMD Track detune
					;Wait Repeat 1
	db $a0,$08			;CMD Track detune
					;Wait Repeat 1
	db $a0,$0a			;CMD Track detune
					;Wait Repeat 1
	db $a0,$00			;CMD Track detune
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
	db $a0,$02			;CMD Track detune
					;Wait Repeat 1
	db $a0,$04			;CMD Track detune
					;Wait Repeat 1
	db $24			;Note C-4
	db $a0,$06			;CMD Track detune
					;Wait Repeat 1
	db $a0,$04			;CMD Track detune
					;Wait Repeat 1
	db $a0,$08			;CMD Track detune
					;Wait Repeat 1
	db $a0,$0a			;CMD Track detune
					;Wait Repeat 1
	db $a0,$00			;CMD Track detune
					;Wait Repeat 1
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_136:
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_139:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c7			;Wait 8
	db $24			;Note C-4
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_144:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_146:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $a3,$00			;CMD GG tone panning
	db $c4			;Wait 5
	db $a3,$01			;CMD GG tone panning
					;Wait Repeat 5
	db $a3,$02			;CMD GG tone panning
	db $c5			;Wait 6
	db $a3,$03			;CMD GG tone panning
					;Wait Repeat 6
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_154:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $a4,$00			;CMD GG noise panning
	db $c4			;Wait 5
	db $a4,$01			;CMD GG noise panning
					;Wait Repeat 5
	db $a4,$02			;CMD GG noise panning
	db $c5			;Wait 6
	db $a4,$03			;CMD GG noise panning
					;Wait Repeat 6
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_160:
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_161:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $60			;Release 96
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_162:
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $98,$00			;CMD Note cut delay
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $98,$0f			;CMD Note cut delay
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $98,$00			;CMD Note cut delay
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $98,$0f			;CMD Note cut delay
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_163:
	db $ca			;Wait 11
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $60			;Release 96
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_164:
	db $ca			;Wait 11
	db $24			;Note C-4
	db $6e			;Volume 13
	db $71			;Instrument 0
	db $c0			;Wait 1
	db $98,$00			;CMD Note cut delay
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $98,$0f			;CMD Note cut delay
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $98,$00			;CMD Note cut delay
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $98,$0f			;CMD Note cut delay
	db $c5			;Wait 6
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
	db $99,$0f			;CMD Note delay
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6e			;Volume 13
	db $99,$0f			;CMD Note delay
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6e			;Volume 13
	db $99,$0f			;CMD Note delay
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $24			;Note C-4
	db $6e			;Volume 13
	db $99,$0f			;CMD Note delay
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $60			;Release 96
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_171:
	db $cc			;Wait 13
	db $24			;Note C-4
	db $73			;Instrument 2
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
	db $99,$02			;CMD Note delay
	db $c0			;Wait 1
	db $60			;Release 96
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_172:
	db $cc			;Wait 13
	db $24			;Note C-4
	db $73			;Instrument 2
	db $99,$02			;CMD Note delay
	db $c0			;Wait 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $99,$04			;CMD Note delay
	db $c0			;Wait 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $99,$0e			;CMD Note delay
	db $c0			;Wait 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $99,$0f			;CMD Note delay
	db $c0			;Wait 1
	db $60			;Release 96
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]

