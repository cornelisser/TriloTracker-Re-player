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
	dw .track_112, .track_112, .track_114, .track_114, .track_114, .track_114, .track_114, .track_114	; Step:000 Pattern:014
	dw .track_000, .track_001, .track_000, .track_000, .track_000, .track_000, .track_000, .track_007	; Step:001 Pattern:000
	dw .track_000, .track_009, .track_000, .track_000, .track_000, .track_000, .track_000, .track_015	; Step:002 Pattern:001
	dw .track_016, .track_009, .track_000, .track_000, .track_000, .track_000, .track_000, .track_023	; Step:003 Pattern:002
	dw .track_024, .track_025, .track_000, .track_000, .track_000, .track_000, .track_000, .track_031	; Step:004 Pattern:003
	dw .track_016, .track_001, .track_218, .track_219, .track_000, .track_000, .track_222, .track_159	; Step:005 Pattern:027
	dw .track_016, .track_009, .track_226, .track_000, .track_000, .track_000, .track_000, .track_015	; Step:006 Pattern:028
	dw .track_016, .track_009, .track_234, .track_235, .track_000, .track_000, .track_238, .track_239	; Step:007 Pattern:029
	dw .track_048, .track_025, .track_242, .track_000, .track_000, .track_000, .track_000, .track_031	; Step:008 Pattern:030
.restart:
	dw .track_016, .track_033, .track_034, .track_035, .track_036, .track_037, .track_038, .track_039	; Step:009 Pattern:004
	dw .track_040, .track_041, .track_000, .track_043, .track_044, .track_045, .track_000, .track_015	; Step:010 Pattern:005
	dw .track_048, .track_049, .track_050, .track_000, .track_052, .track_053, .track_038, .track_023	; Step:011 Pattern:006
	dw .track_056, .track_057, .track_000, .track_000, .track_060, .track_061, .track_062, .track_063	; Step:012 Pattern:007
	dw .track_080, .track_185, .track_034, .track_187, .track_188, .track_189, .track_190, .track_159	; Step:013 Pattern:023
	dw .track_080, .track_089, .track_000, .track_195, .track_196, .track_197, .track_000, .track_015	; Step:014 Pattern:024
	dw .track_080, .track_089, .track_050, .track_203, .track_204, .track_205, .track_038, .track_023	; Step:015 Pattern:025
	dw .track_064, .track_065, .track_066, .track_067, .track_068, .track_069, .track_066, .track_071	; Step:016 Pattern:008
	dw .track_352, .track_352, .track_352, .track_352, .track_356, .track_356, .track_352, .track_359	; Step:017 Pattern:044
	dw .track_072, .track_073, .track_074, .track_075, .track_076, .track_077, .track_078, .track_079	; Step:018 Pattern:009
	dw .track_080, .track_081, .track_082, .track_083, .track_084, .track_085, .track_086, .track_039	; Step:019 Pattern:010
	dw .track_080, .track_089, .track_000, .track_091, .track_092, .track_086, .track_094, .track_015	; Step:020 Pattern:011
	dw .track_080, .track_089, .track_000, .track_099, .track_100, .track_101, .track_102, .track_023	; Step:021 Pattern:012
	dw .track_104, .track_105, .track_106, .track_107, .track_108, .track_109, .track_110, .track_111	; Step:022 Pattern:013
	dw .track_016, .track_121, .track_122, .track_123, .track_124, .track_125, .track_126, .track_127	; Step:023 Pattern:015
	dw .track_128, .track_129, .track_000, .track_000, .track_132, .track_133, .track_134, .track_135	; Step:024 Pattern:016
	dw .track_080, .track_137, .track_138, .track_139, .track_140, .track_141, .track_142, .track_023	; Step:025 Pattern:017
	dw .track_144, .track_145, .track_146, .track_147, .track_148, .track_149, .track_000, .track_151	; Step:026 Pattern:018
	dw .track_080, .track_137, .track_154, .track_155, .track_156, .track_157, .track_158, .track_159	; Step:027 Pattern:019
	dw .track_160, .track_161, .track_162, .track_163, .track_164, .track_165, .track_166, .track_015	; Step:028 Pattern:020
	dw .track_080, .track_137, .track_170, .track_171, .track_172, .track_173, .track_142, .track_023	; Step:029 Pattern:021
	dw .track_176, .track_177, .track_178, .track_179, .track_180, .track_181, .track_182, .track_183	; Step:030 Pattern:022
	dw .track_080, .track_329, .track_330, .track_331, .track_332, .track_333, .track_334, .track_159	; Step:031 Pattern:041
	dw .track_336, .track_337, .track_338, .track_339, .track_340, .track_341, .track_342, .track_343	; Step:032 Pattern:042
	dw .track_080, .track_369, .track_370, .track_371, .track_172, .track_173, .track_142, .track_023	; Step:033 Pattern:046
	dw .track_344, .track_345, .track_346, .track_347, .track_348, .track_349, .track_350, .track_351	; Step:034 Pattern:043
	dw .track_264, .track_265, .track_266, .track_267, .track_268, .track_268, .track_270, .track_271	; Step:035 Pattern:033
	dw .track_248, .track_009, .track_000, .track_000, .track_000, .track_000, .track_000, .track_279	; Step:036 Pattern:034
	dw .track_248, .track_305, .track_306, .track_307, .track_308, .track_309, .track_310, .track_279	; Step:037 Pattern:038
	dw .track_248, .track_009, .track_000, .track_000, .track_000, .track_000, .track_000, .track_279	; Step:038 Pattern:034
	dw .track_248, .track_001, .track_250, .track_251, .track_252, .track_253, .track_254, .track_255	; Step:039 Pattern:031
	dw .track_288, .track_289, .track_290, .track_291, .track_000, .track_000, .track_000, .track_255	; Step:040 Pattern:036
	dw .track_048, .track_001, .track_258, .track_259, .track_260, .track_261, .track_262, .track_263	; Step:041 Pattern:032
	dw .track_296, .track_297, .track_298, .track_299, .track_000, .track_000, .track_000, .track_263	; Step:042 Pattern:037
	dw .track_248, .track_001, .track_250, .track_251, .track_252, .track_253, .track_254, .track_255	; Step:043 Pattern:031
	dw .track_288, .track_289, .track_290, .track_291, .track_000, .track_000, .track_000, .track_255	; Step:044 Pattern:036
	dw .track_048, .track_001, .track_258, .track_259, .track_260, .track_261, .track_262, .track_263	; Step:045 Pattern:032
	dw .track_296, .track_297, .track_298, .track_299, .track_000, .track_000, .track_000, .track_263	; Step:046 Pattern:037
	dw .track_280, .track_281, .track_282, .track_283, .track_284, .track_284, .track_286, .track_287	; Step:047 Pattern:035
	dw .track_280, .track_281, .track_282, .track_283, .track_284, .track_284, .track_286, .track_287	; Step:048 Pattern:035
	dw .track_320, .track_281, .track_322, .track_323, .track_284, .track_284, .track_326, .track_327	; Step:049 Pattern:040
	dw .track_320, .track_281, .track_322, .track_323, .track_284, .track_284, .track_326, .track_327	; Step:050 Pattern:040
	dw .track_280, .track_281, .track_282, .track_283, .track_284, .track_284, .track_286, .track_287	; Step:051 Pattern:035
	dw .track_280, .track_281, .track_282, .track_283, .track_284, .track_284, .track_286, .track_287	; Step:052 Pattern:035
	dw .track_360, .track_281, .track_362, .track_363, .track_284, .track_284, .track_366, .track_367	; Step:053 Pattern:045
	dw .track_376, .track_377, .track_378, .track_379, .track_380, .track_381, .track_382, .track_383	; Step:054 Pattern:047
	dw .track_384, .track_385, .track_386, .track_386, .track_386, .track_386, .track_386, .track_386	; Step:055 Pattern:048
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:
	db $00,$03,$08,$04,$21,$c0,$f0,$00 		; Custom voice:177
	db $00,$03,$09,$04,$c4,$d0,$f0,$00 		; Custom voice:178
	db $00,$03,$06,$03,$34,$f0,$d0,$00 		; Custom voice:179
	db $00,$03,$08,$04,$c1,$c0,$80,$00 		; Custom voice:180
	db $00,$02,$13,$06,$21,$c0,$f0,$00 		; Custom voice:181
	db $00,$04,$11,$04,$11,$60,$f0,$00 		; Custom voice:182

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
	db $08, $02							; volume HiHat
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
	dw .instrument_08				; OPLL-8 org      
	dw .instrument_09				; OPLL-6 obe      
	dw .instrument_10				; SNDR NS 01      
	dw .instrument_11				; OPLL 01 cst     
	dw .instrument_12				; PSG Drm 01      
	dw .instrument_13				; OPLL 03 ep      
	dw .instrument_14				; OPLL 04         
	dw .instrument_15				; OPLL 01 mcr1    
	dw .instrument_16				; OPLL 04 mcr1    
	dw .instrument_17				; OPLL mcr BASS 1 
	dw .instrument_18				; OPLL 05         
	dw .instrument_19				; PSG NS sand 1   

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
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $04,$fc,$ff					; Tone sub
	db $08,$0c						; Volume _
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
	db $02,$10						; Mixer (T)
	db $16,$d0						; FM Hardware Voice
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$d0						; FM Hardware Voice
	db $08,$0e						; Volume _
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

