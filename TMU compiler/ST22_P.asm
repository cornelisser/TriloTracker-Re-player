; Song: Stone-22                        
; By:   Tadahiro Nitta                  
; Period table: A440 Modern

; [ Song start data ]
	db $09					; Initial song speed.
	db $80					; Channel setup.
	dw .customvoice_start-8			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_152, .track_152, .track_152, .track_155, .track_155, .track_152, .track_152, .track_152	; Step:000 Pattern:019
.restart:
	dw .track_000, .track_000, .track_002, .track_003, .track_004, .track_005, .track_005, .track_005	; Step:001 Pattern:000
	dw .track_000, .track_000, .track_002, .track_003, .track_004, .track_005, .track_005, .track_005	; Step:002 Pattern:000
	dw .track_008, .track_017, .track_002, .track_003, .track_004, .track_002, .track_002, .track_002	; Step:003 Pattern:002
	dw .track_008, .track_017, .track_002, .track_003, .track_004, .track_002, .track_002, .track_002	; Step:004 Pattern:002
	dw .track_024, .track_017, .track_002, .track_003, .track_004, .track_029, .track_002, .track_002	; Step:005 Pattern:003
	dw .track_032, .track_017, .track_002, .track_003, .track_004, .track_037, .track_038, .track_039	; Step:006 Pattern:004
	dw .track_032, .track_041, .track_002, .track_043, .track_004, .track_037, .track_046, .track_002	; Step:007 Pattern:005
	dw .track_008, .track_113, .track_114, .track_115, .track_116, .track_117, .track_117, .track_002	; Step:008 Pattern:014
	dw .track_152, .track_152, .track_152, .track_155, .track_155, .track_152, .track_152, .track_152	; Step:009 Pattern:019
	dw .track_002, .track_002, .track_058, .track_003, .track_004, .track_005, .track_005, .track_002	; Step:010 Pattern:007
	dw .track_002, .track_002, .track_058, .track_003, .track_004, .track_005, .track_005, .track_002	; Step:011 Pattern:007
	dw .track_008, .track_065, .track_066, .track_003, .track_004, .track_002, .track_002, .track_002	; Step:012 Pattern:008
	dw .track_008, .track_009, .track_010, .track_003, .track_004, .track_002, .track_002, .track_015	; Step:013 Pattern:001
	dw .track_008, .track_065, .track_066, .track_003, .track_004, .track_002, .track_002, .track_002	; Step:014 Pattern:008
	dw .track_008, .track_009, .track_010, .track_003, .track_004, .track_002, .track_002, .track_015	; Step:015 Pattern:001
	dw .track_008, .track_137, .track_066, .track_003, .track_004, .track_002, .track_002, .track_143	; Step:016 Pattern:017
	dw .track_008, .track_009, .track_010, .track_003, .track_004, .track_002, .track_002, .track_151	; Step:017 Pattern:018
	dw .track_032, .track_073, .track_058, .track_003, .track_004, .track_077, .track_002, .track_079	; Step:018 Pattern:009
	dw .track_032, .track_081, .track_058, .track_003, .track_004, .track_085, .track_038, .track_087	; Step:019 Pattern:010
	dw .track_032, .track_073, .track_058, .track_003, .track_004, .track_085, .track_094, .track_095	; Step:020 Pattern:011
	dw .track_096, .track_097, .track_098, .track_003, .track_004, .track_085, .track_094, .track_103	; Step:021 Pattern:012
	dw .track_104, .track_105, .track_058, .track_003, .track_004, .track_085, .track_094, .track_111	; Step:022 Pattern:013
	dw .track_096, .track_097, .track_098, .track_003, .track_004, .track_085, .track_094, .track_103	; Step:023 Pattern:012
	dw .track_104, .track_105, .track_058, .track_003, .track_004, .track_085, .track_094, .track_111	; Step:024 Pattern:013
	dw .track_096, .track_097, .track_098, .track_003, .track_004, .track_085, .track_094, .track_103	; Step:025 Pattern:012
	dw .track_104, .track_105, .track_058, .track_003, .track_004, .track_085, .track_094, .track_111	; Step:026 Pattern:013
	dw .track_120, .track_121, .track_098, .track_003, .track_004, .track_085, .track_094, .track_127	; Step:027 Pattern:015
	dw .track_002, .track_002, .track_130, .track_005, .track_005, .track_133, .track_134, .track_135	; Step:028 Pattern:016
	dw .track_002, .track_002, .track_130, .track_005, .track_005, .track_133, .track_134, .track_135	; Step:029 Pattern:016
	dw .track_002, .track_002, .track_130, .track_005, .track_005, .track_133, .track_134, .track_135	; Step:030 Pattern:016
	dw .track_002, .track_002, .track_130, .track_005, .track_005, .track_133, .track_134, .track_135	; Step:031 Pattern:016
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; Violin          
	dw .instrument_01				; Guitar          
	dw .instrument_02				; Flute           
	dw .instrument_03				; Synth           

