; Song: Moontheme - Ducktales           
; By:   Org. cover by Tallboyy          

; [ Song start data ]
	db $08					; Initial song speed.
	dw .customvoice_start			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_001, .track_002, .track_003, .track_003, .track_003, .track_003, .track_003	; Step:001 Pattern:000
	dw .track_008, .track_009, .track_010, .track_003, .track_003, .track_003, .track_003, .track_003	; Step:002 Pattern:001
	dw .track_008, .track_017, .track_018, .track_003, .track_003, .track_003, .track_003, .track_003	; Step:003 Pattern:002
	dw .track_008, .track_025, .track_026, .track_003, .track_003, .track_003, .track_003, .track_003	; Step:004 Pattern:003
	dw .track_008, .track_033, .track_034, .track_003, .track_003, .track_003, .track_003, .track_003	; Step:005 Pattern:004
	dw .track_040, .track_041, .track_042, .track_043, .track_043, .track_043, .track_043, .track_043	; Step:006 Pattern:005
	dw .track_040, .track_049, .track_050, .track_043, .track_043, .track_043, .track_043, .track_043	; Step:007 Pattern:006
	dw .track_040, .track_057, .track_058, .track_043, .track_043, .track_043, .track_043, .track_043	; Step:008 Pattern:007
	dw .track_040, .track_065, .track_066, .track_043, .track_043, .track_043, .track_043, .track_043	; Step:009 Pattern:008
	dw .track_040, .track_073, .track_074, .track_043, .track_043, .track_043, .track_043, .track_043	; Step:010 Pattern:009
	dw .track_040, .track_081, .track_082, .track_043, .track_043, .track_043, .track_043, .track_043	; Step:011 Pattern:010
	dw .track_040, .track_089, .track_090, .track_043, .track_043, .track_043, .track_043, .track_043	; Step:012 Pattern:011
	dw .track_040, .track_097, .track_098, .track_043, .track_043, .track_043, .track_043, .track_043	; Step:013 Pattern:012
	dw .track_104, .track_105, .track_106, .track_043, .track_043, .track_043, .track_043, .track_043	; Step:014 Pattern:013
	dw .track_112, .track_112, .track_112, .track_115, .track_115, .track_115, .track_115, .track_115	; Step:015 Pattern:014
	dw .track_120, .track_121, .track_122, .track_043, .track_043, .track_043, .track_043, .track_043	; Step:016 Pattern:015
	dw .track_120, .track_121, .track_122, .track_043, .track_043, .track_043, .track_043, .track_043	; Step:017 Pattern:015
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
.track_112:
	db $60			;Release 96
	db $fe			;Wait 63
	db $bf			;[End-Of-Track]
.track_115:
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

