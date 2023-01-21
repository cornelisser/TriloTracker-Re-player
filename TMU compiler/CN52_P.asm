; Song: Car No.52                       
; By:   Tadahiro Nitta                  
; Period table: A440 Modern

; [ Song start data ]
	db $07					; Initial song speed.
	db $80					; Channel setup.
	dw .customvoice_start-8			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_016, .track_016, .track_016, .track_016, .track_016, .track_016, .track_016, .track_016	; Step:000 Pattern:002
.restart:
	dw .track_040, .track_014, .track_014, .track_014, .track_124, .track_044, .track_014, .track_014	; Step:001 Pattern:015
	dw .track_048, .track_014, .track_014, .track_014, .track_014, .track_014, .track_014, .track_014	; Step:002 Pattern:024
	dw .track_040, .track_014, .track_014, .track_014, .track_124, .track_044, .track_014, .track_014	; Step:003 Pattern:015
	dw .track_048, .track_014, .track_014, .track_014, .track_014, .track_014, .track_014, .track_014	; Step:004 Pattern:024
	dw .track_040, .track_014, .track_014, .track_187, .track_044, .track_044, .track_006, .track_007	; Step:005 Pattern:023
	dw .track_048, .track_014, .track_014, .track_044, .track_044, .track_044, .track_006, .track_007	; Step:006 Pattern:043
	dw .track_040, .track_014, .track_014, .track_187, .track_044, .track_044, .track_006, .track_007	; Step:007 Pattern:023
	dw .track_048, .track_014, .track_014, .track_044, .track_044, .track_044, .track_006, .track_007	; Step:008 Pattern:043
	dw .track_040, .track_014, .track_014, .track_003, .track_044, .track_044, .track_006, .track_007	; Step:009 Pattern:005
	dw .track_048, .track_014, .track_014, .track_003, .track_052, .track_014, .track_014, .track_014	; Step:010 Pattern:006
	dw .track_040, .track_014, .track_014, .track_003, .track_044, .track_044, .track_006, .track_007	; Step:011 Pattern:005
	dw .track_048, .track_014, .track_014, .track_003, .track_052, .track_014, .track_014, .track_014	; Step:012 Pattern:006
	dw .track_000, .track_001, .track_002, .track_003, .track_004, .track_005, .track_006, .track_007	; Step:013 Pattern:000
	dw .track_008, .track_009, .track_010, .track_003, .track_012, .track_005, .track_014, .track_014	; Step:014 Pattern:001
	dw .track_000, .track_001, .track_002, .track_003, .track_004, .track_005, .track_006, .track_007	; Step:015 Pattern:000
	dw .track_008, .track_009, .track_010, .track_003, .track_012, .track_005, .track_014, .track_014	; Step:016 Pattern:001
	dw .track_000, .track_001, .track_002, .track_003, .track_004, .track_005, .track_006, .track_007	; Step:017 Pattern:000
	dw .track_008, .track_009, .track_010, .track_003, .track_012, .track_005, .track_014, .track_014	; Step:018 Pattern:001
	dw .track_000, .track_001, .track_002, .track_003, .track_004, .track_005, .track_006, .track_007	; Step:019 Pattern:000
	dw .track_008, .track_009, .track_010, .track_003, .track_012, .track_005, .track_014, .track_014	; Step:020 Pattern:001
	dw .track_024, .track_025, .track_025, .track_027, .track_028, .track_025, .track_025, .track_025	; Step:021 Pattern:003
	dw .track_024, .track_025, .track_025, .track_027, .track_028, .track_025, .track_025, .track_025	; Step:022 Pattern:003
	dw .track_032, .track_033, .track_034, .track_027, .track_028, .track_025, .track_025, .track_025	; Step:023 Pattern:004
	dw .track_024, .track_025, .track_025, .track_027, .track_028, .track_025, .track_025, .track_025	; Step:024 Pattern:003
	dw .track_056, .track_014, .track_014, .track_059, .track_060, .track_061, .track_062, .track_063	; Step:025 Pattern:007
	dw .track_056, .track_014, .track_014, .track_059, .track_060, .track_061, .track_062, .track_063	; Step:026 Pattern:007
	dw .track_056, .track_014, .track_014, .track_059, .track_060, .track_061, .track_062, .track_063	; Step:027 Pattern:007
	dw .track_176, .track_014, .track_014, .track_179, .track_180, .track_181, .track_014, .track_014	; Step:028 Pattern:022
	dw .track_072, .track_025, .track_025, .track_075, .track_028, .track_077, .track_078, .track_079	; Step:029 Pattern:009
	dw .track_280, .track_025, .track_025, .track_075, .track_028, .track_078, .track_078, .track_287	; Step:030 Pattern:035
	dw .track_056, .track_014, .track_014, .track_059, .track_060, .track_061, .track_062, .track_063	; Step:031 Pattern:007
	dw .track_056, .track_014, .track_014, .track_059, .track_060, .track_061, .track_062, .track_063	; Step:032 Pattern:007
	dw .track_056, .track_014, .track_014, .track_059, .track_060, .track_061, .track_062, .track_063	; Step:033 Pattern:007
	dw .track_176, .track_014, .track_014, .track_179, .track_180, .track_181, .track_014, .track_014	; Step:034 Pattern:022
	dw .track_072, .track_025, .track_025, .track_075, .track_028, .track_077, .track_078, .track_079	; Step:035 Pattern:009
	dw .track_280, .track_025, .track_025, .track_075, .track_028, .track_078, .track_078, .track_287	; Step:036 Pattern:035
	dw .track_128, .track_014, .track_014, .track_131, .track_132, .track_014, .track_014, .track_014	; Step:037 Pattern:016
	dw .track_168, .track_014, .track_014, .track_131, .track_172, .track_014, .track_014, .track_014	; Step:038 Pattern:021
	dw .track_144, .track_014, .track_014, .track_147, .track_148, .track_014, .track_014, .track_014	; Step:039 Pattern:018
	dw .track_136, .track_014, .track_014, .track_131, .track_140, .track_014, .track_014, .track_143	; Step:040 Pattern:017
	dw .track_080, .track_081, .track_082, .track_027, .track_084, .track_085, .track_086, .track_087	; Step:041 Pattern:010
	dw .track_080, .track_081, .track_082, .track_027, .track_084, .track_085, .track_086, .track_087	; Step:042 Pattern:010
	dw .track_088, .track_025, .track_090, .track_027, .track_028, .track_093, .track_094, .track_095	; Step:043 Pattern:011
	dw .track_088, .track_025, .track_090, .track_027, .track_028, .track_093, .track_094, .track_095	; Step:044 Pattern:011
	dw .track_152, .track_081, .track_154, .track_027, .track_084, .track_157, .track_086, .track_159	; Step:045 Pattern:019
	dw .track_152, .track_081, .track_154, .track_027, .track_084, .track_157, .track_086, .track_159	; Step:046 Pattern:019
	dw .track_088, .track_025, .track_090, .track_027, .track_028, .track_093, .track_094, .track_095	; Step:047 Pattern:011
	dw .track_088, .track_025, .track_090, .track_027, .track_028, .track_093, .track_094, .track_095	; Step:048 Pattern:011
	dw .track_096, .track_097, .track_098, .track_099, .track_100, .track_101, .track_102, .track_103	; Step:049 Pattern:012
	dw .track_104, .track_105, .track_106, .track_107, .track_108, .track_109, .track_110, .track_111	; Step:050 Pattern:013
	dw .track_112, .track_025, .track_114, .track_027, .track_028, .track_025, .track_118, .track_119	; Step:051 Pattern:014
	dw .track_160, .track_161, .track_162, .track_163, .track_164, .track_165, .track_166, .track_167	; Step:052 Pattern:020
	dw .track_232, .track_233, .track_234, .track_003, .track_004, .track_237, .track_006, .track_239	; Step:053 Pattern:029
	dw .track_008, .track_289, .track_290, .track_003, .track_012, .track_005, .track_014, .track_014	; Step:054 Pattern:036
	dw .track_232, .track_233, .track_234, .track_003, .track_004, .track_237, .track_006, .track_239	; Step:055 Pattern:029
	dw .track_008, .track_289, .track_290, .track_003, .track_012, .track_005, .track_014, .track_014	; Step:056 Pattern:036
	dw .track_232, .track_233, .track_234, .track_003, .track_004, .track_237, .track_006, .track_239	; Step:057 Pattern:029
	dw .track_008, .track_289, .track_290, .track_003, .track_012, .track_005, .track_014, .track_014	; Step:058 Pattern:036
	dw .track_232, .track_233, .track_234, .track_003, .track_004, .track_237, .track_006, .track_239	; Step:059 Pattern:029
	dw .track_536, .track_289, .track_290, .track_003, .track_012, .track_005, .track_014, .track_014	; Step:060 Pattern:067
	dw .track_024, .track_025, .track_298, .track_027, .track_028, .track_025, .track_025, .track_025	; Step:061 Pattern:037
	dw .track_024, .track_025, .track_306, .track_027, .track_028, .track_025, .track_025, .track_025	; Step:062 Pattern:038
	dw .track_032, .track_033, .track_034, .track_027, .track_028, .track_025, .track_025, .track_025	; Step:063 Pattern:004
	dw .track_024, .track_025, .track_025, .track_027, .track_028, .track_025, .track_025, .track_025	; Step:064 Pattern:003
	dw .track_040, .track_014, .track_014, .track_014, .track_124, .track_044, .track_014, .track_014	; Step:065 Pattern:015
	dw .track_048, .track_014, .track_014, .track_014, .track_014, .track_014, .track_014, .track_014	; Step:066 Pattern:024
	dw .track_040, .track_014, .track_014, .track_014, .track_124, .track_044, .track_550, .track_550	; Step:067 Pattern:068
	dw .track_240, .track_044, .track_044, .track_243, .track_044, .track_245, .track_246, .track_044	; Step:068 Pattern:030
	dw .track_112, .track_078, .track_025, .track_078, .track_204, .track_205, .track_206, .track_025	; Step:069 Pattern:031
	dw .track_112, .track_025, .track_025, .track_025, .track_212, .track_213, .track_214, .track_025	; Step:070 Pattern:032
	dw .track_112, .track_025, .track_025, .track_025, .track_220, .track_221, .track_206, .track_025	; Step:071 Pattern:033
	dw .track_272, .track_025, .track_025, .track_025, .track_228, .track_229, .track_214, .track_025	; Step:072 Pattern:034
	dw .track_312, .track_078, .track_314, .track_315, .track_204, .track_205, .track_206, .track_207	; Step:073 Pattern:039
	dw .track_320, .track_025, .track_210, .track_323, .track_212, .track_213, .track_326, .track_215	; Step:074 Pattern:040
	dw .track_025, .track_025, .track_330, .track_025, .track_220, .track_221, .track_206, .track_223	; Step:075 Pattern:041
	dw .track_336, .track_025, .track_338, .track_339, .track_228, .track_229, .track_214, .track_231	; Step:076 Pattern:042
	dw .track_112, .track_201, .track_202, .track_203, .track_204, .track_205, .track_206, .track_207	; Step:077 Pattern:025
	dw .track_112, .track_209, .track_210, .track_211, .track_212, .track_213, .track_214, .track_215	; Step:078 Pattern:026
	dw .track_112, .track_217, .track_202, .track_219, .track_220, .track_221, .track_206, .track_223	; Step:079 Pattern:027
	dw .track_224, .track_225, .track_226, .track_227, .track_228, .track_229, .track_214, .track_231	; Step:080 Pattern:028
	dw .track_440, .track_201, .track_202, .track_443, .track_204, .track_205, .track_206, .track_207	; Step:081 Pattern:055
	dw .track_448, .track_209, .track_210, .track_451, .track_212, .track_213, .track_214, .track_215	; Step:082 Pattern:056
	dw .track_112, .track_217, .track_202, .track_459, .track_220, .track_221, .track_206, .track_223	; Step:083 Pattern:057
	dw .track_496, .track_497, .track_498, .track_499, .track_500, .track_501, .track_422, .track_503	; Step:084 Pattern:062
	dw .track_112, .track_409, .track_410, .track_411, .track_412, .track_413, .track_414, .track_415	; Step:085 Pattern:051
	dw .track_416, .track_417, .track_418, .track_419, .track_420, .track_421, .track_422, .track_423	; Step:086 Pattern:052
	dw .track_112, .track_425, .track_426, .track_427, .track_428, .track_429, .track_414, .track_431	; Step:087 Pattern:053
	dw .track_432, .track_433, .track_434, .track_435, .track_436, .track_437, .track_366, .track_439	; Step:088 Pattern:054
	dw .track_504, .track_353, .track_506, .track_507, .track_508, .track_509, .track_358, .track_511	; Step:089 Pattern:063
	dw .track_512, .track_513, .track_362, .track_515, .track_516, .track_517, .track_366, .track_519	; Step:090 Pattern:064
	dw .track_520, .track_369, .track_370, .track_523, .track_524, .track_525, .track_358, .track_527	; Step:091 Pattern:065
	dw .track_528, .track_377, .track_378, .track_531, .track_532, .track_533, .track_366, .track_439	; Step:092 Pattern:066
	dw .track_352, .track_353, .track_354, .track_355, .track_356, .track_357, .track_358, .track_359	; Step:093 Pattern:044
	dw .track_360, .track_361, .track_362, .track_363, .track_364, .track_365, .track_366, .track_367	; Step:094 Pattern:045
	dw .track_368, .track_369, .track_370, .track_371, .track_372, .track_373, .track_358, .track_375	; Step:095 Pattern:046
	dw .track_376, .track_377, .track_378, .track_379, .track_380, .track_381, .track_366, .track_383	; Step:096 Pattern:047
	dw .track_352, .track_353, .track_354, .track_475, .track_356, .track_357, .track_358, .track_359	; Step:097 Pattern:059
	dw .track_112, .track_361, .track_362, .track_483, .track_364, .track_365, .track_366, .track_367	; Step:098 Pattern:060
	dw .track_360, .track_369, .track_370, .track_491, .track_492, .track_493, .track_358, .track_375	; Step:099 Pattern:061
	dw .track_376, .track_377, .track_554, .track_555, .track_556, .track_557, .track_366, .track_559	; Step:100 Pattern:069
	dw .track_384, .track_385, .track_386, .track_387, .track_388, .track_389, .track_390, .track_391	; Step:101 Pattern:048
	dw .track_400, .track_400, .track_400, .track_400, .track_400, .track_400, .track_400, .track_400	; Step:102 Pattern:050
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:
	db $21,$22,$0e,$04,$81,$75,$ff,$0f 		; Custom voice:179
	db $07,$01,$00,$03,$fb,$f5,$ff,$28 		; Custom voice:180