.instrument_00:					; Violin          
	db $10					; FM Hardware Voice 1
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_01:					; Guitar          
	db $20					; FM Hardware Voice 2
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_02:					; Flute           
	db $40					; FM Hardware Voice 4
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_03:					; Synth           
	db $a0					; FM Hardware Voice 10
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $18,$fb						; Loop (-6)


; [ Song track data ]
.track_000:
	db $95,$44			;CMD Vibrato
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_002:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_003:
	db $27			;Note D#4
	db $6f			;Volume 13
	db $75			;Instrument 3
	db $c0			;Wait 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
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
	db $27			;Note D#4
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $27			;Note D#4
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $70			;Volume 14
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $27			;Note D#4
	db $6f			;Volume 13
	db $75			;Instrument 3
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
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
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $27			;Note D#4
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $70			;Volume 14
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_004:
	db $31			;Note C#5
	db $6e			;Volume 12
	db $75			;Instrument 3
	db $c0			;Wait 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
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
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $31			;Note C#5
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $31			;Note C#5
	db $6b			;Volume 9
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $31			;Note C#5
	db $6e			;Volume 12
	db $75			;Instrument 3
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
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
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $31			;Note C#5
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_005:
	db $60			;Release 96
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_008:
	db $33			;Note D#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $2e			;Note A#4
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $6b			;Volume 9
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2a			;Note F#4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $29			;Note F-4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2a			;Note F#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $29			;Note F-4
	db $68			;Volume 6
					;Wait Repeat 2
	db $2a			;Note F#4
	db $67			;Volume 5
					;Wait Repeat 2
	db $29			;Note F-4
	db $66			;Volume 4
					;Wait Repeat 2
	db $2a			;Note F#4
	db $65			;Volume 3
	db $c3			;Wait 4
	db $60			;Release 96
	db $d5			;Wait 22
	db $bf			;[End-Of-Track]
.track_009:
	db $31			;Note C#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $2c			;Note G#4
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $31			;Note C#5
	db $6b			;Volume 9
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $31			;Note C#5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $30			;Note C-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $31			;Note C#5
	db $69			;Volume 7
					;Wait Repeat 2
	db $2e			;Note A#4
	db $68			;Volume 6
					;Wait Repeat 2
	db $31			;Note C#5
	db $67			;Volume 5
					;Wait Repeat 2
	db $2e			;Note A#4
	db $66			;Volume 4
					;Wait Repeat 2
	db $31			;Note C#5
	db $65			;Volume 3
	db $c3			;Wait 4
	db $60			;Release 96
	db $d5			;Wait 22
	db $bf			;[End-Of-Track]
.track_010:
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c7			;Wait 8
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c9			;Wait 10
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_015:
	db $73			;Instrument 1
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_017:
	db $31			;Note C#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $2c			;Note G#4
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $ea			;Wait 43
	db $bf			;[End-Of-Track]
.track_024:
	db $33			;Note D#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $2e			;Note A#4
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $6b			;Volume 9
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2a			;Note F#4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $29			;Note F-4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2a			;Note F#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $29			;Note F-4
	db $68			;Volume 6
					;Wait Repeat 2
	db $2a			;Note F#4
	db $67			;Volume 5
					;Wait Repeat 2
	db $29			;Note F-4
	db $66			;Volume 4
					;Wait Repeat 2
	db $2a			;Note F#4
	db $65			;Volume 3
	db $c7			;Wait 8
	db $60			;Release 96
	db $d1			;Wait 18
	db $bf			;[End-Of-Track]
