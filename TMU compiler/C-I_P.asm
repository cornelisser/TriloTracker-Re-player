; Song: Coordinates indicate            
; By:   Tadahiro Nitta                  
; Period table: A440 Modern

; [ Song start data ]
	db $02					; Initial song speed.
	db $80					; Channel setup.
	dw .customvoice_start-8			; Start of the custom voices data.
	dw .drummacro_start			; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_000, .track_000, .track_003, .track_004, .track_005, .track_006, .track_000	; Step:000 Pattern:000
.restart:
	dw .track_008, .track_008, .track_008, .track_011, .track_008, .track_008, .track_008, .track_015	; Step:001 Pattern:001
	dw .track_008, .track_008, .track_008, .track_011, .track_008, .track_008, .track_008, .track_015	; Step:002 Pattern:001
	dw .track_008, .track_008, .track_008, .track_011, .track_008, .track_008, .track_008, .track_015	; Step:003 Pattern:001
	dw .track_008, .track_008, .track_008, .track_011, .track_008, .track_008, .track_008, .track_015	; Step:004 Pattern:001
	dw .track_008, .track_008, .track_008, .track_011, .track_008, .track_008, .track_008, .track_015	; Step:005 Pattern:001
	dw .track_008, .track_008, .track_008, .track_011, .track_008, .track_008, .track_008, .track_015	; Step:006 Pattern:001
	dw .track_008, .track_008, .track_008, .track_011, .track_008, .track_008, .track_008, .track_015	; Step:007 Pattern:001
	dw .track_008, .track_008, .track_008, .track_011, .track_008, .track_008, .track_008, .track_015	; Step:008 Pattern:001
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:009 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:010 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:011 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:012 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:013 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:014 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:015 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:016 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_028, .track_029, .track_008, .track_015	; Step:017 Pattern:003
	dw .track_016, .track_008, .track_008, .track_011, .track_028, .track_029, .track_008, .track_015	; Step:018 Pattern:003
	dw .track_016, .track_008, .track_008, .track_011, .track_028, .track_029, .track_008, .track_015	; Step:019 Pattern:003
	dw .track_032, .track_008, .track_008, .track_011, .track_028, .track_037, .track_008, .track_015	; Step:020 Pattern:004
	dw .track_016, .track_008, .track_008, .track_011, .track_028, .track_029, .track_008, .track_015	; Step:021 Pattern:003
	dw .track_016, .track_008, .track_008, .track_011, .track_028, .track_029, .track_008, .track_015	; Step:022 Pattern:003
	dw .track_016, .track_008, .track_008, .track_011, .track_028, .track_029, .track_008, .track_015	; Step:023 Pattern:003
	dw .track_032, .track_008, .track_008, .track_011, .track_028, .track_037, .track_008, .track_015	; Step:024 Pattern:004
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:025 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:026 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:027 Pattern:002
	dw .track_032, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:028 Pattern:010
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:029 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:030 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:031 Pattern:002
	dw .track_032, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:032 Pattern:010
	dw .track_016, .track_008, .track_008, .track_011, .track_028, .track_029, .track_008, .track_015	; Step:033 Pattern:003
	dw .track_016, .track_008, .track_008, .track_011, .track_028, .track_029, .track_008, .track_015	; Step:034 Pattern:003
	dw .track_016, .track_008, .track_008, .track_011, .track_028, .track_029, .track_008, .track_015	; Step:035 Pattern:003
	dw .track_032, .track_008, .track_008, .track_011, .track_028, .track_037, .track_008, .track_015	; Step:036 Pattern:004
	dw .track_016, .track_008, .track_008, .track_011, .track_028, .track_029, .track_008, .track_015	; Step:037 Pattern:003
	dw .track_016, .track_008, .track_008, .track_011, .track_028, .track_029, .track_008, .track_015	; Step:038 Pattern:003
	dw .track_016, .track_008, .track_008, .track_011, .track_028, .track_029, .track_008, .track_015	; Step:039 Pattern:003
	dw .track_032, .track_008, .track_008, .track_011, .track_028, .track_125, .track_008, .track_015	; Step:040 Pattern:015
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_008, .track_046, .track_015	; Step:041 Pattern:005
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_008, .track_046, .track_015	; Step:042 Pattern:005
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_008, .track_046, .track_015	; Step:043 Pattern:005
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_008, .track_046, .track_015	; Step:044 Pattern:005
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_008, .track_046, .track_015	; Step:045 Pattern:005
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_008, .track_046, .track_015	; Step:046 Pattern:005
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_008, .track_046, .track_015	; Step:047 Pattern:005
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_008, .track_046, .track_015	; Step:048 Pattern:005
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_008, .track_134, .track_015	; Step:049 Pattern:016
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_008, .track_134, .track_015	; Step:050 Pattern:016
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_008, .track_134, .track_015	; Step:051 Pattern:016
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_008, .track_134, .track_015	; Step:052 Pattern:016
	dw .track_048, .track_049, .track_050, .track_011, .track_020, .track_008, .track_054, .track_015	; Step:053 Pattern:006
	dw .track_048, .track_049, .track_050, .track_011, .track_020, .track_008, .track_054, .track_015	; Step:054 Pattern:006
	dw .track_048, .track_049, .track_050, .track_011, .track_020, .track_008, .track_054, .track_015	; Step:055 Pattern:006
	dw .track_152, .track_049, .track_050, .track_011, .track_020, .track_008, .track_054, .track_015	; Step:056 Pattern:019
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_093, .track_008, .track_015	; Step:057 Pattern:011
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_101, .track_008, .track_015	; Step:058 Pattern:012
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:059 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:060 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_093, .track_008, .track_015	; Step:061 Pattern:011
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_101, .track_008, .track_015	; Step:062 Pattern:012
	dw .track_112, .track_008, .track_008, .track_011, .track_028, .track_117, .track_008, .track_015	; Step:063 Pattern:014
	dw .track_160, .track_008, .track_008, .track_011, .track_028, .track_117, .track_008, .track_015	; Step:064 Pattern:020
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_093, .track_008, .track_015	; Step:065 Pattern:011
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_101, .track_008, .track_015	; Step:066 Pattern:012
	dw .track_112, .track_008, .track_008, .track_011, .track_028, .track_117, .track_008, .track_015	; Step:067 Pattern:014
	dw .track_064, .track_008, .track_008, .track_011, .track_028, .track_037, .track_008, .track_015	; Step:068 Pattern:013
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_093, .track_008, .track_015	; Step:069 Pattern:011
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_101, .track_008, .track_015	; Step:070 Pattern:012
	dw .track_112, .track_008, .track_008, .track_011, .track_028, .track_117, .track_008, .track_015	; Step:071 Pattern:014
	dw .track_112, .track_008, .track_008, .track_011, .track_028, .track_117, .track_008, .track_015	; Step:072 Pattern:014
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:073 Pattern:007
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:074 Pattern:007
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:075 Pattern:007
	dw .track_064, .track_049, .track_050, .track_011, .track_020, .track_037, .track_054, .track_015	; Step:076 Pattern:008
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:077 Pattern:007
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:078 Pattern:007
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:079 Pattern:007
	dw .track_064, .track_049, .track_050, .track_011, .track_020, .track_037, .track_054, .track_015	; Step:080 Pattern:008
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:081 Pattern:007
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:082 Pattern:007
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:083 Pattern:007
	dw .track_064, .track_049, .track_050, .track_011, .track_020, .track_037, .track_054, .track_015	; Step:084 Pattern:008
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:085 Pattern:007
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:086 Pattern:007
	dw .track_136, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:087 Pattern:017
	dw .track_064, .track_049, .track_050, .track_011, .track_020, .track_037, .track_054, .track_015	; Step:088 Pattern:008
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_079	; Step:089 Pattern:009
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:090 Pattern:007
	dw .track_136, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:091 Pattern:017
	dw .track_168, .track_049, .track_050, .track_011, .track_020, .track_037, .track_054, .track_015	; Step:092 Pattern:021
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_079	; Step:093 Pattern:009
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:094 Pattern:007
	dw .track_136, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:095 Pattern:017
	dw .track_168, .track_049, .track_050, .track_011, .track_020, .track_037, .track_054, .track_015	; Step:096 Pattern:021
	dw .track_008, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_079	; Step:097 Pattern:009
	dw .track_136, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:098 Pattern:017
	dw .track_144, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:099 Pattern:018
	dw .track_184, .track_049, .track_050, .track_011, .track_020, .track_037, .track_054, .track_015	; Step:100 Pattern:028
	dw .track_208, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_079	; Step:101 Pattern:026
	dw .track_136, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:102 Pattern:017
	dw .track_144, .track_041, .track_042, .track_011, .track_008, .track_029, .track_062, .track_015	; Step:103 Pattern:018
	dw .track_184, .track_049, .track_050, .track_011, .track_020, .track_037, .track_054, .track_015	; Step:104 Pattern:028
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_261, .track_262, .track_015	; Step:105 Pattern:032
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_293, .track_293, .track_015	; Step:106 Pattern:036
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:107 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_269, .track_270, .track_015	; Step:108 Pattern:033
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:109 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:110 Pattern:002
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:111 Pattern:002
	dw .track_016, .track_008, .track_008, .track_219, .track_220, .track_221, .track_222, .track_223	; Step:112 Pattern:027
	dw .track_016, .track_193, .track_194, .track_275, .track_276, .track_277, .track_278, .track_279	; Step:113 Pattern:034
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_293, .track_293, .track_015	; Step:114 Pattern:036
	dw .track_136, .track_193, .track_194, .track_275, .track_276, .track_285, .track_285, .track_008	; Step:115 Pattern:035
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:116 Pattern:002
	dw .track_136, .track_193, .track_194, .track_275, .track_276, .track_301, .track_302, .track_279	; Step:117 Pattern:037
	dw .track_144, .track_193, .track_194, .track_275, .track_276, .track_309, .track_309, .track_279	; Step:118 Pattern:038
	dw .track_016, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:119 Pattern:002
	dw .track_184, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:120 Pattern:046
	dw .track_136, .track_193, .track_194, .track_275, .track_276, .track_317, .track_318, .track_279	; Step:121 Pattern:039
	dw .track_144, .track_193, .track_194, .track_275, .track_276, .track_309, .track_309, .track_279	; Step:122 Pattern:038
	dw .track_184, .track_193, .track_194, .track_275, .track_276, .track_325, .track_326, .track_008	; Step:123 Pattern:040
	dw .track_184, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:124 Pattern:046
	dw .track_136, .track_193, .track_194, .track_275, .track_276, .track_333, .track_334, .track_279	; Step:125 Pattern:041
	dw .track_208, .track_193, .track_194, .track_275, .track_276, .track_341, .track_341, .track_008	; Step:126 Pattern:042
	dw .track_144, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:127 Pattern:045
	dw .track_184, .track_008, .track_008, .track_011, .track_020, .track_008, .track_008, .track_015	; Step:128 Pattern:046
	dw .track_136, .track_193, .track_194, .track_275, .track_276, .track_349, .track_350, .track_351	; Step:129 Pattern:043
	dw .track_144, .track_008, .track_008, .track_011, .track_020, .track_293, .track_293, .track_008	; Step:130 Pattern:044
	dw .track_136, .track_193, .track_194, .track_275, .track_276, .track_285, .track_285, .track_008	; Step:131 Pattern:035
	dw .track_184, .track_008, .track_008, .track_187, .track_188, .track_189, .track_190, .track_191	; Step:132 Pattern:023
	dw .track_136, .track_193, .track_194, .track_275, .track_276, .track_301, .track_302, .track_351	; Step:133 Pattern:052
	dw .track_144, .track_193, .track_194, .track_275, .track_276, .track_309, .track_309, .track_008	; Step:134 Pattern:048
	dw .track_184, .track_193, .track_194, .track_195, .track_196, .track_197, .track_198, .track_199	; Step:135 Pattern:024
	dw .track_200, .track_193, .track_194, .track_203, .track_204, .track_205, .track_206, .track_207	; Step:136 Pattern:025
	dw .track_136, .track_193, .track_194, .track_275, .track_276, .track_317, .track_318, .track_351	; Step:137 Pattern:049
	dw .track_144, .track_193, .track_194, .track_275, .track_276, .track_309, .track_309, .track_008	; Step:138 Pattern:050
	dw .track_184, .track_193, .track_194, .track_275, .track_276, .track_325, .track_326, .track_008	; Step:139 Pattern:040
	dw .track_184, .track_193, .track_194, .track_219, .track_220, .track_253, .track_254, .track_223	; Step:140 Pattern:031
	dw .track_136, .track_193, .track_194, .track_275, .track_276, .track_333, .track_334, .track_351	; Step:141 Pattern:051
	dw .track_208, .track_193, .track_194, .track_275, .track_276, .track_341, .track_341, .track_008	; Step:142 Pattern:042
	dw .track_184, .track_193, .track_194, .track_195, .track_196, .track_197, .track_198, .track_199	; Step:143 Pattern:024
	dw .track_200, .track_193, .track_194, .track_203, .track_204, .track_205, .track_206, .track_207	; Step:144 Pattern:025
	dw .track_232, .track_233, .track_234, .track_235, .track_236, .track_237, .track_238, .track_239	; Step:145 Pattern:029
	dw .track_240, .track_241, .track_241, .track_243, .track_244, .track_245, .track_246, .track_247	; Step:146 Pattern:030
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:
	db $01,$01,$3f,$00,$00,$f0,$00,$00 		; Custom voice:177
	db $01,$01,$04,$05,$76,$f7,$25,$25 		; Custom voice:178
	db $00,$0a,$00,$00,$11,$20,$f0,$f0 		; Custom voice:179
	db $00,$0a,$00,$00,$41,$a0,$f0,$f0 		; Custom voice:180