; [ FM Drum macros]
.drummacro_start:
	dw .drum_00
	dw .drum_02
	dw .drum_04
	dw .drum_06
	dw .drum_08

.drum_00:						; Drum 0. Bsdrm           
	db $04, $00							; volume Base drum
	db $12, $e6, $04						; note Bdrum
	db $1e, $30							; Percussion
	db $02							; STOP - End of Drum macro

.drum_02:						; Drum 1. H-H UP          
	db $06, $30							; volume Snare
	db $16, $ad, $02						; note Snare 
	db $1e, $21							; Percussion
	db $02							; STOP - End of Drum macro

.drum_04:						; Drum 3. Bs UP (Sn)      
	db $04, $00							; volume Base drum
	db $12, $ad, $06						; note Bdrum
	db $1e, $30							; Percussion
	db $02							; STOP - End of Drum macro

.drum_06:						; Drum 4. Bs & Cym        
	db $04, $00							; volume Base drum
	db $0e, $02							; volume Tom
	db $12, $e6, $04						; note Bdrum
	db $1e, $32							; Percussion
	db $02							; STOP - End of Drum macro

.drum_08:						; Drum 18.                 
	db $1e, $20							; Percussion
	db $02							; STOP - End of Drum macro

; [ Instruments]
.instrument_start:
	dw .instrument_00				; GT              
	dw .instrument_01				; GT2             
	dw .instrument_02				; PSG_Sn_01       
	dw .instrument_03				; PSG_BsDr_01     
	dw .instrument_04				; PSG_Vib_01      
	dw .instrument_05				; Read_Shyn_01    
	dw .instrument_06				; Read_Shyn_UP_01 
	dw .instrument_07				; StroopWafelBASS 
	dw .instrument_08				; PSG_Doun_01     
	dw .instrument_09				; CLOSE_H-H_01    
	dw .instrument_10				; OPEN_H-H_01     
	dw .instrument_11				; PSG_Norm        
	dw .instrument_12				; OPLL_Gt         
	dw .instrument_13				; E.PIANO         
	dw .instrument_14				; SHTYNT Drum_01  
	dw .instrument_15				; Harpsicode      
	dw .instrument_16				; Noise CRSH      
	dw .instrument_17				; Noise CRSH 2    
	dw .instrument_18				; Noise CRSH 3    
	dw .instrument_19				; PSG_Melo 1      

.instrument_00:					; GT              
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $04,$04,$00					; Tone add
	db $16,$20						; FM Hardware Voice
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$20						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_01:					; GT2             
	db $60					; FM Hardware Voice 6
	db $02,$10						; Mixer (T)
	db $16,$30						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$10						; FM Hardware Voice
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $04,$00,$02					; Tone add
	db $16,$30						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $04,$00,$fe					; Tone sub
	db $16,$50						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$60						; FM Hardware Voice
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $16,$70						; FM Hardware Voice
	db $00							; Volume same
	db $18,$e3						; Loop (-30)

.instrument_02:					; PSG_Sn_01       
	db $0F					; FM Hardware Voice was not set
	db $02,$80						; Mixer (N)
	db $0E,$1f						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$10						; Noise _
	db $08,$0e						; Volume _
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$04						; Noise _
	db $0c,$01						; Volume -
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $18,$f6						; Loop (-11)

.instrument_03:					; PSG_BsDr_01     
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $04,$60,$00					; Tone add
	db $08,$0d						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $04,$60,$00					; Tone add
	db $0c,$01						; Volume -
	db $02,$10						; Mixer (T)
	db $04,$60,$00					; Tone add
	db $0c,$01						; Volume -
	db $18,$f1						; Loop (-16)

.instrument_04:					; PSG_Vib_01      
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $04,$03,$00					; Tone add
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $04,$fe,$ff					; Tone sub
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$fe,$ff					; Tone sub
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$fe,$ff					; Tone sub
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$fe,$ff					; Tone sub
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$fe,$ff					; Tone sub
	db $0c,$01						; Volume -
	db $02,$10						; Mixer (T)
	db $04,$02,$00					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$02,$00					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$02,$00					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$02,$00					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$02,$00					; Tone add
	db $00							; Volume same
	db $18,$c2						; Loop (-63)

.instrument_05:					; Read_Shyn_01    
	db $00,$04					; FM Software Voice 0
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_06:					; Read_Shyn_UP_01 
	db $00,$04					; FM Software Voice 0
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$0a,$00					; Tone add
	db $00							; Volume same
	db $18,$f6						; Loop (-11)

.instrument_07:					; StroopWafelBASS 
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $16,$b0						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $16,$d0						; FM Hardware Voice
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$e0						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_08:					; PSG_Doun_01     
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $04,$02,$00					; Tone add
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $04,$01,$00					; Tone add
	db $08,$0f						; Volume _
	db $18,$f1						; Loop (-16)

.instrument_09:					; CLOSE_H-H_01    
	db $0F					; FM Hardware Voice was not set
	db $02,$80						; Mixer (N)
	db $0E,$03						; Noise _
	db $08,$0f						; Volume _
	db $08,$00						; Volume _
								; --- Macro loop
	db $08,$00						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_10:					; OPEN_H-H_01     
	db $0F					; FM Hardware Voice was not set
	db $02,$80						; Mixer (N)
	db $0E,$10						; Noise _
	db $08,$0e						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$00						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$18						; Noise _
	db $08,$0c						; Volume _
								; --- Macro loop
	db $08,$00						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_11:					; PSG_Norm        
	db $0F					; FM Hardware Voice was not set
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_12:					; OPLL_Gt         
	db $0F					; FM Hardware Voice was not set
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$20						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_13:					; E.PIANO         
	db $0F					; FM Hardware Voice was not set
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$c0						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_14:					; SHTYNT Drum_01  
	db $00,$08					; FM Software Voice 1
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_15:					; Harpsicode      
	db $0F					; FM Hardware Voice was not set
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$b0						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_16:					; Noise CRSH      
	db $0F					; FM Hardware Voice was not set
	db $02,$80						; Mixer (N)
	db $0E,$1f						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$1e						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$1d						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1c						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1b						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1a						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$10						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0f						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0e						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0d						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0b						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0a						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$09						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$08						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$07						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$06						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$05						; Noise _
	db $08,$0f						; Volume _
	db $18,$f3						; Loop (-14)

.instrument_17:					; Noise CRSH 2    
	db $0F					; FM Hardware Voice was not set
	db $02,$80						; Mixer (N)
	db $0E,$00						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$01						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$02						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$03						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$04						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$05						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$06						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$07						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$08						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$09						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0a						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0b						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0c						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0d						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0e						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0f						; Noise _
	db $00							; Volume same
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$0f						; Noise _
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_18:					; Noise CRSH 3    
	db $0F					; FM Hardware Voice was not set
	db $02,$80						; Mixer (N)
	db $0E,$10						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$11						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$12						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$13						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$14						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$15						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$16						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$17						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$18						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$19						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1a						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1b						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1c						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1d						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1e						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$1f						; Noise _
	db $00							; Volume same
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$1f						; Noise _
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_19:					; PSG_Melo 1      
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $0c,$01						; Volume -
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $0c,$01						; Volume -
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $0c,$01						; Volume -
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $18,$fc						; Loop (-5)


