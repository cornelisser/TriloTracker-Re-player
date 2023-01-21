; Song: OH-RANGE                        
; By:   Tadahiro Nitta                  
; Period table: A440 Modern

; [ Song start data ]
	db $05					; Initial song speed.
	db $00					; Channel setup.
	dw .customvoice_start-8			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_000, .track_000, .track_003, .track_004, .track_000, .track_000, .track_000	; Step:000 Pattern:000
	dw .track_008, .track_009, .track_010, .track_011, .track_012, .track_013, .track_010, .track_015	; Step:001 Pattern:001
	dw .track_016, .track_017, .track_010, .track_019, .track_020, .track_021, .track_010, .track_023	; Step:002 Pattern:002
	dw .track_024, .track_025, .track_026, .track_027, .track_028, .track_029, .track_026, .track_031	; Step:003 Pattern:003
	dw .track_032, .track_033, .track_026, .track_035, .track_036, .track_037, .track_026, .track_039	; Step:004 Pattern:004
	dw .track_024, .track_041, .track_026, .track_043, .track_044, .track_045, .track_026, .track_047	; Step:005 Pattern:005
	dw .track_112, .track_113, .track_298, .track_115, .track_035, .track_117, .track_302, .track_119	; Step:006 Pattern:037
	dw .track_024, .track_121, .track_202, .track_123, .track_124, .track_125, .track_206, .track_127	; Step:007 Pattern:025
	dw .track_128, .track_129, .track_210, .track_131, .track_132, .track_133, .track_214, .track_135	; Step:008 Pattern:026
	dw .track_136, .track_137, .track_218, .track_139, .track_140, .track_141, .track_222, .track_143	; Step:009 Pattern:027
	dw .track_144, .track_145, .track_226, .track_147, .track_148, .track_149, .track_230, .track_151	; Step:010 Pattern:028
	dw .track_008, .track_009, .track_010, .track_011, .track_012, .track_013, .track_158, .track_015	; Step:011 Pattern:019
	dw .track_016, .track_017, .track_010, .track_019, .track_020, .track_021, .track_166, .track_023	; Step:012 Pattern:020
.restart:
	dw .track_024, .track_025, .track_234, .track_027, .track_028, .track_029, .track_238, .track_031	; Step:013 Pattern:029
	dw .track_032, .track_033, .track_242, .track_035, .track_036, .track_037, .track_246, .track_039	; Step:014 Pattern:030
	dw .track_024, .track_041, .track_250, .track_043, .track_044, .track_045, .track_254, .track_047	; Step:015 Pattern:031
	dw .track_112, .track_113, .track_258, .track_115, .track_035, .track_117, .track_262, .track_119	; Step:016 Pattern:032
	dw .track_024, .track_121, .track_266, .track_123, .track_124, .track_125, .track_270, .track_127	; Step:017 Pattern:033
	dw .track_128, .track_129, .track_274, .track_131, .track_132, .track_133, .track_278, .track_135	; Step:018 Pattern:034
	dw .track_136, .track_137, .track_282, .track_139, .track_140, .track_141, .track_286, .track_143	; Step:019 Pattern:035
	dw .track_144, .track_145, .track_290, .track_147, .track_148, .track_149, .track_294, .track_151	; Step:020 Pattern:036
	dw .track_008, .track_009, .track_010, .track_011, .track_012, .track_013, .track_158, .track_015	; Step:021 Pattern:019
	dw .track_016, .track_017, .track_010, .track_019, .track_020, .track_021, .track_166, .track_023	; Step:022 Pattern:020
	dw .track_024, .track_025, .track_170, .track_027, .track_028, .track_029, .track_174, .track_031	; Step:023 Pattern:021
	dw .track_032, .track_033, .track_178, .track_035, .track_036, .track_037, .track_182, .track_039	; Step:024 Pattern:022
	dw .track_024, .track_041, .track_186, .track_043, .track_044, .track_045, .track_190, .track_047	; Step:025 Pattern:023
	dw .track_112, .track_113, .track_194, .track_115, .track_035, .track_117, .track_198, .track_119	; Step:026 Pattern:024
	dw .track_024, .track_121, .track_202, .track_123, .track_124, .track_125, .track_206, .track_127	; Step:027 Pattern:025
	dw .track_128, .track_129, .track_210, .track_131, .track_132, .track_133, .track_214, .track_135	; Step:028 Pattern:026
	dw .track_136, .track_137, .track_218, .track_139, .track_140, .track_141, .track_222, .track_143	; Step:029 Pattern:027
	dw .track_144, .track_145, .track_226, .track_147, .track_148, .track_149, .track_230, .track_151	; Step:030 Pattern:028
	dw .track_024, .track_025, .track_090, .track_027, .track_028, .track_029, .track_094, .track_031	; Step:031 Pattern:011
	dw .track_032, .track_033, .track_098, .track_035, .track_036, .track_037, .track_102, .track_039	; Step:032 Pattern:012
	dw .track_024, .track_041, .track_106, .track_043, .track_044, .track_045, .track_110, .track_047	; Step:033 Pattern:013
	dw .track_112, .track_113, .track_114, .track_115, .track_035, .track_117, .track_118, .track_119	; Step:034 Pattern:014
	dw .track_024, .track_121, .track_122, .track_123, .track_124, .track_125, .track_126, .track_127	; Step:035 Pattern:015
	dw .track_128, .track_129, .track_130, .track_131, .track_132, .track_133, .track_134, .track_135	; Step:036 Pattern:016
	dw .track_136, .track_137, .track_138, .track_139, .track_140, .track_141, .track_142, .track_143	; Step:037 Pattern:017
	dw .track_144, .track_145, .track_146, .track_147, .track_148, .track_149, .track_150, .track_151	; Step:038 Pattern:018
	dw .track_312, .track_313, .track_314, .track_315, .track_315, .track_315, .track_318, .track_319	; Step:039 Pattern:039
	dw .track_304, .track_305, .track_306, .track_307, .track_308, .track_309, .track_310, .track_311	; Step:040 Pattern:038
	dw .track_320, .track_321, .track_322, .track_323, .track_324, .track_325, .track_326, .track_327	; Step:041 Pattern:040
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:
	db $01,$02,$0e,$0c,$34,$83,$42,$21 		; Custom voice:180

; [ FM Drum macros]
.drummacro_start:
	dw .drum_00
	dw .drum_02

.drum_00:						; Drum 0. Bsdrm           
	db $04, $00							; volume Base drum
	db $12, $e6, $04						; note Bdrum
	db $1e, $30							; Percussion
	db $02							; STOP - End of Drum macro

.drum_02:						; Drum 3. Bs UP (Sn)      
	db $04, $00							; volume Base drum
	db $12, $ad, $06						; note Bdrum
	db $1e, $30							; Percussion
	db $02							; STOP - End of Drum macro

; [ Instruments]
.instrument_start:
	dw .instrument_00				; GT              
	dw .instrument_01				; PSG_Sn_01       
	dw .instrument_02				; Shyn_Bass_01    
	dw .instrument_03				; CLOSE_H-H_01    
	dw .instrument_04				; E.PIANO         
	dw .instrument_05				; Cord SHYNT 01c  
	dw .instrument_06				; PSG f-a(r)      
	dw .instrument_07				; Cprd SHYNT 01dt 
	dw .instrument_08				; GT Norm         
	dw .instrument_09				; PekoPeko 1      

.instrument_00:					; GT              
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $04,$02,$00					; Tone add
	db $16,$20						; FM Hardware Voice
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$20						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_01:					; PSG_Sn_01       
	db $0F					; FM Hardware Voice was not set
	db $02,$80						; Mixer (N)
	db $0E,$12						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$10						; Noise _
	db $08,$0e						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$0d						; Noise _
	db $08,$0d						; Volume _
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$0d						; Noise _
	db $0c,$01						; Volume -
	db $02,$80						; Mixer (N)
	db $0E,$07						; Noise _
	db $00							; Volume same
	db $18,$f4						; Loop (-13)

