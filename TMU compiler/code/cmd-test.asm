; Song: TriloTracker v0.10.B1 SMS PSG+FM
; By:   Richard Cornelisse      (c) 2020

; [ Song start data ]
	db $0c					; Initial song speed.
	dw .customvoice_start			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_001, .track_002, .track_003, .track_004, .track_005, .track_006, .track_007	; Step:001 Pattern:000
	dw .track_008, .track_009, .track_010, .track_011, .track_012, .track_013, .track_014, .track_015	; Step:002 Pattern:001
	dw .track_016, .track_017, .track_018, .track_019, .track_020, .track_021, .track_022, .track_023	; Step:003 Pattern:002
	dw .track_024, .track_025, .track_026, .track_027, .track_028, .track_029, .track_030, .track_031	; Step:004 Pattern:003
	dw .track_032, .track_033, .track_034, .track_035, .track_036, .track_037, .track_038, .track_039	; Step:005 Pattern:004
	dw .track_040, .track_041, .track_042, .track_043, .track_044, .track_045, .track_046, .track_047	; Step:006 Pattern:005
	dw .track_048, .track_049, .track_050, .track_051, .track_052, .track_053, .track_054, .track_055	; Step:007 Pattern:006
	dw .track_056, .track_057, .track_058, .track_059, .track_060, .track_061, .track_062, .track_063	; Step:008 Pattern:007
	dw .track_064, .track_065, .track_066, .track_067, .track_068, .track_069, .track_070, .track_071	; Step:009 Pattern:008
	dw .track_072, .track_073, .track_074, .track_075, .track_076, .track_077, .track_078, .track_079	; Step:010 Pattern:009
	dw .track_080, .track_081, .track_082, .track_083, .track_084, .track_085, .track_086, .track_087	; Step:011 Pattern:010
	dw .track_088, .track_089, .track_090, .track_091, .track_092, .track_093, .track_094, .track_095	; Step:012 Pattern:011
	dw .track_096, .track_097, .track_098, .track_099, .track_100, .track_101, .track_102, .track_103	; Step:013 Pattern:012
	dw .track_104, .track_105, .track_106, .track_107, .track_108, .track_109, .track_110, .track_111	; Step:014 Pattern:013
	dw .track_112, .track_113, .track_114, .track_115, .track_116, .track_117, .track_118, .track_119	; Step:015 Pattern:014
	dw .track_120, .track_121, .track_122, .track_123, .track_124, .track_125, .track_126, .track_127	; Step:016 Pattern:015
	dw .track_128, .track_129, .track_130, .track_131, .track_132, .track_133, .track_134, .track_135	; Step:017 Pattern:016
	dw .track_136, .track_137, .track_138, .track_139, .track_140, .track_141, .track_142, .track_143	; Step:018 Pattern:017
	dw .track_144, .track_145, .track_146, .track_147, .track_148, .track_149, .track_150, .track_151	; Step:019 Pattern:018
	dw .track_152, .track_153, .track_154, .track_155, .track_156, .track_157, .track_158, .track_159	; Step:020 Pattern:019
	dw .track_160, .track_161, .track_162, .track_163, .track_164, .track_165, .track_166, .track_167	; Step:021 Pattern:020
	dw .track_168, .track_169, .track_170, .track_171, .track_172, .track_173, .track_174, .track_175	; Step:022 Pattern:021
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
	dw .instrument_01				;                 
	dw .instrument_02				;                 
	dw .instrument_03				;                 
	dw .instrument_04				;                 

.instrument_01:					;                 
	db $00					; FM Voice 0
.rst_i01:
	db $11,$0f                		; 00010001

.instrument_02:					;                 
	db $00					; FM Voice 0
	db $11,$0f                		; 00010001
.rst_i02:
	db $10                    		; 00010000
	db $10                    		; 00010000
	db $10                    		; 00010000
	db $10                    		; 00010000
	db $10                    		; 00010000
	db $10                    		; 00010000
	db $13,$ff                		; 00010011

.instrument_03:					;                 
	db $00					; FM Voice 0
.rst_i03:
	db $11,$0f                		; 00010001

.instrument_04:					;                 
	db $00					; FM Voice 0
.rst_i04:
	db $e1,$00,$0f            		; 11100001