; [ Song track data ]
.track_000:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_001:
	db $35			;Note F-5
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $9c			;CMD End 
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_002:
	db $c1			;Wait 2
	db $39			;Note A-5
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_003:
	db $29			;Note F-4
	db $6f			;Volume 13
	db $72			;Instrument 0
	db $95,$99			;CMD Vibrato Extended
	db $c7			;Wait 8
	db $35			;Note F-5
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_004:
	db $3c			;Note C-6
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $c7			;Wait 8
	db $3f			;Note D#6
	db $91,$07			;CMD Portamento tone
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_005:
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $95,$76			;CMD Vibrato
	db $c7			;Wait 8
	db $3f			;Note D#6
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_006:
	db $34			;Note E-5
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $9c			;CMD End 
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_007:
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $9c			;CMD End 
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_008:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_009:
	db $3f			;Note D#6
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_010:
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_012:
	db $3c			;Note C-6
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $c7			;Wait 8
	db $3f			;Note D#6
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_014:
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_016:
	db $71			;Volume 15
	db $72			;Instrument 0
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_024:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_025:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_027:
	db $35			;Note F-5
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $29			;Note F-4
	db $c3			;Wait 4
	db $35			;Note F-5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $35			;Note F-5
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $29			;Note F-4
	db $c3			;Wait 4
	db $35			;Note F-5
	db $c1			;Wait 2
	db $60			;Release 96
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_028:
	db $11			;Note F-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $91,$30			;CMD Portamento tone
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
	db $c3			;Wait 4
	db $11			;Note F-2
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1b			;Note D#3
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $91,$07			;CMD Portamento tone
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_032:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_033:
	db $d0			;Wait 17
	db $58			;Note E-8
	db $63			;Volume 1
	db $7a			;Instrument 8
	db $9c			;CMD End 
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
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_034:
	db $d2			;Wait 19
	db $58			;Note E-8
	db $63			;Volume 1
	db $7a			;Instrument 8
	db $9c			;CMD End 
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
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_040:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_044:
	db $60			;Release 96
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_048:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_052:
	db $3c			;Note C-6
	db $63			;Volume 1
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $60			;Release 96
	db $ce			;Wait 15
	db $bf			;[End-Of-Track]
.track_056:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $40			;Note E-6
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_059:
	db $2e			;Note A#4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $60			;Release 96
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $6f			;Volume 13
	db $91,$13			;CMD Portamento tone
	db $c5			;Wait 6
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_060:
	db $16			;Note A#2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $95,$73			;CMD Vibrato
	db $c7			;Wait 8
	db $22			;Note A#3
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$74			;CMD Vibrato
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_061:
	db $22			;Note A#3
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$86			;CMD Vibrato
					;Wait Repeat 4
	db $2e			;Note A#4
	db $9c			;CMD End 
					;Wait Repeat 4
	db $95,$86			;CMD Vibrato
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_062:
	db $34			;Note E-5
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_063:
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_072:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_075:
	db $35			;Note F-5
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $91,$08			;CMD Portamento tone
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_077:
	db $29			;Note F-4
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $95,$86			;CMD Vibrato
	db $d9			;Wait 26
	db $bf			;[End-Of-Track]
.track_078:
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_079:
	db $60			;Release 96
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $4b			;Note D#7
	db $c1			;Wait 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $46			;Note A#6
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $41			;Note F-6
	db $c2			;Wait 3
	db $60			;Release 96
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_080:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_081:
	db $2e			;Note A#4
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $32			;Note D-5
	db $91,$10			;CMD Portamento tone
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $46			;Note A#6
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
	db $c2			;Wait 3
	db $35			;Note F-5
	db $c0			;Wait 1
	db $60			;Release 96
	db $cc			;Wait 13
	db $bf			;[End-Of-Track]
.track_082:
	db $60			;Release 96
	db $6d			;Volume 11
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_084:
	db $16			;Note A#2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $22			;Note A#3
	db $91,$30			;CMD Portamento tone
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
	db $c3			;Wait 4
	db $16			;Note A#2
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $20			;Note G#3
	db $c1			;Wait 2
	db $22			;Note A#3
	db $91,$07			;CMD Portamento tone
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_085:
	db $2e			;Note A#4
	db $6f			;Volume 13
	db $7e			;Instrument 12
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3a			;Note A#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $46			;Note A#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $c0			;Wait 1
	db $3a			;Note A#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $c0			;Wait 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
	db $c2			;Wait 3
	db $35			;Note F-5
	db $c0			;Wait 1
	db $60			;Release 96
	db $c7			;Wait 8
	db $41			;Note F-6
	db $6d			;Volume 11
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $4d			;Note F-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $59			;Note F-8
	db $6c			;Volume 10
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_086:
	db $c7			;Wait 8
	db $52			;Note A#7
	db $63			;Volume 1
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $46			;Note A#6
	db $6d			;Volume 11
	db $91,$05			;CMD Portamento tone
	db $ca			;Wait 11
	db $4d			;Note F-7
	db $6e			;Volume 12
	db $91,$0f			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_087:
	db $60			;Release 96
	db $9c			;CMD End 
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_088:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c0			;Wait 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $bf			;[End-Of-Track]
.track_090:
	db $3c			;Note C-6
	db $6c			;Volume 10
	db $76			;Instrument 4
	db $c0			;Wait 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $39			;Note A-5
	db $c5			;Wait 6
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $30			;Note C-5
	db $cb			;Wait 12
	db $24			;Note C-4
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $35			;Note F-5
	db $c1			;Wait 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_093:
	db $28			;Note E-4
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_094:
	db $c7			;Wait 8
	db $35			;Note F-5
	db $63			;Volume 1
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $60			;Release 96
	db $c6			;Wait 7
	db $4d			;Note F-7
	db $6d			;Volume 11
	db $91,$0b			;CMD Portamento tone
	db $c7			;Wait 8
	db $4d			;Note F-7
	db $96,$08			;CMD Portamento up
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_095:
	db $48			;Note C-7
	db $6e			;Volume 12
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $46			;Note A#6
					;Wait Repeat 1
	db $45			;Note A-6
	db $c5			;Wait 6
	db $48			;Note C-7
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $cb			;Wait 12
	db $30			;Note C-5
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $c0			;Wait 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $41			;Note F-6
	db $c1			;Wait 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $48			;Note C-7
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_096:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $c0			;Wait 1
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c0			;Wait 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c2			;Wait 3
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$00			;CMD Drum $01
	db $c0			;Wait 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $9d,$00			;CMD Drum $01
	db $c0			;Wait 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $bf			;[End-Of-Track]
.track_097:
	db $29			;Note F-4
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $91,$10			;CMD Portamento tone
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $60			;Release 96
	db $c2			;Wait 3
	db $30			;Note C-5
	db $c0			;Wait 1
	db $60			;Release 96
	db $cc			;Wait 13
	db $bf			;[End-Of-Track]
.track_098:
	db $30			;Note C-5
	db $6c			;Volume 10
	db $76			;Instrument 4
	db $c1			;Wait 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $3b			;Note B-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_099:
	db $3c			;Note C-6
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $60			;Release 96
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_100:
	db $18			;Note C-3
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $24			;Note C-4
	db $91,$30			;CMD Portamento tone
					;Wait Repeat 2
	db $18			;Note C-3
	db $91,$30			;CMD Portamento tone
					;Wait Repeat 2
	db $24			;Note C-4
	db $91,$30			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $24			;Note C-4
	db $c3			;Wait 4
	db $18			;Note C-3
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $17			;Note B-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_101:
	db $29			;Note F-4
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2e			;Note A#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2f			;Note B-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $9c			;CMD End 
					;Wait Repeat 1
	db $62			;Note D-9
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $62			;Note D-9
	db $c2			;Wait 3
	db $30			;Note C-5
	db $6e			;Volume 12
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $60			;Release 96
	db $cc			;Wait 13
	db $bf			;[End-Of-Track]
.track_102:
	db $34			;Note E-5
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $9c			;CMD End 
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_103:
	db $3c			;Note C-6
	db $6e			;Volume 12
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $47			;Note B-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_104:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $c0			;Wait 1
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c0			;Wait 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c2			;Wait 3
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$02			;CMD Drum $02
	db $c0			;Wait 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c0			;Wait 1
	db $40			;Note E-6
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $c0			;Wait 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$06			;CMD Drum $05
	db $c0			;Wait 1
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 1
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
					;Wait Repeat 1
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $9d,$08			;CMD Drum $00
	db $c0			;Wait 1
	db $17			;Note B-2
	db $6d			;Volume 11
	db $74			;Instrument 2
	db $9d,$00			;CMD Drum $01
	db $bf			;[End-Of-Track]
.track_105:
	db $27			;Note D#4
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $91,$10			;CMD Portamento tone
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $3f			;Note D#6
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $60			;Release 96
	db $c2			;Wait 3
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $60			;Release 96
	db $cc			;Wait 13
	db $bf			;[End-Of-Track]
.track_106:
	db $2e			;Note A#4
	db $6c			;Volume 10
	db $76			;Instrument 4
	db $c1			;Wait 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $39			;Note A-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_107:
	db $3a			;Note A#5
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c3			;Wait 4
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $3a			;Note A#5
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c3			;Wait 4
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $60			;Release 96
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_108:
	db $16			;Note A#2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $22			;Note A#3
	db $91,$30			;CMD Portamento tone
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
	db $c3			;Wait 4
	db $16			;Note A#2
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $16			;Note A#2
	db $c1			;Wait 2
	db $14			;Note G#2
	db $91,$07			;CMD Portamento tone
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_109:
	db $27			;Note D#4
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $37			;Note G-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3f			;Note D#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $37			;Note G-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2e			;Note A#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $9c			;CMD End 
					;Wait Repeat 1
	db $62			;Note D-9
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $60			;Release 96
	db $c2			;Wait 3
	db $2e			;Note A#4
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $60			;Release 96
	db $cc			;Wait 13
	db $bf			;[End-Of-Track]
.track_110:
	db $2d			;Note A-4
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_111:
	db $3a			;Note A#5
	db $6e			;Volume 12
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $4d			;Note F-7
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $3a			;Note A#5
					;Wait Repeat 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $45			;Note A-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_112:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_114:
	db $29			;Note F-4
	db $6c			;Volume 10
	db $76			;Instrument 4
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c3			;Wait 4
	db $39			;Note A-5
					;Wait Repeat 4
	db $35			;Note F-5
	db $c2			;Wait 3
	db $35			;Note F-5
	db $c0			;Wait 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $24			;Note C-4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $35			;Note F-5
	db $bf			;[End-Of-Track]
.track_118:
	db $34			;Note E-5
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_119:
	db $41			;Note F-6
	db $6e			;Volume 12
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $4d			;Note F-7
					;Wait Repeat 2
	db $54			;Note C-8
	db $c3			;Wait 4
	db $51			;Note A-7
					;Wait Repeat 4
	db $4d			;Note F-7
	db $c2			;Wait 3
	db $4d			;Note F-7
	db $c0			;Wait 1
	db $4c			;Note E-7
					;Wait Repeat 1
	db $4b			;Note D#7
					;Wait Repeat 1
	db $48			;Note C-7
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $45			;Note A-6
					;Wait Repeat 1
	db $48			;Note C-7
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $4d			;Note F-7
	db $bf			;[End-Of-Track]