.instrument_08:					; OPLL-8 org      
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $16,$80						; FM Hardware Voice
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$80						; FM Hardware Voice
	db $08,$0e						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$80						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_09:					; OPLL-6 obe      
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $16,$60						; FM Hardware Voice
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$60						; FM Hardware Voice
	db $08,$0e						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$60						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_10:					; SNDR NS 01      
	db $0F					; FM Hardware Voice was not set
	db $02,$80						; Mixer (N)
	db $0E,$05						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$04						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$03						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$12						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$13						; Noise _
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$14						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$15						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$16						; Noise _
	db $00							; Volume same
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$16						; Noise _
	db $0c,$01						; Volume -
	db $18,$f9						; Loop (-8)

.instrument_11:					; OPLL 01 cst     
	db $00,$10					; FM Software Voice 3
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_12:					; PSG Drm 01      
	db $0F					; FM Hardware Voice was not set
	db $02,$90						; Mixer (TN)
	db $0E,$02						; Noise _
	db $08,$0f						; Volume _
	db $02,$90						; Mixer (TN)
	db $04,$3a,$00					; Tone add
	db $0E,$01						; Noise _
	db $08,$0d						; Volume _
	db $02,$90						; Mixer (TN)
	db $04,$3a,$00					; Tone add
	db $0E,$00						; Noise _
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $04,$3a,$00					; Tone add
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $04,$3a,$00					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$3a,$00					; Tone add
	db $08,$01						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $04,$3a,$00					; Tone add
	db $0c,$01						; Volume -
	db $18,$f8						; Loop (-9)

.instrument_13:					; OPLL 03 ep      
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $16,$30						; FM Hardware Voice
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$40						; FM Hardware Voice
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$40						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $16,$40						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $16,$40						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $16,$40						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $16,$40						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $16,$40						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $16,$40						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $16,$40						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $16,$40						; FM Hardware Voice
	db $0c,$01						; Volume -
	db $18,$d1						; Loop (-48)

.instrument_14:					; OPLL 04         
	db $00,$14					; FM Software Voice 4
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_15:					; OPLL 01 mcr1    
	db $00,$04					; FM Software Voice 0
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $16,$00						; FM Hardware Voice
	db $0c,$01						; Volume -
	db $18,$06						; Loop (-251)

.instrument_16:					; OPLL 04 mcr1    
	db $00,$14					; FM Software Voice 4
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$00,$04					; Tone add
	db $0c,$01						; Volume -
	db $18,$44						; Loop (-189)

.instrument_17:					; OPLL mcr BASS 1 
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $16,$d0						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$d0						; FM Hardware Voice
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$40						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$60						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f3						; Loop (-14)

.instrument_18:					; OPLL 05         
	db $00,$18					; FM Software Voice 5
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_19:					; PSG NS sand 1   
	db $0F					; FM Hardware Voice was not set
	db $02,$80						; Mixer (N)
	db $0E,$00						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$01						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$02						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$03						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$04						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$05						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$06						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$07						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$08						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$09						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0a						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0b						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0c						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0d						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0e						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0f						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$10						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$11						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$12						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$13						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$14						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$15						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$16						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$17						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$18						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$19						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1a						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1b						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1c						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1d						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1e						; Noise _
	db $00							; Volume same
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$1f						; Noise _
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)


; [ Song track data ]
.track_000:
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
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $a1			;CMD Note link
	db $c0			;Wait 1
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
	db $00			;Note C-1
	db $6c			;Volume 10
	db $85			;Instrument 19
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $6a			;Volume 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $69			;Volume 7
	db $c3			;Wait 4
	db $68			;Volume 6
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $67			;Volume 5
	db $c3			;Wait 4
	db $66			;Volume 4
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $65			;Volume 3
	db $c3			;Wait 4
	db $64			;Volume 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $63			;Volume 1
	db $c3			;Wait 4
	db $60			;Release 96
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
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
.track_035:
	db $28			;Note E-4
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_036:
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $6a			;Volume 8
	db $c1			;Wait 2
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
.track_039:
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
					;Wait Repeat 5
	db $39			;Note A-5
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$48			;CMD Vibrato
	db $bf			;[End-Of-Track]
.track_048:
	db $32			;Note D-5
	db $6d			;Volume 11
	db $73			;Instrument 1
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
	db $c5			;Wait 6
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_050:
	db $2b			;Note G-4
	db $6c			;Volume 10
	db $72			;Instrument 0
	db $95,$45			;CMD Vibrato
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_052:
	db $c1			;Wait 2
	db $39			;Note A-5
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $95,$48			;CMD Vibrato
	db $d1			;Wait 18
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
	db $32			;Note D-5
	db $6d			;Volume 11
	db $73			;Instrument 1
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
	db $c1			;Wait 2
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6b			;Volume 9
	db $73			;Instrument 1
	db $c1			;Wait 2
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
	db $00			;Note C-1
	db $6d			;Volume 11
	db $7c			;Instrument 10
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $04			;Note E-1
	db $6e			;Volume 12
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_060:
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $6c			;Volume 10
	db $95,$44			;CMD Vibrato
	db $cf			;Wait 16
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
	db $39			;Note A-5
	db $95,$44			;CMD Vibrato
	db $cf			;Wait 16
	db $39			;Note A-5
	db $a1			;CMD Note link
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
	db $39			;Note A-5
	db $95,$44			;CMD Vibrato
	db $c5			;Wait 6
	db $95,$48			;CMD Vibrato
	db $c9			;Wait 10
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$48			;CMD Vibrato
	db $c4			;Wait 5
	db $96,$02			;CMD Portamento up
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_062:
	db $df			;Wait 32
	db $3e			;Note D-6
	db $a1			;CMD Note link
	db $df			;Wait 32
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
	db $32			;Note D-5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $32			;Note D-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 4
	db $32			;Note D-5
	db $6b			;Volume 9
	db $73			;Instrument 1
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
	db $c1			;Wait 2
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6b			;Volume 9
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6c			;Volume 10
					;Wait Repeat 2
	db $32			;Note D-5
	db $6f			;Volume 13
	db $7c			;Instrument 10
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6b			;Volume 9
	db $73			;Instrument 1
					;Wait Repeat 4
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 4
	db $32			;Note D-5
	db $6a			;Volume 8
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $32			;Note D-5
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
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_066:
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_067:
	db $32			;Note D-5
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $cf			;Wait 16
	db $2f			;Note B-4
					;Wait Repeat 16
	db $2d			;Note A-4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_068:
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $95,$54			;CMD Vibrato
	db $cb			;Wait 12
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$54			;CMD Vibrato
	db $c6			;Wait 7
	db $96,$02			;CMD Portamento up
	db $c5			;Wait 6
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $96,$09			;CMD Portamento up
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_069:
	db $3e			;Note D-6
	db $6d			;Volume 11
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $95,$47			;CMD Vibrato
	db $cb			;Wait 12
	db $39			;Note A-5
	db $7d			;Instrument 11
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$47			;CMD Vibrato
	db $c6			;Wait 7
	db $96,$02			;CMD Portamento up
	db $c9			;Wait 10
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $96,$09			;CMD Portamento up
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_071:
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
	db $13			;Note G-2
	db $6f			;Volume 13
	db $72			;Instrument 0
	db $c0			;Wait 1
	db $13			;Note G-2
	db $6d			;Volume 11
	db $9e,$00			;CMD Arpegio speed
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $13			;Note G-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $13			;Note G-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $13			;Note G-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $13			;Note G-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $13			;Note G-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $13			;Note G-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $13			;Note G-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_072:
	db $18			;Note C-3
	db $6c			;Volume 10
	db $7c			;Instrument 10
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $6f			;Volume 13
	db $7e			;Instrument 12
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1a			;Note D-3
	db $c1			;Wait 2
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
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_075:
	db $c3			;Wait 4
	db $5f			;Note B-8
	db $63			;Volume 1
	db $77			;Instrument 5
	db $96,$03			;CMD Portamento up
	db $c0			;Wait 1
	db $63			;Volume 1
					;Wait Repeat 1
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
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_076:
	db $60			;Release 96
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $6e			;Volume 12
	db $75			;Instrument 3
	db $95,$35			;CMD Vibrato
	db $c0			;Wait 1
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
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_077:
	db $60			;Release 96
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $6e			;Volume 12
	db $75			;Instrument 3
	db $95,$35			;CMD Vibrato
	db $c0			;Wait 1
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
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_078:
	db $60			;Release 96
	db $c1			;Wait 2
	db $41			;Note F-6
	db $6e			;Volume 12
	db $75			;Instrument 3
	db $95,$35			;CMD Vibrato
	db $c0			;Wait 1
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
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_079:
	db $60			;Release 96
	db $a4,$05			;CMD Speed
	db $c1			;Wait 2
	db $45			;Note A-6
	db $6e			;Volume 12
	db $75			;Instrument 3
	db $95,$35			;CMD Vibrato
	db $c0			;Wait 1
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
	db $6e			;Volume 12
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_080:
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
.track_081:
	db $60			;Release 96
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
	db $96,$02			;CMD Portamento up
	db $fe			;Wait 63
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_083:
	db $96,$02			;CMD Portamento up
	db $ff			;Wait 64
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
.track_099:
	db $43			;Note G-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $43			;Note G-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $43			;Note G-6
	db $6d			;Volume 11
					;Wait Repeat 4
	db $43			;Note G-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $43			;Note G-6
	db $6c			;Volume 10
	db $c7			;Wait 8
	db $43			;Note G-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_100:
	db $45			;Note A-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $45			;Note A-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $45			;Note A-6
	db $6d			;Volume 11
					;Wait Repeat 4
	db $45			;Note A-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $45			;Note A-6
	db $6c			;Volume 10
	db $c7			;Wait 8
	db $45			;Note A-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_101:
	db $47			;Note B-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $47			;Note B-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $47			;Note B-6
	db $6d			;Volume 11
					;Wait Repeat 4
	db $47			;Note B-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $47			;Note B-6
	db $6c			;Volume 10
	db $c7			;Wait 8
	db $47			;Note B-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_102:
	db $4a			;Note D-7
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $4a			;Note D-7
	db $6b			;Volume 9
					;Wait Repeat 4
	db $4a			;Note D-7
	db $6d			;Volume 11
					;Wait Repeat 4
	db $4a			;Note D-7
	db $6b			;Volume 9
					;Wait Repeat 4
	db $4a			;Note D-7
	db $6c			;Volume 10
	db $c7			;Wait 8
	db $4a			;Note D-7
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_104:
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
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c3			;Wait 4
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
	db $26			;Note D-4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $2b			;Note G-4
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
	db $1a			;Note D-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $1e			;Note F#3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $26			;Note D-4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $21			;Note A-3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $1e			;Note F#3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $21			;Note A-3
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_106:
	db $ef			;Wait 48
	db $32			;Note D-5
	db $6e			;Volume 12
	db $72			;Instrument 0
	db $c0			;Wait 1
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
	db $6d			;Volume 11
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
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_107:
	db $43			;Note G-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $43			;Note G-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $43			;Note G-6
	db $6d			;Volume 11
					;Wait Repeat 4
	db $43			;Note G-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $43			;Note G-6
	db $6c			;Volume 10
	db $c7			;Wait 8
	db $43			;Note G-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $cf			;Wait 16
	db $34			;Note E-5
	db $6e			;Volume 12
	db $72			;Instrument 0
	db $c0			;Wait 1
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
	db $6d			;Volume 11
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
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_108:
	db $45			;Note A-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $45			;Note A-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $45			;Note A-6
	db $6d			;Volume 11
					;Wait Repeat 4
	db $45			;Note A-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $45			;Note A-6
	db $6c			;Volume 10
	db $c7			;Wait 8
	db $45			;Note A-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $cf			;Wait 16
	db $36			;Note F#5
	db $6e			;Volume 12
	db $72			;Instrument 0
	db $c0			;Wait 1
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
	db $6d			;Volume 11
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
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_109:
	db $47			;Note B-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $47			;Note B-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $47			;Note B-6
	db $6d			;Volume 11
					;Wait Repeat 4
	db $47			;Note B-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $47			;Note B-6
	db $6c			;Volume 10
	db $c7			;Wait 8
	db $47			;Note B-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $cf			;Wait 16
	db $39			;Note A-5
	db $6e			;Volume 12
	db $72			;Instrument 0
	db $c0			;Wait 1
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
	db $6d			;Volume 11
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
	db $6f			;Volume 13
					;Wait Repeat 1
	db $63			;Volume 1
	db $bf			;[End-Of-Track]