; [ FM Drum macros]
.drummacro_start:
	dw .drum_00
	dw .drum_02
	dw .drum_04
	dw .drum_06
	dw .drum_08

.drum_00:						; Drum 0. BS_DRM-F        
	db $04, $00							; volume Base drum
	db $12, $d9, $04						; note Bdrum
	db $1e, $30							; Percussion
	db $02							; STOP - End of Drum macro

.drum_02:						; Drum 1. BS_DRM-D        
	db $04, $02							; volume Base drum
	db $12, $d9, $04						; note Bdrum
	db $1e, $30							; Percussion
	db $02							; STOP - End of Drum macro

.drum_04:						; Drum 2. BS_DRM-B        
	db $04, $04							; volume Base drum
	db $12, $d9, $04						; note Bdrum
	db $1e, $30							; Percussion
	db $02							; STOP - End of Drum macro

.drum_06:						; Drum 3. BS>SN 01        
	db $04, $00							; volume Base drum
	db $08, $02							; volume HiHat
	db $12, $46, $05						; note Bdrum
	db $16, $d9, $04						; note Snare 
	db $1e, $38							; Percussion
	db $02							; STOP - End of Drum macro

.drum_08:						; Drum 4. BS>SN 02        
	db $04, $02							; volume Base drum
	db $08, $04							; volume HiHat
	db $12, $46, $05						; note Bdrum
	db $16, $d9, $04						; note Snare 
	db $1e, $38							; Percussion
	db $02							; STOP - End of Drum macro