; [ Song track data ]
.track_000:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $91,$47			;CMD Arpeggio
	db $c4			;Wait 4
	db $2e			;Note 46
	db $c4			;Wait 4
	db $2c			;Note 44
	db $c2			;Wait 2
	db $91,$35			;CMD Arpeggio
	db $c2			;Wait 2
	db $61			;Note 97
	db $c4			;Wait 4
	db $25			;Note 37
	db $c4			;Wait 4
	db $25			;Note 37
	db $c1			;Wait 1
	db $91,$40			;CMD Arpeggio
	db $c1			;Wait 1
	db $91,$50			;CMD Arpeggio
	db $c1			;Wait 1
	db $91,$60			;CMD Arpeggio
	db $c1			;Wait 1
	db $91,$70			;CMD Arpeggio
	db $c1			;Wait 1
	db $91,$80			;CMD Arpeggio
	db $c1			;Wait 1
	db $91,$90			;CMD Arpeggio
	db $c1			;Wait 1
	db $91,$a0			;CMD Arpeggio
	db $c1			;Wait 1
	db $91,$b0			;CMD Arpeggio
	db $c1			;Wait 1
	db $91,$c0			;CMD Arpeggio
	db $c1			;Wait 1
	db $91,$d0			;CMD Arpeggio
	db $c1			;Wait 1
	db $91,$e0			;CMD Arpeggio
	db $c1			;Wait 1
	db $91,$f0			;CMD Arpeggio
	db $c3			;Wait 3
	db $9b			;CMD End 
	db $c1			;Wait 1
	db $2c			;Note 44
	db $c3			;Wait 3
	db $61			;Note 97
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_001:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_002:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_003:
	db $64			;Instrument 1
	db $90			;Volume 15
	db $e8			;Wait 40
	db $31			;Note 49
	db $91,$14			;CMD Arpeggio
	db $c4			;Wait 4
	db $91,$20			;CMD Arpeggio
	db $c2			;Wait 2
	db $91,$47			;CMD Arpeggio
	db $c2			;Wait 2
	db $3d			;Note 61
	db $c4			;Wait 4
	db $9b			;CMD End 
	db $c4			;Wait 4
	db $61			;Note 97
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_004:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_005:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_006:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_007:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_008:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $93,$01			;CMD Portamento down
	db $c3			;Wait 3
	db $25			;Note 37
	db $c3			;Wait 3
	db $35			;Note 53
	db $c2			;Wait 2
	db $2c			;Note 44
	db $c1			;Wait 1
	db $2e			;Note 46
	db $c1			;Wait 1
	db $30			;Note 48
	db $c1			;Wait 1
	db $61			;Note 97
	db $c1			;Wait 1
	db $0f			;Note 15
	db $c6			;Wait 6
	db $0d			;Note 13
	db $93,$10			;CMD Portamento down
	db $c4			;Wait 4
	db $93,$01			;CMD Portamento down
	db $c3			;Wait 3
	db $9b			;CMD End 
	db $c3			;Wait 3
	db $61			;Note 97
	db $e3			;Wait 36
	db $bf			;[End-Of-Track]
.track_009:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_010:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_011:
	db $e0			;Wait 32
	db $3d			;Note 61
	db $64			;Instrument 1
	db $90			;Volume 15
	db $93,$01			;CMD Portamento down
	db $c3			;Wait 3
	db $3d			;Note 61
	db $c3			;Wait 3
	db $4d			;Note 77
	db $c2			;Wait 2
	db $44			;Note 68
	db $c1			;Wait 1
	db $46			;Note 70
	db $c1			;Wait 1
	db $48			;Note 72
	db $c1			;Wait 1
	db $61			;Note 97
	db $c1			;Wait 1
	db $27			;Note 39
	db $c6			;Wait 6
	db $25			;Note 37
	db $93,$10			;CMD Portamento down
	db $c4			;Wait 4
	db $93,$01			;CMD Portamento down
	db $c3			;Wait 3
	db $9b			;CMD End 
	db $c2			;Wait 2
	db $61			;Note 97
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_012:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_013:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_014:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_015:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_016:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $92,$01			;CMD Portamento up
	db $c3			;Wait 3
	db $25			;Note 37
	db $c3			;Wait 3
	db $35			;Note 53
	db $c2			;Wait 2
	db $2c			;Note 44
	db $c1			;Wait 1
	db $2e			;Note 46
	db $c1			;Wait 1
	db $30			;Note 48
	db $c1			;Wait 1
	db $61			;Note 97
	db $c1			;Wait 1
	db $29			;Note 41
	db $c6			;Wait 6
	db $3d			;Note 61
	db $92,$09			;CMD Portamento up
	db $c4			;Wait 4
	db $92,$01			;CMD Portamento up
	db $c3			;Wait 3
	db $9b			;CMD End 
	db $c3			;Wait 3
	db $61			;Note 97
	db $e3			;Wait 36
	db $bf			;[End-Of-Track]