.instrument_02:					; Shyn_Bass_01    
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $16,$30						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$e0						; FM Hardware Voice
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$e0						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_03:					; CLOSE_H-H_01    
	db $0F					; FM Hardware Voice was not set
	db $02,$80						; Mixer (N)
	db $0E,$03						; Noise _
	db $08,$0f						; Volume _
	db $08,$0a						; Volume _
								; --- Macro loop
	db $08,$00						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_04:					; E.PIANO         
	db $0F					; FM Hardware Voice was not set
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$c0						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_05:					; Cord SHYNT 01c  
	db $00,$04					; FM Software Voice 0
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_06:					; PSG f-a(r)      
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_07:					; Cprd SHYNT 01dt 
	db $00,$04					; FM Software Voice 0
	db $02,$10						; Mixer (T)
	db $04,$02,$00					; Tone add
	db $16,$00						; FM Hardware Voice
	db $08,$0d						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0d						; Volume _
	db $18,$f3						; Loop (-14)

.instrument_08:					; GT Norm         
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $04,$01,$00					; Tone add
	db $16,$20						; FM Hardware Voice
	db $08,$0d						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$20						; FM Hardware Voice
	db $08,$0d						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_09:					; PekoPeko 1      
	db $0F					; FM Hardware Voice was not set
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$d0						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)


