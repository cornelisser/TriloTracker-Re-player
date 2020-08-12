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
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $2c			; Info byte: 00101100
	db $f1			; Volume -
	db $2c			; Info byte: 00101100
	db $f1			; Volume -
	db $2c			; Info byte: 00101100
	db $f1			; Volume -
	db $28			; Info byte: 00101000
	db $04			; Volume _
	db $2c			; Info byte: 00101100
	db $f8			; Volume -
	db $2c			; Info byte: 00101100
	db $f8			; Volume -
	db $28			; Info byte: 00101000
	db $08			; Volume _
.rst_i01:
	db $29			; Info byte: 00101001
	db $04			; Volume _

.instrument_02:					;                 
	db $00					; FM Voice 0
.rst_i02:
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $29			; Info byte: 00101001
	db $0e			; Volume _

.instrument_03:					;                 
	db $00					; FM Voice 0
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $28			; Info byte: 00101000
	db $0e			; Volume _
	db $28			; Info byte: 00101000
	db $0e			; Volume _
.rst_i03:
	db $20			; Info byte: 00100000
	db $20			; Info byte: 00100000
	db $2d			; Info byte: 00101101
	db $ff			; Volume -

.instrument_04:					;                 
	db $00					; FM Voice 0
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $28			; Info byte: 00101000
	db $0e			; Volume _
.rst_i04:
	db $28			; Info byte: 00101000
	db $0c			; Volume _
	db $38			; Info byte: 00111000
	db $0c			; Volume _
	dw $0100				; Tone
	db $28			; Info byte: 00101000
	db $0c			; Volume _
	db $39			; Info byte: 00111001
	db $0c			; Volume _
	dw $ffff				; Tone

.instrument_05:					;                 
	db $00					; FM Voice 0
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $03			; Noise
	db $01			; Noise volume
	db $c0			; Info byte: 11000000
	db $03			; Noise
	db $03			; Noise volume
	db $c0			; Info byte: 11000000
	db $03			; Noise
	db $05			; Noise volume
	db $c0			; Info byte: 11000000
	db $03			; Noise
	db $07			; Noise volume
	db $c0			; Info byte: 11000000
	db $03			; Noise
	db $09			; Noise volume
	db $c0			; Info byte: 11000000
	db $03			; Noise
	db $0b			; Noise volume
	db $c0			; Info byte: 11000000
	db $03			; Noise
	db $0d			; Noise volume
.rst_i05:
	db $c1			; Info byte: 11000001
	db $03			; Noise
	db $0f			; Noise volume

.instrument_06:					;                 
	db $00					; FM Voice 0
	db $28			; Info byte: 00101000
	db $0d			; Volume _
	db $28			; Info byte: 00101000
	db $0e			; Volume _
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $28			; Info byte: 00101000
	db $0b			; Volume _
.rst_i06:
	db $29			; Info byte: 00101001
	db $08			; Volume _


; [ Song track data ]
.track_000:
	db $36			;Note F#5
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_001:
	db $61			;Sustain 97
	db $6f			;Volume 13
	db $75			;Instrument 3
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_002:
	db $61			;Sustain 97
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_003:
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_008:
	db $36			;Note F#5
	db $c1			;Wait 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_009:
	db $2a			;Note F#4
	db $6f			;Volume 13
	db $75			;Instrument 3
	db $c5			;Wait 6
	db $31			;Note C#5
					;Wait Repeat 6
	db $36			;Note F#5
	db $d0			;Wait 17
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_010:
	db $25			;Note C#4
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $c6			;Wait 7
	db $94,$85			;CMD Vibrato
	db $ca			;Wait 11
	db $2a			;Note F#4
	db $9a			;CMD End 
	db $c3			;Wait 4
	db $2c			;Note G#4
					;Wait Repeat 4
	db $2f			;Note B-4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_017:
	db $28			;Note E-4
	db $75			;Instrument 3
	db $c5			;Wait 6
	db $2f			;Note B-4
					;Wait Repeat 6
	db $34			;Note E-5
	db $d0			;Wait 17
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_018:
	db $2f			;Note B-4
	db $74			;Instrument 2
	db $c5			;Wait 6
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c4			;Wait 5
	db $94,$85			;CMD Vibrato
	db $c8			;Wait 9
	db $2c			;Note G#4
	db $9a			;CMD End 
	db $c3			;Wait 4
	db $2a			;Note F#4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_025:
	db $27			;Note D#4
	db $c5			;Wait 6
	db $2e			;Note A#4
					;Wait Repeat 6
	db $33			;Note D#5
	db $d0			;Wait 17
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_026:
	db $31			;Note C#5
	db $cb			;Wait 12
	db $2a			;Note F#4
					;Wait Repeat 12
	db $36			;Note F#5
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_033:
	db $26			;Note D-4
	db $c5			;Wait 6
	db $2d			;Note A-4
					;Wait Repeat 6
	db $32			;Note D-5
	db $d0			;Wait 17
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_034:
	db $c6			;Wait 7
	db $94,$84			;CMD Vibrato
	db $d0			;Wait 17
	db $38			;Note G#5
	db $9a			;CMD End 
	db $c3			;Wait 4
	db $36			;Note F#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_040:
	db $36			;Note F#5
	db $c1			;Wait 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_041:
	db $36			;Note F#5
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_042:
	db $3d			;Note C#6
	db $cd			;Wait 14
	db $94,$82			;CMD Vibrato
	db $d1			;Wait 18
	db $bf			;[End-Of-Track]