.track_017:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_018:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_019:
	db $e0			;Wait 32
	db $25			;Note 37
	db $64			;Instrument 1
	db $90			;Volume 15
	db $92,$01			;CMD Portamento up
	db $c3			;Wait 3
	db $25			;Note 37
	db $c3			;Wait 3
	db $35			;Note 53
	db $c2			;Wait 2
	db $2c			;Note 44
	db $c1			;Wait 1
	db $2e			;Note 46
	db $c1			;Wait 1
	db $30			;Note 48
	db $c1			;Wait 1
	db $61			;Note 97
	db $c1			;Wait 1
	db $29			;Note 41
	db $c6			;Wait 6
	db $35			;Note 53
	db $92,$09			;CMD Portamento up
	db $c4			;Wait 4
	db $92,$01			;CMD Portamento up
	db $c3			;Wait 3
	db $9b			;CMD End 
	db $c3			;Wait 3
	db $61			;Note 97
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_020:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_021:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_022:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_023:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_024:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $c3			;Wait 3
	db $29			;Note 41
	db $94,$04			;CMD Portamento tone
	db $c2			;Wait 2
	db $29			;Note 41
	db $c2			;Wait 2
	db $2e			;Note 46
	db $c3			;Wait 3
	db $61			;Note 97
	db $c1			;Wait 1
	db $42			;Note 66
	db $c3			;Wait 3
	db $25			;Note 37
	db $94,$0f			;CMD Portamento tone
	db $c3			;Wait 3
	db $27			;Note 39
	db $c3			;Wait 3
	db $36			;Note 54
	db $c2			;Wait 2
	db $9b			;CMD End 
	db $c2			;Wait 2
	db $61			;Note 97
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_025:
	db $f0			;Wait 49
	db $bf			;[End-Of-Track]
.track_026:
	db $f0			;Wait 49
	db $bf			;[End-Of-Track]
.track_027:
	db $d8			;Wait 24
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $c3			;Wait 3
	db $29			;Note 41
	db $94,$04			;CMD Portamento tone
	db $c2			;Wait 2
	db $29			;Note 41
	db $c2			;Wait 2
	db $2e			;Note 46
	db $c3			;Wait 3
	db $61			;Note 97
	db $c1			;Wait 1
	db $42			;Note 66
	db $c3			;Wait 3
	db $25			;Note 37
	db $94,$0f			;CMD Portamento tone
	db $c3			;Wait 3
	db $33			;Note 51
	db $c1			;Wait 1
	db $9b			;CMD End 
	db $c2			;Wait 2
	db $61			;Note 97
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_028:
	db $f0			;Wait 49
	db $bf			;[End-Of-Track]
.track_029:
	db $f0			;Wait 49
	db $bf			;[End-Of-Track]
.track_030:
	db $f0			;Wait 49
	db $bf			;[End-Of-Track]
.track_031:
	db $f0			;Wait 49
	db $bf			;[End-Of-Track]
.track_032:
	db $31			;Note 49
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $95,$f4			;CMD Vibrato
	db $c2			;Wait 2
	db $35			;Note 53
	db $c2			;Wait 2
	db $2c			;Note 44
	db $c2			;Wait 2
	db $31			;Note 49
	db $c3			;Wait 3
	db $95,$10			;CMD Vibrato
	db $c5			;Wait 5
	db $95,$0c			;CMD Vibrato
	db $c2			;Wait 2
	db $61			;Note 97
	db $c1			;Wait 1
	db $31			;Note 49
	db $c3			;Wait 3
	db $9b			;CMD End 
	db $c1			;Wait 1
	db $31			;Note 49
	db $c1			;Wait 1
	db $61			;Note 97
	db $c2			;Wait 2
	db $25			;Note 37
	db $95,$5c			;CMD Vibrato
	db $c1			;Wait 1
	db $95,$0d			;CMD Vibrato
	db $c1			;Wait 1
	db $95,$0e			;CMD Vibrato
	db $c1			;Wait 1
	db $95,$0f			;CMD Vibrato
	db $c2			;Wait 2
	db $61			;Note 97
	db $e2			;Wait 35
	db $bf			;[End-Of-Track]
