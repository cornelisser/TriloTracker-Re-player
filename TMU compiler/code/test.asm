; Song: Moontheme - Ducktales           
; By:   Org. cover by Tallboyy          

; [ Song start data ]
	db $08					; Initial song speed.
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
	dw .track_120, .track_121, .track_122, .track_123, .track_124, .track_125, .track_126, .track_127	; Step:017 Pattern:015
	dw 0x0000, .restart			; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_01				; Instrument 1    
	dw .instrument_02				;                 
	dw .instrument_03				;                 
	dw .instrument_04				;                 
	dw .instrument_05				;                 
	dw .instrument_06				;                 

.instrument_01:					; Instrument 1    
	db $00					; FM Voice 0
	db $11,$0f                		; 00010001
	db $13,$f1                		; 00010011
	db $13,$f1                		; 00010011
	db $13,$f1                		; 00010011
	db $11,$04                		; 00010001
	db $13,$f8                		; 00010011
	db $13,$f8                		; 00010011
	db $11,$08                		; 00010001
.rst_i01:
	db $11,$04                		; 00010001

.instrument_02:					;                 
	db $00					; FM Voice 0
.rst_i02:
	db $11,$0f                		; 00010001
	db $11,$0f                		; 00010001
	db $11,$0f                		; 00010001
	db $11,$0f                		; 00010001
	db $11,$0f                		; 00010001
	db $11,$0f                		; 00010001
	db $11,$0f                		; 00010001
	db $11,$0e                		; 00010001

.instrument_03:					;                 
	db $00					; FM Voice 0
	db $11,$0f                		; 00010001
	db $11,$0e                		; 00010001
	db $11,$0e                		; 00010001
.rst_i03:
	db $10                    		; 00010000
	db $10                    		; 00010000
	db $13,$ff                		; 00010011

.instrument_04:					;                 
	db $00					; FM Voice 0
	db $11,$0f                		; 00010001
	db $11,$0e                		; 00010001
.rst_i04:
	db $11,$0c                		; 00010001
	db $15,$0c        ,$01,$00		; 00010101
	db $11,$0c                		; 00010001
	db $15,$0c        ,$ff,$ff		; 00010101

.instrument_05:					;                 
	db $00					; FM Voice 0
	db $a1,$00,$11            		; 10100001
	db $a0    ,$13            		; 10100000
	db $a0    ,$15            		; 10100000
	db $a0    ,$17            		; 10100000
	db $a0    ,$19            		; 10100000
	db $a0    ,$1b            		; 10100000
	db $a0    ,$1d            		; 10100000
.rst_i05:
	db $a0    ,$1f            		; 10100000

.instrument_06:					;                 
	db $00					; FM Voice 0
	db $11,$0d                		; 00010001
	db $11,$0e                		; 00010001
	db $11,$0f                		; 00010001
	db $11,$0b                		; 00010001
.rst_i06:
	db $11,$08                		; 00010001