.track_043:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_049:
	db $1e			;Note F#3
	db $6f			;Volume 13
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_050:
	db $60			;Release 96
	db $71			;Volume 15
	db $76			;Instrument 4
	db $9a			;CMD End 
	db $c7			;Wait 8
	db $22			;Note A#3
	db $c1			;Wait 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $25			;Note C#4
	db $78			;Instrument 6
					;Wait Repeat 2
	db $25			;Note C#4
	db $76			;Instrument 4
	db $c5			;Wait 6
	db $2a			;Note F#4
	db $c3			;Wait 4
	db $29			;Note F-4
					;Wait Repeat 4
	db $2a			;Note F#4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_057:
	db $1b			;Note D#3
	db $c1			;Wait 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_058:
	db $2c			;Note G#4
	db $c3			;Wait 4
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $c9			;Wait 10
	db $94,$85			;CMD Vibrato
	db $cb			;Wait 12
	db $29			;Note F-4
	db $9a			;CMD End 
	db $c1			;Wait 2
	db $2a			;Note F#4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_065:
	db $23			;Note B-3
	db $c1			;Wait 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_066:
	db $31			;Note C#5
	db $76			;Instrument 4
	db $c5			;Wait 6
	db $2a			;Note F#4
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $94,$85			;CMD Vibrato
	db $cb			;Wait 12
	db $2a			;Note F#4
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $2a			;Note F#4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_073:
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_074:
	db $2a			;Note F#4
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $60			;Release 96
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $29			;Note F-4
	db $c7			;Wait 8
	db $94,$85			;CMD Vibrato
	db $c8			;Wait 9
	db $60			;Release 96
	db $9a			;CMD End 
	db $bf			;[End-Of-Track]
.track_081:
	db $1e			;Note F#3
	db $c1			;Wait 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_082:
	db $22			;Note A#3
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $60			;Release 96
	db $c1			;Wait 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $25			;Note C#4
	db $c7			;Wait 8
	db $60			;Release 96
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $c3			;Wait 4
	db $2c			;Note G#4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_089:
	db $1b			;Note D#3
	db $c1			;Wait 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_090:
	db $2f			;Note B-4
	db $76			;Instrument 4
	db $c5			;Wait 6
	db $2e			;Note A#4
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $76			;Instrument 4
	db $c7			;Wait 8
	db $94,$85			;CMD Vibrato
					;Wait Repeat 8
	db $31			;Note C#5
	db $9a			;CMD End 
	db $c3			;Wait 4
	db $2f			;Note B-4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_097:
	db $25			;Note C#4
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_098:
	db $2e			;Note A#4
	db $76			;Instrument 4
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2a			;Note F#4
	db $c3			;Wait 4
	db $25			;Note C#4
	db $c7			;Wait 8
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $29			;Note F-4
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_104:
	db $42			;Note F#6
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_105:
	db $26			;Note D-4
	db $78			;Instrument 6
	db $c5			;Wait 6
	db $28			;Note E-4
					;Wait Repeat 6
	db $2a			;Note F#4
	db $74			;Instrument 2
					;Wait Repeat 6
	db $1e			;Note F#3
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_106:
	db $2a			;Note F#4
	db $76			;Instrument 4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2a			;Note F#4
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $37			;Note G-5
	db $77			;Instrument 5
	db $92,$02			;CMD Portamento down
	db $cc			;Wait 13
	db $9a			;CMD End 
	db $bf			;[End-Of-Track]
.track_112:
	db $60			;Release 96
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_115:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_120:
	db $1a			;Note D-3
	db $6a			;Volume 8
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $1a			;Note D-3
	db $c3			;Wait 4
	db $1a			;Note D-3
					;Wait Repeat 4
	db $1d			;Note F-3
	db $76			;Instrument 4
	db $cf			;Wait 16
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_121:
	db $23			;Note B-3
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat
	db $bf			;[End-Of-Track]
.track_122:
	db $23			;Note B-3
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $21			;Note A-3
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $23			;Note B-3
	db $c3			;Wait 4
	db $21			;Note A-3
					;Wait Repeat 4
	db $25			;Note C#4
	db $76			;Instrument 4
	db $cf			;Wait 16
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]