.track_033:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_034:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_035:
	db $e0			;Wait 32
	db $31			;Note 49
	db $64			;Instrument 1
	db $90			;Volume 15
	db $95,$f4			;CMD Vibrato
	db $c2			;Wait 2
	db $35			;Note 53
	db $c2			;Wait 2
	db $2c			;Note 44
	db $c2			;Wait 2
	db $31			;Note 49
	db $c3			;Wait 3
	db $95,$10			;CMD Vibrato
	db $c5			;Wait 5
	db $95,$0c			;CMD Vibrato
	db $c2			;Wait 2
	db $61			;Note 97
	db $c1			;Wait 1
	db $31			;Note 49
	db $c3			;Wait 3
	db $9b			;CMD End 
	db $c1			;Wait 1
	db $31			;Note 49
	db $c4			;Wait 4
	db $61			;Note 97
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_036:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_037:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_038:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_039:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_040:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $94,$0f			;CMD Portamento tone
	db $c1			;Wait 1
	db $31			;Note 49
	db $96,$08			;CMD Portamento tone + Volume slide
	db $c3			;Wait 3
	db $25			;Note 37
	db $c3			;Wait 3
	db $28			;Note 40
	db $c2			;Wait 2
	db $9b			;CMD End 
	db $c3			;Wait 3
	db $61			;Note 97
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_041:
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_042:
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_043:
	db $d0			;Wait 16
	db $25			;Note 37
	db $64			;Instrument 1
	db $90			;Volume 15
	db $c1			;Wait 1
	db $94,$0f			;CMD Portamento tone
	db $c1			;Wait 1
	db $31			;Note 49
	db $96,$0f			;CMD Portamento tone + Volume slide
	db $c1			;Wait 1
	db $96,$04			;CMD Portamento tone + Volume slide
	db $c2			;Wait 2
	db $25			;Note 37
	db $c3			;Wait 3
	db $28			;Note 40
	db $c2			;Wait 2
	db $9b			;CMD End 
	db $c3			;Wait 3
	db $61			;Note 97
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_044:
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_045:
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_046:
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_047:
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_048:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $95,$f4			;CMD Vibrato
	db $c2			;Wait 2
	db $25			;Note 37
	db $97,$02			;CMD Vibrato + Volume slide
	db $c5			;Wait 5
	db $2a			;Note 42
	db $c1			;Wait 1
	db $2c			;Note 44
	db $97,$0c			;CMD Vibrato + Volume slide
	db $c1			;Wait 1
	db $2e			;Note 46
	db $c2			;Wait 2
	db $95,$f0			;CMD Vibrato
	db $c6			;Wait 6
	db $61			;Note 97
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_049:
	db $ed			;Wait 46
	db $bf			;[End-Of-Track]
.track_050:
	db $ed			;Wait 46
	db $bf			;[End-Of-Track]
.track_051:
	db $d8			;Wait 24
	db $25			;Note 37
	db $64			;Instrument 1
	db $90			;Volume 15
	db $95,$f4			;CMD Vibrato
	db $c2			;Wait 2
	db $97,$04			;CMD Vibrato + Volume slide
	db $c5			;Wait 5
	db $2a			;Note 42
	db $c1			;Wait 1
	db $2c			;Note 44
	db $c1			;Wait 1
	db $2e			;Note 46
	db $c2			;Wait 2
	db $95,$f0			;CMD Vibrato
	db $c2			;Wait 2
	db $9b			;CMD End 
	db $c3			;Wait 3
	db $61			;Note 97
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_052:
	db $ed			;Wait 46
	db $bf			;[End-Of-Track]
.track_053:
	db $ed			;Wait 46
	db $bf			;[End-Of-Track]
.track_054:
	db $ed			;Wait 46
	db $bf			;[End-Of-Track]
.track_055:
	db $ed			;Wait 46
	db $bf			;[End-Of-Track]