; [ Song track data ]
.track_000:
	db $71			;Volume 15
	db $72			;Instrument 0
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_003:
	db $00			;Note C-1
	db $63			;Volume 1
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_004:
	db $16			;Note A#2
	db $63			;Volume 1
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_008:
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
.track_009:
	db $3e			;Note D-6
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $30			;Note C-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_010:
	db $60			;Release 96
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_011:
	db $32			;Note D-5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $30			;Note C-5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_012:
	db $2d			;Note A-4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $2b			;Note G-4
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_013:
	db $2b			;Note G-4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $2a			;Note F#4
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $29			;Note F-4
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_015:
	db $1a			;Note D-3
	db $70			;Volume 14
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
	db $c7			;Wait 8
	db $19			;Note C#3
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
	db $c7			;Wait 8
	db $18			;Note C-3
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
					;Wait Repeat 4
	db $18			;Note C-3
	db $9c			;CMD End 
					;Wait Repeat 4
	db $18			;Note C-3
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $18			;Note C-3
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $13			;Note G-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_016:
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
	db $15			;Note A-2
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $15			;Note A-2
	db $6c			;Volume 10
	db $9d,$02			;CMD Drum $04
	db $c3			;Wait 4
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $15			;Note A-2
	db $6d			;Volume 11
	db $9d,$02			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_017:
	db $3e			;Note D-6
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $45			;Note A-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_019:
	db $32			;Note D-5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $34			;Note E-5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_020:
	db $2d			;Note A-4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $2d			;Note A-4
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_021:
	db $2b			;Note G-4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $2a			;Note F#4
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $2a			;Note F#4
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_023:
	db $1a			;Note D-3
	db $70			;Volume 14
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
	db $c7			;Wait 8
	db $19			;Note C#3
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
	db $c7			;Wait 8
	db $17			;Note B-2
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
	db $c7			;Wait 8
	db $1c			;Note E-3
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
	db $c2			;Wait 3
	db $1c			;Note E-3
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $23			;Note B-3
	db $70			;Volume 14
	db $91,$0d			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$87			;CMD Vibrato
	db $c7			;Wait 8
	db $60			;Release 96
	db $c3			;Wait 4
	db $17			;Note B-2
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_024:
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $10			;Note E-2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $10			;Note E-2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_025:
	db $33			;Note D#5
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $33			;Note D#5
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_026:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_027:
	db $33			;Note D#5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $33			;Note D#5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d8			;Wait 25
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_028:
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $2e			;Note A#4
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d8			;Wait 25
	db $2e			;Note A#4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_029:
	db $2c			;Note G#4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $2a			;Note F#4
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d8			;Wait 25
	db $29			;Note F-4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_031:
	db $19			;Note C#3
	db $70			;Volume 14
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $c7			;Wait 8
	db $60			;Release 96
	db $c3			;Wait 4
	db $19			;Note C#3
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
					;Wait Repeat 4
	db $1b			;Note D#3
	db $9c			;CMD End 
					;Wait Repeat 4
	db $20			;Note G#3
	db $c2			;Wait 3
	db $20			;Note G#3
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $23			;Note B-3
	db $70			;Volume 14
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $22			;Note A#3
	db $9c			;CMD End 
					;Wait Repeat 4
	db $1b			;Note D#3
	db $c2			;Wait 3
	db $1b			;Note D#3
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $1e			;Note F#3
	db $70			;Volume 14
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $17			;Note B-2
	db $9c			;CMD End 
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $1e			;Note F#3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_032:
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $10			;Note E-2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $10			;Note E-2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_033:
	db $31			;Note C#5
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $31			;Note C#5
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $29			;Note F-4
	db $c1			;Wait 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $31			;Note C#5
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $31			;Note C#5
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $31			;Note C#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_035:
	db $c2			;Wait 3
	db $95,$77			;CMD Vibrato
	db $e0			;Wait 33
	db $31			;Note C#5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_036:
	db $c2			;Wait 3
	db $95,$77			;CMD Vibrato
	db $e0			;Wait 33
	db $2c			;Note G#4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_037:
	db $c2			;Wait 3
	db $95,$77			;CMD Vibrato
	db $e0			;Wait 33
	db $29			;Note F-4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_039:
	db $1d			;Note F-3
	db $70			;Volume 14
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $16			;Note A#2
					;Wait Repeat 4
	db $1e			;Note F#3
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $16			;Note A#2
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $1e			;Note F#3
					;Wait Repeat 4
	db $16			;Note A#2
	db $c2			;Wait 3
	db $1e			;Note F#3
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $22			;Note A#3
	db $70			;Volume 14
	db $91,$0a			;CMD Portamento tone
	db $c7			;Wait 8
	db $1d			;Note F-3
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $19			;Note C#3
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $16			;Note A#2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_041:
	db $2c			;Note G#4
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $38			;Note G#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_043:
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d8			;Wait 25
	db $35			;Note F-5
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_044:
	db $2c			;Note G#4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $30			;Note C-5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d8			;Wait 25
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_045:
	db $2a			;Note F#4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d8			;Wait 25
	db $2e			;Note A#4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_047:
	db $20			;Note G#3
	db $70			;Volume 14
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $17			;Note B-2
	db $9c			;CMD End 
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $1e			;Note F#3
					;Wait Repeat 4
	db $20			;Note G#3
	db $c2			;Wait 3
	db $20			;Note G#3
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $22			;Note A#3
	db $70			;Volume 14
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$87			;CMD Vibrato
					;Wait Repeat 4
	db $20			;Note G#3
	db $9c			;CMD End 
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $19			;Note C#3
					;Wait Repeat 4
	db $16			;Note A#2
					;Wait Repeat 4
	db $1b			;Note D#3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_090:
	db $33			;Note D#5
	db $63			;Volume 1
	db $72			;Instrument 0
	db $c0			;Wait 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $28			;Note E-4
	db $70			;Volume 14
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $2f			;Note B-4
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c7			;Wait 8
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $33			;Note D#5
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c6			;Wait 7
	db $32			;Note D-5
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $36			;Note F#5
	db $6f			;Volume 13
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $33			;Note D#5
	db $70			;Volume 14
	db $9c			;CMD End 
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $2f			;Note B-4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_094:
	db $c0			;Wait 1
	db $33			;Note D#5
	db $63			;Volume 1
	db $7a			;Instrument 8
					;Wait Repeat 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $28			;Note E-4
	db $6f			;Volume 13
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $2f			;Note B-4
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c7			;Wait 8
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $33			;Note D#5
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c6			;Wait 7
	db $32			;Note D-5
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $36			;Note F#5
	db $6e			;Volume 12
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $33			;Note D#5
	db $6f			;Volume 13
	db $9c			;CMD End 
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $2f			;Note B-4
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_098:
	db $2e			;Note A#4
	db $70			;Volume 14
	db $72			;Instrument 0
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c6			;Wait 7
	db $2f			;Note B-4
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $31			;Note C#5
	db $70			;Volume 14
	db $91,$0a			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c2			;Wait 3
	db $2a			;Note F#4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $27			;Note D#4
	db $9c			;CMD End 
					;Wait Repeat 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $95,$76			;CMD Vibrato
	db $cb			;Wait 12
	db $27			;Note D#4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $31			;Note C#5
	db $c3			;Wait 4
	db $25			;Note C#4
	db $c1			;Wait 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_102:
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $6f			;Volume 13
	db $7a			;Instrument 8
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c6			;Wait 7
	db $2f			;Note B-4
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $31			;Note C#5
	db $6f			;Volume 13
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $9c			;CMD End 
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $27			;Note D#4
	db $9c			;CMD End 
					;Wait Repeat 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $95,$76			;CMD Vibrato
	db $cb			;Wait 12
	db $27			;Note D#4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $31			;Note C#5
	db $c3			;Wait 4
	db $25			;Note C#4
	db $c1			;Wait 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_106:
	db $2c			;Note G#4
	db $70			;Volume 14
	db $72			;Instrument 0
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$76			;CMD Vibrato
	db $c3			;Wait 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $33			;Note D#5
	db $70			;Volume 14
	db $91,$0f			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c0			;Wait 1
	db $60			;Release 96
	db $c2			;Wait 3
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $27			;Note D#4
	db $9c			;CMD End 
					;Wait Repeat 4
	db $29			;Note F-4
	db $9c			;CMD End 
					;Wait Repeat 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c0			;Wait 1
	db $33			;Note D#5
	db $63			;Volume 1
	db $9c			;CMD End 
					;Wait Repeat 1
	db $35			;Note F-5
	db $6f			;Volume 13
	db $91,$07			;CMD Portamento tone
	db $c5			;Wait 6
	db $60			;Release 96
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $70			;Volume 14
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $25			;Note C#4
					;Wait Repeat 4
	db $2a			;Note F#4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_110:
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $70			;Volume 14
	db $7a			;Instrument 8
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$76			;CMD Vibrato
	db $c3			;Wait 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $33			;Note D#5
	db $70			;Volume 14
	db $91,$0f			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c0			;Wait 1
	db $60			;Release 96
	db $c2			;Wait 3
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $27			;Note D#4
	db $9c			;CMD End 
					;Wait Repeat 4
	db $29			;Note F-4
	db $9c			;CMD End 
					;Wait Repeat 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c0			;Wait 1
	db $33			;Note D#5
	db $63			;Volume 1
	db $9c			;CMD End 
					;Wait Repeat 1
	db $35			;Note F-5
	db $6f			;Volume 13
	db $91,$07			;CMD Portamento tone
	db $c5			;Wait 6
	db $60			;Release 96
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $70			;Volume 14
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $25			;Note C#4
					;Wait Repeat 4
	db $2a			;Note F#4
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_112:
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $10			;Note E-2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $15			;Note A-2
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_113:
	db $3a			;Note A#5
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3b			;Note B-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_114:
	db $29			;Note F-4
	db $70			;Volume 14
	db $72			;Instrument 0
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $33			;Note D#5
	db $6e			;Volume 12
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c2			;Wait 3
	db $38			;Note G#5
	db $71			;Volume 15
	db $91,$0a			;CMD Portamento tone
					;Wait Repeat 3
	db $95,$76			;CMD Vibrato
	db $c3			;Wait 4
	db $36			;Note F#5
	db $6f			;Volume 13
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $31			;Note C#5
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $70			;Volume 14
					;Wait Repeat 2
	db $29			;Note F-4
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $6f			;Volume 13
					;Wait Repeat 2
	db $34			;Note E-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $28			;Note E-4
	db $6f			;Volume 13
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6e			;Volume 12
					;Wait Repeat 2
	db $34			;Note E-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3b			;Note B-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $38			;Note G#5
	db $70			;Volume 14
					;Wait Repeat 2
	db $34			;Note E-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $38			;Note G#5
	db $70			;Volume 14
					;Wait Repeat 2
	db $3b			;Note B-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3d			;Note C#6
	db $70			;Volume 14
					;Wait Repeat 2
	db $40			;Note E-6
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3b			;Note B-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $38			;Note G#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $34			;Note E-5
	db $70			;Volume 14
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_115:
	db $c2			;Wait 3
	db $95,$77			;CMD Vibrato
	db $e0			;Wait 33
	db $34			;Note E-5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_117:
	db $c2			;Wait 3
	db $95,$77			;CMD Vibrato
	db $e0			;Wait 33
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_118:
	db $c0			;Wait 1
	db $29			;Note F-4
	db $70			;Volume 14
	db $7a			;Instrument 8
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $33			;Note D#5
	db $6e			;Volume 12
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c2			;Wait 3
	db $38			;Note G#5
	db $71			;Volume 15
	db $91,$0a			;CMD Portamento tone
					;Wait Repeat 3
	db $95,$76			;CMD Vibrato
	db $c3			;Wait 4
	db $36			;Note F#5
	db $6f			;Volume 13
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $31			;Note C#5
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $70			;Volume 14
					;Wait Repeat 2
	db $29			;Note F-4
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $6f			;Volume 13
					;Wait Repeat 2
	db $34			;Note E-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $28			;Note E-4
	db $6f			;Volume 13
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6e			;Volume 12
					;Wait Repeat 2
	db $34			;Note E-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3b			;Note B-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $38			;Note G#5
	db $70			;Volume 14
					;Wait Repeat 2
	db $34			;Note E-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $38			;Note G#5
	db $70			;Volume 14
					;Wait Repeat 2
	db $3b			;Note B-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3d			;Note C#6
	db $70			;Volume 14
					;Wait Repeat 2
	db $40			;Note E-6
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3b			;Note B-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $38			;Note G#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $34			;Note E-5
	db $70			;Volume 14
	db $bf			;[End-Of-Track]