; [ Instruments]
.instrument_start:
	dw .instrument_00				; STR 1           
	dw .instrument_01				; SYHN-A          
	dw .instrument_02				; HARPSIC-A       
	dw .instrument_03				; STRPW-BASS-A    
	dw .instrument_04				; PSG_STR-A       
	dw .instrument_05				; PSG_STR-A'      
	dw .instrument_06				; PSG_NZ-01       
	dw .instrument_07				; S_Sound-01      
	dw .instrument_08				; BASS_Norm       
	dw .instrument_09				; NOISE_SN-01     
	dw .instrument_10				; OCH             
	dw .instrument_11				; PSG_env-01      
	dw .instrument_12				; COSMIC SHYNTHE  
	dw .instrument_13				; COSMIC SHYNTHE'2
	dw .instrument_14				; COSMIC 02       
	dw .instrument_15				; COSMIC 02 '2    

.instrument_00:					; STR 1           
	db $0F					; FM Hardware Voice was not set
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$10						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_01:					; SYHN-A          
	db $0F					; FM Hardware Voice was not set
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$a0						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_02:					; HARPSIC-A       
	db $0F					; FM Hardware Voice was not set
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$b0						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_03:					; STRPW-BASS-A    
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

.instrument_04:					; PSG_STR-A       
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
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
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_05:					; PSG_STR-A'      
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $04,$fe,$ff					; Tone sub
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
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
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_06:					; PSG_NZ-01       
	db $0F					; FM Hardware Voice was not set
	db $02,$80						; Mixer (N)
	db $0E,$02						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$1d						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$10						; Noise _
	db $08,$09						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$07						; Noise _
	db $00							; Volume same
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$01						; Noise _
	db $08,$00						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_07:					; S_Sound-01      
	db $00,$04					; FM Software Voice 0
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_08:					; BASS_Norm       
	db $0F					; FM Hardware Voice was not set
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$e0						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_09:					; NOISE_SN-01     
	db $0F					; FM Hardware Voice was not set
	db $02,$80						; Mixer (N)
	db $0E,$0a						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$1a						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$15						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$15						; Noise _
	db $0c,$01						; Volume -
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $18,$f3						; Loop (-14)

.instrument_10:					; OCH             
	db $00,$08					; FM Software Voice 1
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_11:					; PSG_env-01      
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_12:					; COSMIC SHYNTHE  
	db $00,$0c					; FM Software Voice 2
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_13:					; COSMIC SHYNTHE'2
	db $00,$0c					; FM Software Voice 2
	db $02,$10						; Mixer (T)
	db $04,$04,$00					; Tone add
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_14:					; COSMIC 02       
	db $00,$10					; FM Software Voice 3
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_15:					; COSMIC 02 '2    
	db $0F					; FM Hardware Voice was not set
	db $02,$10						; Mixer (T)
	db $04,$04,$00					; Tone add
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $16,$00						; FM Hardware Voice
	db $08,$0f						; Volume _
	db $18,$f9						; Loop (-8)


; [ Song track data ]
.track_000:
	db $71			;Volume 15
	db $72			;Instrument 0
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_003:
	db $00			;Note C-1
	db $63			;Volume 1
	db $73			;Instrument 1
	db $c0			;Wait 1
	db $62			;Note D-9
					;Wait Repeat 1
	db $60			;Release 96
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_004:
	db $10			;Note E-2
	db $63			;Volume 1
	db $74			;Instrument 2
	db $c0			;Wait 1
	db $62			;Note D-9
					;Wait Repeat 1
	db $60			;Release 96
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_005:
	db $00			;Note C-1
	db $63			;Volume 1
	db $75			;Instrument 3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_006:
	db $00			;Note C-1
	db $63			;Volume 1
	db $79			;Instrument 7
	db $c0			;Wait 1
	db $62			;Note D-9
					;Wait Repeat 1
	db $60			;Release 96
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_008:
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_011:
	db $26			;Note D-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $64			;Volume 2
	db $c3			;Wait 4
	db $26			;Note D-4
	db $70			;Volume 14
	db $c0			;Wait 1
	db $62			;Note D-9
	db $c4			;Wait 5
	db $26			;Note D-4
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c0			;Wait 1
	db $26			;Note D-4
	db $6e			;Volume 12
					;Wait Repeat 1
	db $62			;Note D-9
	db $c1			;Wait 2
	db $26			;Note D-4
	db $6e			;Volume 12
					;Wait Repeat 2
	db $69			;Volume 7
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $26			;Note D-4
	db $70			;Volume 14
	db $c0			;Wait 1
	db $6a			;Volume 8
	db $c4			;Wait 5
	db $26			;Note D-4
	db $6f			;Volume 13
	db $c2			;Wait 3
	db $62			;Note D-9
	db $c2			;Wait 3
	db $26			;Note D-4
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_015:
	db $c2			;Wait 3
	db $26			;Note D-4
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $63			;Volume 1
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $62			;Note D-9
	db $c4			;Wait 5
	db $26			;Note D-4
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c0			;Wait 1
	db $26			;Note D-4
	db $6b			;Volume 9
					;Wait Repeat 1
	db $62			;Note D-9
	db $c1			;Wait 2
	db $26			;Note D-4
	db $6b			;Volume 9
					;Wait Repeat 2
	db $66			;Volume 4
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6c			;Volume 10
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $67			;Volume 5
	db $c4			;Wait 5
	db $26			;Note D-4
	db $6c			;Volume 10
	db $c2			;Wait 3
	db $62			;Note D-9
	db $c2			;Wait 3
	db $26			;Note D-4
	db $6b			;Volume 9
	db $c1			;Wait 2
	db $62			;Note D-9
	db $bf			;[End-Of-Track]