.track_056:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
			;CMD 7 Unused
	db $c4			;Wait 4
	db $29			;Note 41
	db $c2			;Wait 2
			;CMD 7 Unused
	db $c2			;Wait 2
	db $2c			;Note 44
	db $c1			;Wait 1
	db $61			;Note 97
	db $c1			;Wait 1
	db $2c			;Note 44
	db $c5			;Wait 5
			;CMD 7 Unused
	db $c2			;Wait 2
	db $2c			;Note 44
	db $c4			;Wait 4
	db $61			;Note 97
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_057:
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]
.track_058:
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]
.track_059:
	db $d8			;Wait 24
	db $25			;Note 37
	db $64			;Instrument 1
	db $90			;Volume 15
			;CMD 7 Unused
	db $c4			;Wait 4
	db $29			;Note 41
	db $c2			;Wait 2
			;CMD 7 Unused
	db $c2			;Wait 2
	db $2c			;Note 44
	db $c1			;Wait 1
	db $61			;Note 97
	db $c1			;Wait 1
	db $2c			;Note 44
	db $c5			;Wait 5
			;CMD 7 Unused
	db $c2			;Wait 2
	db $2c			;Note 44
	db $c4			;Wait 4
	db $61			;Note 97
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_060:
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]
.track_061:
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]
.track_062:
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]
.track_063:
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]
.track_064:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_065:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_066:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_067:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_068:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_069:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_070:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_071:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_072:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_073:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_074:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_075:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_076:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_077:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_078:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_079:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_080:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $98,$04			;CMD Volume slide up
	db $c1			;Wait 1
	db $27			;Note 39
	db $c1			;Wait 1
	db $29			;Note 41
	db $c1			;Wait 1
	db $2a			;Note 42
	db $c1			;Wait 1
	db $2c			;Note 44
	db $c2			;Wait 2
	db $25			;Note 37
	db $8e			;Volume 13
	db $98,$06			;CMD Volume slide up
	db $c4			;Wait 4
	db $25			;Note 37
	db $8e			;Volume 13
	db $98,$0f			;CMD Volume slide up
	db $c1			;Wait 1
	db $2a			;Note 42
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $2e			;Note 46
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $61			;Note 97
	db $c2			;Wait 2
	db $25			;Note 37
	db $64			;Instrument 1
	db $89			;Volume 8
	db $98,$30			;CMD Volume slide up
	db $c1			;Wait 1
	db $27			;Note 39
	db $c1			;Wait 1
	db $29			;Note 41
	db $c1			;Wait 1
	db $2a			;Note 42
	db $c1			;Wait 1
	db $2c			;Note 44
	db $c2			;Wait 2
	db $25			;Note 37
	db $87			;Volume 6
	db $98,$60			;CMD Volume slide up
	db $c4			;Wait 4
	db $25			;Note 37
	db $85			;Volume 4
	db $98,$f0			;CMD Volume slide up
	db $c1			;Wait 1
	db $2a			;Note 42
	db $c1			;Wait 1
	db $2e			;Note 46
	db $c1			;Wait 1
	db $61			;Note 97
	db $e3			;Wait 36
	db $bf			;[End-Of-Track]
.track_081:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_082:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_083:
	db $e0			;Wait 32
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $98,$03			;CMD Volume slide up
	db $c1			;Wait 1
	db $27			;Note 39
	db $c1			;Wait 1
	db $29			;Note 41
	db $c1			;Wait 1
	db $2a			;Note 42
	db $c1			;Wait 1
	db $2c			;Note 44
	db $c2			;Wait 2
	db $25			;Note 37
	db $8e			;Volume 13
	db $98,$06			;CMD Volume slide up
	db $c4			;Wait 4
	db $25			;Note 37
	db $8e			;Volume 13
	db $98,$0f			;CMD Volume slide up
	db $c1			;Wait 1
	db $2a			;Note 42
	db $c1			;Wait 1
	db $2e			;Note 46
	db $c1			;Wait 1
	db $61			;Note 97
	db $c2			;Wait 2
	db $25			;Note 37
	db $64			;Instrument 1
	db $89			;Volume 8
	db $98,$30			;CMD Volume slide up
	db $c1			;Wait 1
	db $27			;Note 39
	db $c1			;Wait 1
	db $29			;Note 41
	db $c1			;Wait 1
	db $2a			;Note 42
	db $c1			;Wait 1
	db $2c			;Note 44
	db $c2			;Wait 2
	db $25			;Note 37
	db $87			;Volume 6
	db $98,$60			;CMD Volume slide up
	db $c4			;Wait 4
	db $25			;Note 37
	db $85			;Volume 4
	db $98,$f0			;CMD Volume slide up
	db $c1			;Wait 1
	db $2a			;Note 42
	db $c1			;Wait 1
	db $2e			;Note 46
	db $c1			;Wait 1
	db $61			;Note 97
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_084:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_085:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_086:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_087:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_088:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_089:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_090:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8c			;Volume 11
	db $a6,$01			;CMD Channel setup
	db $c1			;Wait 1
	db $95,$27			;CMD Vibrato
	db $c1			;Wait 1
	db $25			;Note 37
	db $90			;Volume 15
	db $a6,$00			;CMD Channel setup
	db $c2			;Wait 2
	db $29			;Note 41
	db $8c			;Volume 11
	db $a6,$01			;CMD Channel setup
	db $c2			;Wait 2
	db $29			;Note 41
	db $90			;Volume 15
	db $a6,$00			;CMD Channel setup
	db $c2			;Wait 2
	db $61			;Note 97
	db $a6,$01			;CMD Channel setup
	db $c0			;Wait 1
	db $bf			;[End-Of-Track]