.track_029:
	db $35			;Note F-5
	db $6d			;Volume 11
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $df			;Wait 32
	db $36			;Note F#5
	db $91,$07			;CMD Portamento tone
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_032:
	db $33			;Note D#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $2e			;Note A#4
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $6b			;Volume 9
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2a			;Note F#4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $29			;Note F-4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2a			;Note F#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $29			;Note F-4
	db $68			;Volume 6
					;Wait Repeat 2
	db $2a			;Note F#4
	db $67			;Volume 5
					;Wait Repeat 2
	db $29			;Note F-4
	db $66			;Volume 4
					;Wait Repeat 2
	db $2a			;Note F#4
	db $65			;Volume 3
	db $c7			;Wait 8
	db $2e			;Note A#4
	db $6b			;Volume 9
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $27			;Note D#4
	db $6b			;Volume 9
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_037:
	db $35			;Note F-5
	db $6d			;Volume 11
	db $74			;Instrument 2
	db $df			;Wait 32
	db $36			;Note F#5
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_038:
	db $3a			;Note A#5
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $df			;Wait 32
	db $38			;Note G#5
	db $91,$07			;CMD Portamento tone
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_039:
	db $fe			;Wait 63
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_041:
	db $31			;Note C#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $2c			;Note G#4
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $6b			;Volume 9
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $2c			;Note G#4
	db $68			;Volume 6
					;Wait Repeat 2
	db $2e			;Note A#4
	db $67			;Volume 5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $66			;Volume 4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $65			;Volume 3
	db $c7			;Wait 8
	db $31			;Note C#5
	db $6b			;Volume 9
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $6b			;Volume 9
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_043:
	db $27			;Note D#4
	db $6f			;Volume 13
	db $75			;Instrument 3
	db $c0			;Wait 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
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
	db $27			;Note D#4
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $27			;Note D#4
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $70			;Volume 14
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $27			;Note D#4
	db $6f			;Volume 13
	db $75			;Instrument 3
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
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
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $27			;Note D#4
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $70			;Volume 14
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_046:
	db $38			;Note G#5
	db $df			;Wait 32
	db $3a			;Note A#5
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_058:
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c7			;Wait 8
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c7			;Wait 8
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $0f			;Note D#2
	db $6e			;Volume 12
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_065:
	db $31			;Note C#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $2c			;Note G#4
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $6a			;Volume 8
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2c			;Note G#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $2e			;Note A#4
	db $68			;Volume 6
					;Wait Repeat 2
	db $2c			;Note G#4
	db $68			;Volume 6
					;Wait Repeat 2
	db $2e			;Note A#4
	db $67			;Volume 5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $66			;Volume 4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $65			;Volume 3
	db $c3			;Wait 4
	db $60			;Release 96
	db $d5			;Wait 22
	db $bf			;[End-Of-Track]
.track_066:
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c7			;Wait 8
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c7			;Wait 8
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $0f			;Note D#2
	db $6e			;Volume 12
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_073:
	db $31			;Note C#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $2c			;Note G#4
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $6b			;Volume 9
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $2c			;Note G#4
	db $68			;Volume 6
					;Wait Repeat 2
	db $2e			;Note A#4
	db $67			;Volume 5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $66			;Volume 4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $65			;Volume 3
					;Wait Repeat 2
	db $60			;Release 96
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_077:
	db $36			;Note F#5
	db $6d			;Volume 11
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $df			;Wait 32
	db $3a			;Note A#5
	db $91,$07			;CMD Portamento tone
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_079:
	db $36			;Note F#5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $6f			;Volume 13
	db $c0			;Wait 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $35			;Note F-5
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $60			;Release 96
	db $c9			;Wait 10
	db $31			;Note C#5
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $38			;Note G#5
	db $c1			;Wait 2
	db $36			;Note F#5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $38			;Note G#5
	db $63			;Volume 1
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $6e			;Volume 12
	db $91,$05			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c4			;Wait 5
	db $3b			;Note B-5
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $6d			;Volume 11
	db $91,$06			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $35			;Note F-5
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $31			;Note C#5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $35			;Note F-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $33			;Note D#5
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_081:
	db $31			;Note C#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $2c			;Note G#4
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $91,$0f			;CMD Portamento tone
	db $e9			;Wait 42
	db $bf			;[End-Of-Track]