.track_016:
	db $9d,$00			;CMD Drum $01
	db $cb			;Wait 12
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 12
	db $9d,$04			;CMD Drum $03
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_020:
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $74			;Instrument 2
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $62			;Note D-9
	db $c1			;Wait 2
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $62			;Note D-9
	db $c1			;Wait 2
	db $1a			;Note D-3
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $62			;Note D-9
	db $c1			;Wait 2
	db $1a			;Note D-3
	db $6d			;Volume 11
					;Wait Repeat 2
	db $62			;Note D-9
	db $c0			;Wait 1
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6d			;Volume 11
	db $c2			;Wait 3
	db $62			;Note D-9
	db $c2			;Wait 3
	db $1a			;Note D-3
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_028:
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $74			;Instrument 2
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $62			;Note D-9
	db $c1			;Wait 2
	db $1a			;Note D-3
	db $6d			;Volume 11
	db $c0			;Wait 1
	db $62			;Note D-9
	db $c1			;Wait 2
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $62			;Note D-9
	db $c1			;Wait 2
	db $1a			;Note D-3
	db $6d			;Volume 11
					;Wait Repeat 2
	db $62			;Note D-9
	db $c0			;Wait 1
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6d			;Volume 11
	db $c2			;Wait 3
	db $62			;Note D-9
	db $c2			;Wait 3
	db $1a			;Note D-3
	db $6c			;Volume 10
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_029:
	db $0e			;Note D-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9c			;CMD End 
	db $ca			;Wait 11
	db $60			;Release 96
	db $e4			;Wait 37
	db $bf			;[End-Of-Track]
.track_032:
	db $9d,$00			;CMD Drum $01
	db $d1			;Wait 18
	db $9d,$00			;CMD Drum $01
	db $cb			;Wait 12
	db $30			;Note C-5
	db $6e			;Volume 12
	db $78			;Instrument 6
	db $9d,$02			;CMD Drum $02
	db $c5			;Wait 6
	db $30			;Note C-5
	db $6c			;Volume 10
	db $c5			;Wait 6
	db $30			;Note C-5
	db $6b			;Volume 9
	db $9d,$04			;CMD Drum $03
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_037:
	db $0e			;Note D-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9c			;CMD End 
	db $ca			;Wait 11
	db $60			;Release 96
	db $c6			;Wait 7
	db $18			;Note C-3
	db $6f			;Volume 13
	db $95,$66			;CMD Vibrato
	db $d1			;Wait 18
	db $10			;Note E-2
	db $91,$02			;CMD Portamento tone
	db $ca			;Wait 11
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_041:
	db $20			;Note G#3
	db $6c			;Volume 10
	db $76			;Instrument 4
	db $9c			;CMD End 
	db $cc			;Wait 13
	db $95,$86			;CMD Vibrato
	db $e2			;Wait 35
	db $bf			;[End-Of-Track]
.track_042:
	db $20			;Note G#3
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $cc			;Wait 13
	db $95,$86			;CMD Vibrato
	db $e2			;Wait 35
	db $bf			;[End-Of-Track]
.track_046:
	db $3c			;Note C-6
	db $6c			;Volume 10
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $60			;Release 96
	db $c5			;Wait 6
	db $38			;Note G#5
	db $c2			;Wait 3
	db $60			;Release 96
	db $c8			;Wait 9
	db $30			;Note C-5
	db $c2			;Wait 3
	db $36			;Note F#5
	db $c3			;Wait 4
	db $60			;Release 96
	db $cd			;Wait 14
	db $30			;Note C-5
	db $c2			;Wait 3
	db $60			;Release 96
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_048:
	db $9d,$00			;CMD Drum $01
	db $d1			;Wait 18
	db $23			;Note B-3
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
	db $cb			;Wait 12
	db $30			;Note C-5
	db $6e			;Volume 12
	db $78			;Instrument 6
	db $c5			;Wait 6
	db $30			;Note C-5
	db $6c			;Volume 10
					;Wait Repeat 6
	db $30			;Note C-5
	db $6b			;Volume 9
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_049:
	db $20			;Note G#3
	db $6c			;Volume 10
	db $76			;Instrument 4
	db $9c			;CMD End 
	db $cc			;Wait 13
	db $95,$86			;CMD Vibrato
	db $da			;Wait 27
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_050:
	db $20			;Note G#3
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $cc			;Wait 13
	db $95,$86			;CMD Vibrato
	db $da			;Wait 27
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_054:
	db $3c			;Note C-6
	db $6c			;Volume 10
	db $79			;Instrument 7
	db $c2			;Wait 3
	db $60			;Release 96
	db $c5			;Wait 6
	db $38			;Note G#5
	db $c2			;Wait 3
	db $60			;Release 96
					;Wait Repeat 3
	db $44			;Note G#6
					;Wait Repeat 3
	db $60			;Release 96
					;Wait Repeat 3
	db $30			;Note C-5
					;Wait Repeat 3
	db $36			;Note F#5
	db $c3			;Wait 4
	db $60			;Release 96
	db $c4			;Wait 5
	db $48			;Note C-7
	db $c2			;Wait 3
	db $60			;Release 96
	db $c5			;Wait 6
	db $30			;Note C-5
	db $c2			;Wait 3
	db $60			;Release 96
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_062:
	db $3c			;Note C-6
	db $6c			;Volume 10
	db $79			;Instrument 7
	db $c2			;Wait 3
	db $60			;Release 96
	db $c5			;Wait 6
	db $38			;Note G#5
	db $c2			;Wait 3
	db $60			;Release 96
	db $c8			;Wait 9
	db $30			;Note C-5
	db $c2			;Wait 3
	db $36			;Note F#5
	db $c3			;Wait 4
	db $60			;Release 96
	db $cd			;Wait 14
	db $30			;Note C-5
	db $c2			;Wait 3
	db $60			;Release 96
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_064:
	db $9d,$00			;CMD Drum $01
	db $d1			;Wait 18
	db $23			;Note B-3
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
	db $cb			;Wait 12
	db $30			;Note C-5
	db $6e			;Volume 12
	db $78			;Instrument 6
	db $9d,$02			;CMD Drum $02
	db $c5			;Wait 6
	db $30			;Note C-5
	db $6c			;Volume 10
	db $c5			;Wait 6
	db $30			;Note C-5
	db $6b			;Volume 9
	db $9d,$04			;CMD Drum $03
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_079:
	db $4a			;Note D-7
	db $6c			;Volume 10
	db $79			;Instrument 7
	db $95,$86			;CMD Vibrato
	db $c2			;Wait 3
	db $6b			;Volume 9
					;Wait Repeat 3
	db $6a			;Volume 8
					;Wait Repeat 3
	db $69			;Volume 7
					;Wait Repeat 3
	db $68			;Volume 6
					;Wait Repeat 3
	db $67			;Volume 5
					;Wait Repeat 3
	db $3e			;Note D-6
	db $6c			;Volume 10
					;Wait Repeat 3
	db $6b			;Volume 9
					;Wait Repeat 3
	db $6a			;Volume 8
					;Wait Repeat 3
	db $69			;Volume 7
					;Wait Repeat 3
	db $68			;Volume 6
					;Wait Repeat 3
	db $45			;Note A-6
	db $6c			;Volume 10
					;Wait Repeat 3
	db $6b			;Volume 9
					;Wait Repeat 3
	db $6a			;Volume 8
					;Wait Repeat 3
	db $69			;Volume 7
					;Wait Repeat 3
	db $68			;Volume 6
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_093:
	db $0c			;Note C-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 6
	db $60			;Release 96
					;Wait Repeat 6
	db $0e			;Note D-2
					;Wait Repeat 6
	db $60			;Release 96
					;Wait Repeat 6
	db $0e			;Note D-2
					;Wait Repeat 6
	db $60			;Release 96
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_101:
	db $13			;Note G-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $11			;Note F-2
	db $a1			;CMD Note link
					;Wait Repeat 6
	db $60			;Release 96
					;Wait Repeat 6
	db $0e			;Note D-2
					;Wait Repeat 6
	db $60			;Release 96
					;Wait Repeat 6
	db $09			;Note A-1
	db $c4			;Wait 5
	db $09			;Note A-1
	db $71			;Volume 15
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $0c			;Note C-2
	db $91,$05			;CMD Portamento tone
	db $ca			;Wait 11
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_112:
	db $9d,$00			;CMD Drum $01
	db $cb			;Wait 12
	db $30			;Note C-5
	db $6e			;Volume 12
	db $78			;Instrument 6
	db $9d,$02			;CMD Drum $02
	db $c5			;Wait 6
	db $30			;Note C-5
	db $6c			;Volume 10
	db $c5			;Wait 6
	db $30			;Note C-5
	db $6b			;Volume 9
	db $9d,$04			;CMD Drum $03
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_117:
	db $60			;Release 96
	db $c5			;Wait 6
	db $0e			;Note D-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9c			;CMD End 
	db $c8			;Wait 9
	db $60			;Release 96
	db $e0			;Wait 33
	db $bf			;[End-Of-Track]