.track_124:
	db $c4			;Wait 5
	db $95,$86			;CMD Vibrato
	db $ca			;Wait 11
	db $bf			;[End-Of-Track]
.track_128:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_131:
	db $29			;Note F-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $35			;Note F-5
	db $6f			;Volume 13
	db $9c			;CMD End 
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_132:
	db $11			;Note F-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_136:
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$06			;CMD Drum $05
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6e			;Volume 12
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $13			;Note G-2
	db $6d			;Volume 11
	db $74			;Instrument 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$06			;CMD Drum $05
	db $c0			;Wait 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
	db $bf			;[End-Of-Track]
.track_140:
	db $11			;Note F-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c7			;Wait 8
	db $1d			;Note F-3
	db $c0			;Wait 1
	db $14			;Note G#2
					;Wait Repeat 1
	db $11			;Note F-2
					;Wait Repeat 1
	db $14			;Note G#2
					;Wait Repeat 1
	db $18			;Note C-3
					;Wait Repeat 1
	db $1b			;Note D#3
					;Wait Repeat 1
	db $11			;Note F-2
					;Wait Repeat 1
	db $1d			;Note F-3
	db $bf			;[End-Of-Track]
.track_143:
	db $35			;Note F-5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $3f			;Note D#6
	db $9c			;CMD End 
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3a			;Note A#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $44			;Note G#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3f			;Note D#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $44			;Note G#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $48			;Note C-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4b			;Note D#7
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_144:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $13			;Note G-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_147:
	db $29			;Note F-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $35			;Note F-5
	db $6f			;Volume 13
	db $91,$22			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_148:
	db $c3			;Wait 4
	db $95,$85			;CMD Vibrato
	db $c6			;Wait 7
	db $96,$07			;CMD Portamento up
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_152:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$06			;CMD Drum $05
	db $c1			;Wait 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_154:
	db $41			;Note F-6
	db $6c			;Volume 10
	db $76			;Instrument 4
	db $c0			;Wait 1
	db $42			;Note F#6
					;Wait Repeat 1
	db $44			;Note G#6
					;Wait Repeat 1
	db $46			;Note A#6
	db $c1			;Wait 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $4d			;Note F-7
					;Wait Repeat 2
	db $52			;Note A#7
					;Wait Repeat 2
	db $46			;Note A#6
	db $c2			;Wait 3
	db $4d			;Note F-7
	db $c4			;Wait 5
	db $52			;Note A#7
	db $c0			;Wait 1
	db $48			;Note C-7
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $3e			;Note D-6
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $6c			;Volume 10
					;Wait Repeat 1
	db $53			;Note B-7
					;Wait Repeat 1
	db $52			;Note A#7
					;Wait Repeat 1
	db $51			;Note A-7
					;Wait Repeat 1
	db $50			;Note G#7
					;Wait Repeat 1
	db $4f			;Note G-7
					;Wait Repeat 1
	db $4e			;Note F#7
					;Wait Repeat 1
	db $4d			;Note F-7
	db $bf			;[End-Of-Track]
.track_157:
	db $2e			;Note A#4
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3a			;Note A#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $46			;Note A#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3a			;Note A#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $62			;Note D-9
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $62			;Note D-9
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $6e			;Volume 12
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $62			;Note D-9
	db $c2			;Wait 3
	db $35			;Note F-5
	db $6e			;Volume 12
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $60			;Release 96
	db $c7			;Wait 8
	db $41			;Note F-6
	db $6e			;Volume 12
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $4d			;Note F-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $59			;Note F-8
	db $6d			;Volume 11
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_159:
	db $41			;Note F-6
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $c0			;Wait 1
	db $42			;Note F#6
					;Wait Repeat 1
	db $44			;Note G#6
					;Wait Repeat 1
	db $46			;Note A#6
	db $c1			;Wait 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $4d			;Note F-7
					;Wait Repeat 2
	db $52			;Note A#7
					;Wait Repeat 2
	db $46			;Note A#6
	db $c2			;Wait 3
	db $4d			;Note F-7
	db $c4			;Wait 5
	db $52			;Note A#7
	db $c0			;Wait 1
	db $48			;Note C-7
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $53			;Note B-7
					;Wait Repeat 1
	db $52			;Note A#7
					;Wait Repeat 1
	db $51			;Note A-7
					;Wait Repeat 1
	db $50			;Note G#7
					;Wait Repeat 1
	db $4f			;Note G-7
					;Wait Repeat 1
	db $4e			;Note F#7
					;Wait Repeat 1
	db $4d			;Note F-7
	db $bf			;[End-Of-Track]
.track_160:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$06			;CMD Drum $05
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$06			;CMD Drum $05
	db $c0			;Wait 1
	db $17			;Note B-2
	db $6f			;Volume 13
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $bf			;[End-Of-Track]
.track_161:
	db $2e			;Note A#4
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $32			;Note D-5
	db $91,$10			;CMD Portamento tone
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $46			;Note A#6
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $35			;Note F-5
	db $76			;Instrument 4
					;Wait Repeat 1
	db $60			;Release 96
	db $c2			;Wait 3
	db $3a			;Note A#5
	db $c0			;Wait 1
	db $60			;Release 96
	db $cc			;Wait 13
	db $bf			;[End-Of-Track]
.track_162:
	db $29			;Note F-4
	db $6c			;Volume 10
	db $76			;Instrument 4
	db $c1			;Wait 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c3			;Wait 4
	db $3a			;Note A#5
					;Wait Repeat 4
	db $35			;Note F-5
	db $c2			;Wait 3
	db $35			;Note F-5
	db $c0			;Wait 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $46			;Note A#6
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $46			;Note A#6
	db $bf			;[End-Of-Track]
.track_163:
	db $35			;Note F-5
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $29			;Note F-4
	db $c3			;Wait 4
	db $35			;Note F-5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $35			;Note F-5
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $29			;Note F-4
	db $c3			;Wait 4
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $60			;Release 96
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_164:
	db $11			;Note F-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $1d			;Note F-3
	db $91,$30			;CMD Portamento tone
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
	db $c3			;Wait 4
	db $11			;Note F-2
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1d			;Note F-3
	db $c0			;Wait 1
	db $18			;Note C-3
					;Wait Repeat 1
	db $11			;Note F-2
	db $c1			;Wait 2
	db $18			;Note C-3
	db $c1			;Wait 2
	db $20			;Note G#3
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $22			;Note A#3
	db $bf			;[End-Of-Track]
.track_165:
	db $2e			;Note A#4
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $46			;Note A#6
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $60			;Release 96
	db $c2			;Wait 3
	db $3a			;Note A#5
	db $c0			;Wait 1
	db $60			;Release 96
	db $c4			;Wait 5
	db $35			;Note F-5
	db $6e			;Volume 12
	db $7d			;Instrument 11
	db $91,$2f			;CMD Portamento tone
	db $c0			;Wait 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $4d			;Note F-7
					;Wait Repeat 1
	db $59			;Note F-8
					;Wait Repeat 1
	db $52			;Note A#7
					;Wait Repeat 1
	db $46			;Note A#6
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $2e			;Note A#4
	db $bf			;[End-Of-Track]
.track_166:
	db $59			;Note F-8
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $96,$02			;CMD Portamento up
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_167:
	db $41			;Note F-6
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $c1			;Wait 2
	db $46			;Note A#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $4d			;Note F-7
					;Wait Repeat 2
	db $56			;Note D-8
	db $c3			;Wait 4
	db $52			;Note A#7
					;Wait Repeat 4
	db $4d			;Note F-7
	db $c2			;Wait 3
	db $4d			;Note F-7
	db $c0			;Wait 1
	db $4c			;Note E-7
					;Wait Repeat 1
	db $4b			;Note D#7
					;Wait Repeat 1
	db $48			;Note C-7
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $45			;Note A-6
					;Wait Repeat 1
	db $48			;Note C-7
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $52			;Note A#7
	db $bf			;[End-Of-Track]
.track_168:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_172:
	db $cb			;Wait 12
	db $11			;Note F-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $1d			;Note F-3
	db $71			;Volume 15
	db $91,$09			;CMD Portamento tone
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_176:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c0			;Wait 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c0			;Wait 1
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $bf			;[End-Of-Track]
.track_179:
	db $2e			;Note A#4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $60			;Release 96
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $6f			;Volume 13
	db $91,$13			;CMD Portamento tone
	db $c4			;Wait 5
	db $60			;Release 96
	db $c0			;Wait 1
	db $38			;Note G#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_180:
	db $16			;Note A#2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $95,$73			;CMD Vibrato
	db $c7			;Wait 8
	db $22			;Note A#3
	db $c5			;Wait 6
	db $20			;Note G#3
	db $70			;Volume 14
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_181:
	db $22			;Note A#3
	db $6f			;Volume 13
	db $81			;Instrument 15
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$86			;CMD Vibrato
					;Wait Repeat 4
	db $2e			;Note A#4
	db $9c			;CMD End 
					;Wait Repeat 4
	db $95,$86			;CMD Vibrato
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_187:
	db $29			;Note F-4
	db $63			;Volume 1
	db $72			;Instrument 0
	db $95,$98			;CMD Vibrato Extended
	db $c0			;Wait 1
	db $60			;Release 96
	db $ce			;Wait 15
	db $bf			;[End-Of-Track]
.track_201:
	db $2b			;Note G-4
	db $6b			;Volume 9
	db $7d			;Instrument 11
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $22			;Note A#3
	db $bf			;[End-Of-Track]
.track_202:
	db $60			;Release 96
	db $c3			;Wait 4
	db $54			;Note C-8
	db $6b			;Volume 9
	db $7a			;Instrument 8
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
	db $c4			;Wait 5
	db $62			;Note D-9
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_203:
	db $60			;Release 96
	db $c3			;Wait 4
	db $3a			;Note A#5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $39			;Note A-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$76			;CMD Vibrato
					;Wait Repeat 3
	db $35			;Note F-5
	db $91,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $95,$86			;CMD Vibrato
					;Wait Repeat 2
	db $37			;Note G-5
	db $91,$0a			;CMD Portamento tone
	db $c0			;Wait 1
	db $37			;Note G-5
	db $c1			;Wait 2
	db $95,$66			;CMD Vibrato
	db $c4			;Wait 5
	db $30			;Note C-5
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $95,$87			;CMD Vibrato
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_204:
	db $0e			;Note D-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_205:
	db $0e			;Note D-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_206:
	db $4d			;Note F-7
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $96,$13			;CMD Portamento up
	db $c3			;Wait 4
	db $15			;Note A-2
	db $93,$23			;CMD Portamento down
					;Wait Repeat 4
	db $43			;Note G-6
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $15			;Note A-2
	db $c3			;Wait 4
	db $4d			;Note F-7
	db $6d			;Volume 11
	db $96,$13			;CMD Portamento up
					;Wait Repeat 4
	db $15			;Note A-2
	db $93,$23			;CMD Portamento down
					;Wait Repeat 4
	db $37			;Note G-5
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $47			;Note B-6
	db $96,$13			;CMD Portamento up
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_207:
	db $60			;Release 96
	db $c3			;Wait 4
	db $46			;Note A#6
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $41			;Note F-6
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_209:
	db $2b			;Note G-4
	db $6b			;Volume 9
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $3f			;Note D#6
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $3f			;Note D#6
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $27			;Note D#4
	db $bf			;[End-Of-Track]