.track_119:
	db $70			;Volume 14
	db $74			;Instrument 2
	db $95,$87			;CMD Vibrato
	db $c7			;Wait 8
	db $60			;Release 96
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $9c			;CMD End 
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $22			;Note A#3
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $16			;Note A#2
	db $c2			;Wait 3
	db $1b			;Note D#3
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $1e			;Note F#3
	db $70			;Volume 14
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $17			;Note B-2
	db $c2			;Wait 3
	db $20			;Note G#3
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $23			;Note B-3
	db $70			;Volume 14
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $20			;Note G#3
	db $9c			;CMD End 
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $17			;Note B-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_121:
	db $2a			;Note F#4
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $31			;Note C#5
	db $c1			;Wait 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $36			;Note F#5
	db $c1			;Wait 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_122:
	db $35			;Note F-5
	db $70			;Volume 14
	db $72			;Instrument 0
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c2			;Wait 3
	db $31			;Note C#5
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $35			;Note F-5
	db $70			;Volume 14
	db $91,$0f			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c2			;Wait 3
	db $33			;Note D#5
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $38			;Note G#5
	db $6f			;Volume 13
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
					;Wait Repeat 4
	db $35			;Note F-5
	db $6f			;Volume 13
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $38			;Note G#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3c			;Note C-6
	db $70			;Volume 14
					;Wait Repeat 2
	db $35			;Note F-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $31			;Note C#5
	db $70			;Volume 14
					;Wait Repeat 2
	db $35			;Note F-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $70			;Volume 14
					;Wait Repeat 2
	db $38			;Note G#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $70			;Volume 14
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_123:
	db $35			;Note F-5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $38			;Note G#5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d8			;Wait 25
	db $3c			;Note C-6
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_124:
	db $31			;Note C#5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $35			;Note F-5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d8			;Wait 25
	db $33			;Note D#5
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_125:
	db $2e			;Note A#4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d8			;Wait 25
	db $30			;Note C-5
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_126:
	db $c0			;Wait 1
	db $35			;Note F-5
	db $70			;Volume 14
	db $7a			;Instrument 8
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c2			;Wait 3
	db $31			;Note C#5
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $35			;Note F-5
	db $70			;Volume 14
	db $91,$0f			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c2			;Wait 3
	db $33			;Note D#5
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $38			;Note G#5
	db $6f			;Volume 13
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
					;Wait Repeat 4
	db $35			;Note F-5
	db $6f			;Volume 13
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $38			;Note G#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3c			;Note C-6
	db $70			;Volume 14
					;Wait Repeat 2
	db $35			;Note F-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $31			;Note C#5
	db $70			;Volume 14
					;Wait Repeat 2
	db $35			;Note F-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $70			;Volume 14
					;Wait Repeat 2
	db $38			;Note G#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $70			;Volume 14
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_127:
	db $1e			;Note F#3
	db $70			;Volume 14
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
	db $c7			;Wait 8
	db $16			;Note A#2
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $60			;Release 96
	db $c2			;Wait 3
	db $1e			;Note F#3
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $22			;Note A#3
	db $70			;Volume 14
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $20			;Note G#3
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c2			;Wait 3
	db $16			;Note A#2
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $60			;Release 96
	db $c2			;Wait 3
	db $20			;Note G#3
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $22			;Note A#3
	db $70			;Volume 14
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $1e			;Note F#3
	db $9c			;CMD End 
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $11			;Note F-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_128:
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $10			;Note E-2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $10			;Note E-2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_129:
	db $48			;Note C-7
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3d			;Note C#6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_130:
	db $c1			;Wait 2
	db $33			;Note D#5
	db $70			;Volume 14
	db $72			;Instrument 0
	db $9c			;CMD End 
					;Wait Repeat 2
	db $38			;Note G#5
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
					;Wait Repeat 4
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $33			;Note D#5
	db $91,$11			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
					;Wait Repeat 4
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $27			;Note D#4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $95,$76			;CMD Vibrato
					;Wait Repeat 2
	db $24			;Note C-4
	db $9c			;CMD End 
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $95,$76			;CMD Vibrato
					;Wait Repeat 2
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $30			;Note C-5
	db $c1			;Wait 2
	db $38			;Note G#5
	db $6f			;Volume 13
	db $91,$11			;CMD Portamento tone
	db $c3			;Wait 4
	db $31			;Note C#5
	db $c1			;Wait 2
	db $33			;Note D#5
	db $70			;Volume 14
	db $9c			;CMD End 
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_131:
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
	db $cb			;Wait 12
	db $38			;Note G#5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $dc			;Wait 29
	db $35			;Note F-5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_132:
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
	db $ef			;Wait 48
	db $31			;Note C#5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_133:
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
	db $ef			;Wait 48
	db $2c			;Note G#4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_134:
	db $c2			;Wait 3
	db $33			;Note D#5
	db $70			;Volume 14
	db $7a			;Instrument 8
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $38			;Note G#5
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
					;Wait Repeat 4
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $33			;Note D#5
	db $91,$11			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
					;Wait Repeat 4
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $27			;Note D#4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $95,$76			;CMD Vibrato
					;Wait Repeat 2
	db $24			;Note C-4
	db $9c			;CMD End 
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $95,$76			;CMD Vibrato
					;Wait Repeat 2
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $30			;Note C-5
	db $c1			;Wait 2
	db $38			;Note G#5
	db $6f			;Volume 13
	db $91,$11			;CMD Portamento tone
	db $c3			;Wait 4
	db $31			;Note C#5
	db $c1			;Wait 2
	db $33			;Note D#5
	db $70			;Volume 14
	db $9c			;CMD End 
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $bf			;[End-Of-Track]
.track_135:
	db $1d			;Note F-3
	db $70			;Volume 14
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $11			;Note F-2
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $20			;Note G#3
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $18			;Note C-3
	db $c2			;Wait 3
	db $22			;Note A#3
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $24			;Note C-4
	db $70			;Volume 14
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $11			;Note F-2
	db $9c			;CMD End 
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $11			;Note F-2
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $18			;Note C-3
					;Wait Repeat 4
	db $1d			;Note F-3
	db $c3			;Wait 4
	db $22			;Note A#3
	db $9c			;CMD End 
					;Wait Repeat 4
	db $95,$87			;CMD Vibrato
					;Wait Repeat 4
	db $19			;Note C#3
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_136:
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $10			;Note E-2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $10			;Note E-2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $94,$c1			;CMD Arpeggio
					;Wait Repeat 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $10			;Note E-2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6c			;Volume 10
	db $9d,$02			;CMD Drum $04
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $9d,$02			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_137:
	db $22			;Note A#3
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $24			;Note C-4
	db $c1			;Wait 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $35			;Note F-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_138:
	db $37			;Note G-5
	db $70			;Volume 14
	db $72			;Instrument 0
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $6f			;Volume 13
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $3f			;Note D#6
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3e			;Note D-6
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $70			;Volume 14
					;Wait Repeat 2
	db $37			;Note G-5
	db $c1			;Wait 2
	db $30			;Note C-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $31			;Note C#5
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $3a			;Note A#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $30			;Note C-5
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $70			;Volume 14
	db $c3			;Wait 4
	db $30			;Note C-5
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $33			;Note D#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $35			;Note F-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $37			;Note G-5
	db $c1			;Wait 2
	db $39			;Note A-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $41			;Note F-6
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $40			;Note E-6
	db $6f			;Volume 13
	db $91,$21			;CMD Portamento tone
					;Wait Repeat 2
	db $3f			;Note D#6
	db $9c			;CMD End 
					;Wait Repeat 2
	db $35			;Note F-5
	db $6e			;Volume 12
					;Wait Repeat 2
	db $38			;Note G#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $39			;Note A-5
	db $70			;Volume 14
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_139:
	db $37			;Note G-5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $3a			;Note A#5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $cc			;Wait 13
	db $39			;Note A-5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_140:
	db $33			;Note D#5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $35			;Note F-5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_141:
	db $2e			;Note A#4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $d4			;Wait 21
	db $30			;Note C-5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_142:
	db $c0			;Wait 1
	db $37			;Note G-5
	db $70			;Volume 14
	db $7a			;Instrument 8
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $6f			;Volume 13
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $3f			;Note D#6
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3e			;Note D-6
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $70			;Volume 14
					;Wait Repeat 2
	db $37			;Note G-5
	db $c1			;Wait 2
	db $30			;Note C-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $31			;Note C#5
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $3a			;Note A#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $30			;Note C-5
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $70			;Volume 14
	db $c3			;Wait 4
	db $30			;Note C-5
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $33			;Note D#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $35			;Note F-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $37			;Note G-5
	db $c1			;Wait 2
	db $39			;Note A-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $41			;Note F-6
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $40			;Note E-6
	db $6f			;Volume 13
	db $91,$21			;CMD Portamento tone
					;Wait Repeat 2
	db $3f			;Note D#6
	db $9c			;CMD End 
					;Wait Repeat 2
	db $35			;Note F-5
	db $6e			;Volume 12
					;Wait Repeat 2
	db $38			;Note G#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $39			;Note A-5
	db $70			;Volume 14
	db $bf			;[End-Of-Track]