.track_125:
	db $0e			;Note D-2
	db $71			;Volume 15
	db $75			;Instrument 3
	db $9c			;CMD End 
	db $cb			;Wait 12
	db $15			;Note A-2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $18			;Note C-3
	db $6f			;Volume 13
	db $95,$66			;CMD Vibrato
	db $d1			;Wait 18
	db $10			;Note E-2
	db $91,$02			;CMD Portamento tone
	db $ca			;Wait 11
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_134:
	db $3c			;Note C-6
	db $6c			;Volume 10
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $60			;Release 96
	db $c5			;Wait 6
	db $38			;Note G#5
	db $c2			;Wait 3
	db $60			;Release 96
					;Wait Repeat 3
	db $44			;Note G#6
					;Wait Repeat 3
	db $60			;Release 96
					;Wait Repeat 3
	db $30			;Note C-5
					;Wait Repeat 3
	db $36			;Note F#5
	db $c3			;Wait 4
	db $60			;Release 96
	db $c4			;Wait 5
	db $48			;Note C-7
	db $c2			;Wait 3
	db $60			;Release 96
	db $c5			;Wait 6
	db $30			;Note C-5
	db $c2			;Wait 3
	db $60			;Release 96
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_136:
	db $0c			;Note C-2
	db $6e			;Volume 12
	db $78			;Instrument 6
	db $9d,$00			;CMD Drum $01
	db $cb			;Wait 12
	db $0c			;Note C-2
	db $6d			;Volume 11
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 12
	db $23			;Note B-3
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 12
	db $0c			;Note C-2
	db $6d			;Volume 11
	db $78			;Instrument 6
	db $c5			;Wait 6
	db $23			;Note B-3
	db $6b			;Volume 9
	db $7b			;Instrument 9
	db $9d,$02			;CMD Drum $02
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_144:
	db $0c			;Note C-2
	db $6e			;Volume 12
	db $78			;Instrument 6
	db $9d,$00			;CMD Drum $01
	db $c5			;Wait 6
	db $0c			;Note C-2
	db $c5			;Wait 6
	db $0c			;Note C-2
	db $6d			;Volume 11
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 6
	db $23			;Note B-3
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
	db $cb			;Wait 12
	db $0c			;Note C-2
	db $6e			;Volume 12
	db $78			;Instrument 6
	db $c5			;Wait 6
	db $0c			;Note C-2
	db $6d			;Volume 11
	db $c5			;Wait 6
	db $23			;Note B-3
	db $6b			;Volume 9
	db $7b			;Instrument 9
	db $9d,$02			;CMD Drum $02
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_152:
	db $9d,$00			;CMD Drum $01
	db $d1			;Wait 18
	db $23			;Note B-3
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
	db $cb			;Wait 12
	db $30			;Note C-5
	db $6e			;Volume 12
	db $78			;Instrument 6
	db $c5			;Wait 6
	db $23			;Note B-3
	db $6c			;Volume 10
	db $7b			;Instrument 9
	db $9d,$08			;CMD Drum $05
					;Wait Repeat 6
	db $23			;Note B-3
	db $6d			;Volume 11
	db $9d,$06			;CMD Drum $04
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_160:
	db $9d,$00			;CMD Drum $01
	db $cb			;Wait 12
	db $30			;Note C-5
	db $6e			;Volume 12
	db $78			;Instrument 6
	db $9d,$02			;CMD Drum $02
	db $c5			;Wait 6
	db $30			;Note C-5
	db $6c			;Volume 10
	db $c5			;Wait 6
	db $30			;Note C-5
	db $6b			;Volume 9
	db $9d,$04			;CMD Drum $03
	db $cb			;Wait 12
	db $23			;Note B-3
	db $6c			;Volume 10
	db $7b			;Instrument 9
	db $9d,$08			;CMD Drum $05
	db $c5			;Wait 6
	db $23			;Note B-3
	db $6d			;Volume 11
	db $9d,$06			;CMD Drum $04
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_168:
	db $9d,$00			;CMD Drum $01
	db $d1			;Wait 18
	db $23			;Note B-3
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
	db $cb			;Wait 12
	db $30			;Note C-5
	db $6e			;Volume 12
	db $78			;Instrument 6
	db $9d,$02			;CMD Drum $02
	db $c5			;Wait 6
	db $23			;Note B-3
	db $6c			;Volume 10
	db $7b			;Instrument 9
	db $9d,$08			;CMD Drum $05
					;Wait Repeat 6
	db $23			;Note B-3
	db $6d			;Volume 11
	db $9d,$06			;CMD Drum $04
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_184:
	db $9d,$00			;CMD Drum $01
	db $d1			;Wait 18
	db $23			;Note B-3
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
	db $cb			;Wait 12
	db $30			;Note C-5
	db $6e			;Volume 12
	db $78			;Instrument 6
	db $9d,$02			;CMD Drum $02
	db $c5			;Wait 6
	db $23			;Note B-3
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 6
	db $23			;Note B-3
	db $6d			;Volume 11
	db $9d,$06			;CMD Drum $04
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_187:
	db $26			;Note D-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $64			;Volume 2
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $6f			;Volume 13
	db $7c			;Instrument 10
	db $95,$65			;CMD Vibrato
	db $c0			;Wait 1
	db $48			;Note C-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $48			;Note C-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $48			;Note C-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $70			;Volume 14
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $6f			;Volume 13
	db $c0			;Wait 1
	db $44			;Note G#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $44			;Note G#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $44			;Note G#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $44			;Note G#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $44			;Note G#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $44			;Note G#6
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_188:
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $74			;Instrument 2
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $7c			;Instrument 10
	db $95,$76			;CMD Vibrato
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
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $71			;Volume 15
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1b			;Note D#3
	db $6f			;Volume 13
	db $c0			;Wait 1
	db $27			;Note D#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1b			;Note D#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1b			;Note D#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1b			;Note D#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1b			;Note D#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1b			;Note D#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $27			;Note D#4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_189:
	db $cb			;Wait 12
	db $18			;Note C-3
	db $71			;Volume 15
	db $7c			;Instrument 10
	db $95,$86			;CMD Vibrato
	db $c0			;Wait 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $71			;Volume 15
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
	db $14			;Note G#2
	db $71			;Volume 15
	db $c0			;Wait 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_190:
	db $cb			;Wait 12
	db $24			;Note C-4
	db $70			;Volume 14
	db $7c			;Instrument 10
	db $95,$95			;CMD Vibrato Extended
	db $c0			;Wait 1
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
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $71			;Volume 15
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
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $70			;Volume 14
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_191:
	db $cb			;Wait 12
	db $30			;Note C-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $95,$75			;CMD Vibrato
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $70			;Volume 14
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_193:
	db $0e			;Note D-2
	db $6f			;Volume 13
	db $7d			;Instrument 11
	db $c1			;Wait 2
	db $64			;Volume 2
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $6f			;Volume 13
	db $c0			;Wait 1
	db $60			;Release 96
	db $c4			;Wait 5
	db $1a			;Note D-3
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $14			;Note G#2
	db $6f			;Volume 13
	db $c5			;Wait 6
	db $13			;Note G-2
	db $c1			;Wait 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_194:
	db $02			;Note D-1
	db $6e			;Volume 12
	db $7d			;Instrument 11
	db $c1			;Wait 2
	db $64			;Volume 2
	db $c3			;Wait 4
	db $02			;Note D-1
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $60			;Release 96
	db $c4			;Wait 5
	db $0e			;Note D-2
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $02			;Note D-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $08			;Note G#1
	db $6e			;Volume 12
	db $c5			;Wait 6
	db $07			;Note G-1
	db $c1			;Wait 2
	db $05			;Note F-1
					;Wait Repeat 2
	db $00			;Note C-1
					;Wait Repeat 2
	db $02			;Note D-1
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_195:
	db $26			;Note D-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $64			;Volume 2
	db $c3			;Wait 4
	db $37			;Note G-5
	db $6f			;Volume 13
	db $7c			;Instrument 10
	db $95,$65			;CMD Vibrato
	db $c0			;Wait 1
	db $43			;Note G-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $37			;Note G-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $43			;Note G-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $37			;Note G-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $43			;Note G-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $70			;Volume 14
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $41			;Note F-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $31			;Note C#5
	db $6f			;Volume 13
	db $c0			;Wait 1
	db $3d			;Note C#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $31			;Note C#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3d			;Note C#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $31			;Note C#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3d			;Note C#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $31			;Note C#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3d			;Note C#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $31			;Note C#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3d			;Note C#6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $31			;Note C#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3d			;Note C#6
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_196:
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $74			;Instrument 2
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6f			;Volume 13
	db $7c			;Instrument 10
	db $95,$76			;CMD Vibrato
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
	db $18			;Note C-3
	db $71			;Volume 15
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $6f			;Volume 13
	db $c0			;Wait 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_197:
	db $c5			;Wait 6
	db $13			;Note G-2
	db $71			;Volume 15
	db $7c			;Instrument 10
	db $95,$86			;CMD Vibrato
	db $c0			;Wait 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $13			;Note G-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $13			;Note G-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1f			;Note G-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $11			;Note F-2
	db $71			;Volume 15
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $11			;Note F-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $11			;Note F-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $11			;Note F-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $11			;Note F-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $11			;Note F-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $11			;Note F-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $11			;Note F-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $11			;Note F-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $11			;Note F-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $11			;Note F-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $11			;Note F-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0d			;Note C#2
	db $71			;Volume 15
	db $c0			;Wait 1
	db $19			;Note C#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0d			;Note C#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $19			;Note C#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0d			;Note C#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $19			;Note C#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0d			;Note C#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $19			;Note C#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0d			;Note C#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $19			;Note C#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0d			;Note C#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $19			;Note C#3
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_198:
	db $c5			;Wait 6
	db $1f			;Note G-3
	db $70			;Volume 14
	db $7c			;Instrument 10
	db $95,$95			;CMD Vibrato Extended
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
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $71			;Volume 15
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1d			;Note F-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $19			;Note C#3
	db $70			;Volume 14
	db $c0			;Wait 1
	db $25			;Note C#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $19			;Note C#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $25			;Note C#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $19			;Note C#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $25			;Note C#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $19			;Note C#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $25			;Note C#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $19			;Note C#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $25			;Note C#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $19			;Note C#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $25			;Note C#4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_199:
	db $c5			;Wait 6
	db $2b			;Note G-4
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $95,$75			;CMD Vibrato
	db $c0			;Wait 1
	db $37			;Note G-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $37			;Note G-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $37			;Note G-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $70			;Volume 14
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $29			;Note F-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $35			;Note F-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $25			;Note C#4
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $31			;Note C#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $25			;Note C#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $31			;Note C#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $25			;Note C#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $31			;Note C#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $25			;Note C#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $31			;Note C#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $25			;Note C#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $31			;Note C#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $25			;Note C#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $31			;Note C#5
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_200:
	db $9d,$00			;CMD Drum $01
	db $c5			;Wait 6
	db $23			;Note B-3
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
	db $cb			;Wait 12
	db $23			;Note B-3
	db $6d			;Volume 11
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 12
	db $30			;Note C-5
	db $6e			;Volume 12
	db $78			;Instrument 6
	db $9d,$02			;CMD Drum $02
	db $c5			;Wait 6
	db $23			;Note B-3
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 6
	db $23			;Note B-3
	db $6d			;Volume 11
	db $9d,$06			;CMD Drum $04
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_203:
	db $26			;Note D-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $64			;Volume 2
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c9			;Wait 10
	db $39			;Note A-5
	db $6f			;Volume 13
	db $7c			;Instrument 10
	db $c0			;Wait 1
	db $45			;Note A-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $45			;Note A-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $45			;Note A-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $45			;Note A-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $45			;Note A-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $45			;Note A-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $45			;Note A-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $45			;Note A-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $45			;Note A-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $45			;Note A-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $45			;Note A-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $c0			;Wait 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_204:
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $74			;Instrument 2
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c9			;Wait 10
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $7c			;Instrument 10
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
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $28			;Note E-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1c			;Note E-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1b			;Note D#3
	db $c0			;Wait 1
	db $1b			;Note D#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1b			;Note D#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1b			;Note D#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1b			;Note D#3
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_205:
	db $d1			;Wait 18
	db $15			;Note A-2
	db $71			;Volume 15
	db $7c			;Instrument 10
	db $c0			;Wait 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $c0			;Wait 1
	db $14			;Note G#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $14			;Note G#2
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_206:
	db $d1			;Wait 18
	db $21			;Note A-3
	db $70			;Volume 14
	db $7c			;Instrument 10
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $c0			;Wait 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $20			;Note G#3
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_207:
	db $d1			;Wait 18
	db $2d			;Note A-4
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $c0			;Wait 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2c			;Note G#4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_208:
	db $0c			;Note C-2
	db $6e			;Volume 12
	db $78			;Instrument 6
	db $9d,$00			;CMD Drum $01
	db $c5			;Wait 6
	db $23			;Note B-3
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 6
	db $0c			;Note C-2
	db $6d			;Volume 11
	db $78			;Instrument 6
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 6
	db $0c			;Note C-2
	db $6d			;Volume 11
	db $c5			;Wait 6
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 6
	db $23			;Note B-3
	db $6d			;Volume 11
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
					;Wait Repeat 6
	db $0c			;Note C-2
	db $6d			;Volume 11
	db $78			;Instrument 6
	db $c5			;Wait 6
	db $23			;Note B-3
	db $6b			;Volume 9
	db $7b			;Instrument 9
	db $9d,$02			;CMD Drum $02
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_219:
	db $26			;Note D-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $64			;Volume 2
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c9			;Wait 10
	db $3c			;Note C-6
	db $6f			;Volume 13
	db $7c			;Instrument 10
	db $95,$65			;CMD Vibrato
	db $c0			;Wait 1
	db $48			;Note C-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $48			;Note C-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $48			;Note C-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $70			;Volume 14
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $4a			;Note D-7
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_220:
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $74			;Instrument 2
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $04			;Note E-1
	db $71			;Volume 15
	db $c0			;Wait 1
	db $62			;Note D-9
	db $c4			;Wait 5
	db $1f			;Note G-3
	db $6f			;Volume 13
	db $7c			;Instrument 10
	db $95,$76			;CMD Vibrato
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
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2b			;Note G-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $71			;Volume 15
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $2d			;Note A-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_221:
	db $d1			;Wait 18
	db $18			;Note C-3
	db $71			;Volume 15
	db $7c			;Instrument 10
	db $95,$86			;CMD Vibrato
	db $c0			;Wait 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $71			;Volume 15
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
	db $1a			;Note D-3
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_222:
	db $d1			;Wait 18
	db $24			;Note C-4
	db $70			;Volume 14
	db $7c			;Instrument 10
	db $95,$95			;CMD Vibrato Extended
	db $c0			;Wait 1
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
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $71			;Volume 15
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
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_223:
	db $d1			;Wait 18
	db $30			;Note C-5
	db $6e			;Volume 12
	db $7c			;Instrument 10
	db $95,$75			;CMD Vibrato
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3c			;Note C-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $70			;Volume 14
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_232:
	db $1c			;Note E-3
	db $6c			;Volume 10
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
	db $c5			;Wait 6
	db $9d,$00			;CMD Drum $01
					;Wait Repeat 6
	db $9d,$00			;CMD Drum $01
	db $e3			;Wait 36
	db $1c			;Note E-3
	db $6c			;Volume 10
	db $9d,$06			;CMD Drum $04
	db $c5			;Wait 6
	db $9d,$00			;CMD Drum $01
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_233:
	db $0e			;Note D-2
	db $6f			;Volume 13
	db $7d			;Instrument 11
	db $c1			;Wait 2
	db $64			;Volume 2
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $6f			;Volume 13
	db $c0			;Wait 1
	db $60			;Release 96
	db $c4			;Wait 5
	db $1a			;Note D-3
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $14			;Note G#2
	db $6f			;Volume 13
	db $c5			;Wait 6
	db $13			;Note G-2
	db $c1			;Wait 2
	db $11			;Note F-2
					;Wait Repeat 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $60			;Release 96
	db $cf			;Wait 16
	db $1a			;Note D-3
	db $6f			;Volume 13
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_234:
	db $02			;Note D-1
	db $6e			;Volume 12
	db $7d			;Instrument 11
	db $c1			;Wait 2
	db $64			;Volume 2
	db $c3			;Wait 4
	db $02			;Note D-1
	db $6e			;Volume 12
	db $c0			;Wait 1
	db $60			;Release 96
	db $c4			;Wait 5
	db $0e			;Note D-2
	db $6e			;Volume 12
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $02			;Note D-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $08			;Note G#1
	db $6e			;Volume 12
	db $c5			;Wait 6
	db $07			;Note G-1
	db $c1			;Wait 2
	db $05			;Note F-1
					;Wait Repeat 2
	db $00			;Note C-1
					;Wait Repeat 2
	db $02			;Note D-1
					;Wait Repeat 2
	db $60			;Release 96
	db $cf			;Wait 16
	db $0e			;Note D-2
	db $6f			;Volume 13
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_235:
	db $26			;Note D-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $64			;Volume 2
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c9			;Wait 10
	db $26			;Note D-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $64			;Volume 2
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $62			;Note D-9
	db $db			;Wait 28
	db $32			;Note D-5
	db $70			;Volume 14
	db $7c			;Instrument 10
	db $95,$65			;CMD Vibrato
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_236:
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $74			;Instrument 2
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $04			;Note E-1
	db $71			;Volume 15
	db $c0			;Wait 1
	db $62			;Note D-9
	db $c4			;Wait 5
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $74			;Instrument 2
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $04			;Note E-1
	db $71			;Volume 15
	db $c0			;Wait 1
	db $62			;Note D-9
	db $d6			;Wait 23
	db $15			;Note A-2
	db $71			;Volume 15
	db $7c			;Instrument 10
	db $95,$76			;CMD Vibrato
	db $c0			;Wait 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_237:
	db $2d			;Note A-4
	db $6b			;Volume 9
	db $7e			;Instrument 12
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $96,$09			;CMD Portamento up
	db $f2			;Wait 51
	db $0e			;Note D-2
	db $71			;Volume 15
	db $7c			;Instrument 10
	db $95,$74			;CMD Vibrato
	db $c0			;Wait 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_238:
	db $35			;Note F-5
	db $6b			;Volume 9
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $96,$05			;CMD Portamento up
	db $f2			;Wait 51
	db $1a			;Note D-3
	db $71			;Volume 15
	db $7c			;Instrument 10
	db $95,$66			;CMD Vibrato
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
	db $bf			;[End-Of-Track]