.track_210:
	db $60			;Release 96
	db $c3			;Wait 4
	db $4c			;Note E-7
	db $6b			;Volume 9
	db $7a			;Instrument 8
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
	db $c4			;Wait 5
	db $62			;Note D-9
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_211:
	db $60			;Release 96
	db $c3			;Wait 4
	db $3a			;Note A#5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $39			;Note A-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$86			;CMD Vibrato
					;Wait Repeat 3
	db $39			;Note A-5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $91,$0a			;CMD Portamento tone
					;Wait Repeat 1
	db $3c			;Note C-6
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $9c			;CMD End 
					;Wait Repeat 1
	db $35			;Note F-5
	db $91,$12			;CMD Portamento tone
	db $c3			;Wait 4
	db $35			;Note F-5
	db $95,$86			;CMD Vibrato
					;Wait Repeat 4
	db $37			;Note G-5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $37			;Note G-5
	db $91,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $37			;Note G-5
	db $95,$86			;CMD Vibrato
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_212:
	db $11			;Note F-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_213:
	db $11			;Note F-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_214:
	db $4d			;Note F-7
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $96,$13			;CMD Portamento up
	db $c3			;Wait 4
	db $15			;Note A-2
	db $93,$23			;CMD Portamento down
					;Wait Repeat 4
	db $43			;Note G-6
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $15			;Note A-2
	db $c3			;Wait 4
	db $4d			;Note F-7
	db $6d			;Volume 11
	db $96,$13			;CMD Portamento up
					;Wait Repeat 4
	db $15			;Note A-2
	db $93,$23			;CMD Portamento down
					;Wait Repeat 4
	db $3f			;Note D#6
	db $6f			;Volume 13
	db $96,$23			;CMD Portamento up
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $27			;Note D#4
	db $93,$53			;CMD Portamento down
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $3f			;Note D#6
	db $96,$23			;CMD Portamento up
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $27			;Note D#4
	db $93,$53			;CMD Portamento down
					;Wait Repeat 1
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_215:
	db $60			;Release 96
	db $c3			;Wait 4
	db $46			;Note A#6
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $48			;Note C-7
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $43			;Note G-6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_217:
	db $21			;Note A-3
	db $6b			;Volume 9
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $26			;Note D-4
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $26			;Note D-4
					;Wait Repeat 1
	db $21			;Note A-3
					;Wait Repeat 1
	db $26			;Note D-4
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $27			;Note D#4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $46			;Note A#6
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $3f			;Note D#6
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $27			;Note D#4
					;Wait Repeat 1
	db $22			;Note A#3
	db $bf			;[End-Of-Track]
.track_219:
	db $60			;Release 96
	db $c3			;Wait 4
	db $3a			;Note A#5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $37			;Note G-5
	db $91,$0a			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$86			;CMD Vibrato
					;Wait Repeat 3
	db $3c			;Note C-6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$86			;CMD Vibrato
	db $c2			;Wait 3
	db $3f			;Note D#6
	db $6e			;Volume 12
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$86			;CMD Vibrato
					;Wait Repeat 4
	db $3a			;Note A#5
	db $6e			;Volume 12
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $95,$86			;CMD Vibrato
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_220:
	db $13			;Note G-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $16			;Note A#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_221:
	db $13			;Note G-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $16			;Note A#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_223:
	db $60			;Release 96
	db $c3			;Wait 4
	db $46			;Note A#6
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $48			;Note C-7
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $46			;Note A#6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_224:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_225:
	db $1b			;Note D#3
	db $6b			;Volume 9
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $16			;Note A#2
					;Wait Repeat 1
	db $1b			;Note D#3
					;Wait Repeat 1
	db $1f			;Note G-3
					;Wait Repeat 1
	db $22			;Note A#3
					;Wait Repeat 1
	db $27			;Note D#4
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $3f			;Note D#6
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $27			;Note D#4
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $3f			;Note D#6
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $27			;Note D#4
	db $bf			;[End-Of-Track]
.track_226:
	db $60			;Release 96
	db $c3			;Wait 4
	db $51			;Note A-7
	db $6b			;Volume 9
	db $7a			;Instrument 8
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
	db $c4			;Wait 5
	db $62			;Note D-9
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $62			;Note D-9
	db $c1			;Wait 2
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_227:
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $37			;Note G-5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $35			;Note F-5
	db $91,$0a			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$77			;CMD Vibrato
					;Wait Repeat 3
	db $3c			;Note C-6
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $38			;Note G#5
	db $91,$0f			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$77			;CMD Vibrato
	db $c3			;Wait 4
	db $38			;Note G#5
	db $91,$0c			;CMD Portamento tone
	db $c0			;Wait 1
	db $35			;Note F-5
	db $c2			;Wait 3
	db $95,$77			;CMD Vibrato
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_228:
	db $0f			;Note D#2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $20			;Note G#3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_229:
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $20			;Note G#3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_231:
	db $60			;Release 96
	db $c3			;Wait 4
	db $43			;Note G-6
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $48			;Note C-7
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $41			;Note F-6
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_232:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_233:
	db $35			;Note F-5
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $39			;Note A-5
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_234:
	db $25			;Note C#4
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $91,$20			;CMD Portamento tone
	db $c1			;Wait 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $2e			;Note A#4
					;Wait Repeat 2
	db $46			;Note A#6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_237:
	db $60			;Release 96
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $6d			;Volume 11
	db $77			;Instrument 5
	db $95,$76			;CMD Vibrato
	db $c7			;Wait 8
	db $3f			;Note D#6
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_239:
	db $60			;Release 96
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6c			;Volume 10
	db $78			;Instrument 6
	db $9c			;CMD End 
	db $cc			;Wait 13
	db $94,$0c			;CMD Arpeggio
	db $bf			;[End-Of-Track]
.track_240:
	db $c7			;Wait 8
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_243:
	db $60			;Release 96
	db $c3			;Wait 4
	db $30			;Note C-5
	db $71			;Volume 15
	db $80			;Instrument 14
	db $96,$1a			;CMD Portamento up
	db $c0			;Wait 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $23			;Note B-3
					;Wait Repeat 1
	db $16			;Note A#2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_245:
	db $c3			;Wait 4
	db $60			;Release 96
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_246:
	db $60			;Release 96
	db $c7			;Wait 8
	db $3f			;Note D#6
	db $6f			;Volume 13
	db $77			;Instrument 5
	db $96,$23			;CMD Portamento up
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $27			;Note D#4
	db $93,$53			;CMD Portamento down
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $3f			;Note D#6
	db $96,$23			;CMD Portamento up
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $27			;Note D#4
	db $93,$53			;CMD Portamento down
					;Wait Repeat 1
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_272:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_280:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6e			;Volume 12
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_287:
	db $60			;Release 96
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $4b			;Note D#7
	db $c1			;Wait 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $46			;Note A#6
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $50			;Note G#7
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $4b			;Note D#7
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_289:
	db $3f			;Note D#6
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_290:
	db $2f			;Note B-4
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $91,$20			;CMD Portamento tone
	db $c1			;Wait 2
	db $53			;Note B-7
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_298:
	db $24			;Note C-4
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $91,$20			;CMD Portamento tone
	db $c1			;Wait 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $41			;Note F-6
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $41			;Note F-6
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6a			;Volume 8
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $41			;Note F-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_306:
	db $29			;Note F-4
	db $69			;Volume 7
	db $7d			;Instrument 11
	db $91,$20			;CMD Portamento tone
	db $c1			;Wait 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $41			;Note F-6
	db $c1			;Wait 2
	db $29			;Note F-4
	db $69			;Volume 7
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $41			;Note F-6
	db $c1			;Wait 2
	db $29			;Note F-4
	db $68			;Volume 6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $41			;Note F-6
	db $c1			;Wait 2
	db $29			;Note F-4
	db $67			;Volume 5
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $41			;Note F-6
	db $c0			;Wait 1
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_312:
	db $18			;Note C-3
	db $6d			;Volume 11
	db $82			;Instrument 16
	db $c0			;Wait 1
	db $6c			;Volume 10
	db $ca			;Wait 11
	db $6c			;Volume 10
	db $c6			;Wait 7
	db $83			;Instrument 17
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $84			;Instrument 18
	db $c3			;Wait 4
	db $6a			;Volume 8
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_314:
	db $5d			;Note A-8
	db $64			;Volume 2
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $62			;Note D-9
	db $c2			;Wait 3
	db $6b			;Volume 9
					;Wait Repeat 3
	db $62			;Note D-9
	db $c2			;Wait 3
	db $6b			;Volume 9
	db $c4			;Wait 5
	db $62			;Note D-9
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_315:
	db $54			;Note C-8
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $96,$02			;CMD Portamento up
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_320:
	db $69			;Volume 7
	db $c5			;Wait 6
	db $68			;Volume 6
					;Wait Repeat 6
	db $67			;Volume 5
					;Wait Repeat 6
	db $66			;Volume 4
					;Wait Repeat 6
	db $65			;Volume 3
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_323:
	db $2b			;Note G-4
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $93,$03			;CMD Portamento down
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_326:
	db $4d			;Note F-7
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $96,$13			;CMD Portamento up
	db $c3			;Wait 4
	db $15			;Note A-2
	db $93,$23			;CMD Portamento down
					;Wait Repeat 4
	db $43			;Note G-6
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $15			;Note A-2
	db $c3			;Wait 4
	db $4d			;Note F-7
	db $6d			;Volume 11
	db $96,$13			;CMD Portamento up
					;Wait Repeat 4
	db $15			;Note A-2
	db $93,$23			;CMD Portamento down
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_330:
	db $60			;Release 96
	db $c3			;Wait 4
	db $58			;Note E-8
	db $6b			;Volume 9
	db $7a			;Instrument 8
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
	db $c4			;Wait 5
	db $62			;Note D-9
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_336:
	db $18			;Note C-3
	db $6c			;Volume 10
	db $83			;Instrument 17
	db $c1			;Wait 2
	db $6d			;Volume 11
	db $c7			;Wait 8
	db $6c			;Volume 10
	db $84			;Instrument 18
	db $c3			;Wait 4
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_338:
	db $4c			;Note E-7
	db $6b			;Volume 9
	db $7a			;Instrument 8
	db $c5			;Wait 6
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
	db $c4			;Wait 5
	db $62			;Note D-9
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_339:
	db $59			;Note F-8
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $96,$03			;CMD Portamento up
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_352:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $30			;Note C-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $9d,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_353:
	db $2d			;Note A-4
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $24			;Note C-4
	db $bf			;[End-Of-Track]