.track_110:
	db $3e			;Note D-6
	db $6e			;Volume 12
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $3e			;Note D-6
	db $6d			;Volume 11
					;Wait Repeat 4
	db $3e			;Note D-6
	db $6b			;Volume 9
					;Wait Repeat 4
	db $3e			;Note D-6
	db $6c			;Volume 10
	db $c7			;Wait 8
	db $3e			;Note D-6
	db $6a			;Volume 8
					;Wait Repeat 8
	db $60			;Release 96
	db $cf			;Wait 16
	db $1a			;Note D-3
	db $6b			;Volume 9
	db $74			;Instrument 2
	db $c1			;Wait 2
	db $6c			;Volume 10
					;Wait Repeat 2
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $6e			;Volume 12
	db $c7			;Wait 8
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
	db $1a			;Note D-3
	db $6c			;Volume 10
	db $72			;Instrument 0
	db $c1			;Wait 2
	db $6d			;Volume 11
					;Wait Repeat 2
	db $6e			;Volume 12
	db $c3			;Wait 4
	db $6f			;Volume 13
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_112:
	db $60			;Release 96
	db $71			;Volume 15
	db $72			;Instrument 0
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_114:
	db $71			;Volume 15
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $76			;Instrument 4
					;Wait Repeat 1
	db $62			;Note D-9
	db $bf			;[End-Of-Track]
.track_121:
	db $60			;Release 96
	db $9d,$00			;CMD Drum $01
	db $cd			;Wait 14
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $9d,$00			;CMD Drum $01
	db $cf			;Wait 16
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$00			;CMD Drum $01
	db $c9			;Wait 10
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $9d,$00			;CMD Drum $01
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_122:
	db $1c			;Note E-3
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $93,$06			;CMD Portamento down
	db $ee			;Wait 47
	db $93,$02			;CMD Portamento down
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_123:
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $93,$06			;CMD Portamento down
	db $ea			;Wait 43
	db $93,$02			;CMD Portamento down
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_124:
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6c			;Volume 10
	db $84			;Instrument 18
	db $95,$56			;CMD Vibrato
	db $df			;Wait 32
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
	db $d6			;Wait 23
	db $bf			;[End-Of-Track]
.track_125:
	db $39			;Note A-5
	db $6d			;Volume 11
	db $84			;Instrument 18
	db $95,$47			;CMD Vibrato
	db $df			;Wait 32
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $da			;Wait 27
	db $bf			;[End-Of-Track]
.track_126:
	db $28			;Note E-4
	db $6c			;Volume 10
	db $84			;Instrument 18
	db $95,$55			;CMD Vibrato
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_127:
	db $28			;Note E-4
	db $6d			;Volume 11
	db $83			;Instrument 17
	db $c0			;Wait 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_128:
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
	db $00			;Note C-1
	db $68			;Volume 6
	db $85			;Instrument 19
	db $c0			;Wait 1
	db $68			;Volume 6
					;Wait Repeat 1
	db $68			;Volume 6
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
	db $6e			;Volume 12
					;Wait Repeat 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $6e			;Volume 12
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_129:
	db $6e			;Volume 12
	db $79			;Instrument 7
	db $9d,$00			;CMD Drum $01
	db $cd			;Wait 14
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $9d,$00			;CMD Drum $01
	db $cf			;Wait 16
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$00			;CMD Drum $01
	db $c9			;Wait 10
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $23			;Note B-3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $28			;Note E-4
	db $c1			;Wait 2
	db $23			;Note B-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_132:
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $6c			;Volume 10
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$56			;CMD Vibrato
	db $c4			;Wait 5
	db $96,$01			;CMD Portamento up
	db $c3			;Wait 4
	db $3a			;Note A#5
	db $6b			;Volume 9
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
					;Wait Repeat 1
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $95,$56			;CMD Vibrato
	db $c4			;Wait 5
	db $96,$01			;CMD Portamento up
					;Wait Repeat 5
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
	db $c2			;Wait 3
	db $96,$01			;CMD Portamento up
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_133:
	db $3c			;Note C-6
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c6			;Wait 7
	db $95,$47			;CMD Vibrato
	db $c4			;Wait 5
	db $96,$01			;CMD Portamento up
	db $c3			;Wait 4
	db $3a			;Note A#5
	db $6c			;Volume 10
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
					;Wait Repeat 1
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $95,$57			;CMD Vibrato
	db $c4			;Wait 5
	db $96,$01			;CMD Portamento up
					;Wait Repeat 5
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $c2			;Wait 3
	db $96,$01			;CMD Portamento up
	db $c5			;Wait 6
	db $39			;Note A-5
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$47			;CMD Vibrato
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_134:
	db $28			;Note E-4
	db $df			;Wait 32
	db $1c			;Note E-3
	db $68			;Volume 6
	db $c1			;Wait 2
	db $69			;Volume 7
					;Wait Repeat 2
	db $6a			;Volume 8
					;Wait Repeat 2
	db $6b			;Volume 9
					;Wait Repeat 2
	db $6c			;Volume 10
					;Wait Repeat 2
	db $6d			;Volume 11
					;Wait Repeat 2
	db $6e			;Volume 12
	db $c5			;Wait 6
	db $6f			;Volume 13
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_135:
	db $28			;Note E-4
	db $6d			;Volume 11
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6d			;Volume 11
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
	db $bf			;[End-Of-Track]