.track_239:
	db $1a			;Note D-3
	db $6c			;Volume 10
	db $7e			;Instrument 12
	db $f5			;Wait 54
	db $26			;Note D-4
	db $70			;Volume 14
	db $7c			;Instrument 10
	db $95,$67			;CMD Vibrato
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
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_240:
	db $1c			;Note E-3
	db $6c			;Volume 10
	db $7b			;Instrument 9
	db $9d,$06			;CMD Drum $04
	db $c5			;Wait 6
	db $9d,$02			;CMD Drum $02
					;Wait Repeat 6
	db $9d,$04			;CMD Drum $03
	db $e3			;Wait 36
	db $bf			;[End-Of-Track]
.track_241:
	db $d1			;Wait 18
	db $60			;Release 96
	db $c5			;Wait 6
	db $60			;Release 96
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_243:
	db $32			;Note D-5
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $3e			;Note D-6
	db $a1			;CMD Note link
	db $d2			;Wait 19
	db $bf			;[End-Of-Track]
.track_244:
	db $15			;Note A-2
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $15			;Note A-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $21			;Note A-3
	db $a1			;CMD Note link
	db $d2			;Wait 19
	db $bf			;[End-Of-Track]
.track_245:
	db $0e			;Note D-2
	db $a1			;CMD Note link
	db $c0			;Wait 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $0e			;Note D-2
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $a1			;CMD Note link
	db $d2			;Wait 19
	db $bf			;[End-Of-Track]