; [ Song track data ]
.track_000:
	db $36			;Note 54
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $3d			;Note 61
	db $c1			;Wait 2
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_001:
	db $61			;Sustain 97
	db $6f			;Volume 13
	db $75			;Instrument 3
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_002:
	db $61			;Sustain 97
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_003:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_004:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_005:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_006:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_007:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_008:
	db $36			;Note 54
	db $3d			;Note 61
	db $c1			;Wait 2
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_009:
	db $2a			;Note 42
	db $6f			;Volume 13
	db $75			;Instrument 3
	db $c4			;Wait 5
	db $31			;Note 49
	db $c5			;Wait 6
	db $36			;Note 54
	db $d0			;Wait 17
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_010:
	db $25			;Note 37
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $c5			;Wait 6
	db $94,$85			;CMD Vibrato
	db $ca			;Wait 11
	db $2a			;Note 42
	db $9a			;CMD End 
	db $c3			;Wait 4
	db $2c			;Note 44
					;Wait Repeat
	db $2f			;Note 47
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_011:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_012:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_013:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_014:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_015:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_016:
	db $36			;Note 54
	db $3d			;Note 61
	db $c1			;Wait 2
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_017:
	db $28			;Note 40
	db $75			;Instrument 3
	db $c4			;Wait 5
	db $2f			;Note 47
	db $c5			;Wait 6
	db $34			;Note 52
	db $d0			;Wait 17
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_018:
	db $2f			;Note 47
	db $74			;Instrument 2
	db $c4			;Wait 5
	db $2e			;Note 46
	db $c1			;Wait 2
	db $2e			;Note 46
	db $c4			;Wait 5
	db $94,$85			;CMD Vibrato
	db $c8			;Wait 9
	db $2c			;Note 44
	db $9a			;CMD End 
	db $c3			;Wait 4
	db $2a			;Note 42
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_019:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_020:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_021:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_022:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_023:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_024:
	db $36			;Note 54
	db $3d			;Note 61
	db $c1			;Wait 2
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_025:
	db $27			;Note 39
	db $c4			;Wait 5
	db $2e			;Note 46
	db $c5			;Wait 6
	db $33			;Note 51
	db $d0			;Wait 17
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_026:
	db $31			;Note 49
	db $ca			;Wait 11
	db $2a			;Note 42
	db $cb			;Wait 12
	db $36			;Note 54
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_027:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_028:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_029:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_030:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_031:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_032:
	db $36			;Note 54
	db $3d			;Note 61
	db $c1			;Wait 2
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_033:
	db $26			;Note 38
	db $c4			;Wait 5
	db $2d			;Note 45
	db $c5			;Wait 6
	db $32			;Note 50
	db $d0			;Wait 17
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_034:
	db $c6			;Wait 7
	db $94,$84			;CMD Vibrato
	db $d0			;Wait 17
	db $38			;Note 56
	db $9a			;CMD End 
	db $c3			;Wait 4
	db $36			;Note 54
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_035:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_036:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_037:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_038:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_039:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_040:
	db $36			;Note 54
	db $3d			;Note 61
	db $c1			;Wait 2
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_041:
	db $36			;Note 54
	db $de			;Wait 31
	db $bf			;[End-Of-Track]
.track_042:
	db $3d			;Note 61
	db $cc			;Wait 13
	db $94,$82			;CMD Vibrato
	db $d1			;Wait 18
	db $bf			;[End-Of-Track]
.track_043:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_044:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_045:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_046:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_047:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_048:
	db $36			;Note 54
	db $3d			;Note 61
	db $c1			;Wait 2
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_049:
	db $1e			;Note 30
	db $6f			;Volume 13
	db $78			;Instrument 6
	db $1e			;Note 30
	db $c1			;Wait 2
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1d			;Note 29
					;Wait Repeat
	db $1d			;Note 29
					;Wait Repeat
	db $1d			;Note 29
					;Wait Repeat
	db $1d			;Note 29
					;Wait Repeat
	db $1d			;Note 29
					;Wait Repeat
	db $1d			;Note 29
					;Wait Repeat
	db $1d			;Note 29
					;Wait Repeat
	db $1d			;Note 29
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_050:
	db $60			;Release 96
	db $71			;Volume 15
	db $76			;Instrument 4
	db $9a			;CMD End 
	db $c6			;Wait 7
	db $22			;Note 34
	db $c1			;Wait 2
	db $23			;Note 35
					;Wait Repeat
	db $25			;Note 37
	db $78			;Instrument 6
					;Wait Repeat
	db $25			;Note 37
	db $76			;Instrument 4
	db $c5			;Wait 6
	db $2a			;Note 42
	db $c3			;Wait 4
	db $29			;Note 41
					;Wait Repeat
	db $2a			;Note 42
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_051:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_052:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_053:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_054:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_055:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_056:
	db $36			;Note 54
	db $3d			;Note 61
	db $c1			;Wait 2
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_057:
	db $1b			;Note 27
	db $1b			;Note 27
	db $c1			;Wait 2
	db $1b			;Note 27
					;Wait Repeat
	db $1b			;Note 27
					;Wait Repeat
	db $1b			;Note 27
					;Wait Repeat
	db $1b			;Note 27
					;Wait Repeat
	db $1b			;Note 27
					;Wait Repeat
	db $1b			;Note 27
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_058:
	db $2c			;Note 44
	db $c2			;Wait 3
	db $2e			;Note 46
	db $c1			;Wait 2
	db $2a			;Note 42
	db $c9			;Wait 10
	db $94,$85			;CMD Vibrato
	db $cb			;Wait 12
	db $29			;Note 41
	db $9a			;CMD End 
	db $c1			;Wait 2
	db $2a			;Note 42
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_059:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_060:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_061:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_062:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_063:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_064:
	db $36			;Note 54
	db $3d			;Note 61
	db $c1			;Wait 2
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_065:
	db $23			;Note 35
	db $23			;Note 35
	db $c1			;Wait 2
	db $23			;Note 35
					;Wait Repeat
	db $23			;Note 35
					;Wait Repeat
	db $23			;Note 35
					;Wait Repeat
	db $23			;Note 35
					;Wait Repeat
	db $23			;Note 35
					;Wait Repeat
	db $23			;Note 35
					;Wait Repeat
	db $24			;Note 36
					;Wait Repeat
	db $24			;Note 36
					;Wait Repeat
	db $24			;Note 36
					;Wait Repeat
	db $24			;Note 36
					;Wait Repeat
	db $24			;Note 36
					;Wait Repeat
	db $24			;Note 36
					;Wait Repeat
	db $24			;Note 36
					;Wait Repeat
	db $24			;Note 36
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_066:
	db $31			;Note 49
	db $76			;Instrument 4
	db $c4			;Wait 5
	db $2a			;Note 42
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $2a			;Note 42
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $94,$85			;CMD Vibrato
	db $cb			;Wait 12
	db $2a			;Note 42
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $2a			;Note 42
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_067:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_068:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_069:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_070:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_071:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_072:
	db $36			;Note 54
	db $3d			;Note 61
	db $c1			;Wait 2
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_073:
	db $19			;Note 25
	db $19			;Note 25
	db $c1			;Wait 2
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $19			;Note 25
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_074:
	db $2a			;Note 42
	db $76			;Instrument 4
	db $c6			;Wait 7
	db $60			;Release 96
	db $c1			;Wait 2
	db $2c			;Note 44
					;Wait Repeat
	db $2a			;Note 42
					;Wait Repeat
	db $29			;Note 41
	db $c7			;Wait 8
	db $94,$85			;CMD Vibrato
	db $c8			;Wait 9
	db $60			;Release 96
	db $9a			;CMD End 
	db $bf			;[End-Of-Track]