.track_137:
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
.track_138:
	db $f1			;Wait 50
	db $5f			;Note B-8
	db $63			;Volume 1
	db $77			;Instrument 5
	db $96,$02			;CMD Portamento up
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
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_139:
	db $f5			;Wait 54
	db $5f			;Note B-8
	db $63			;Volume 1
	db $77			;Instrument 5
	db $96,$02			;CMD Portamento up
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
	db $bf			;[End-Of-Track]
.track_140:
	db $c3			;Wait 4
	db $37			;Note G-5
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $95,$56			;CMD Vibrato
	db $df			;Wait 32
	db $3b			;Note B-5
	db $91,$06			;CMD Portamento tone
	db $c7			;Wait 8
	db $95,$56			;CMD Vibrato
	db $d3			;Wait 20
	db $bf			;[End-Of-Track]
.track_141:
	db $37			;Note G-5
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$47			;CMD Vibrato
	db $df			;Wait 32
	db $3b			;Note B-5
	db $91,$06			;CMD Portamento tone
	db $c7			;Wait 8
	db $95,$47			;CMD Vibrato
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_142:
	db $2b			;Note G-4
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$55			;CMD Vibrato
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_144:
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
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 2
	db $34			;Note E-5
	db $6c			;Volume 10
	db $73			;Instrument 1
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
.track_145:
	db $21			;Note A-3
	db $6e			;Volume 12
	db $79			;Instrument 7
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $1c			;Note E-3
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
	db $26			;Note D-4
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $21			;Note A-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $28			;Note E-4
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $26			;Note D-4
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $28			;Note E-4
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_146:
	db $e7			;Wait 40
	db $40			;Note E-6
	db $6e			;Volume 12
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
	db $ea			;Wait 43
	db $40			;Note E-6
	db $6d			;Volume 11
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
	db $3c			;Note C-6
	db $6c			;Volume 10
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $91,$06			;CMD Portamento tone
	db $c5			;Wait 6
	db $95,$56			;CMD Vibrato
	db $c8			;Wait 9
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$56			;CMD Vibrato
	db $c7			;Wait 8
	db $96,$02			;CMD Portamento up
	db $c3			;Wait 4
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_149:
	db $3c			;Note C-6
	db $6d			;Volume 11
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $91,$06			;CMD Portamento tone
	db $c5			;Wait 6
	db $95,$47			;CMD Vibrato
	db $c8			;Wait 9
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$47			;CMD Vibrato
	db $c7			;Wait 8
	db $96,$02			;CMD Portamento up
	db $c3			;Wait 4
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $ca			;Wait 11
	db $bf			;[End-Of-Track]
.track_151:
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
	db $7d			;Instrument 11
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
	db $7d			;Instrument 11
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
.track_154:
	db $43			;Note G-6
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $45			;Note A-6
	db $91,$05			;CMD Portamento tone
	db $c6			;Wait 7
	db $95,$67			;CMD Vibrato
	db $d7			;Wait 24
	db $47			;Note B-6
	db $91,$03			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$67			;CMD Vibrato
	db $d9			;Wait 26
	db $9c			;CMD End 
	db $bf			;[End-Of-Track]
.track_155:
	db $c2			;Wait 3
	db $43			;Note G-6
	db $6d			;Volume 11
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
	db $c5			;Wait 6
	db $95,$46			;CMD Vibrato
	db $d6			;Wait 23
	db $bf			;[End-Of-Track]
.track_156:
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $95,$56			;CMD Vibrato
	db $df			;Wait 32
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
	db $c5			;Wait 6
	db $96,$01			;CMD Portamento up
	db $c4			;Wait 5
	db $34			;Note E-5
	db $95,$56			;CMD Vibrato
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_157:
	db $39			;Note A-5
	db $6d			;Volume 11
	db $7d			;Instrument 11
	db $95,$47			;CMD Vibrato
	db $df			;Wait 32
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $c6			;Wait 7
	db $96,$01			;CMD Portamento up
	db $c3			;Wait 4
	db $34			;Note E-5
	db $95,$47			;CMD Vibrato
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_158:
	db $28			;Note E-4
	db $6d			;Volume 11
	db $7d			;Instrument 11
	db $95,$55			;CMD Vibrato
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_159:
	db $1c			;Note E-3
	db $6d			;Volume 11
	db $7d			;Instrument 11
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
.track_160:
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
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 2
	db $00			;Note C-1
	db $c5			;Wait 6
	db $34			;Note E-5
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c1			;Wait 2
	db $00			;Note C-1
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_161:
	db $21			;Note A-3
	db $6e			;Volume 12
	db $79			;Instrument 7
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $1c			;Note E-3
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
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $1a			;Note D-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $21			;Note A-3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $28			;Note E-4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_162:
	db $4a			;Note D-7
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $91,$03			;CMD Portamento tone
	db $c7			;Wait 8
	db $95,$67			;CMD Vibrato
	db $d7			;Wait 24
	db $4c			;Note E-7
	db $91,$05			;CMD Portamento tone
	db $c7			;Wait 8
	db $47			;Note B-6
	db $95,$67			;CMD Vibrato
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
	db $6d			;Volume 11
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
.track_164:
	db $c3			;Wait 4
	db $3b			;Note B-5
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $95,$56			;CMD Vibrato
	db $da			;Wait 27
	db $96,$01			;CMD Portamento up
	db $c4			;Wait 5
	db $3e			;Note D-6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $40			;Note E-6
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $c9			;Wait 10
	db $96,$01			;CMD Portamento up
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_165:
	db $3b			;Note B-5
	db $6d			;Volume 11
	db $7d			;Instrument 11
	db $95,$47			;CMD Vibrato
	db $da			;Wait 27
	db $96,$01			;CMD Portamento up
	db $c4			;Wait 5
	db $3e			;Note D-6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $40			;Note E-6
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $c9			;Wait 10
	db $96,$01			;CMD Portamento up
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$47			;CMD Vibrato
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_166:
	db $28			;Note E-4
	db $ff			;Wait 64
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
	db $43			;Note G-6
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $47			;Note B-6
	db $c2			;Wait 3
	db $95,$67			;CMD Vibrato
	db $c8			;Wait 9
	db $95,$46			;CMD Vibrato
	db $c3			;Wait 4
	db $4c			;Note E-7
	db $91,$10			;CMD Portamento tone
					;Wait Repeat 4
	db $95,$46			;CMD Vibrato
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_171:
	db $c2			;Wait 3
	db $40			;Note E-6
	db $6d			;Volume 11
	db $7b			;Instrument 9
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
	db $43			;Note G-6
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $47			;Note B-6
	db $c2			;Wait 3
	db $95,$46			;CMD Vibrato
	db $c8			;Wait 9
	db $95,$46			;CMD Vibrato
	db $c3			;Wait 4
	db $4c			;Note E-7
	db $91,$10			;CMD Portamento tone
					;Wait Repeat 4
	db $95,$46			;CMD Vibrato
	db $bf			;[End-Of-Track]
.track_172:
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $95,$56			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$07			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$56			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
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
.track_173:
	db $34			;Note E-5
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$47			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$07			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$47			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
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
.track_176:
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
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c3			;Wait 4
	db $34			;Note E-5
	db $6b			;Volume 9
	db $73			;Instrument 1
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
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
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
	db $00			;Note C-1
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $00			;Note C-1
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_177:
	db $21			;Note A-3
	db $6e			;Volume 12
	db $79			;Instrument 7
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $1c			;Note E-3
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
	db $1e			;Note F#3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $23			;Note B-3
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $26			;Note D-4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $2a			;Note F#4
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $26			;Note D-4
	db $c1			;Wait 2
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $26			;Note D-4
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $26			;Note D-4
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $23			;Note B-3
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1f			;Note G-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $26			;Note D-4
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $28			;Note E-4
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $2a			;Note F#4
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_178:
	db $51			;Note A-7
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $91,$08			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$67			;CMD Vibrato
	db $ca			;Wait 11
	db $53			;Note B-7
	db $91,$08			;CMD Portamento tone
	db $c5			;Wait 6
	db $95,$67			;CMD Vibrato
	db $c9			;Wait 10
	db $4e			;Note F#7
	db $91,$08			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$67			;CMD Vibrato
	db $ca			;Wait 11
	db $4f			;Note G-7
	db $c6			;Wait 7
	db $4f			;Note G-7
	db $c0			;Wait 1
	db $51			;Note A-7
	db $91,$03			;CMD Portamento tone
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_179:
	db $c2			;Wait 3
	db $51			;Note A-7
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $91,$08			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$46			;CMD Vibrato
	db $ca			;Wait 11
	db $53			;Note B-7
	db $91,$08			;CMD Portamento tone
	db $c5			;Wait 6
	db $95,$67			;CMD Vibrato
	db $c9			;Wait 10
	db $4e			;Note F#7
	db $91,$08			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$46			;CMD Vibrato
	db $c9			;Wait 10
	db $4f			;Note G-7
	db $c6			;Wait 7
	db $4f			;Note G-7
	db $c0			;Wait 1
	db $51			;Note A-7
	db $91,$03			;CMD Portamento tone
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_180:
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $95,$56			;CMD Vibrato
	db $cf			;Wait 16
	db $41			;Note F-6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $43			;Note G-6
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$56			;CMD Vibrato
	db $cb			;Wait 12
	db $43			;Note G-6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $45			;Note A-6
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
	db $c9			;Wait 10
	db $45			;Note A-6
	db $c0			;Wait 1
	db $47			;Note B-6
	db $91,$09			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$56			;CMD Vibrato
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_181:
	db $3e			;Note D-6
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$47			;CMD Vibrato
	db $cf			;Wait 16
	db $41			;Note F-6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $43			;Note G-6
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$47			;CMD Vibrato
	db $cb			;Wait 12
	db $43			;Note G-6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $45			;Note A-6
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $c9			;Wait 10
	db $45			;Note A-6
	db $c0			;Wait 1
	db $47			;Note B-6
	db $91,$05			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$47			;CMD Vibrato
	db $ca			;Wait 11
	db $bf			;[End-Of-Track]