.track_246:
	db $1a			;Note D-3
	db $a1			;CMD Note link
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
	db $d2			;Wait 19
	db $bf			;[End-Of-Track]
.track_247:
	db $26			;Note D-4
	db $a1			;CMD Note link
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
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
	db $d2			;Wait 19
	db $bf			;[End-Of-Track]
.track_253:
	db $3e			;Note D-6
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $32			;Note D-5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $18			;Note C-3
	db $71			;Volume 15
	db $7c			;Instrument 10
	db $95,$86			;CMD Vibrato
	db $c0			;Wait 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $18			;Note C-3
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $24			;Note C-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $1a			;Note D-3
	db $71			;Volume 15
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
	db $1a			;Note D-3
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_254:
	db $3e			;Note D-6
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $32			;Note D-5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $24			;Note C-4
	db $70			;Volume 14
	db $7c			;Instrument 10
	db $95,$95			;CMD Vibrato Extended
	db $c0			;Wait 1
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
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $30			;Note C-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $71			;Volume 15
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
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
					;Wait Repeat 1
	db $26			;Note D-4
	db $a1			;CMD Note link
	db $bf			;[End-Of-Track]
.track_261:
	db $32			;Note D-5
	db $6b			;Volume 9
	db $7e			;Instrument 12
	db $9c			;CMD End 
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_262:
	db $32			;Note D-5
	db $6b			;Volume 9
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_269:
	db $dd			;Wait 30
	db $96,$01			;CMD Portamento up
	db $d1			;Wait 18
	db $bf			;[End-Of-Track]