.track_075:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_076:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_077:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_078:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_079:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_080:
	db $36			;Note 54
	db $3d			;Note 61
	db $c1			;Wait 2
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_081:
	db $1e			;Note 30
	db $1e			;Note 30
	db $c1			;Wait 2
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1c			;Note 28
					;Wait Repeat
	db $1c			;Note 28
					;Wait Repeat
	db $1c			;Note 28
					;Wait Repeat
	db $1c			;Note 28
					;Wait Repeat
	db $1c			;Note 28
					;Wait Repeat
	db $1c			;Note 28
					;Wait Repeat
	db $1c			;Note 28
					;Wait Repeat
	db $1c			;Note 28
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_082:
	db $22			;Note 34
	db $76			;Instrument 4
	db $c6			;Wait 7
	db $60			;Release 96
	db $c1			;Wait 2
	db $20			;Note 32
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $25			;Note 37
	db $c7			;Wait 8
	db $60			;Release 96
	db $c1			;Wait 2
	db $2a			;Note 42
	db $c3			;Wait 4
	db $2c			;Note 44
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_083:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_084:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_085:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_086:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_087:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_088:
	db $36			;Note 54
	db $3d			;Note 61
	db $c1			;Wait 2
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_089:
	db $1b			;Note 27
	db $1b			;Note 27
	db $c1			;Wait 2
	db $1b			;Note 27
					;Wait Repeat
	db $1b			;Note 27
					;Wait Repeat
	db $1b			;Note 27
					;Wait Repeat
	db $1b			;Note 27
					;Wait Repeat
	db $1b			;Note 27
					;Wait Repeat
	db $1b			;Note 27
					;Wait Repeat
	db $1a			;Note 26
					;Wait Repeat
	db $1a			;Note 26
					;Wait Repeat
	db $1a			;Note 26
					;Wait Repeat
	db $1a			;Note 26
					;Wait Repeat
	db $1a			;Note 26
					;Wait Repeat
	db $1a			;Note 26
					;Wait Repeat
	db $1a			;Note 26
					;Wait Repeat
	db $1a			;Note 26
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_090:
	db $2f			;Note 47
	db $76			;Instrument 4
	db $c4			;Wait 5
	db $2e			;Note 46
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $2e			;Note 46
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $94,$85			;CMD Vibrato
					;Wait Repeat
	db $31			;Note 49
	db $9a			;CMD End 
	db $c3			;Wait 4
	db $2f			;Note 47
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_091:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_092:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_093:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_094:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_095:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_096:
	db $36			;Note 54
	db $3d			;Note 61
	db $c1			;Wait 2
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_097:
	db $25			;Note 37
	db $78			;Instrument 6
	db $25			;Note 37
	db $c1			;Wait 2
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $24			;Note 36
					;Wait Repeat
	db $24			;Note 36
					;Wait Repeat
	db $24			;Note 36
					;Wait Repeat
	db $24			;Note 36
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_098:
	db $2e			;Note 46
	db $76			;Instrument 4
	db $2f			;Note 47
	db $c1			;Wait 2
	db $2e			;Note 46
					;Wait Repeat
	db $2a			;Note 42
	db $c3			;Wait 4
	db $25			;Note 37
	db $c7			;Wait 8
	db $2c			;Note 44
	db $c1			;Wait 2
	db $2a			;Note 42
					;Wait Repeat
	db $29			;Note 41
					;Wait Repeat
	db $27			;Note 39
					;Wait Repeat
	db $29			;Note 41
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_099:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_100:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_101:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_102:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_103:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_104:
	db $42			;Note 66
	db $73			;Instrument 1
	db $39			;Note 57
	db $c1			;Wait 2
	db $3e			;Note 62
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $3b			;Note 59
					;Wait Repeat
	db $44			;Note 68
					;Wait Repeat
	db $47			;Note 71
					;Wait Repeat
	db $46			;Note 70
					;Wait Repeat
	db $42			;Note 66
					;Wait Repeat
	db $3d			;Note 61
					;Wait Repeat
	db $3b			;Note 59
					;Wait Repeat
	db $3a			;Note 58
					;Wait Repeat
	db $36			;Note 54
					;Wait Repeat
	db $31			;Note 49
					;Wait Repeat
	db $2f			;Note 47
					;Wait Repeat
	db $2e			;Note 46
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_105:
	db $26			;Note 38
	db $78			;Instrument 6
	db $c4			;Wait 5
	db $28			;Note 40
	db $c5			;Wait 6
	db $2a			;Note 42
	db $74			;Instrument 2
					;Wait Repeat
	db $1e			;Note 30
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $1e			;Note 30
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_106:
	db $2a			;Note 42
	db $76			;Instrument 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $2a			;Note 42
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2a			;Note 42
					;Wait Repeat
	db $60			;Release 96
	db $c1			;Wait 2
	db $37			;Note 55
	db $77			;Instrument 5
	db $92,$02			;CMD Portamento down
	db $cc			;Wait 13
	db $9a			;CMD End 
	db $bf			;[End-Of-Track]