.track_182:
	db $2b			;Note G-4
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $e6			;Wait 39
	db $93,$03			;CMD Portamento down
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_183:
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
	db $1e			;Note F#3
	db $6d			;Volume 11
	db $78			;Instrument 6
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1e			;Note F#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1e			;Note F#3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1e			;Note F#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1e			;Note F#3
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1e			;Note F#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1e			;Note F#3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1e			;Note F#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $6d			;Volume 11
	db $78			;Instrument 6
	db $c0			;Wait 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_185:
	db $00			;Note C-1
	db $6c			;Volume 10
	db $85			;Instrument 19
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $6b			;Volume 9
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $6a			;Volume 8
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $69			;Volume 7
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $68			;Volume 6
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $67			;Volume 5
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $66			;Volume 4
	db $9d,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $65			;Volume 3
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $64			;Volume 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $63			;Volume 1
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $60			;Release 96
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
.track_187:
	db $2d			;Note A-4
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $c7			;Wait 8
	db $28			;Note E-4
					;Wait Repeat 8
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $91,$06			;CMD Portamento tone
	db $c6			;Wait 7
	db $34			;Note E-5
	db $95,$54			;CMD Vibrato
	db $c7			;Wait 8
	db $32			;Note D-5
	db $c7			;Wait 8
	db $96,$02			;CMD Portamento up
					;Wait Repeat 8
	db $2d			;Note A-4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$54			;CMD Vibrato
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_188:
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6c			;Volume 10
	db $95,$55			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$54			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$54			;CMD Vibrato
	db $c6			;Wait 7
	db $96,$01			;CMD Portamento up
	db $c3			;Wait 4
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$05			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$54			;CMD Vibrato
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_189:
	db $39			;Note A-5
	db $6d			;Volume 11
	db $7d			;Instrument 11
	db $95,$47			;CMD Vibrato
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$47			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $c6			;Wait 7
	db $96,$01			;CMD Portamento up
	db $c3			;Wait 4
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$05			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $c9			;Wait 10
	db $bf			;[End-Of-Track]
.track_190:
	db $40			;Note E-6
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $95,$58			;CMD Vibrato
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_195:
	db $2f			;Note B-4
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $cf			;Wait 16
	db $28			;Note E-4
					;Wait Repeat 16
	db $29			;Note F-4
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $91,$06			;CMD Portamento tone
	db $ce			;Wait 15
	db $2f			;Note B-4
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$56			;CMD Vibrato
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_196:
	db $c3			;Wait 4
	db $3b			;Note B-5
	db $6c			;Volume 10
	db $91,$05			;CMD Portamento tone
					;Wait Repeat 4
	db $95,$55			;CMD Vibrato
	db $cb			;Wait 12
	db $3b			;Note B-5
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $91,$07			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
					;Wait Repeat 5
	db $96,$01			;CMD Portamento up
					;Wait Repeat 5
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
					;Wait Repeat 5
	db $96,$01			;CMD Portamento up
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_197:
	db $3b			;Note B-5
	db $6d			;Volume 11
	db $91,$05			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$47			;CMD Vibrato
	db $cb			;Wait 12
	db $3b			;Note B-5
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $91,$07			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
					;Wait Repeat 5
	db $96,$01			;CMD Portamento up
					;Wait Repeat 5
	db $37			;Note G-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $c9			;Wait 10
	db $3b			;Note B-5
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
					;Wait Repeat 5
	db $96,$01			;CMD Portamento up
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$47			;CMD Vibrato
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_203:
	db $2b			;Note G-4
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $c7			;Wait 8
	db $28			;Note E-4
					;Wait Repeat 8
	db $2b			;Note G-4
					;Wait Repeat 8
	db $34			;Note E-5
					;Wait Repeat 8
	db $32			;Note D-5
	db $cf			;Wait 16
	db $2d			;Note A-4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_204:
	db $c1			;Wait 2
	db $39			;Note A-5
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $95,$56			;CMD Vibrato
	db $d1			;Wait 18
	db $3b			;Note B-5
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$56			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
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
.track_205:
	db $cf			;Wait 16
	db $3b			;Note B-5
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$47			;CMD Vibrato
	db $cb			;Wait 12
	db $3c			;Note C-6
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
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
.track_218:
	db $2f			;Note B-4
	db $6f			;Volume 13
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$66			;CMD Vibrato
	db $cb			;Wait 12
	db $2b			;Note G-4
	db $cf			;Wait 16
	db $32			;Note D-5
	db $c2			;Wait 3
	db $96,$01			;CMD Portamento up
	db $d4			;Wait 21
	db $9c			;CMD End 
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_219:
	db $c7			;Wait 8
	db $28			;Note E-4
	db $6f			;Volume 13
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$66			;CMD Vibrato
	db $cb			;Wait 12
	db $33			;Note D#5
	db $c0			;Wait 1
	db $34			;Note E-5
	db $91,$05			;CMD Portamento tone
	db $ce			;Wait 15
	db $2d			;Note A-4
	db $9c			;CMD End 
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_222:
	db $28			;Note E-4
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $95,$45			;CMD Vibrato
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_226:
	db $2f			;Note B-4
	db $6f			;Volume 13
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $df			;Wait 32
	db $2b			;Note G-4
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_234:
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $cf			;Wait 16
	db $2b			;Note G-4
					;Wait Repeat 16
	db $32			;Note D-5
	db $c2			;Wait 3
	db $96,$01			;CMD Portamento up
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_235:
	db $c7			;Wait 8
	db $28			;Note E-4
	db $6f			;Volume 13
	db $7f			;Instrument 13
	db $cf			;Wait 16
	db $33			;Note D#5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $34			;Note E-5
	db $91,$06			;CMD Portamento tone
	db $ce			;Wait 15
	db $2d			;Note A-4
	db $9c			;CMD End 
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_238:
	db $2b			;Note G-4
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $95,$45			;CMD Vibrato
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_239:
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $7d			;Instrument 11
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
.track_242:
	db $2f			;Note B-4
	db $95,$46			;CMD Vibrato
	db $df			;Wait 32
	db $2b			;Note G-4
	db $6e			;Volume 12
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$56			;CMD Vibrato
	db $c9			;Wait 10
	db $2a			;Note F#4
	db $6d			;Volume 11
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_248:
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6d			;Volume 11
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6d			;Volume 11
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6d			;Volume 11
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 10
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6d			;Volume 11
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 10
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_250:
	db $2f			;Note B-4
	db $6f			;Volume 13
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $c7			;Wait 8
	db $39			;Note A-5
					;Wait Repeat 8
	db $3d			;Note C#6
					;Wait Repeat 8
	db $40			;Note E-6
					;Wait Repeat 8
	db $2d			;Note A-4
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_251:
	db $60			;Release 96
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $31			;Note C#5
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $c7			;Wait 8
	db $31			;Note C#5
					;Wait Repeat 8
	db $34			;Note E-5
					;Wait Repeat 8
	db $3b			;Note B-5
					;Wait Repeat 8
	db $2f			;Note B-4
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_252:
	db $60			;Release 96
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $c7			;Wait 8
	db $32			;Note D-5
					;Wait Repeat 8
	db $36			;Note F#5
					;Wait Repeat 8
	db $3d			;Note C#6
					;Wait Repeat 8
	db $36			;Note F#5
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_253:
	db $60			;Release 96
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $36			;Note F#5
	db $6f			;Volume 13
	db $7f			;Instrument 13
	db $c7			;Wait 8
	db $36			;Note F#5
					;Wait Repeat 8
	db $39			;Note A-5
					;Wait Repeat 8
	db $34			;Note E-5
					;Wait Repeat 8
	db $31			;Note C#5
	db $d9			;Wait 26
	db $bf			;[End-Of-Track]