.track_085:
	db $35			;Note F-5
	db $6d			;Volume 11
	db $74			;Instrument 2
	db $91,$07			;CMD Portamento tone
	db $df			;Wait 32
	db $36			;Note F#5
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_087:
	db $35			;Note F-5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $6f			;Volume 13
	db $c0			;Wait 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $35			;Note F-5
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $36			;Note F#5
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $38			;Note G#5
	db $c1			;Wait 2
	db $36			;Note F#5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $39			;Note A-5
	db $63			;Volume 1
	db $9c			;CMD End 
					;Wait Repeat 2
	db $3a			;Note A#5
	db $6e			;Volume 12
	db $91,$06			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c5			;Wait 6
	db $39			;Note A-5
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $38			;Note G#5
	db $6f			;Volume 13
	db $91,$04			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $3b			;Note B-5
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $6e			;Volume 12
	db $91,$07			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $40			;Note E-6
	db $63			;Volume 1
	db $9c			;CMD End 
					;Wait Repeat 1
	db $42			;Note F#6
	db $6d			;Volume 11
	db $91,$0d			;CMD Portamento tone
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $38			;Note G#5
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_094:
	db $38			;Note G#5
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $91,$07			;CMD Portamento tone
	db $df			;Wait 32
	db $3a			;Note A#5
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_095:
	db $35			;Note F-5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c3			;Wait 4
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $42			;Note F#6
	db $6b			;Volume 9
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $38			;Note G#5
	db $c1			;Wait 2
	db $41			;Note F-6
	db $6a			;Volume 8
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $31			;Note C#5
	db $c1			;Wait 2
	db $35			;Note F-5
	db $69			;Volume 7
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $31			;Note C#5
	db $c3			;Wait 4
	db $33			;Note D#5
	db $c4			;Wait 5
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_096:
	db $36			;Note F#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $35			;Note F-5
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $36			;Note F#5
	db $6b			;Volume 9
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $36			;Note F#5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $35			;Note F-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $36			;Note F#5
	db $69			;Volume 7
					;Wait Repeat 2
	db $35			;Note F-5
	db $68			;Volume 6
					;Wait Repeat 2
	db $36			;Note F#5
	db $67			;Volume 5
					;Wait Repeat 2
	db $35			;Note F-5
	db $66			;Volume 4
					;Wait Repeat 2
	db $36			;Note F#5
	db $65			;Volume 3
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $65			;Volume 3
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $6b			;Volume 9
	db $91,$04			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $27			;Note D#4
	db $6b			;Volume 9
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_097:
	db $33			;Note D#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $33			;Note D#5
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $6b			;Volume 9
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $2c			;Note G#4
	db $68			;Volume 6
					;Wait Repeat 2
	db $2e			;Note A#4
	db $67			;Volume 5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $66			;Volume 4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $65			;Volume 3
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $32			;Note D-5
	db $65			;Volume 3
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $31			;Note C#5
	db $6b			;Volume 9
	db $91,$04			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6b			;Volume 9
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_098:
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c7			;Wait 8
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c9			;Wait 10
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_103:
	db $42			;Note F#6
	db $6b			;Volume 9
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $df			;Wait 32
	db $41			;Note F-6
	db $91,$08			;CMD Portamento tone
	db $cf			;Wait 16
	db $3d			;Note C#6
	db $c9			;Wait 10
	db $3a			;Note A#5
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_104:
	db $31			;Note C#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c4			;Wait 5
	db $34			;Note E-5
	db $65			;Volume 3
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6c			;Volume 10
	db $91,$03			;CMD Portamento tone
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $36			;Note F#5
	db $6b			;Volume 9
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $36			;Note F#5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $35			;Note F-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $36			;Note F#5
	db $69			;Volume 7
					;Wait Repeat 2
	db $35			;Note F-5
	db $68			;Volume 6
					;Wait Repeat 2
	db $36			;Note F#5
	db $67			;Volume 5
					;Wait Repeat 2
	db $35			;Note F-5
	db $66			;Volume 4
					;Wait Repeat 2
	db $36			;Note F#5
	db $65			;Volume 3
	db $c7			;Wait 8
	db $38			;Note G#5
	db $6b			;Volume 9
	db $95,$43			;CMD Vibrato
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6b			;Volume 9
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_105:
	db $33			;Note D#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c4			;Wait 5
	db $32			;Note D-5
	db $65			;Volume 3
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $33			;Note D#5
	db $6c			;Volume 10
	db $91,$03			;CMD Portamento tone
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $6b			;Volume 9
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $2c			;Note G#4
	db $68			;Volume 6
					;Wait Repeat 2
	db $2e			;Note A#4
	db $67			;Volume 5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $66			;Volume 4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $65			;Volume 3
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $31			;Note C#5
	db $6b			;Volume 9
	db $95,$43			;CMD Vibrato
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $31			;Note C#5
	db $6b			;Volume 9
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_111:
	db $42			;Note F#6
	db $6b			;Volume 9
	db $74			;Instrument 2
	db $df			;Wait 32
	db $41			;Note F-6
	db $cd			;Wait 14
	db $44			;Note G#6
	db $cb			;Wait 12
	db $41			;Note F-6
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_113:
	db $31			;Note C#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $2c			;Note G#4
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $91,$0f			;CMD Portamento tone
	db $dd			;Wait 30
	db $0f			;Note D#2
	db $6c			;Volume 10
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $0f			;Note D#2
	db $6e			;Volume 12
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_114:
	db $f3			;Wait 52
	db $03			;Note D#1
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $1b			;Note D#3
	db $6c			;Volume 10
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_115:
	db $27			;Note D#4
	db $6f			;Volume 13
	db $75			;Instrument 3
	db $c0			;Wait 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
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
	db $27			;Note D#4
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $27			;Note D#4
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $70			;Volume 14
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $27			;Note D#4
	db $6f			;Volume 13
	db $75			;Instrument 3
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $27			;Note D#4
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
	db $70			;Volume 14
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $63			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_116:
	db $31			;Note C#5
	db $6e			;Volume 12
	db $75			;Instrument 3
	db $c0			;Wait 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
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
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $31			;Note C#5
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $31			;Note C#5
	db $6b			;Volume 9
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $31			;Note C#5
	db $6e			;Volume 12
	db $75			;Instrument 3
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6e			;Volume 12
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
	db $31			;Note C#5
	db $6b			;Volume 9
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $65			;Volume 3
					;Wait Repeat 1
	db $63			;Volume 1
	db $c1			;Wait 2
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_117:
	db $f7			;Wait 56
	db $69			;Volume 7
	db $c0			;Wait 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $64			;Volume 2
					;Wait Repeat 1
	db $63			;Volume 1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_120:
	db $36			;Note F#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $35			;Note F-5
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $36			;Note F#5
	db $6b			;Volume 9
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $36			;Note F#5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $35			;Note F-5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $36			;Note F#5
	db $69			;Volume 7
					;Wait Repeat 2
	db $35			;Note F-5
	db $68			;Volume 6
					;Wait Repeat 2
	db $36			;Note F#5
	db $67			;Volume 5
					;Wait Repeat 2
	db $35			;Note F-5
	db $66			;Volume 4
					;Wait Repeat 2
	db $36			;Note F#5
	db $65			;Volume 3
	db $c7			;Wait 8
	db $2e			;Note A#4
	db $6b			;Volume 9
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $6b			;Volume 9
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_121:
	db $33			;Note D#5
	db $6c			;Volume 10
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $33			;Note D#5
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $6b			;Volume 9
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2e			;Note A#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $2c			;Note G#4
	db $68			;Volume 6
					;Wait Repeat 2
	db $2e			;Note A#4
	db $67			;Volume 5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $66			;Volume 4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $65			;Volume 3
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $36			;Note F#5
	db $6b			;Volume 9
	db $95,$33			;CMD Vibrato
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $33			;Note D#5
	db $6b			;Volume 9
	db $c0			;Wait 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $65			;Volume 3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_127:
	db $42			;Note F#6
	db $6b			;Volume 9
	db $74			;Instrument 2
	db $cd			;Wait 14
	db $41			;Note F-6
	db $d1			;Wait 18
	db $44			;Note G#6
	db $cd			;Wait 14
	db $3f			;Note D#6
	db $d1			;Wait 18
	db $bf			;[End-Of-Track]