.track_354:
	db $62			;Volume (special) 0
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6c			;Volume 10
	db $85			;Instrument 19
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$65			;CMD Vibrato
					;Wait Repeat 1
	db $37			;Note G-5
	db $c5			;Wait 6
	db $34			;Note E-5
	db $c3			;Wait 4
	db $35			;Note F-5
	db $c7			;Wait 8
	db $35			;Note F-5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$65			;CMD Vibrato
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_355:
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $3b			;Note B-5
	db $95,$86			;CMD Vibrato
	db $c5			;Wait 6
	db $37			;Note G-5
	db $c3			;Wait 4
	db $39			;Note A-5
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $95,$86			;CMD Vibrato
	db $c4			;Wait 5
	db $31			;Note C#5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $32			;Note D-5
	db $91,$05			;CMD Portamento tone
	db $c1			;Wait 2
	db $95,$86			;CMD Vibrato
	db $c2			;Wait 3
	db $3c			;Note C-6
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_356:
	db $10			;Note E-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_357:
	db $10			;Note E-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_358:
	db $4f			;Note G-7
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $96,$13			;CMD Portamento up
	db $c3			;Wait 4
	db $17			;Note B-2
	db $93,$23			;CMD Portamento down
					;Wait Repeat 4
	db $45			;Note A-6
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $17			;Note B-2
	db $c3			;Wait 4
	db $4f			;Note G-7
	db $6d			;Volume 11
	db $96,$13			;CMD Portamento up
					;Wait Repeat 4
	db $17			;Note B-2
	db $93,$23			;CMD Portamento down
					;Wait Repeat 4
	db $39			;Note A-5
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $49			;Note C#7
	db $96,$13			;CMD Portamento up
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_359:
	db $c3			;Wait 4
	db $48			;Note C-7
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $47			;Note B-6
	db $c5			;Wait 6
	db $43			;Note G-6
	db $c3			;Wait 4
	db $45			;Note A-6
	db $c7			;Wait 8
	db $3e			;Note D-6
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_360:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_361:
	db $2d			;Note A-4
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $26			;Note D-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $26			;Note D-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $26			;Note D-4
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $2a			;Note F#4
	db $bf			;[End-Of-Track]
.track_362:
	db $6c			;Volume 10
	db $85			;Instrument 19
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$65			;CMD Vibrato
	db $c2			;Wait 3
	db $39			;Note A-5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $c5			;Wait 6
	db $3b			;Note B-5
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$66			;CMD Vibrato
	db $c6			;Wait 7
	db $35			;Note F-5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$66			;CMD Vibrato
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_363:
	db $3b			;Note B-5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3b			;Note B-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $6e			;Volume 12
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $3b			;Note B-5
	db $91,$f0			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$76			;CMD Vibrato
					;Wait Repeat 3
	db $3b			;Note B-5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $91,$0a			;CMD Portamento tone
					;Wait Repeat 1
	db $3e			;Note D-6
	db $c1			;Wait 2
	db $37			;Note G-5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $91,$0d			;CMD Portamento tone
					;Wait Repeat 1
	db $95,$86			;CMD Vibrato
	db $c5			;Wait 6
	db $39			;Note A-5
	db $91,$0f			;CMD Portamento tone
	db $c1			;Wait 2
	db $39			;Note A-5
	db $c0			;Wait 1
	db $39			;Note A-5
	db $95,$86			;CMD Vibrato
	db $c2			;Wait 3
	db $3c			;Note C-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_364:
	db $13			;Note G-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_365:
	db $13			;Note G-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_366:
	db $4f			;Note G-7
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $96,$13			;CMD Portamento up
	db $c3			;Wait 4
	db $17			;Note B-2
	db $93,$23			;CMD Portamento down
					;Wait Repeat 4
	db $45			;Note A-6
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $17			;Note B-2
	db $c3			;Wait 4
	db $4f			;Note G-7
	db $6d			;Volume 11
	db $96,$13			;CMD Portamento up
					;Wait Repeat 4
	db $17			;Note B-2
	db $93,$23			;CMD Portamento down
					;Wait Repeat 4
	db $41			;Note F-6
	db $6f			;Volume 13
	db $96,$23			;CMD Portamento up
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $29			;Note F-4
	db $93,$53			;CMD Portamento down
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $41			;Note F-6
	db $96,$23			;CMD Portamento up
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $29			;Note F-4
	db $93,$53			;CMD Portamento down
					;Wait Repeat 1
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_367:
	db $c3			;Wait 4
	db $48			;Note C-7
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $47			;Note B-6
	db $c5			;Wait 6
	db $4a			;Note D-7
	db $c3			;Wait 4
	db $43			;Note G-6
	db $c7			;Wait 8
	db $45			;Note A-6
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_368:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_369:
	db $23			;Note B-3
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $23			;Note B-3
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $48			;Note C-7
					;Wait Repeat 1
	db $43			;Note G-6
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $24			;Note C-4
	db $bf			;[End-Of-Track]
.track_370:
	db $30			;Note C-5
	db $c1			;Wait 2
	db $32			;Note D-5
	db $c1			;Wait 2
	db $39			;Note A-5
	db $6c			;Volume 10
	db $85			;Instrument 19
	db $95,$66			;CMD Vibrato
					;Wait Repeat 2
	db $37			;Note G-5
	db $c5			;Wait 6
	db $39			;Note A-5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $95,$65			;CMD Vibrato
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c7			;Wait 8
	db $39			;Note A-5
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_371:
	db $3c			;Note C-6
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3b			;Note B-5
	db $6f			;Volume 13
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $6e			;Volume 12
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $95,$86			;CMD Vibrato
	db $c4			;Wait 5
	db $3c			;Note C-6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $91,$0a			;CMD Portamento tone
	db $c2			;Wait 3
	db $41			;Note F-6
	db $9c			;CMD End 
					;Wait Repeat 3
	db $95,$86			;CMD Vibrato
	db $c4			;Wait 5
	db $3c			;Note C-6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $91,$40			;CMD Portamento tone
	db $c1			;Wait 2
	db $95,$96			;CMD Vibrato Extended
	db $c2			;Wait 3
	db $39			;Note A-5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_372:
	db $15			;Note A-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $18			;Note C-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_373:
	db $15			;Note A-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $18			;Note C-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_375:
	db $c3			;Wait 4
	db $48			;Note C-7
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $45			;Note A-6
	db $c5			;Wait 6
	db $4a			;Note D-7
	db $c3			;Wait 4
	db $4d			;Note F-7
	db $c7			;Wait 8
	db $48			;Note C-7
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_376:
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_377:
	db $1d			;Note F-3
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $18			;Note C-3
					;Wait Repeat 1
	db $1d			;Note F-3
					;Wait Repeat 1
	db $21			;Note A-3
					;Wait Repeat 1
	db $24			;Note C-4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $43			;Note G-6
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $29			;Note F-4
	db $bf			;[End-Of-Track]
.track_378:
	db $30			;Note C-5
	db $6c			;Volume 10
	db $85			;Instrument 19
	db $95,$56			;CMD Vibrato
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c7			;Wait 8
	db $37			;Note G-5
					;Wait Repeat 8
	db $37			;Note G-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_379:
	db $c1			;Wait 2
	db $37			;Note G-5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $37			;Note G-5
	db $c0			;Wait 1
	db $95,$77			;CMD Vibrato
					;Wait Repeat 1
	db $3e			;Note D-6
	db $91,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $95,$77			;CMD Vibrato
	db $c3			;Wait 4
	db $93,$05			;CMD Portamento down
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_380:
	db $11			;Note F-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_381:
	db $11			;Note F-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $1d			;Note F-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_383:
	db $c3			;Wait 4
	db $45			;Note A-6
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $43			;Note G-6
	db $c5			;Wait 6
	db $4a			;Note D-7
	db $c3			;Wait 4
	db $46			;Note A#6
	db $c7			;Wait 8
	db $43			;Note G-6
	db $c5			;Wait 6
	db $3e			;Note D-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_384:
	db $23			;Note B-3
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $c5			;Wait 6
	db $30			;Note C-5
					;Wait Repeat 6
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $11			;Note F-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $c5			;Wait 6
	db $3e			;Note D-6
	db $c5			;Wait 6
	db $32			;Note D-5
	db $6d			;Volume 11
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_385:
	db $60			;Release 96
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $c1			;Wait 2
	db $26			;Note D-4
	db $c5			;Wait 6
	db $32			;Note D-5
					;Wait Repeat 6
	db $26			;Note D-4
					;Wait Repeat 6
	db $37			;Note G-5
	db $c3			;Wait 4
	db $11			;Note F-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $d1			;Wait 18
	db $11			;Note F-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c0			;Wait 1
	db $11			;Note F-2
	db $70			;Volume 14
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 1
	db $11			;Note F-2
	db $70			;Volume 14
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 1
	db $11			;Note F-2
	db $70			;Volume 14
	db $9d,$00			;CMD Drum $01
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_386:
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $c5			;Wait 6
	db $30			;Note C-5
	db $c3			;Wait 4
	db $11			;Note F-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $c5			;Wait 6
	db $3c			;Note C-6
					;Wait Repeat 6
	db $37			;Note G-5
	db $e3			;Wait 36
	db $bf			;[End-Of-Track]
.track_387:
	db $cd			;Wait 14
	db $43			;Note G-6
	db $6d			;Volume 11
	db $a1			;CMD Note link
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $91,$07			;CMD Portamento tone
					;Wait Repeat 2
	db $3e			;Note D-6
	db $c0			;Wait 1
	db $95,$76			;CMD Vibrato
	db $ec			;Wait 45
	db $bf			;[End-Of-Track]
.track_388:
	db $43			;Note G-6
	db $6e			;Volume 12
	db $73			;Instrument 1
	db $d3			;Wait 20
	db $43			;Note G-6
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $91,$07			;CMD Portamento tone
					;Wait Repeat 2
	db $3e			;Note D-6
	db $c1			;Wait 2
	db $95,$77			;CMD Vibrato
	db $e5			;Wait 38
	db $bf			;[End-Of-Track]
.track_389:
	db $17			;Note B-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $17			;Note B-2
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6d			;Volume 11
					;Wait Repeat 2
	db $0e			;Note D-2
	db $71			;Volume 15
					;Wait Repeat 2
	db $0e			;Note D-2
	db $6d			;Volume 11
					;Wait Repeat 2
	db $17			;Note B-2
	db $71			;Volume 15
	db $c7			;Wait 8
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $13			;Note G-2
	db $e7			;Wait 40
	db $bf			;[End-Of-Track]
.track_390:
	db $43			;Note G-6
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $95,$55			;CMD Vibrato
	db $db			;Wait 28
	db $43			;Note G-6
	db $6f			;Volume 13
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $95,$96			;CMD Vibrato Extended
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_391:
	db $3e			;Note D-6
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $dd			;Wait 30
	db $45			;Note A-6
	db $6e			;Volume 12
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $95,$97			;CMD Vibrato Extended
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_400:
	db $c9			;Wait 10
	db $62			;Volume (special) 0
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_409:
	db $2c			;Note G#4
	db $6b			;Volume 9
	db $7d			;Instrument 11
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $23			;Note B-3
	db $bf			;[End-Of-Track]