.track_254:
	db $23			;Note B-3
	db $6d			;Volume 11
	db $78			;Instrument 6
	db $95,$45			;CMD Vibrato
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_255:
	db $23			;Note B-3
	db $6c			;Volume 10
	db $80			;Instrument 14
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_258:
	db $32			;Note D-5
	db $6f			;Volume 13
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $c7			;Wait 8
	db $3c			;Note C-6
					;Wait Repeat 8
	db $40			;Note E-6
					;Wait Repeat 8
	db $43			;Note G-6
					;Wait Repeat 8
	db $30			;Note C-5
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_259:
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $c7			;Wait 8
	db $34			;Note E-5
					;Wait Repeat 8
	db $37			;Note G-5
					;Wait Repeat 8
	db $3e			;Note D-6
					;Wait Repeat 8
	db $32			;Note D-5
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_260:
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $35			;Note F-5
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $c7			;Wait 8
	db $35			;Note F-5
					;Wait Repeat 8
	db $39			;Note A-5
					;Wait Repeat 8
	db $40			;Note E-6
					;Wait Repeat 8
	db $39			;Note A-5
	db $db			;Wait 28
	db $bf			;[End-Of-Track]
.track_261:
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $39			;Note A-5
	db $6f			;Volume 13
	db $7f			;Instrument 13
	db $c7			;Wait 8
	db $39			;Note A-5
					;Wait Repeat 8
	db $3c			;Note C-6
					;Wait Repeat 8
	db $37			;Note G-5
					;Wait Repeat 8
	db $34			;Note E-5
	db $d9			;Wait 26
	db $bf			;[End-Of-Track]
.track_262:
	db $26			;Note D-4
	db $6d			;Volume 11
	db $78			;Instrument 6
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_263:
	db $26			;Note D-4
	db $6c			;Volume 10
	db $80			;Instrument 14
	db $c0			;Wait 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_264:
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6b			;Volume 9
	db $73			;Instrument 1
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6d			;Volume 11
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6d			;Volume 11
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6d			;Volume 11
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 10
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6d			;Volume 11
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 10
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_265:
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $79			;Instrument 7
	db $9d,$00			;CMD Drum $01
	db $c0			;Wait 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $3b			;Note B-5
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $6c			;Volume 10
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $3b			;Note B-5
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $6b			;Volume 9
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $3b			;Note B-5
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $6a			;Volume 8
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $3b			;Note B-5
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $69			;Volume 7
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $3b			;Note B-5
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $68			;Volume 6
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $3b			;Note B-5
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $67			;Volume 5
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $3b			;Note B-5
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $66			;Volume 4
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $3b			;Note B-5
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $65			;Volume 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $3b			;Note B-5
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $64			;Volume 2
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $3b			;Note B-5
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $63			;Volume 1
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $3b			;Note B-5
	db $c0			;Wait 1
	db $60			;Release 96
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_266:
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $95,$66			;CMD Vibrato
					;Wait Repeat 4
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $95,$45			;CMD Vibrato
					;Wait Repeat 4
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
	db $c6			;Wait 7
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_267:
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $95,$47			;CMD Vibrato
					;Wait Repeat 4
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $95,$47			;CMD Vibrato
					;Wait Repeat 4
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
	db $66			;Volume 4
	db $c6			;Wait 7
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_268:
	db $6d			;Volume 11
	db $c7			;Wait 8
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
					;Wait Repeat 8
	db $66			;Volume 4
	db $c6			;Wait 7
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_270:
	db $60			;Release 96
	db $fe			;Wait 63
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_271:
	db $17			;Note B-2
	db $6d			;Volume 11
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_279:
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $17			;Note B-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $23			;Note B-3
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_280:
	db $33			;Note D#5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $c3			;Wait 4
	db $33			;Note D#5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $33			;Note D#5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $33			;Note D#5
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $33			;Note D#5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $33			;Note D#5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $33			;Note D#5
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $33			;Note D#5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $33			;Note D#5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $33			;Note D#5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $33			;Note D#5
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_281:
	db $60			;Release 96
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
					;Wait Repeat 4
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9d,$04			;CMD Drum $03
	db $c1			;Wait 2
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_282:
	db $33			;Note D#5
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $36			;Note F#5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $3d			;Note C#6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $36			;Note F#5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $41			;Note F-6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $3a			;Note A#5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $44			;Note G#6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $41			;Note F-6
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_283:
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $35			;Note F-5
	db $6d			;Volume 11
	db $7f			;Instrument 13
	db $c3			;Wait 4
	db $3a			;Note A#5
	db $6e			;Volume 12
					;Wait Repeat 4
	db $35			;Note F-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $3a			;Note A#5
	db $6e			;Volume 12
					;Wait Repeat 4
	db $38			;Note G#5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $3d			;Note C#6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $3f			;Note D#6
	db $6d			;Volume 11
					;Wait Repeat 4
	db $38			;Note G#5
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_284:
	db $9c			;CMD End 
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_286:
	db $1b			;Note D#3
	db $6e			;Volume 12
	db $80			;Instrument 14
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_287:
	db $27			;Note D#4
	db $6c			;Volume 10
	db $80			;Instrument 14
	db $c0			;Wait 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_288:
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6d			;Volume 11
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6d			;Volume 11
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6d			;Volume 11
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 10
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 10
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_289:
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
	db $00			;Note C-1
	db $6d			;Volume 11
	db $7c			;Instrument 10
	db $9d,$02			;CMD Drum $02
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
.track_290:
	db $50			;Note G#7
	db $6c			;Volume 10
	db $82			;Instrument 16
	db $96,$01			;CMD Portamento up
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_291:
	db $c3			;Wait 4
	db $50			;Note G#7
	db $6b			;Volume 9
	db $82			;Instrument 16
	db $96,$01			;CMD Portamento up
	db $fb			;Wait 60
	db $bf			;[End-Of-Track]
.track_296:
	db $32			;Note D-5
	db $6d			;Volume 11
	db $73			;Instrument 1
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
	db $c3			;Wait 4
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
.track_297:
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
	db $00			;Note C-1
	db $6d			;Volume 11
	db $7c			;Instrument 10
	db $9d,$02			;CMD Drum $02
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
.track_298:
	db $53			;Note B-7
	db $6c			;Volume 10
	db $82			;Instrument 16
	db $96,$01			;CMD Portamento up
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_299:
	db $c3			;Wait 4
	db $53			;Note B-7
	db $6b			;Volume 9
	db $82			;Instrument 16
	db $96,$01			;CMD Portamento up
	db $fb			;Wait 60
	db $bf			;[End-Of-Track]
.track_305:
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
	db $c5			;Wait 6
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 8
	db $9d,$00			;CMD Drum $01
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_306:
	db $60			;Release 96
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
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_307:
	db $60			;Release 96
	db $c7			;Wait 8
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
					;Wait Repeat 8
	db $66			;Volume 4
	db $c6			;Wait 7
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_308:
	db $60			;Release 96
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
.track_309:
	db $60			;Release 96
	db $c3			;Wait 4
	db $5f			;Note B-8
	db $6b			;Volume 9
	db $81			;Instrument 15
	db $96,$01			;CMD Portamento up
	db $fb			;Wait 60
	db $bf			;[End-Of-Track]
.track_310:
	db $5f			;Note B-8
	db $6c			;Volume 10
	db $81			;Instrument 15
	db $96,$01			;CMD Portamento up
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_320:
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
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_322:
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $37			;Note G-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $3e			;Note D-6
	db $6f			;Volume 13
					;Wait Repeat 4
	db $37			;Note G-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $42			;Note F#6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $3b			;Note B-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $45			;Note A-6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $42			;Note F#6
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_323:
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $36			;Note F#5
	db $6d			;Volume 11
	db $7f			;Instrument 13
	db $c3			;Wait 4
	db $3b			;Note B-5
	db $6e			;Volume 12
					;Wait Repeat 4
	db $36			;Note F#5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $3b			;Note B-5
	db $6e			;Volume 12
					;Wait Repeat 4
	db $39			;Note A-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $3e			;Note D-6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $40			;Note E-6
	db $6d			;Volume 11
					;Wait Repeat 4
	db $39			;Note A-5
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_326:
	db $1c			;Note E-3
	db $6e			;Volume 12
	db $80			;Instrument 14
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_327:
	db $28			;Note E-4
	db $6c			;Volume 10
	db $80			;Instrument 14
	db $c0			;Wait 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_329:
	db $28			;Note E-4
	db $6e			;Volume 12
	db $79			;Instrument 7
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $c1			;Wait 2
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1e			;Note F#3
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
.track_330:
	db $4c			;Note E-7
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $4e			;Note F#7
	db $91,$05			;CMD Portamento tone
	db $c6			;Wait 7
	db $95,$46			;CMD Vibrato
	db $d7			;Wait 24
	db $4f			;Note G-7
	db $91,$03			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$46			;CMD Vibrato
	db $d9			;Wait 26
	db $9c			;CMD End 
	db $bf			;[End-Of-Track]