.track_143:
	db $18			;Note C-3
	db $70			;Volume 14
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $13			;Note G-2
	db $c2			;Wait 3
	db $15			;Note A-2
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $18			;Note C-3
	db $70			;Volume 14
	db $91,$0d			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $1b			;Note D#3
	db $9c			;CMD End 
					;Wait Repeat 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $1a			;Note D-3
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $11			;Note F-2
					;Wait Repeat 4
	db $18			;Note C-3
					;Wait Repeat 4
	db $1a			;Note D-3
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $1d			;Note F-3
					;Wait Repeat 4
	db $60			;Release 96
	db $c2			;Wait 3
	db $1f			;Note G-3
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $21			;Note A-3
	db $70			;Volume 14
	db $91,$0a			;CMD Portamento tone
	db $c2			;Wait 3
	db $1e			;Note F#3
	db $63			;Volume 1
	db $9c			;CMD End 
	db $bf			;[End-Of-Track]
.track_144:
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $10			;Note E-2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $10			;Note E-2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6c			;Volume 10
	db $9d,$02			;CMD Drum $04
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $9d,$02			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_145:
	db $44			;Note G#6
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $27			;Note D#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_146:
	db $38			;Note G#5
	db $6f			;Volume 13
	db $72			;Instrument 0
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $3f			;Note D#6
	db $70			;Volume 14
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $70			;Volume 14
	db $c1			;Wait 2
	db $38			;Note G#5
	db $70			;Volume 14
	db $c2			;Wait 3
	db $95,$76			;CMD Vibrato
					;Wait Repeat 3
	db $2c			;Note G#4
	db $6f			;Volume 13
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $33			;Note D#5
	db $70			;Volume 14
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $30			;Note C-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $33			;Note D#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $3f			;Note D#6
	db $70			;Volume 14
					;Wait Repeat 2
	db $3a			;Note A#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $38			;Note G#5
	db $70			;Volume 14
					;Wait Repeat 2
	db $3c			;Note C-6
	db $6f			;Volume 13
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $70			;Volume 14
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6f			;Volume 13
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $27			;Note D#4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6f			;Volume 13
					;Wait Repeat 2
	db $33			;Note D#5
	db $70			;Volume 14
					;Wait Repeat 2
	db $30			;Note C-5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_147:
	db $38			;Note G#5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $f8			;Wait 57
	db $bf			;[End-Of-Track]
.track_148:
	db $33			;Note D#5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $f8			;Wait 57
	db $bf			;[End-Of-Track]
.track_149:
	db $30			;Note C-5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$77			;CMD Vibrato
	db $f8			;Wait 57
	db $bf			;[End-Of-Track]