.track_130:
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $60			;Release 96
	db $c9			;Wait 10
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_133:
	db $95,$35			;CMD Vibrato
	db $cf			;Wait 16
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
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_134:
	db $95,$35			;CMD Vibrato
	db $cf			;Wait 16
	db $6b			;Volume 9
	db $c7			;Wait 8
	db $6a			;Volume 8
					;Wait Repeat 8
	db $69			;Volume 7
					;Wait Repeat 8
	db $68			;Volume 6
					;Wait Repeat 8
	db $67			;Volume 5
					;Wait Repeat 8
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_135:
	db $95,$35			;CMD Vibrato
	db $cf			;Wait 16
	db $6a			;Volume 8
	db $c7			;Wait 8
	db $69			;Volume 7
					;Wait Repeat 8
	db $68			;Volume 6
					;Wait Repeat 8
	db $67			;Volume 5
					;Wait Repeat 8
	db $66			;Volume 4
					;Wait Repeat 8
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_137:
	db $31			;Note C#5
	db $6c			;Volume 10
	db $95,$32			;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $2c			;Note G#4
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
					;Wait Repeat 1
	db $69			;Volume 7
					;Wait Repeat 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $66			;Volume 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $6a			;Volume 8
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $2e			;Note A#4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2c			;Note G#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $2e			;Note A#4
	db $68			;Volume 6
					;Wait Repeat 2
	db $2c			;Note G#4
	db $68			;Volume 6
					;Wait Repeat 2
	db $2e			;Note A#4
	db $67			;Volume 5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $66			;Volume 4
					;Wait Repeat 2
	db $2e			;Note A#4
	db $65			;Volume 3
	db $c3			;Wait 4
	db $60			;Release 96
	db $d5			;Wait 22
	db $bf			;[End-Of-Track]