.track_107:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_108:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_109:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_110:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_111:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_112:
	db $60			;Release 96
	db $fe			;Wait 63
	db $bf			;[End-Of-Track]
.track_113:
	db $60			;Release 96
	db $fe			;Wait 63
	db $bf			;[End-Of-Track]
.track_114:
	db $60			;Release 96
	db $fe			;Wait 63
	db $bf			;[End-Of-Track]
.track_115:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_116:
	db $ff			;Wait 64
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
	db $1a			;Note 26
	db $6a			;Volume 8
	db $76			;Instrument 4
	db $c2			;Wait 3
	db $1a			;Note 26
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $1a			;Note 26
	db $c3			;Wait 4
	db $1a			;Note 26
					;Wait Repeat
	db $1d			;Note 29
	db $76			;Instrument 4
	db $cf			;Wait 16
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_121:
	db $23			;Note 35
	db $78			;Instrument 6
	db $23			;Note 35
	db $c1			;Wait 2
	db $23			;Note 35
					;Wait Repeat
	db $23			;Note 35
					;Wait Repeat
	db $23			;Note 35
					;Wait Repeat
	db $23			;Note 35
					;Wait Repeat
	db $23			;Note 35
					;Wait Repeat
	db $23			;Note 35
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $25			;Note 37
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_122:
	db $23			;Note 35
	db $76			;Instrument 4
	db $c2			;Wait 3
	db $21			;Note 33
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $23			;Note 35
	db $c3			;Wait 4
	db $21			;Note 33
					;Wait Repeat
	db $25			;Note 37
	db $76			;Instrument 4
	db $cf			;Wait 16
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_123:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_124:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_125:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_126:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_127:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]