.track_091:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_092:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_093:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_094:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_095:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_096:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_097:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_098:
	db $9c,$01			;CMD Drum $01
	db $c1			;Wait 1
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 1
	db $9c,$03			;CMD Drum $03
	db $c1			;Wait 1
	db $9c,$04			;CMD Drum $04
	db $c1			;Wait 1
	db $9c,$05			;CMD Drum $05
	db $c1			;Wait 1
	db $9c,$06			;CMD Drum $06
	db $c1			;Wait 1
	db $9c,$07			;CMD Drum $07
	db $c1			;Wait 1
	db $9c,$08			;CMD Drum $08
	db $c1			;Wait 1
	db $9c,$09			;CMD Drum $09
	db $c0			;Wait 1
	db $bf			;[End-Of-Track]
.track_099:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_100:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_101:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_102:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_103:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_104:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_105:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_106:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_107:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_108:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_109:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_110:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_111:
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_112:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $c2			;Wait 2
	db $25			;Note 37
	db $9f,$02			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9f,$04			;CMD Portamento fine up
	db $c1			;Wait 1
	db $25			;Note 37
	db $9f,$06			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9f,$08			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9f,$0a			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9f,$0c			;CMD Portamento fine up
	db $c1			;Wait 1
	db $25			;Note 37
	db $c2			;Wait 2
	db $61			;Note 97
	db $c1			;Wait 1
	db $25			;Note 37
	db $c1			;Wait 1
	db $9b			;CMD End 
	db $c1			;Wait 1
	db $25			;Note 37
	db $c2			;Wait 2
	db $61			;Note 97
	db $c4			;Wait 4
	db $25			;Note 37
	db $8e			;Volume 13
	db $c2			;Wait 2
	db $25			;Note 37
	db $9e,$02			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9e,$04			;CMD Portamento fine up
	db $c1			;Wait 1
	db $25			;Note 37
	db $9e,$06			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9e,$08			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9e,$0a			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9e,$0c			;CMD Portamento fine up
	db $c2			;Wait 2
	db $25			;Note 37
	db $c2			;Wait 2
	db $61			;Note 97
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_113:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $cf			;Wait 15
	db $61			;Note 97
	db $c4			;Wait 4
	db $25			;Note 37
	db $c8			;Wait 8
	db $61			;Note 97
	db $c8			;Wait 8
	db $61			;Note 97
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_114:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_115:
	db $e0			;Wait 32
	db $3d			;Note 61
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $c2			;Wait 2
	db $3d			;Note 61
	db $9f,$02			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9f,$04			;CMD Portamento fine up
	db $c1			;Wait 1
	db $3d			;Note 61
	db $9f,$06			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9f,$08			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9f,$0a			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9f,$0c			;CMD Portamento fine up
	db $c1			;Wait 1
	db $3d			;Note 61
	db $c2			;Wait 2
	db $61			;Note 97
	db $c1			;Wait 1
	db $3d			;Note 61
	db $c1			;Wait 1
	db $9b			;CMD End 
	db $c1			;Wait 1
	db $3d			;Note 61
	db $c2			;Wait 2
	db $61			;Note 97
	db $c4			;Wait 4
	db $3d			;Note 61
	db $8e			;Volume 13
	db $c2			;Wait 2
	db $3d			;Note 61
	db $9e,$02			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9e,$04			;CMD Portamento fine up
	db $c1			;Wait 1
	db $3d			;Note 61
	db $9e,$06			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9e,$08			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9e,$0a			;CMD Portamento fine up
	db $c1			;Wait 1
	db $9e,$0c			;CMD Portamento fine up
	db $c2			;Wait 2
	db $3d			;Note 61
	db $c2			;Wait 2
	db $61			;Note 97
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_116:
	db $e0			;Wait 32
	db $3d			;Note 61
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $cf			;Wait 15
	db $61			;Note 97
	db $c4			;Wait 4
	db $3d			;Note 61
	db $c8			;Wait 8
	db $61			;Note 97
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_117:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_118:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_119:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_120:
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_121:
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_122:
	db $25			;Note 37
	db $65			;Instrument 2
	db $8e			;Volume 13
	db $c3			;Wait 3
	db $25			;Note 37
	db $a0			;CMD Note link
	db $c2			;Wait 2
	db $25			;Note 37
	db $a0			;CMD Note link
	db $c1			;Wait 1
	db $29			;Note 41
	db $a0			;CMD Note link
	db $c2			;Wait 2
	db $25			;Note 37
	db $a0			;CMD Note link
	db $c4			;Wait 4
	db $61			;Note 97
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_123:
	db $d0			;Wait 16
	db $25			;Note 37
	db $65			;Instrument 2
	db $90			;Volume 15
	db $c3			;Wait 3
	db $25			;Note 37
	db $a0			;CMD Note link
	db $c2			;Wait 2
	db $25			;Note 37
	db $a0			;CMD Note link
	db $c1			;Wait 1
	db $29			;Note 41
	db $a0			;CMD Note link
	db $c2			;Wait 2
	db $25			;Note 37
	db $a0			;CMD Note link
	db $c3			;Wait 3
	db $61			;Note 97
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_124:
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_125:
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_126:
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_127:
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_128:
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_129:
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_130:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $a1,$02			;CMD Track detune
	db $c1			;Wait 1
	db $a1,$04			;CMD Track detune
	db $c1			;Wait 1
	db $25			;Note 37
	db $a1,$06			;CMD Track detune
	db $c1			;Wait 1
	db $a1,$04			;CMD Track detune
	db $c1			;Wait 1
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 1
	db $a1,$0a			;CMD Track detune
	db $c1			;Wait 1
	db $a1,$00			;CMD Track detune
	db $c1			;Wait 1
	db $61			;Note 97
	db $d3			;Wait 20
	db $bf			;[End-Of-Track]