.track_150:
	db $c0			;Wait 1
	db $38			;Note G#5
	db $6f			;Volume 13
	db $7a			;Instrument 8
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$76			;CMD Vibrato
	db $c1			;Wait 2
	db $3f			;Note D#6
	db $70			;Volume 14
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $70			;Volume 14
	db $c1			;Wait 2
	db $38			;Note G#5
	db $70			;Volume 14
	db $c2			;Wait 3
	db $95,$76			;CMD Vibrato
					;Wait Repeat 3
	db $2c			;Note G#4
	db $6f			;Volume 13
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $33			;Note D#5
	db $70			;Volume 14
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $30			;Note C-5
	db $70			;Volume 14
					;Wait Repeat 2
	db $33			;Note D#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $3f			;Note D#6
	db $70			;Volume 14
					;Wait Repeat 2
	db $3a			;Note A#5
	db $6f			;Volume 13
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $33			;Note D#5
	db $c2			;Wait 3
	db $38			;Note G#5
	db $70			;Volume 14
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $6f			;Volume 13
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $70			;Volume 14
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6f			;Volume 13
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $33			;Note D#5
	db $70			;Volume 14
					;Wait Repeat 2
	db $30			;Note C-5
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_151:
	db $20			;Note G#3
	db $70			;Volume 14
	db $74			;Instrument 2
	db $91,$0a			;CMD Portamento tone
	db $c5			;Wait 6
	db $95,$87			;CMD Vibrato
					;Wait Repeat 6
	db $14			;Note G#2
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $1e			;Note F#3
	db $63			;Volume 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $20			;Note G#3
	db $70			;Volume 14
	db $91,$06			;CMD Portamento tone
	db $c5			;Wait 6
	db $95,$87			;CMD Vibrato
					;Wait Repeat 6
	db $1d			;Note F-3
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $18			;Note C-3
	db $c3			;Wait 4
	db $14			;Note G#2
	db $9c			;CMD End 
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $11			;Note F-2
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $1d			;Note F-3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_158:
	db $3e			;Note D-6
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $95,$66			;CMD Vibrato
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $43			;Note G-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1d			;Note F-3
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $1f			;Note G-3
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $24			;Note C-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_166:
	db $3e			;Note D-6
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $95,$66			;CMD Vibrato
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $45			;Note A-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $42			;Note F#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $40			;Note E-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3f			;Note D#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $40			;Note E-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $42			;Note F#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $44			;Note G#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $45			;Note A-6
					;Wait Repeat 1
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_170:
	db $33			;Note D#5
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $c7			;Wait 8
	db $33			;Note D#5
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $c7			;Wait 8
	db $28			;Note E-4
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $c5			;Wait 6
	db $2e			;Note A#4
	db $c3			;Wait 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $2e			;Note A#4
					;Wait Repeat 4
	db $27			;Note D#4
					;Wait Repeat 4
	db $22			;Note A#3
					;Wait Repeat 4
	db $1b			;Note D#3
					;Wait Repeat 4
	db $20			;Note G#3
					;Wait Repeat 4
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_174:
	db $c1			;Wait 2
	db $3b			;Note B-5
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $33			;Note D#5
	db $c7			;Wait 8
	db $3b			;Note B-5
	db $c3			;Wait 4
	db $33			;Note D#5
	db $c7			;Wait 8
	db $38			;Note G#5
	db $c3			;Wait 4
	db $3f			;Note D#6
	db $c5			;Wait 6
	db $36			;Note F#5
	db $c3			;Wait 4
	db $3b			;Note B-5
					;Wait Repeat 4
	db $36			;Note F#5
					;Wait Repeat 4
	db $2f			;Note B-4
					;Wait Repeat 4
	db $2a			;Note F#4
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $3d			;Note C#6
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_178:
	db $31			;Note C#5
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $c7			;Wait 8
	db $31			;Note C#5
	db $c3			;Wait 4
	db $29			;Note F-4
	db $c7			;Wait 8
	db $29			;Note F-4
	db $c3			;Wait 4
	db $2e			;Note A#4
	db $c7			;Wait 8
	db $31			;Note C#5
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $c7			;Wait 8
	db $31			;Note C#5
	db $c3			;Wait 4
	db $2a			;Note F#4
					;Wait Repeat 4
	db $29			;Note F-4
					;Wait Repeat 4
	db $2c			;Note G#4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_182:
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $35			;Note F-5
	db $c7			;Wait 8
	db $3a			;Note A#5
	db $c3			;Wait 4
	db $31			;Note C#5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $36			;Note F#5
	db $c3			;Wait 4
	db $3d			;Note C#6
	db $c7			;Wait 8
	db $38			;Note G#5
	db $c3			;Wait 4
	db $31			;Note C#5
	db $c7			;Wait 8
	db $38			;Note G#5
	db $c3			;Wait 4
	db $31			;Note C#5
					;Wait Repeat 4
	db $36			;Note F#5
					;Wait Repeat 4
	db $3d			;Note C#6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_186:
	db $2c			;Note G#4
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $36			;Note F#5
	db $c5			;Wait 6
	db $2a			;Note F#4
	db $c3			;Wait 4
	db $3b			;Note B-5
	db $c5			;Wait 6
	db $2f			;Note B-4
	db $c3			;Wait 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $2c			;Note G#4
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $3c			;Note C-6
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $3c			;Note C-6
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $2e			;Note A#4
					;Wait Repeat 4
	db $35			;Note F-5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_190:
	db $c1			;Wait 2
	db $3b			;Note B-5
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $47			;Note B-6
	db $c5			;Wait 6
	db $38			;Note G#5
					;Wait Repeat 6
	db $38			;Note G#5
	db $c3			;Wait 4
	db $42			;Note F#6
					;Wait Repeat 4
	db $42			;Note F#6
					;Wait Repeat 4
	db $3a			;Note A#5
					;Wait Repeat 4
	db $3d			;Note C#6
					;Wait Repeat 4
	db $46			;Note A#6
					;Wait Repeat 4
	db $49			;Note C#7
					;Wait Repeat 4
	db $49			;Note C#7
					;Wait Repeat 4
	db $46			;Note A#6
					;Wait Repeat 4
	db $3d			;Note C#6
					;Wait Repeat 4
	db $3d			;Note C#6
					;Wait Repeat 4
	db $44			;Note G#6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_194:
	db $3a			;Note A#5
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $3a			;Note A#5
					;Wait Repeat 4
	db $38			;Note G#5
	db $c5			;Wait 6
	db $3a			;Note A#5
	db $c3			;Wait 4
	db $3a			;Note A#5
	db $c5			;Wait 6
	db $41			;Note F-6
	db $c3			;Wait 4
	db $3a			;Note A#5
					;Wait Repeat 4
	db $34			;Note E-5
					;Wait Repeat 4
	db $31			;Note C#5
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $40			;Note E-6
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $2f			;Note B-4
					;Wait Repeat 4
	db $38			;Note G#5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_198:
	db $c1			;Wait 2
	db $49			;Note C#7
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $49			;Note C#7
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $46			;Note A#6
	db $c5			;Wait 6
	db $4d			;Note F-7
					;Wait Repeat 6
	db $50			;Note G#7
	db $c3			;Wait 4
	db $49			;Note C#7
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $3b			;Note B-5
					;Wait Repeat 4
	db $40			;Note E-6
					;Wait Repeat 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $42			;Note F#6
					;Wait Repeat 4
	db $40			;Note E-6
					;Wait Repeat 4
	db $47			;Note B-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_202:
	db $2a			;Note F#4
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $31			;Note C#5
	db $c7			;Wait 8
	db $31			;Note C#5
	db $c3			;Wait 4
	db $36			;Note F#5
	db $c7			;Wait 8
	db $36			;Note F#5
	db $c3			;Wait 4
	db $2c			;Note G#4
					;Wait Repeat 4
	db $31			;Note C#5
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $3a			;Note A#5
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $3a			;Note A#5
					;Wait Repeat 4
	db $38			;Note G#5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_206:
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $41			;Note F-6
	db $c7			;Wait 8
	db $41			;Note F-6
	db $c3			;Wait 4
	db $46			;Note A#6
	db $c7			;Wait 8
	db $46			;Note A#6
	db $c3			;Wait 4
	db $3a			;Note A#5
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $44			;Note G#6
					;Wait Repeat 4
	db $49			;Note C#7
					;Wait Repeat 4
	db $50			;Note G#7
					;Wait Repeat 4
	db $50			;Note G#7
					;Wait Repeat 4
	db $49			;Note C#7
					;Wait Repeat 4
	db $50			;Note G#7
					;Wait Repeat 4
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_210:
	db $48			;Note C-7
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $3f			;Note D#6
	db $c7			;Wait 8
	db $3c			;Note C-6
	db $c5			;Wait 6
	db $24			;Note C-4
	db $c3			;Wait 4
	db $2c			;Note G#4
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $3c			;Note C-6
	db $c5			;Wait 6
	db $48			;Note C-7
	db $c3			;Wait 4
	db $3f			;Note D#6
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $2c			;Note G#4
					;Wait Repeat 4
	db $31			;Note C#5
					;Wait Repeat 4
	db $3a			;Note A#5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_214:
	db $c1			;Wait 2
	db $50			;Note G#7
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $48			;Note C-7
	db $c7			;Wait 8
	db $44			;Note G#6
	db $c5			;Wait 6
	db $33			;Note D#5
	db $c3			;Wait 4
	db $3c			;Note C-6
					;Wait Repeat 4
	db $44			;Note G#6
	db $c5			;Wait 6
	db $4b			;Note D#7
	db $c3			;Wait 4
	db $50			;Note G#7
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $3f			;Note D#6
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $3a			;Note A#5
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $49			;Note C#7
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_218:
	db $22			;Note A#3
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $27			;Note D#4
	db $c7			;Wait 8
	db $24			;Note C-4
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $c5			;Wait 6
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $29			;Note F-4
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $35			;Note F-5
					;Wait Repeat 4
	db $3c			;Note C-6
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $3c			;Note C-6
					;Wait Repeat 4
	db $3c			;Note C-6
					;Wait Repeat 4
	db $35			;Note F-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_222:
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $37			;Note G-5
	db $c7			;Wait 8
	db $33			;Note D#5
	db $c3			;Wait 4
	db $3a			;Note A#5
	db $c5			;Wait 6
	db $3a			;Note A#5
	db $c3			;Wait 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $3a			;Note A#5
					;Wait Repeat 4
	db $3c			;Note C-6
					;Wait Repeat 4
	db $46			;Note A#6
					;Wait Repeat 4
	db $46			;Note A#6
					;Wait Repeat 4
	db $51			;Note A-7
					;Wait Repeat 4
	db $4a			;Note D-7
					;Wait Repeat 4
	db $45			;Note A-6
					;Wait Repeat 4
	db $45			;Note A-6
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_226:
	db $44			;Note G#6
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $3c			;Note C-6
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $29			;Note F-4
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $35			;Note F-5
					;Wait Repeat 4
	db $3c			;Note C-6
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $3c			;Note C-6
					;Wait Repeat 4
	db $35			;Note F-5
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $29			;Note F-4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_230:
	db $c1			;Wait 2
	db $4b			;Note D#7
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $c3			;Wait 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $3f			;Note D#6
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $3f			;Note D#6
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $3f			;Note D#6
					;Wait Repeat 4
	db $44			;Note G#6
					;Wait Repeat 4
	db $4b			;Note D#7
					;Wait Repeat 4
	db $50			;Note G#7
					;Wait Repeat 4
	db $4b			;Note D#7
					;Wait Repeat 4
	db $44			;Note G#6
					;Wait Repeat 4
	db $3f			;Note D#6
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $33			;Note D#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_234:
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $33			;Note D#5
	db $91,$1f			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $3b			;Note B-5
	db $6d			;Volume 11
	db $91,$1f			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $38			;Note G#5
	db $91,$0f			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $34			;Note E-5
	db $91,$1f			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $33			;Note D#5
	db $91,$05			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $cb			;Wait 12
	db $31			;Note C#5
	db $91,$08			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $2e			;Note A#4
	db $91,$08			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_238:
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $79			;Instrument 7
	db $9c			;CMD End 
					;Wait Repeat 2
	db $33			;Note D#5
	db $91,$1f			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $3b			;Note B-5
	db $6d			;Volume 11
	db $91,$1f			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $38			;Note G#5
	db $91,$0f			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $34			;Note E-5
	db $91,$1f			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $33			;Note D#5
	db $91,$05			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $cb			;Wait 12
	db $31			;Note C#5
	db $91,$08			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $2e			;Note A#4
	db $91,$08			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_242:
	db $31			;Note C#5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $91,$08			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $3a			;Note A#5
	db $91,$24			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $ca			;Wait 11
	db $35			;Note F-5
	db $91,$15			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $cb			;Wait 12
	db $30			;Note C-5
	db $6e			;Volume 12
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $31			;Note C#5
	db $6d			;Volume 11
	db $91,$10			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c0			;Wait 1
	db $33			;Note D#5
	db $91,$10			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c3			;Wait 4
	db $35			;Note F-5
	db $91,$10			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $36			;Note F#5
	db $91,$10			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_246:
	db $31			;Note C#5
	db $6d			;Volume 11
	db $79			;Instrument 7
	db $91,$08			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $3a			;Note A#5
	db $91,$24			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $ca			;Wait 11
	db $35			;Note F-5
	db $91,$15			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $cb			;Wait 12
	db $30			;Note C-5
	db $6e			;Volume 12
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $31			;Note C#5
	db $6d			;Volume 11
	db $91,$10			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c0			;Wait 1
	db $33			;Note D#5
	db $91,$10			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c3			;Wait 4
	db $35			;Note F-5
	db $91,$10			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $36			;Note F#5
	db $91,$10			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_250:
	db $2e			;Note A#4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $91,$10			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $91,$10			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $31			;Note C#5
	db $91,$10			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $33			;Note D#5
	db $91,$10			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $91,$10			;CMD Portamento tone
	db $c3			;Wait 4
	db $33			;Note D#5
	db $9c			;CMD End 
					;Wait Repeat 4
	db $35			;Note F-5
	db $95,$55			;CMD Vibrato
	db $c2			;Wait 3
	db $60			;Release 96
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3a			;Note A#5
	db $91,$10			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $41			;Note F-6
	db $91,$22			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $3d			;Note C#6
	db $9c			;CMD End 
					;Wait Repeat 4
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $3a			;Note A#5
	db $95,$44			;CMD Vibrato
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_254:
	db $2e			;Note A#4
	db $6d			;Volume 11
	db $79			;Instrument 7
	db $91,$10			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $91,$10			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $31			;Note C#5
	db $91,$10			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $33			;Note D#5
	db $91,$10			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $91,$10			;CMD Portamento tone
	db $c3			;Wait 4
	db $33			;Note D#5
	db $9c			;CMD End 
					;Wait Repeat 4
	db $35			;Note F-5
	db $95,$55			;CMD Vibrato
	db $c2			;Wait 3
	db $60			;Release 96
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3a			;Note A#5
	db $91,$10			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $41			;Note F-6
	db $91,$22			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $3d			;Note C#6
	db $9c			;CMD End 
					;Wait Repeat 4
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $3a			;Note A#5
	db $95,$44			;CMD Vibrato
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_258:
	db $3a			;Note A#5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $95,$45			;CMD Vibrato
	db $c2			;Wait 3
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $38			;Note G#5
	db $91,$15			;CMD Portamento tone
	db $c3			;Wait 4
	db $41			;Note F-6
	db $6e			;Volume 12
	db $91,$15			;CMD Portamento tone
					;Wait Repeat 4
	db $3d			;Note C#6
	db $91,$15			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $44			;Note G#6
	db $6d			;Volume 11
	db $91,$20			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $3d			;Note C#6
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $38			;Note G#5
	db $6e			;Volume 12
	db $9c			;CMD End 
					;Wait Repeat 2
	db $40			;Note E-6
	db $6d			;Volume 11
	db $a1			;CMD Note link
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $3d			;Note C#6
	db $91,$12			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$12			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $38			;Note G#5
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $34			;Note E-5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_262:
	db $3a			;Note A#5
	db $6d			;Volume 11
	db $79			;Instrument 7
	db $95,$45			;CMD Vibrato
	db $c2			;Wait 3
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $38			;Note G#5
	db $91,$15			;CMD Portamento tone
	db $c3			;Wait 4
	db $41			;Note F-6
	db $6e			;Volume 12
	db $91,$15			;CMD Portamento tone
					;Wait Repeat 4
	db $3d			;Note C#6
	db $91,$15			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $44			;Note G#6
	db $6d			;Volume 11
	db $91,$20			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $3d			;Note C#6
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $38			;Note G#5
	db $6e			;Volume 12
	db $9c			;CMD End 
					;Wait Repeat 2
	db $40			;Note E-6
	db $6d			;Volume 11
	db $a1			;CMD Note link
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $3d			;Note C#6
	db $91,$12			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$12			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $38			;Note G#5
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $34			;Note E-5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_266:
	db $60			;Release 96
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $3a			;Note A#5
	db $91,$10			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $3f			;Note D#6
	db $91,$13			;CMD Portamento tone
	db $c3			;Wait 4
	db $3d			;Note C#6
	db $91,$15			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $41			;Note F-6
	db $c3			;Wait 4
	db $60			;Release 96
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $9c			;CMD End 
					;Wait Repeat 1
	db $3a			;Note A#5
	db $91,$14			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $44			;Note G#6
	db $91,$15			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c2			;Wait 3
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $49			;Note C#7
	db $91,$16			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $46			;Note A#6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $44			;Note G#6
	db $91,$10			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c3			;Wait 4
	db $3f			;Note D#6
	db $95,$44			;CMD Vibrato
	db $c2			;Wait 3
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_270:
	db $60			;Release 96
	db $6d			;Volume 11
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $3a			;Note A#5
	db $91,$10			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $3f			;Note D#6
	db $91,$13			;CMD Portamento tone
	db $c3			;Wait 4
	db $3d			;Note C#6
	db $91,$15			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $41			;Note F-6
	db $c3			;Wait 4
	db $60			;Release 96
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $9c			;CMD End 
					;Wait Repeat 1
	db $3a			;Note A#5
	db $91,$14			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $44			;Note G#6
	db $91,$15			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c2			;Wait 3
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $49			;Note C#7
	db $91,$16			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $48			;Note C-7
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $46			;Note A#6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $44			;Note G#6
	db $91,$10			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c3			;Wait 4
	db $3f			;Note D#6
	db $95,$44			;CMD Vibrato
	db $c2			;Wait 3
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_274:
	db $48			;Note C-7
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $44			;Note G#6
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $44			;Note G#6
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $3f			;Note D#6
	db $6e			;Volume 12
	db $91,$0c			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$0d			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $9c			;CMD End 
					;Wait Repeat 1
	db $38			;Note G#5
	db $91,$18			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c2			;Wait 3
	db $3f			;Note D#6
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $3f			;Note D#6
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $41			;Note F-6
	db $91,$0c			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$54			;CMD Vibrato
	db $c5			;Wait 6
	db $9c			;CMD End 
	db $bf			;[End-Of-Track]