.track_331:
	db $c2			;Wait 3
	db $4c			;Note E-7
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $4e			;Note F#7
	db $91,$05			;CMD Portamento tone
	db $c6			;Wait 7
	db $95,$46			;CMD Vibrato
	db $d7			;Wait 24
	db $4f			;Note G-7
	db $91,$03			;CMD Portamento tone
	db $c5			;Wait 6
	db $95,$46			;CMD Vibrato
	db $d6			;Wait 23
	db $bf			;[End-Of-Track]
.track_332:
	db $c3			;Wait 4
	db $45			;Note A-6
	db $6c			;Volume 10
	db $74			;Instrument 2
	db $95,$56			;CMD Vibrato
	db $d8			;Wait 25
	db $96,$01			;CMD Portamento up
	db $c5			;Wait 6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $46			;Note A#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $47			;Note B-6
	db $91,$09			;CMD Portamento tone
	db $c5			;Wait 6
	db $95,$56			;CMD Vibrato
	db $c8			;Wait 9
	db $3e			;Note D-6
	db $c7			;Wait 8
	db $40			;Note E-6
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_333:
	db $45			;Note A-6
	db $6d			;Volume 11
	db $7d			;Instrument 11
	db $95,$47			;CMD Vibrato
	db $d8			;Wait 25
	db $96,$01			;CMD Portamento up
	db $c5			;Wait 6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $46			;Note A#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $47			;Note B-6
	db $91,$09			;CMD Portamento tone
	db $c6			;Wait 7
	db $95,$57			;CMD Vibrato
	db $c7			;Wait 8
	db $3e			;Note D-6
	db $95,$47			;CMD Vibrato
					;Wait Repeat 8
	db $40			;Note E-6
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_334:
	db $6c			;Volume 10
	db $cb			;Wait 12
	db $6b			;Volume 9
	db $ca			;Wait 11
	db $6a			;Volume 8
					;Wait Repeat 11
	db $69			;Volume 7
					;Wait Repeat 11
	db $68			;Volume 6
	db $c9			;Wait 10
	db $67			;Volume 5
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_336:
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
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 2
	db $00			;Note C-1
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6b			;Volume 9
	db $73			;Instrument 1
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
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_337:
	db $21			;Note A-3
	db $6e			;Volume 12
	db $79			;Instrument 7
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $1c			;Note E-3
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
	db $21			;Note A-3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $23			;Note B-3
	db $c1			;Wait 2
	db $26			;Note D-4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $28			;Note E-4
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $23			;Note B-3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1f			;Note G-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $1a			;Note D-3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $21			;Note A-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $2b			;Note G-4
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $2a			;Note F#4
	db $c1			;Wait 2
	db $26			;Note D-4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $23			;Note B-3
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_338:
	db $51			;Note A-7
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $53			;Note B-7
	db $91,$03			;CMD Portamento tone
	db $c6			;Wait 7
	db $95,$46			;CMD Vibrato
	db $d7			;Wait 24
	db $56			;Note D-8
	db $91,$05			;CMD Portamento tone
	db $c7			;Wait 8
	db $53			;Note B-7
	db $95,$46			;CMD Vibrato
	db $c6			;Wait 7
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $51			;Note A-7
	db $91,$05			;CMD Portamento tone
	db $c7			;Wait 8
	db $4f			;Note G-7
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_339:
	db $c1			;Wait 2
	db $51			;Note A-7
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $53			;Note B-7
	db $91,$03			;CMD Portamento tone
	db $c6			;Wait 7
	db $95,$46			;CMD Vibrato
	db $c0			;Wait 1
	db $95,$56			;CMD Vibrato
	db $d7			;Wait 24
	db $56			;Note D-8
	db $91,$05			;CMD Portamento tone
	db $c7			;Wait 8
	db $53			;Note B-7
	db $95,$46			;CMD Vibrato
	db $c6			;Wait 7
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $51			;Note A-7
	db $91,$05			;CMD Portamento tone
	db $c7			;Wait 8
	db $4f			;Note G-7
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_340:
	db $c3			;Wait 4
	db $42			;Note F#6
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $95,$56			;CMD Vibrato
	db $df			;Wait 32
	db $42			;Note F#6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $43			;Note G-6
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
	db $c1			;Wait 2
	db $40			;Note E-6
	db $c7			;Wait 8
	db $3e			;Note D-6
	db $95,$56			;CMD Vibrato
					;Wait Repeat 8
	db $3b			;Note B-5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_341:
	db $42			;Note F#6
	db $6d			;Volume 11
	db $7d			;Instrument 11
	db $95,$47			;CMD Vibrato
	db $df			;Wait 32
	db $42			;Note F#6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $43			;Note G-6
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $c1			;Wait 2
	db $40			;Note E-6
	db $c7			;Wait 8
	db $3e			;Note D-6
	db $95,$47			;CMD Vibrato
					;Wait Repeat 8
	db $3b			;Note B-5
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_342:
	db $28			;Note E-4
	db $6d			;Volume 11
	db $7d			;Instrument 11
	db $95,$56			;CMD Vibrato
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_343:
	db $1c			;Note E-3
	db $6d			;Volume 11
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
.track_344:
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
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 2
	db $00			;Note C-1
	db $6d			;Volume 11
					;Wait Repeat 2
	db $34			;Note E-5
	db $6b			;Volume 9
	db $73			;Instrument 1
	db $c3			;Wait 4
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
	db $00			;Note C-1
	db $6d			;Volume 11
	db $7c			;Instrument 10
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
	db $00			;Note C-1
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $00			;Note C-1
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_345:
	db $21			;Note A-3
	db $6e			;Volume 12
	db $79			;Instrument 7
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 12
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $26			;Note D-4
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $23			;Note B-3
	db $6e			;Volume 12
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6e			;Volume 12
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 12
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $26			;Note D-4
	db $6e			;Volume 12
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $21			;Note A-3
	db $6e			;Volume 12
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $23			;Note B-3
	db $6e			;Volume 12
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6e			;Volume 12
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1c			;Note E-3
	db $6e			;Volume 12
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 2
	db $1f			;Note G-3
	db $6e			;Volume 12
	db $9d,$02			;CMD Drum $02
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $23			;Note B-3
	db $6e			;Volume 12
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $1f			;Note G-3
	db $6e			;Volume 12
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $1c			;Note E-3
	db $6e			;Volume 12
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $28			;Note E-4
	db $6e			;Volume 12
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 1
	db $34			;Note E-5
	db $6d			;Volume 11
					;Wait Repeat 1
	db $1c			;Note E-3
	db $6e			;Volume 12
					;Wait Repeat 1
	db $28			;Note E-4
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $23			;Note B-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 1
	db $2f			;Note B-4
	db $c0			;Wait 1
	db $21			;Note A-3
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 1
	db $2d			;Note A-4
	db $c0			;Wait 1
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 1
	db $26			;Note D-4
	db $6d			;Volume 11
					;Wait Repeat 1
	db $1e			;Note F#3
	db $6e			;Volume 12
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $1f			;Note G-3
	db $6e			;Volume 12
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $23			;Note B-3
	db $6e			;Volume 12
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 1
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $6e			;Volume 12
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 1
	db $36			;Note F#5
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $6e			;Volume 12
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 1
	db $37			;Note G-5
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $6e			;Volume 12
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 1
	db $3b			;Note B-5
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $30			;Note C-5
	db $6e			;Volume 12
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 1
	db $3c			;Note C-6
	db $6d			;Volume 11
	db $bf			;[End-Of-Track]
.track_346:
	db $51			;Note A-7
	db $6e			;Volume 12
	db $7a			;Instrument 8
	db $91,$08			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$46			;CMD Vibrato
	db $ca			;Wait 11
	db $53			;Note B-7
	db $91,$08			;CMD Portamento tone
	db $c7			;Wait 8
	db $95,$46			;CMD Vibrato
					;Wait Repeat 8
	db $56			;Note D-8
	db $91,$08			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$46			;CMD Vibrato
	db $ca			;Wait 11
	db $58			;Note E-8
	db $a1			;CMD Note link
	db $c4			;Wait 5
	db $96,$02			;CMD Portamento up
	db $c2			;Wait 3
	db $53			;Note B-7
	db $95,$55			;CMD Vibrato
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_347:
	db $c2			;Wait 3
	db $51			;Note A-7
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $91,$08			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$46			;CMD Vibrato
	db $ca			;Wait 11
	db $53			;Note B-7
	db $91,$08			;CMD Portamento tone
	db $c7			;Wait 8
	db $95,$46			;CMD Vibrato
					;Wait Repeat 8
	db $56			;Note D-8
	db $91,$08			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$46			;CMD Vibrato
	db $cb			;Wait 12
	db $58			;Note E-8
	db $a1			;CMD Note link
	db $c4			;Wait 5
	db $96,$02			;CMD Portamento up
	db $c2			;Wait 3
	db $53			;Note B-7
	db $95,$55			;CMD Vibrato
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_348:
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $6c			;Volume 10
	db $7c			;Instrument 10
	db $95,$56			;CMD Vibrato
	db $cf			;Wait 16
	db $42			;Note F#6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $43			;Note G-6
	db $91,$05			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$56			;CMD Vibrato
	db $ca			;Wait 11
	db $43			;Note G-6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $45			;Note A-6
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$56			;CMD Vibrato
	db $c9			;Wait 10
	db $45			;Note A-6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $42			;Note F#6
	db $91,$09			;CMD Portamento tone
	db $c2			;Wait 3
	db $96,$02			;CMD Portamento up
					;Wait Repeat 3
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c1			;Wait 2
	db $95,$56			;CMD Vibrato
	db $bf			;[End-Of-Track]