.track_143:
	db $36			;Note F#5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $6f			;Volume 13
	db $c0			;Wait 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $35			;Note F-5
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $31			;Note C#5
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $38			;Note G#5
	db $c1			;Wait 2
	db $36			;Note F#5
	db $6c			;Volume 10
	db $9c			;CMD End 
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $6e			;Volume 12
					;Wait Repeat 2
	db $60			;Release 96
	db $c9			;Wait 10
	db $35			;Note F-5
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $60			;Release 96
	db $c7			;Wait 8
	db $60			;Release 96
	db $c1			;Wait 2
	db $31			;Note C#5
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6d			;Volume 11
	db $91,$0f			;CMD Portamento tone
					;Wait Repeat 2
	db $33			;Note D#5
	db $6c			;Volume 10
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_151:
	db $36			;Note F#5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $6f			;Volume 13
	db $c0			;Wait 1
	db $67			;Volume 5
					;Wait Repeat 1
	db $35			;Note F-5
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $36			;Note F#5
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $38			;Note G#5
	db $c1			;Wait 2
	db $36			;Note F#5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $6e			;Volume 12
					;Wait Repeat 2
	db $60			;Release 96
	db $c7			;Wait 8
	db $38			;Note G#5
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $36			;Note F#5
	db $6d			;Volume 11
	db $91,$06			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6d			;Volume 11
	db $91,$09			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $33			;Note D#5
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $33			;Note D#5
	db $68			;Volume 6
	db $9c			;CMD End 
					;Wait Repeat 1
	db $36			;Note F#5
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $31			;Note C#5
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6d			;Volume 11
	db $91,$0d			;CMD Portamento tone
					;Wait Repeat 2
	db $33			;Note D#5
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_152:
	db $71			;Volume 15
	db $72			;Instrument 0
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_155:
	db $71			;Volume 15
	db $75			;Instrument 3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]