.track_278:
	db $48			;Note C-7
	db $6d			;Volume 11
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $44			;Note G#6
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $44			;Note G#6
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $3f			;Note D#6
	db $6e			;Volume 12
	db $91,$0c			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$0d			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $9c			;CMD End 
					;Wait Repeat 1
	db $38			;Note G#5
	db $91,$18			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $c2			;Wait 3
	db $3f			;Note D#6
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $3f			;Note D#6
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $41			;Note F-6
	db $91,$0c			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$54			;CMD Vibrato
	db $c5			;Wait 6
	db $9c			;CMD End 
	db $bf			;[End-Of-Track]
.track_282:
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $95,$56			;CMD Vibrato
	db $c3			;Wait 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $91,$19			;CMD Portamento tone
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $91,$09			;CMD Portamento tone
					;Wait Repeat 2
	db $3f			;Note D#6
	db $91,$09			;CMD Portamento tone
					;Wait Repeat 2
	db $41			;Note F-6
	db $91,$09			;CMD Portamento tone
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $60			;Release 96
	db $c2			;Wait 3
	db $3c			;Note C-6
	db $91,$10			;CMD Portamento tone
					;Wait Repeat 3
	db $60			;Release 96
	db $c4			;Wait 5
	db $43			;Note G-6
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $46			;Note A#6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$65			;CMD Vibrato
	db $c7			;Wait 8
	db $45			;Note A-6
	db $6c			;Volume 10
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $48			;Note C-7
	db $6c			;Volume 10
	db $91,$04			;CMD Portamento tone
	db $c7			;Wait 8
	db $95,$65			;CMD Vibrato
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_286:
	db $6d			;Volume 11
	db $79			;Instrument 7
	db $95,$56			;CMD Vibrato
	db $c3			;Wait 4
	db $43			;Note G-6
					;Wait Repeat 4
	db $60			;Release 96
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $91,$19			;CMD Portamento tone
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $91,$09			;CMD Portamento tone
					;Wait Repeat 2
	db $3f			;Note D#6
	db $91,$09			;CMD Portamento tone
					;Wait Repeat 2
	db $41			;Note F-6
	db $91,$09			;CMD Portamento tone
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $60			;Release 96
	db $c2			;Wait 3
	db $3c			;Note C-6
	db $91,$10			;CMD Portamento tone
					;Wait Repeat 3
	db $60			;Release 96
	db $c4			;Wait 5
	db $43			;Note G-6
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $46			;Note A#6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$65			;CMD Vibrato
	db $c7			;Wait 8
	db $45			;Note A-6
	db $6c			;Volume 10
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $48			;Note C-7
	db $6c			;Volume 10
	db $91,$04			;CMD Portamento tone
	db $c7			;Wait 8
	db $95,$65			;CMD Vibrato
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_290:
	db $43			;Note G-6
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $44			;Note G#6
	db $6d			;Volume 11
	db $91,$01			;CMD Portamento tone
	db $c6			;Wait 7
	db $95,$56			;CMD Vibrato
	db $f6			;Wait 55
	db $bf			;[End-Of-Track]