.track_131:
	db $d0			;Wait 16
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $a1,$02			;CMD Track detune
	db $c1			;Wait 1
	db $a1,$04			;CMD Track detune
	db $c1			;Wait 1
	db $25			;Note 37
	db $a1,$06			;CMD Track detune
	db $c1			;Wait 1
	db $a1,$04			;CMD Track detune
	db $c1			;Wait 1
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 1
	db $a1,$0a			;CMD Track detune
	db $c1			;Wait 1
	db $a1,$00			;CMD Track detune
	db $c1			;Wait 1
	db $61			;Note 97
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_132:
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_133:
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_134:
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_135:
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_136:
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_137:
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_138:
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_139:
	db $25			;Note 37
	db $66			;Instrument 3
	db $8e			;Volume 13
	db $c8			;Wait 8
	db $25			;Note 37
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_140:
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_141:
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_142:
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_143:
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_144:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_145:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_146:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $c2			;Wait 2
	db $a4,$00			;CMD GG tone panning
	db $c5			;Wait 5
	db $a4,$01			;CMD GG tone panning
	db $c5			;Wait 5
	db $a4,$02			;CMD GG tone panning
	db $c6			;Wait 6
	db $a4,$03			;CMD GG tone panning
	db $c6			;Wait 6
	db $61			;Note 97
	db $c0			;Wait 1
	db $bf			;[End-Of-Track]