.track_349:
	db $3e			;Note D-6
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $95,$47			;CMD Vibrato
	db $cf			;Wait 16
	db $42			;Note F#6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $43			;Note G-6
	db $91,$05			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$47			;CMD Vibrato
	db $ca			;Wait 11
	db $43			;Note G-6
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $45			;Note A-6
	db $91,$09			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $c9			;Wait 10
	db $45			;Note A-6
	db $6e			;Volume 12
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $42			;Note F#6
	db $91,$09			;CMD Portamento tone
	db $c3			;Wait 4
	db $96,$02			;CMD Portamento up
	db $c1			;Wait 2
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3b			;Note B-5
	db $91,$05			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$47			;CMD Vibrato
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_350:
	db $2b			;Note G-4
	db $6d			;Volume 11
	db $72			;Instrument 0
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_351:
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
	db $1e			;Note F#3
	db $6d			;Volume 11
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1e			;Note F#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1e			;Note F#3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1e			;Note F#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_352:
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_356:
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_359:
	db $a4,$03			;CMD Speed
	db $c2			;Wait 3
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_360:
	db $36			;Note F#5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $c3			;Wait 4
	db $36			;Note F#5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $36			;Note F#5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $36			;Note F#5
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $36			;Note F#5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $36			;Note F#5
	db $6d			;Volume 11
					;Wait Repeat 2
	db $36			;Note F#5
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $36			;Note F#5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $36			;Note F#5
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $36			;Note F#5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $36			;Note F#5
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_362:
	db $36			;Note F#5
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $40			;Note E-6
	db $6f			;Volume 13
					;Wait Repeat 4
	db $39			;Note A-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $44			;Note G#6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $3d			;Note C#6
	db $6d			;Volume 11
					;Wait Repeat 4
	db $47			;Note B-6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $44			;Note G#6
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_363:
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $38			;Note G#5
	db $6d			;Volume 11
	db $7f			;Instrument 13
	db $c3			;Wait 4
	db $3d			;Note C#6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $38			;Note G#5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $3d			;Note C#6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $3b			;Note B-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $40			;Note E-6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $42			;Note F#6
	db $6d			;Volume 11
					;Wait Repeat 4
	db $3b			;Note B-5
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_366:
	db $1e			;Note F#3
	db $6e			;Volume 12
	db $80			;Instrument 14
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_367:
	db $2a			;Note F#4
	db $6c			;Volume 10
	db $80			;Instrument 14
	db $c0			;Wait 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_369:
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
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_370:
	db $4c			;Note E-7
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
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $47			;Note B-6
	db $c4			;Wait 5
	db $95,$67			;CMD Vibrato
	db $c8			;Wait 9
	db $95,$46			;CMD Vibrato
	db $c3			;Wait 4
	db $4c			;Note E-7
	db $91,$10			;CMD Portamento tone
					;Wait Repeat 4
	db $95,$46			;CMD Vibrato
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_371:
	db $c2			;Wait 3
	db $4c			;Note E-7
	db $6d			;Volume 11
	db $7b			;Instrument 9
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
	db $4f			;Note G-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $47			;Note B-6
	db $c4			;Wait 5
	db $95,$46			;CMD Vibrato
	db $c8			;Wait 9
	db $95,$46			;CMD Vibrato
	db $c3			;Wait 4
	db $4c			;Note E-7
	db $91,$10			;CMD Portamento tone
					;Wait Repeat 4
	db $95,$46			;CMD Vibrato
	db $bf			;[End-Of-Track]
.track_376:
	db $36			;Note F#5
	db $6d			;Volume 11
	db $73			;Instrument 1
	db $c3			;Wait 4
	db $36			;Note F#5
	db $6b			;Volume 9
					;Wait Repeat 4
	db $36			;Note F#5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $36			;Note F#5
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $36			;Note F#5
	db $6b			;Volume 9
					;Wait Repeat 2
	db $60			;Release 96
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_377:
	db $60			;Release 96
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $9d,$04			;CMD Drum $03
					;Wait Repeat 4
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 4
	db $9d,$04			;CMD Drum $03
	db $f3			;Wait 52
	db $bf			;[End-Of-Track]
.track_378:
	db $36			;Note F#5
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $40			;Note E-6
	db $6f			;Volume 13
					;Wait Repeat 4
	db $39			;Note A-5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $39			;Note A-5
	db $6d			;Volume 11
	db $75			;Instrument 3
	db $c0			;Wait 1
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
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
	db $c0			;Wait 1
	db $39			;Note A-5
	db $66			;Volume 4
	db $72			;Instrument 0
	db $96,$02			;CMD Portamento up
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
	db $c5			;Wait 6
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $6b			;Volume 9
	db $c0			;Wait 1
	db $93,$06			;CMD Portamento down
					;Wait Repeat 1
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $69			;Volume 7
					;Wait Repeat 2
	db $6a			;Volume 8
					;Wait Repeat 2
	db $6b			;Volume 9
					;Wait Repeat 2
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_379:
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $38			;Note G#5
	db $6d			;Volume 11
	db $7f			;Instrument 13
	db $c3			;Wait 4
	db $3d			;Note C#6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $38			;Note G#5
	db $6d			;Volume 11
					;Wait Repeat 4
	db $3d			;Note C#6
	db $6e			;Volume 12
					;Wait Repeat 4
	db $35			;Note F-5
	db $6d			;Volume 11
	db $75			;Instrument 3
	db $c0			;Wait 1
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
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $66			;Volume 4
	db $72			;Instrument 0
	db $96,$02			;CMD Portamento up
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
	db $c5			;Wait 6
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $6b			;Volume 9
	db $c0			;Wait 1
	db $93,$05			;CMD Portamento down
					;Wait Repeat 1
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $69			;Volume 7
					;Wait Repeat 2
	db $6a			;Volume 8
					;Wait Repeat 2
	db $6b			;Volume 9
					;Wait Repeat 2
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_380:
	db $9c			;CMD End 
	db $d3			;Wait 20
	db $34			;Note E-5
	db $6d			;Volume 11
	db $75			;Instrument 3
	db $c0			;Wait 1
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
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $63			;Volume 1
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $66			;Volume 4
	db $72			;Instrument 0
	db $96,$02			;CMD Portamento up
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
	db $c5			;Wait 6
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $6b			;Volume 9
	db $c0			;Wait 1
	db $93,$06			;CMD Portamento down
					;Wait Repeat 1
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $69			;Volume 7
					;Wait Repeat 2
	db $6a			;Volume 8
					;Wait Repeat 2
	db $6b			;Volume 9
					;Wait Repeat 2
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_381:
	db $9c			;CMD End 
	db $d5			;Wait 22
	db $30			;Note C-5
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
	db $c0			;Wait 1
	db $41			;Note F-6
	db $66			;Volume 4
	db $72			;Instrument 0
	db $96,$02			;CMD Portamento up
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
	db $c5			;Wait 6
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $6b			;Volume 9
	db $c0			;Wait 1
	db $93,$05			;CMD Portamento down
					;Wait Repeat 1
	db $6a			;Volume 8
	db $c1			;Wait 2
	db $69			;Volume 7
					;Wait Repeat 2
	db $6a			;Volume 8
					;Wait Repeat 2
	db $6b			;Volume 9
					;Wait Repeat 2
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $6d			;Volume 11
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_382:
	db $1e			;Note F#3
	db $6e			;Volume 12
	db $80			;Instrument 14
	db $d7			;Wait 24
	db $18			;Note C-3
	db $d0			;Wait 17
	db $01			;Note C#1
	db $c6			;Wait 7
	db $96,$03			;CMD Portamento up
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_383:
	db $2a			;Note F#4
	db $6c			;Volume 10
	db $80			;Instrument 14
	db $c0			;Wait 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2a			;Note F#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $72			;Instrument 0
	db $c0			;Wait 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_384:
	db $c3			;Wait 4
	db $00			;Note C-1
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c1			;Wait 2
	db $00			;Note C-1
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_385:
	db $c3			;Wait 4
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_386:
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]