.track_410:
	db $60			;Release 96
	db $c3			;Wait 4
	db $59			;Note F-8
	db $6b			;Volume 9
	db $7a			;Instrument 8
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
	db $c4			;Wait 5
	db $62			;Note D-9
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_411:
	db $c1			;Wait 2
	db $36			;Note F#5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $38			;Note G#5
	db $91,$07			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$66			;CMD Vibrato
	db $c1			;Wait 2
	db $3f			;Note D#6
	db $91,$08			;CMD Portamento tone
	db $c2			;Wait 3
	db $3f			;Note D#6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$66			;CMD Vibrato
	db $c1			;Wait 2
	db $95,$76			;CMD Vibrato
	db $c0			;Wait 1
	db $40			;Note E-6
	db $c1			;Wait 2
	db $95,$96			;CMD Vibrato Extended
	db $c5			;Wait 6
	db $47			;Note B-6
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $95,$96			;CMD Vibrato Extended
	db $c3			;Wait 4
	db $44			;Note G#6
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_412:
	db $0f			;Note D#2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_413:
	db $0f			;Note D#2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1b			;Note D#3
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $0f			;Note D#2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_414:
	db $4e			;Note F#7
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $96,$13			;CMD Portamento up
	db $c3			;Wait 4
	db $16			;Note A#2
	db $93,$23			;CMD Portamento down
					;Wait Repeat 4
	db $44			;Note G#6
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $16			;Note A#2
	db $c3			;Wait 4
	db $4e			;Note F#7
	db $6d			;Volume 11
	db $96,$13			;CMD Portamento up
					;Wait Repeat 4
	db $16			;Note A#2
	db $93,$23			;CMD Portamento down
					;Wait Repeat 4
	db $38			;Note G#5
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $48			;Note C-7
	db $96,$13			;CMD Portamento up
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_415:
	db $62			;Volume (special) 0
	db $c3			;Wait 4
	db $47			;Note B-6
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $46			;Note A#6
	db $c5			;Wait 6
	db $42			;Note F#6
	db $c3			;Wait 4
	db $44			;Note G#6
	db $c7			;Wait 8
	db $3d			;Note C#6
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_416:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_417:
	db $2c			;Note G#4
	db $6b			;Volume 9
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $25			;Note C#4
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $25			;Note C#4
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $25			;Note C#4
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $40			;Note E-6
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $40			;Note E-6
					;Wait Repeat 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $28			;Note E-4
	db $bf			;[End-Of-Track]
.track_418:
	db $60			;Release 96
	db $c3			;Wait 4
	db $4d			;Note F-7
	db $6b			;Volume 9
	db $7a			;Instrument 8
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
	db $c4			;Wait 5
	db $62			;Note D-9
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_419:
	db $46			;Note A#6
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $44			;Note G#6
	db $91,$0d			;CMD Portamento tone
					;Wait Repeat 2
	db $3f			;Note D#6
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $3f			;Note D#6
	db $91,$02			;CMD Portamento tone
					;Wait Repeat 3
	db $42			;Note F#6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$86			;CMD Vibrato
	db $c2			;Wait 3
	db $46			;Note A#6
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $44			;Note G#6
	db $95,$86			;CMD Vibrato
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $44			;Note G#6
	db $c5			;Wait 6
	db $4c			;Note E-7
	db $c1			;Wait 2
	db $44			;Note G#6
	db $91,$03			;CMD Portamento tone
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_420:
	db $12			;Note F#2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $12			;Note F#2
					;Wait Repeat 2
	db $12			;Note F#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $12			;Note F#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $12			;Note F#2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $19			;Note C#3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_421:
	db $12			;Note F#2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $12			;Note F#2
					;Wait Repeat 2
	db $12			;Note F#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $12			;Note F#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $12			;Note F#2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $19			;Note C#3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_422:
	db $4e			;Note F#7
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $96,$13			;CMD Portamento up
	db $c3			;Wait 4
	db $16			;Note A#2
	db $93,$23			;CMD Portamento down
					;Wait Repeat 4
	db $44			;Note G#6
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $16			;Note A#2
	db $c3			;Wait 4
	db $4e			;Note F#7
	db $6d			;Volume 11
	db $96,$13			;CMD Portamento up
					;Wait Repeat 4
	db $16			;Note A#2
	db $93,$23			;CMD Portamento down
					;Wait Repeat 4
	db $40			;Note E-6
	db $6f			;Volume 13
	db $96,$23			;CMD Portamento up
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $28			;Note E-4
	db $93,$53			;CMD Portamento down
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $40			;Note E-6
	db $96,$23			;CMD Portamento up
					;Wait Repeat 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $28			;Note E-4
	db $93,$53			;CMD Portamento down
					;Wait Repeat 1
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_423:
	db $62			;Volume (special) 0
	db $c3			;Wait 4
	db $47			;Note B-6
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $46			;Note A#6
	db $c5			;Wait 6
	db $49			;Note C#7
	db $c3			;Wait 4
	db $42			;Note F#6
	db $c7			;Wait 8
	db $44			;Note G#6
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_425:
	db $22			;Note A#3
	db $6b			;Volume 9
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $27			;Note D#4
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $27			;Note D#4
					;Wait Repeat 1
	db $22			;Note A#3
					;Wait Repeat 1
	db $27			;Note D#4
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $47			;Note B-6
					;Wait Repeat 1
	db $42			;Note F#6
					;Wait Repeat 1
	db $40			;Note E-6
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $23			;Note B-3
	db $bf			;[End-Of-Track]
.track_426:
	db $60			;Release 96
	db $c1			;Wait 2
	db $59			;Note F-8
	db $6b			;Volume 9
	db $7a			;Instrument 8
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
	db $c4			;Wait 5
	db $62			;Note D-9
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_427:
	db $c1			;Wait 2
	db $44			;Note G#6
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$76			;CMD Vibrato
					;Wait Repeat 1
	db $3f			;Note D#6
	db $a1			;CMD Note link
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $33			;Note D#5
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $3a			;Note A#5
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $34			;Note E-5
	db $c1			;Wait 2
	db $3b			;Note B-5
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $40			;Note E-6
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $47			;Note B-6
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $4c			;Note E-7
	db $95,$86			;CMD Vibrato
	db $c4			;Wait 5
	db $4b			;Note D#7
	db $91,$01			;CMD Portamento tone
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_428:
	db $14			;Note G#2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $17			;Note B-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_429:
	db $14			;Note G#2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $14			;Note G#2
					;Wait Repeat 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $17			;Note B-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_431:
	db $62			;Volume (special) 0
	db $c3			;Wait 4
	db $47			;Note B-6
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $44			;Note G#6
	db $c5			;Wait 6
	db $49			;Note C#7
	db $c3			;Wait 4
	db $4c			;Note E-7
	db $c7			;Wait 8
	db $47			;Note B-6
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_432:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6e			;Volume 12
	db $9d,$00			;CMD Drum $01
	db $c0			;Wait 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $bf			;[End-Of-Track]
.track_433:
	db $1d			;Note F-3
	db $6b			;Volume 9
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $18			;Note C-3
					;Wait Repeat 1
	db $1d			;Note F-3
					;Wait Repeat 1
	db $21			;Note A-3
					;Wait Repeat 1
	db $24			;Note C-4
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $43			;Note G-6
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $2e			;Note A#4
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $29			;Note F-4
	db $bf			;[End-Of-Track]
.track_434:
	db $60			;Release 96
	db $c1			;Wait 2
	db $53			;Note B-7
	db $6b			;Volume 9
	db $7a			;Instrument 8
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
	db $c4			;Wait 5
	db $62			;Note D-9
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_435:
	db $96,$02			;CMD Portamento up
	db $c0			;Wait 1
	db $6e			;Volume 12
					;Wait Repeat 1
	db $6d			;Volume 11
					;Wait Repeat 1
	db $6c			;Volume 10
					;Wait Repeat 1
	db $6b			;Volume 9
					;Wait Repeat 1
	db $6a			;Volume 8
	db $c0			;Wait 1
	db $47			;Note B-6
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $40			;Note E-6
	db $c0			;Wait 1
	db $95,$36			;CMD Vibrato
					;Wait Repeat 1
	db $3b			;Note B-5
	db $a1			;CMD Note link
	db $c1			;Wait 2
	db $40			;Note E-6
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $4c			;Note E-7
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $3a			;Note A#5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3a			;Note A#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $37			;Note G-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $34			;Note E-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $51			;Note A-7
	db $6e			;Volume 12
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $35			;Note F-5
	db $91,$02			;CMD Portamento tone
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_436:
	db $11			;Note F-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $16			;Note A#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_437:
	db $11			;Note F-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $16			;Note A#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_439:
	db $62			;Volume (special) 0
	db $c3			;Wait 4
	db $45			;Note A-6
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $43			;Note G-6
	db $c5			;Wait 6
	db $4a			;Note D-7
	db $c3			;Wait 4
	db $46			;Note A#6
	db $c7			;Wait 8
	db $43			;Note G-6
	db $c5			;Wait 6
	db $3e			;Note D-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_440:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_443:
	db $30			;Note C-5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $33			;Note D#5
	db $91,$0d			;CMD Portamento tone
					;Wait Repeat 2
	db $3a			;Note A#5
	db $91,$0d			;CMD Portamento tone
					;Wait Repeat 2
	db $39			;Note A-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$a6			;CMD Vibrato Extended
	db $c0			;Wait 1
	db $30			;Note C-5
	db $c1			;Wait 2
	db $39			;Note A-5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $35			;Note F-5
	db $95,$86			;CMD Vibrato
					;Wait Repeat 2
	db $37			;Note G-5
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $37			;Note G-5
	db $95,$86			;CMD Vibrato
	db $c5			;Wait 6
	db $30			;Note C-5
	db $9c			;CMD End 
					;Wait Repeat 6
	db $39			;Note A-5
	db $91,$0d			;CMD Portamento tone
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_448:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_451:
	db $30			;Note C-5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $35			;Note F-5
	db $91,$0d			;CMD Portamento tone
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $39			;Note A-5
	db $91,$05			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$86			;CMD Vibrato
	db $c0			;Wait 1
	db $35			;Note F-5
	db $91,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $39			;Note A-5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $91,$0a			;CMD Portamento tone
					;Wait Repeat 1
	db $3c			;Note C-6
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $9c			;CMD End 
					;Wait Repeat 1
	db $35			;Note F-5
	db $91,$12			;CMD Portamento tone
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c1			;Wait 2
	db $35			;Note F-5
	db $95,$86			;CMD Vibrato
					;Wait Repeat 2
	db $37			;Note G-5
	db $91,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $37			;Note G-5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $91,$0d			;CMD Portamento tone
					;Wait Repeat 2
	db $3e			;Note D-6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_459:
	db $3a			;Note A#5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $91,$0d			;CMD Portamento tone
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c1			;Wait 2
	db $37			;Note G-5
	db $91,$0a			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$86			;CMD Vibrato
					;Wait Repeat 3
	db $3c			;Note C-6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$86			;CMD Vibrato
	db $c2			;Wait 3
	db $3f			;Note D#6
	db $6e			;Volume 12
	db $9c			;CMD End 
					;Wait Repeat 3
	db $95,$96			;CMD Vibrato Extended
	db $c4			;Wait 5
	db $3a			;Note A#5
	db $6e			;Volume 12
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $95,$a6			;CMD Vibrato Extended
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_475:
	db $c7			;Wait 8
	db $96,$04			;CMD Portamento up
	db $cc			;Wait 13
	db $96,$03			;CMD Portamento up
	db $ca			;Wait 11
	db $bf			;[End-Of-Track]