.track_147:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_148:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_149:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_150:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_151:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_152:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_153:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_154:
	db $25			;Note 37
	db $67			;Instrument 4
	db $8e			;Volume 13
	db $c2			;Wait 2
	db $a5,$00			;CMD GG noise panning
	db $c5			;Wait 5
	db $a5,$01			;CMD GG noise panning
	db $c5			;Wait 5
	db $a5,$02			;CMD GG noise panning
	db $c6			;Wait 6
	db $a5,$03			;CMD GG noise panning
	db $c6			;Wait 6
	db $61			;Note 97
	db $c0			;Wait 1
	db $bf			;[End-Of-Track]
.track_155:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_156:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_157:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_158:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_159:
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_160:
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_161:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $61			;Note 97
	db $c1			;Wait 1
	db $25			;Note 37
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $61			;Note 97
	db $c1			;Wait 1
	db $25			;Note 37
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $61			;Note 97
	db $c1			;Wait 1
	db $25			;Note 37
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $61			;Note 97
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_162:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $99,$00			;CMD Note cut delay
	db $c1			;Wait 1
	db $25			;Note 37
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $99,$0f			;CMD Note cut delay
	db $c1			;Wait 1
	db $25			;Note 37
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $99,$00			;CMD Note cut delay
	db $c1			;Wait 1
	db $25			;Note 37
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $99,$0f			;CMD Note cut delay
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_163:
	db $cb			;Wait 11
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $61			;Note 97
	db $c1			;Wait 1
	db $25			;Note 37
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $61			;Note 97
	db $c1			;Wait 1
	db $25			;Note 37
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $61			;Note 97
	db $c1			;Wait 1
	db $25			;Note 37
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $61			;Note 97
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_164:
	db $cb			;Wait 11
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $99,$00			;CMD Note cut delay
	db $c1			;Wait 1
	db $25			;Note 37
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $99,$0f			;CMD Note cut delay
	db $c1			;Wait 1
	db $25			;Note 37
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $99,$00			;CMD Note cut delay
	db $c1			;Wait 1
	db $25			;Note 37
	db $8e			;Volume 13
	db $c1			;Wait 1
	db $99,$0f			;CMD Note cut delay
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_165:
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_166:
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_167:
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_168:
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_169:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $9a,$02			;CMD Note delay
	db $c3			;Wait 3
	db $25			;Note 37
	db $8e			;Volume 13
	db $9a,$02			;CMD Note delay
	db $c3			;Wait 3
	db $25			;Note 37
	db $8e			;Volume 13
	db $9a,$02			;CMD Note delay
	db $c3			;Wait 3
	db $25			;Note 37
	db $8e			;Volume 13
	db $9a,$02			;CMD Note delay
	db $d2			;Wait 19
	db $bf			;[End-Of-Track]
.track_170:
	db $25			;Note 37
	db $64			;Instrument 1
	db $8e			;Volume 13
	db $9a,$02			;CMD Note delay
	db $c3			;Wait 3
	db $25			;Note 37
	db $8e			;Volume 13
	db $9a,$04			;CMD Note delay
	db $c3			;Wait 3
	db $25			;Note 37
	db $8e			;Volume 13
	db $9a,$0e			;CMD Note delay
	db $c3			;Wait 3
	db $25			;Note 37
	db $8e			;Volume 13
	db $9a,$0f			;CMD Note delay
	db $d2			;Wait 19
	db $bf			;[End-Of-Track]
.track_171:
	db $cd			;Wait 13
	db $25			;Note 37
	db $66			;Instrument 3
	db $9a,$02			;CMD Note delay
	db $c3			;Wait 3
	db $25			;Note 37
	db $9a,$02			;CMD Note delay
	db $c3			;Wait 3
	db $25			;Note 37
	db $9a,$02			;CMD Note delay
	db $c3			;Wait 3
	db $25			;Note 37
	db $9a,$02			;CMD Note delay
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_172:
	db $cd			;Wait 13
	db $25			;Note 37
	db $66			;Instrument 3
	db $9a,$02			;CMD Note delay
	db $c3			;Wait 3
	db $25			;Note 37
	db $9a,$04			;CMD Note delay
	db $c3			;Wait 3
	db $25			;Note 37
	db $9a,$0e			;CMD Note delay
	db $c3			;Wait 3
	db $25			;Note 37
	db $9a,$0f			;CMD Note delay
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_173:
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_174:
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_175:
	db $db			;Wait 28
	db $bf			;[End-Of-Track]