.track_270:
	db $e1			;Wait 34
	db $96,$01			;CMD Portamento up
	db $cd			;Wait 14
	db $bf			;[End-Of-Track]
.track_275:
	db $26			;Note D-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $64			;Volume 2
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6f			;Volume 13
	db $c1			;Wait 2
	db $62			;Note D-9
	db $e7			;Wait 40
	db $bf			;[End-Of-Track]
.track_276:
	db $1a			;Note D-3
	db $6e			;Volume 12
	db $74			;Instrument 2
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $62			;Note D-9
	db $c3			;Wait 4
	db $04			;Note E-1
	db $71			;Volume 15
	db $c0			;Wait 1
	db $62			;Note D-9
	db $e2			;Wait 35
	db $bf			;[End-Of-Track]
.track_277:
	db $32			;Note D-5
	db $6b			;Volume 9
	db $7e			;Instrument 12
	db $9c			;CMD End 
	db $cb			;Wait 12
	db $95,$65			;CMD Vibrato
	db $d1			;Wait 18
	db $3e			;Note D-6
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 6
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_278:
	db $32			;Note D-5
	db $6b			;Volume 9
	db $7f			;Instrument 13
	db $9c			;CMD End 
	db $cb			;Wait 12
	db $95,$65			;CMD Vibrato
	db $d1			;Wait 18
	db $3e			;Note D-6
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 6
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_279:
	db $60			;Release 96
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_285:
	db $cb			;Wait 12
	db $36			;Note F#5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_293:
	db $e3			;Wait 36
	db $95,$76			;CMD Vibrato
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_301:
	db $3b			;Note B-5
	db $6b			;Volume 9
	db $80			;Instrument 14
	db $9c			;CMD End 
	db $cb			;Wait 12
	db $95,$65			;CMD Vibrato
	db $d9			;Wait 26
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $36			;Note F#5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_302:
	db $3b			;Note B-5
	db $6b			;Volume 9
	db $81			;Instrument 15
	db $9c			;CMD End 
	db $cb			;Wait 12
	db $95,$65			;CMD Vibrato
	db $d9			;Wait 26
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $36			;Note F#5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_309:
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $32			;Note D-5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_317:
	db $32			;Note D-5
	db $6b			;Volume 9
	db $80			;Instrument 14
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 6
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c2			;Wait 3
	db $95,$76			;CMD Vibrato
					;Wait Repeat 3
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $d3			;Wait 20
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $36			;Note F#5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_318:
	db $32			;Note D-5
	db $6b			;Volume 9
	db $81			;Instrument 15
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 6
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c2			;Wait 3
	db $95,$76			;CMD Vibrato
					;Wait Repeat 3
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $d3			;Wait 20
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $36			;Note F#5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_325:
	db $3b			;Note B-5
	db $6b			;Volume 9
	db $80			;Instrument 14
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $3b			;Note B-5
	db $6b			;Volume 9
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_326:
	db $3b			;Note B-5
	db $6b			;Volume 9
	db $81			;Instrument 15
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $38			;Note G#5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $3b			;Note B-5
	db $6b			;Volume 9
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $32			;Note D-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $36			;Note F#5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 4
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_333:
	db $3d			;Note C#6
	db $6b			;Volume 9
	db $80			;Instrument 14
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 6
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $c2			;Wait 3
	db $95,$76			;CMD Vibrato
					;Wait Repeat 3
	db $32			;Note D-5
	db $a1			;CMD Note link
	db $d3			;Wait 20
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $36			;Note F#5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_334:
	db $3d			;Note C#6
	db $6b			;Volume 9
	db $81			;Instrument 15
	db $9c			;CMD End 
	db $c5			;Wait 6
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 6
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $c2			;Wait 3
	db $95,$76			;CMD Vibrato
					;Wait Repeat 3
	db $32			;Note D-5
	db $a1			;CMD Note link
	db $d3			;Wait 20
	db $39			;Note A-5
	db $a1			;CMD Note link
	db $c3			;Wait 4
	db $36			;Note F#5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_341:
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 6
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $e3			;Wait 36
	db $bf			;[End-Of-Track]
.track_349:
	db $32			;Note D-5
	db $6b			;Volume 9
	db $80			;Instrument 14
	db $9c			;CMD End 
	db $cb			;Wait 12
	db $95,$65			;CMD Vibrato
	db $d1			;Wait 18
	db $3e			;Note D-6
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 6
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_350:
	db $32			;Note D-5
	db $6b			;Volume 9
	db $81			;Instrument 15
	db $9c			;CMD End 
	db $cb			;Wait 12
	db $95,$65			;CMD Vibrato
	db $d1			;Wait 18
	db $3e			;Note D-6
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $39			;Note A-5
	db $a1			;CMD Note link
					;Wait Repeat 6
	db $38			;Note G#5
	db $a1			;CMD Note link
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_351:
	db $1a			;Note D-3
	db $6c			;Volume 10
	db $80			;Instrument 14
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]