.track_294:
	db $43			;Note G-6
	db $6c			;Volume 10
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $44			;Note G#6
	db $6d			;Volume 11
	db $91,$01			;CMD Portamento tone
	db $c6			;Wait 7
	db $95,$56			;CMD Vibrato
	db $f6			;Wait 55
	db $bf			;[End-Of-Track]
.track_298:
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $df			;Wait 32
	db $3a			;Note A#5
	db $c3			;Wait 4
	db $34			;Note E-5
					;Wait Repeat 4
	db $31			;Note C#5
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $40			;Note E-6
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $2f			;Note B-4
					;Wait Repeat 4
	db $38			;Note G#5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_302:
	db $c1			;Wait 2
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $95,$47			;CMD Vibrato
	db $df			;Wait 32
	db $41			;Note F-6
	db $c3			;Wait 4
	db $3b			;Note B-5
					;Wait Repeat 4
	db $40			;Note E-6
					;Wait Repeat 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $47			;Note B-6
					;Wait Repeat 4
	db $42			;Note F#6
					;Wait Repeat 4
	db $40			;Note E-6
					;Wait Repeat 4
	db $47			;Note B-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_304:
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $15			;Note A-2
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
	db $c1			;Wait 2
	db $15			;Note A-2
	db $6c			;Volume 10
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_305:
	db $43			;Note G-6
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_306:
	db $43			;Note G-6
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3f			;Note D#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $42			;Note F#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $40			;Note E-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_307:
	db $37			;Note G-5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $36			;Note F#5
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $35			;Note F-5
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $34			;Note E-5
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_308:
	db $33			;Note D#5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $32			;Note D-5
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $31			;Note C#5
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $30			;Note C-5
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_309:
	db $30			;Note C-5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $2f			;Note B-4
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $2e			;Note A#4
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $2d			;Note A-4
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_310:
	db $2e			;Note A#4
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $2d			;Note A-4
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $2c			;Note G#4
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $2b			;Note G-4
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_311:
	db $13			;Note G-2
	db $70			;Volume 14
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $ca			;Wait 11
	db $60			;Release 96
	db $c0			;Wait 1
	db $15			;Note A-2
	db $91,$03			;CMD Portamento tone
	db $d2			;Wait 19
	db $60			;Release 96
	db $c0			;Wait 1
	db $19			;Note C#3
	db $91,$09			;CMD Portamento tone
	db $ca			;Wait 11
	db $60			;Release 96
	db $c0			;Wait 1
	db $18			;Note C-3
	db $91,$01			;CMD Portamento tone
	db $d3			;Wait 20
	db $bf			;[End-Of-Track]
.track_312:
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_313:
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_314:
	db $2c			;Note G#4
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $c1			;Wait 2
	db $33			;Note D#5
	db $6e			;Volume 12
					;Wait Repeat 2
	db $30			;Note C-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $33			;Note D#5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $30			;Note C-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $33			;Note D#5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $30			;Note C-5
	db $69			;Volume 7
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $67			;Volume 5
					;Wait Repeat 2
	db $33			;Note D#5
	db $68			;Volume 6
					;Wait Repeat 2
	db $30			;Note C-5
	db $67			;Volume 5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_315:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_318:
	db $2c			;Note G#4
	db $6d			;Volume 11
	db $7a			;Instrument 8
	db $c1			;Wait 2
	db $33			;Note D#5
	db $6e			;Volume 12
					;Wait Repeat 2
	db $30			;Note C-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $33			;Note D#5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $30			;Note C-5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $69			;Volume 7
					;Wait Repeat 2
	db $33			;Note D#5
	db $6a			;Volume 8
					;Wait Repeat 2
	db $30			;Note C-5
	db $69			;Volume 7
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $67			;Volume 5
					;Wait Repeat 2
	db $33			;Note D#5
	db $68			;Volume 6
					;Wait Repeat 2
	db $30			;Note C-5
	db $67			;Volume 5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_319:
	db $14			;Note G#2
	db $70			;Volume 14
	db $74			;Instrument 2
	db $91,$09			;CMD Portamento tone
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_320:
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 2
	db $15			;Note A-2
	db $6d			;Volume 11
	db $9d,$02			;CMD Drum $04
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $15			;Note A-2
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $15			;Note A-2
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
	db $c1			;Wait 2
	db $15			;Note A-2
	db $6c			;Volume 10
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $75			;Instrument 3
	db $9d,$02			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9d,$02			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_321:
	db $45			;Note A-6
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $c1			;Wait 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $2f			;Note B-4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $40			;Note E-6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_322:
	db $c0			;Wait 1
	db $45			;Note A-6
	db $6d			;Volume 11
	db $7b			;Instrument 9
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $44			;Note G#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $40			;Note E-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $43			;Note G-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3f			;Note D#6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $40			;Note E-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $3c			;Note C-6
	db $bf			;[End-Of-Track]
.track_323:
	db $39			;Note A-5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $38			;Note G#5
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $37			;Note G-5
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $34			;Note E-5
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_324:
	db $35			;Note F-5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $34			;Note E-5
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $33			;Note D#5
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $30			;Note C-5
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_325:
	db $32			;Note D-5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $30			;Note C-5
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $2d			;Note A-4
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_326:
	db $30			;Note C-5
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $2f			;Note B-4
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $2e			;Note A#4
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c4			;Wait 5
	db $95,$77			;CMD Vibrato
	db $c6			;Wait 7
	db $2b			;Note G-4
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$77			;CMD Vibrato
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_327:
	db $15			;Note A-2
	db $70			;Volume 14
	db $74			;Instrument 2
	db $9c			;CMD End 
	db $ca			;Wait 11
	db $60			;Release 96
	db $c0			;Wait 1
	db $17			;Note B-2
	db $91,$03			;CMD Portamento tone
	db $d2			;Wait 19
	db $60			;Release 96
	db $c0			;Wait 1
	db $1b			;Note D#3
	db $91,$09			;CMD Portamento tone
	db $ca			;Wait 11
	db $60			;Release 96
	db $c0			;Wait 1
	db $18			;Note C-3
	db $91,$05			;CMD Portamento tone
	db $d3			;Wait 20
	db $bf			;[End-Of-Track]