.track_483:
	db $c3			;Wait 4
	db $43			;Note G-6
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $95,$66			;CMD Vibrato
	db $c1			;Wait 2
	db $45			;Note A-6
	db $c1			;Wait 2
	db $43			;Note G-6
	db $6e			;Volume 12
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$86			;CMD Vibrato
	db $c3			;Wait 4
	db $93,$0d			;CMD Portamento down
	db $c2			;Wait 3
	db $43			;Note G-6
	db $95,$87			;CMD Vibrato
	db $c1			;Wait 2
	db $45			;Note A-6
	db $c2			;Wait 3
	db $48			;Note C-7
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $4a			;Note D-7
	db $91,$05			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$97			;CMD Vibrato Extended
	db $c2			;Wait 3
	db $96,$08			;CMD Portamento up
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_491:
	db $c1			;Wait 2
	db $32			;Note D-5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$87			;CMD Vibrato
	db $c4			;Wait 5
	db $4a			;Note D-7
	db $91,$09			;CMD Portamento tone
	db $c7			;Wait 8
	db $4d			;Note F-7
	db $91,$16			;CMD Portamento tone
	db $c1			;Wait 2
	db $95,$87			;CMD Vibrato
	db $c4			;Wait 5
	db $41			;Note F-6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $48			;Note C-7
	db $91,$10			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$87			;CMD Vibrato
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_492:
	db $15			;Note A-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $18			;Note C-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_493:
	db $15			;Note A-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $18			;Note C-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_496:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_497:
	db $1c			;Note E-3
	db $6b			;Volume 9
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $17			;Note B-2
					;Wait Repeat 1
	db $1c			;Note E-3
					;Wait Repeat 1
	db $20			;Note G#3
					;Wait Repeat 1
	db $23			;Note B-3
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $2f			;Note B-4
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $40			;Note E-6
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $28			;Note E-4
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $42			;Note F#6
					;Wait Repeat 1
	db $40			;Note E-6
					;Wait Repeat 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $28			;Note E-4
	db $bf			;[End-Of-Track]
.track_498:
	db $60			;Release 96
	db $c1			;Wait 2
	db $52			;Note A#7
	db $6b			;Volume 9
	db $7a			;Instrument 8
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
	db $c4			;Wait 5
	db $62			;Note D-9
	db $c0			;Wait 1
	db $6b			;Volume 9
	db $c3			;Wait 4
	db $62			;Note D-9
	db $c3			;Wait 4
	db $6b			;Volume 9
					;Wait Repeat 4
	db $62			;Note D-9
	db $c1			;Wait 2
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_499:
	db $c1			;Wait 2
	db $36			;Note F#5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $3b			;Note B-5
	db $c1			;Wait 2
	db $38			;Note G#5
	db $91,$0a			;CMD Portamento tone
					;Wait Repeat 2
	db $36			;Note F#5
	db $c0			;Wait 1
	db $95,$77			;CMD Vibrato
					;Wait Repeat 1
	db $3d			;Note C#6
	db $91,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $95,$77			;CMD Vibrato
	db $c3			;Wait 4
	db $3d			;Note C#6
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $39			;Note A-5
	db $91,$0f			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$86			;CMD Vibrato
	db $c3			;Wait 4
	db $39			;Note A-5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $36			;Note F#5
	db $91,$0c			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$86			;CMD Vibrato
	db $c1			;Wait 2
	db $31			;Note C#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_500:
	db $10			;Note E-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_501:
	db $10			;Note E-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_503:
	db $60			;Release 96
	db $c3			;Wait 4
	db $44			;Note G#6
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $49			;Note C#7
					;Wait Repeat 4
	db $45			;Note A-6
	db $c7			;Wait 8
	db $42			;Note F#6
	db $c5			;Wait 6
	db $3d			;Note C#6
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_504:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_506:
	db $60			;Release 96
	db $c3			;Wait 4
	db $39			;Note A-5
	db $6c			;Volume 10
	db $85			;Instrument 19
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$65			;CMD Vibrato
					;Wait Repeat 1
	db $37			;Note G-5
	db $c5			;Wait 6
	db $34			;Note E-5
	db $c3			;Wait 4
	db $35			;Note F-5
	db $c7			;Wait 8
	db $35			;Note F-5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$65			;CMD Vibrato
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_507:
	db $cf			;Wait 16
	db $35			;Note F-5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3a			;Note A#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3a			;Note A#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3b			;Note B-5
	db $95,$86			;CMD Vibrato
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_508:
	db $10			;Note E-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_509:
	db $10			;Note E-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_511:
	db $62			;Volume (special) 0
	db $c3			;Wait 4
	db $48			;Note C-7
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $47			;Note B-6
	db $c5			;Wait 6
	db $43			;Note G-6
	db $c3			;Wait 4
	db $45			;Note A-6
	db $c7			;Wait 8
	db $3e			;Note D-6
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_512:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_513:
	db $2d			;Note A-4
	db $6c			;Volume 10
	db $7d			;Instrument 11
	db $c0			;Wait 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $26			;Note D-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $26			;Note D-4
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $26			;Note D-4
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $41			;Note F-6
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $29			;Note F-4
	db $bf			;[End-Of-Track]
.track_515:
	db $3c			;Note C-6
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $95,$86			;CMD Vibrato
					;Wait Repeat 4
	db $41			;Note F-6
	db $91,$05			;CMD Portamento tone
					;Wait Repeat 4
	db $41			;Note F-6
	db $95,$86			;CMD Vibrato
	db $c4			;Wait 5
	db $45			;Note A-6
	db $91,$05			;CMD Portamento tone
	db $c3			;Wait 4
	db $45			;Note A-6
	db $95,$86			;CMD Vibrato
					;Wait Repeat 4
	db $48			;Note C-7
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $45			;Note A-6
					;Wait Repeat 1
	db $41			;Note F-6
	db $c0			;Wait 1
	db $4d			;Note F-7
	db $6f			;Volume 13
	db $91,$12			;CMD Portamento tone
					;Wait Repeat 1
	db $4d			;Note F-7
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_516:
	db $13			;Note G-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_517:
	db $13			;Note G-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $13			;Note G-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_519:
	db $62			;Volume (special) 0
	db $c3			;Wait 4
	db $48			;Note C-7
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $47			;Note B-6
	db $c5			;Wait 6
	db $4a			;Note D-7
	db $c3			;Wait 4
	db $43			;Note G-6
	db $c7			;Wait 8
	db $45			;Note A-6
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_520:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c3			;Wait 4
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_523:
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $95,$87			;CMD Vibrato
	db $c7			;Wait 8
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $4c			;Note E-7
	db $91,$01			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$86			;CMD Vibrato
	db $c3			;Wait 4
	db $48			;Note C-7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $41			;Note F-6
	db $c2			;Wait 3
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $91,$0a			;CMD Portamento tone
					;Wait Repeat 1
	db $3c			;Note C-6
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_524:
	db $15			;Note A-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $11			;Note F-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_525:
	db $15			;Note A-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $15			;Note A-2
					;Wait Repeat 2
	db $11			;Note F-2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_527:
	db $62			;Volume (special) 0
	db $c3			;Wait 4
	db $48			;Note C-7
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $45			;Note A-6
	db $c5			;Wait 6
	db $4a			;Note D-7
	db $c3			;Wait 4
	db $4d			;Note F-7
	db $c7			;Wait 8
	db $48			;Note C-7
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_528:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c3			;Wait 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 4
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $34			;Note E-5
	db $6e			;Volume 12
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $05
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_531:
	db $39			;Note A-5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $40			;Note E-6
	db $95,$46			;CMD Vibrato
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $45			;Note A-6
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $46			;Note A#6
	db $91,$20			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$86			;CMD Vibrato
	db $c4			;Wait 5
	db $43			;Note G-6
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $48			;Note C-7
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $95,$86			;CMD Vibrato
					;Wait Repeat 1
	db $46			;Note A#6
	db $a1			;CMD Note link
	db $c1			;Wait 2
	db $43			;Note G-6
	db $a1			;CMD Note link
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_532:
	db $11			;Note F-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $16			;Note A#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_533:
	db $11			;Note F-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $16			;Note A#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_536:
	db $10			;Note E-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
	db $c1			;Wait 2
	db $10			;Note E-2
	db $71			;Volume 15
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $10			;Note E-2
	db $70			;Volume 14
	db $75			;Instrument 3
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$04			;CMD Drum $04
					;Wait Repeat 2
	db $17			;Note B-2
	db $6f			;Volume 13
	db $9d,$06			;CMD Drum $05
	db $c0			;Wait 1
	db $17			;Note B-2
	db $6f			;Volume 13
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
					;Wait Repeat 1
	db $17			;Note B-2
	db $6f			;Volume 13
	db $bf			;[End-Of-Track]
.track_550:
	db $c5			;Wait 6
	db $62			;Volume (special) 0
	db $c9			;Wait 10
	db $bf			;[End-Of-Track]
.track_554:
	db $30			;Note C-5
	db $6c			;Volume 10
	db $85			;Instrument 19
	db $95,$56			;CMD Vibrato
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3a			;Note A#5
	db $c7			;Wait 8
	db $37			;Note G-5
	db $c9			;Wait 10
	db $bf			;[End-Of-Track]
.track_555:
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6e			;Volume 12
	db $77			;Instrument 5
	db $95,$57			;CMD Vibrato
	db $c1			;Wait 2
	db $37			;Note G-5
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $45			;Note A-6
	db $a1			;CMD Note link
					;Wait Repeat 2
	db $46			;Note A#6
	db $95,$77			;CMD Vibrato
	db $c7			;Wait 8
	db $43			;Note G-6
	db $c3			;Wait 4
	db $95,$87			;CMD Vibrato
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_556:
	db $11			;Note F-2
	db $71			;Volume 15
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $16			;Note A#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_557:
	db $11			;Note F-2
	db $6e			;Volume 12
	db $81			;Instrument 15
	db $c1			;Wait 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $16			;Note A#2
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $16			;Note A#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_559:
	db $c3			;Wait 4
	db $45			;Note A-6
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $43			;Note G-6
	db $c5			;Wait 6
	db $4a			;Note D-7
	db $c3			;Wait 4
	db $46			;Note A#6
	db $c7			;Wait 8
	db $43			;Note G-6
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]

