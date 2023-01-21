; Song:			MoG2- WORLD 10 v1               
; By:			Gryzor87 (c)2022                
; Period table: A445 Konami

; [ Song start data ]
	db $07					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_002, .track_002, .track_004, .track_005, .track_006, .track_007	; Step:001 Pattern:000
.restart:
	dw .track_008, .track_001, .track_002, .track_002, .track_012, .track_013, .track_014, .track_015	; Step:002 Pattern:001
	dw .track_016, .track_017, .track_018, .track_018, .track_020, .track_021, .track_022, .track_023	; Step:003 Pattern:002
	dw .track_024, .track_025, .track_002, .track_002, .track_004, .track_029, .track_030, .track_031	; Step:004 Pattern:003
	dw .track_032, .track_033, .track_002, .track_002, .track_036, .track_037, .track_038, .track_039	; Step:005 Pattern:004
	dw .track_032, .track_041, .track_002, .track_002, .track_044, .track_045, .track_046, .track_047	; Step:006 Pattern:005
	dw .track_048, .track_049, .track_002, .track_002, .track_052, .track_053, .track_054, .track_055	; Step:007 Pattern:006
	dw .track_056, .track_057, .track_002, .track_002, .track_060, .track_061, .track_062, .track_063	; Step:008 Pattern:007
	dw .track_064, .track_065, .track_002, .track_002, .track_068, .track_069, .track_070, .track_071	; Step:009 Pattern:008
	dw .track_048, .track_073, .track_002, .track_002, .track_076, .track_077, .track_078, .track_079	; Step:010 Pattern:009
	dw .track_048, .track_081, .track_002, .track_002, .track_076, .track_085, .track_086, .track_087	; Step:011 Pattern:010
	dw .track_048, .track_089, .track_002, .track_002, .track_076, .track_093, .track_094, .track_095	; Step:012 Pattern:011
	dw .track_096, .track_097, .track_002, .track_002, .track_100, .track_101, .track_102, .track_103	; Step:013 Pattern:012
	dw .track_104, .track_105, .track_002, .track_002, .track_108, .track_109, .track_110, .track_111	; Step:014 Pattern:013
	dw .track_112, .track_113, .track_002, .track_002, .track_116, .track_117, .track_118, .track_119	; Step:015 Pattern:014
	dw .track_120, .track_121, .track_122, .track_122, .track_124, .track_125, .track_126, .track_127	; Step:016 Pattern:015
	dw .track_128, .track_129, .track_018, .track_018, .track_132, .track_133, .track_134, .track_135	; Step:017 Pattern:016
	dw .track_000, .track_137, .track_002, .track_002, .track_004, .track_005, .track_006, .track_143	; Step:018 Pattern:017
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00				; Waveform:0
	db $80, $b0, $c0, $10, $1a, $2a, $2c, $1a, $00, $e0, $d0, $e0, $22, $53, $70, $75, $70, $31, $ea, $80, $88, $8a, $8c, $8e, $00, $7f, $75, $73, $62, $00, $c0, $90				; Waveform:1
	db $00, $40, $7f, $40, $01, $c0, $81, $c0, $01, $40, $7f, $40, $01, $c0, $01, $40, $01, $e0, $01, $20, $01, $f0, $01, $10, $01, $ff, $ff, $ff, $ff, $40, $40, $40				; Waveform:2
	db $00, $10, $20, $30, $40, $50, $60, $70, $7f, $70, $60, $50, $40, $30, $20, $10, $ff, $f0, $e0, $d0, $c0, $b0, $a0, $90, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0				; Waveform:3
	db $00, $30, $50, $60, $70, $60, $50, $30, $00, $d0, $b0, $a0, $90, $a0, $b0, $d0, $00, $40, $60, $70, $60, $40, $00, $c0, $a0, $90, $a0, $c0, $00, $70, $00, $90				; Waveform:4
	db $80, $8e, $a0, $c0, $e0, $00, $20, $3f, $3e, $3c, $3a, $37, $31, $29, $20, $1c, $10, $00, $e6, $c0, $d0, $00, $20, $3f, $10, $e0, $80, $c0, $00, $20, $00, $90				; Waveform:5
	db $00, $f8, $f0, $e8, $e0, $d8, $d0, $c8, $c0, $b8, $b0, $a8, $a0, $98, $90, $88, $80, $78, $70, $68, $60, $58, $50, $48, $40, $38, $30, $28, $20, $18, $10, $08				; Waveform:6
	db $a0, $90, $a0, $ac, $f0, $a0, $16, $00, $90, $00, $20, $40, $60, $50, $38, $1c, $f2, $e2, $d6, $d0, $d0, $da, $dc, $e0, $e2, $e2, $e2, $e0, $dc, $d8, $d0, $b0				; Waveform:7
	db $00, $f8, $e8, $d8, $c8, $b8, $ac, $9c, $90, $8c, $8a, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $77, $68, $58, $48, $38, $28, $18, $08				; Waveform:9
	db $17, $37, $47, $57, $5f, $69, $6d, $6d, $6d, $69, $5f, $4f, $47, $37, $27, $0f, $df, $c7, $b7, $af, $9f, $97, $8f, $8f, $97, $a7, $af, $bf, $c7, $d7, $e7, $ff				; Waveform:11
	db $28, $58, $58, $28, $00, $00, $18, $48, $68, $78, $68, $38, $e8, $d8, $e0, $00, $20, $20, $10, $c0, $a0, $90, $a0, $c0, $00, $00, $d0, $b0, $b0, $d0, $00, $00				; Waveform:13
	db $20, $30, $30, $20, $00, $00, $18, $28, $38, $40, $38, $20, $f0, $e8, $e8, $00, $18, $18, $10, $d8, $d0, $c8, $d0, $e8, $00, $00, $e0, $d0, $d0, $e0, $00, $00				; Waveform:14
	db $00, $1e, $3a, $4d, $57, $7a, $75, $7e, $77, $7e, $75, $7a, $59, $4d, $3a, $1e, $00, $e1, $c5, $b2, $aa, $8a, $8a, $89, $88, $89, $8a, $89, $aa, $b2, $c5, $e1				; Waveform:15
	db $27, $5f, $4f, $4f, $5f, $67, $7f, $7f, $6f, $6f, $7f, $6f, $5f, $4f, $67, $5f, $37, $e7, $d7, $c7, $d7, $ff, $e7, $cf, $c7, $c7, $bf, $97, $87, $af, $d7, $ff				; Waveform:18
	db $90, $d0, $20, $0c, $bc, $aa, $e6, $dc, $bc, $e3, $40, $30, $e0, $d0, $10, $06, $e4, $0c, $70, $50, $e0, $d0, $10, $00, $d0, $f0, $40, $20, $c4, $c0, $f0, $90				; Waveform:19
	db $b0, $e0, $18, $04, $d4, $c2, $f6, $ec, $cc, $eb, $28, $18, $f0, $e0, $08, $00, $ec, $0b, $4f, $38, $f0, $e0, $08, $00, $e0, $f8, $28, $10, $d4, $d0, $f8, $c0				; Waveform:20
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $00, $e7, $cf, $b9, $a6, $96, $8b, $83, $80, $83, $8b, $96, $a6, $b9, $cf, $e7				; Waveform:21
	db $13, $2f, $27, $27, $2f, $33, $3f, $3f, $37, $37, $3f, $37, $2f, $27, $33, $2f, $1b, $f7, $eb, $e3, $eb, $ff, $f3, $e7, $e3, $e3, $df, $cb, $c3, $d7, $eb, $ff				; Waveform:22
	db $38, $68, $7f, $70, $50, $40, $50, $60, $50, $40, $28, $20, $28, $70, $48, $18, $e8, $b8, $80, $88, $a0, $c0, $ac, $90, $ac, $c8, $e0, $d0, $c0, $b0, $90, $c8				; Waveform:25
	db $08, $18, $40, $58, $67, $28, $08, $20, $40, $58, $67, $28, $e0, $b8, $d8, $18, $e0, $d8, $c8, $b8, $b0, $a8, $a0, $a0, $a8, $b0, $b8, $c8, $d8, $e8, $f8, $00				; Waveform:28
	db $08, $18, $28, $38, $50, $68, $7f, $68, $50, $38, $28, $18, $f7, $e0, $c8, $b0, $98, $80, $98, $b0, $c8, $e0, $18, $30, $50, $30, $18, $e0, $c8, $a8, $c8, $e0				; Waveform:31

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; BD C2           
	dw .instrument_01				; SD A3           
	dw .instrument_02				; HH CL A8        
	dw .instrument_03				; TOM             
	dw .instrument_04				; WAVE-LFO        
	dw .instrument_05				; IN              
	dw .instrument_06				; SC BRASS        
	dw .instrument_07				; SC Bass         
	dw .instrument_08				; SC Brass Satan  
	dw .instrument_09				; PGS String snake
	dw .instrument_10				; ARP SQ          
	dw .instrument_11				; Piano tremolo   
	dw .instrument_12				; Piano Tremolo HI
	dw .instrument_13				; Mystery Chords  
	dw .instrument_14				; Vlins Melody    
	dw .instrument_15				; Rev Cymbal A8   
	dw .instrument_16				; SHAKER II G7    
	dw .instrument_17				; SHAKER III      
	dw .instrument_18				; LOW SHAKER      
	dw .instrument_19				; SD-MAIN         
	dw .instrument_20				; PP ClariFlute   
	dw .instrument_21				; Crash_Ride      
	dw .instrument_22				; Clarinet        

.instrument_00:					; BD C2           
	db $58							; Waveform 11
	db $02,$10						; Mixer (T)
	db $06,$50,$ff					; Tone sub
	db $1c,$0a						; Envelope shape
	db $08,$00						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$00						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_01:					; SD A3           
	db $60							; Waveform 12
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$06						; Noise _
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0b						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0a						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$09						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$08						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$07						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$06						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$05						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$04						; Volume _
								; --- Macro loop
	db $08,$00						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_02:					; HH CL A8        
	db $38							; Waveform 7
	db $02,$80						; Mixer (N)
	db $0E,$00						; Noise _
	db $08,$0e						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0a						; Volume _
								; --- Macro loop
	db $08,$00						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_03:					; TOM             
	db $88							; Waveform 17
	db $02,$10						; Mixer (T)
	db $04,$40,$00					; Tone add
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $04,$40,$00					; Tone add
	db $08,$0d						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $04,$40,$00					; Tone add
	db $0c,$01						; Volume -
	db $02,$10						; Mixer (T)
	db $04,$40,$00					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$40,$00					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$40,$00					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$40,$00					; Tone add
	db $00							; Volume same
	db $18,$e0						; Loop (-33)

.instrument_04:					; WAVE-LFO        
	db $18							; Waveform 3
	db $02,$10						; Mixer (T)
	db $08,$06						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$07						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$08						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_05:					; IN              
	db $68							; Waveform 13
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
								; --- Macro loop
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
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $18,$a4						; Loop (-93)

.instrument_06:					; SC BRASS        
	db $40							; Waveform 8
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
								; --- Macro loop
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
	db $0c,$01						; Volume -
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $0a,$01						; Volume +
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $18,$d2						; Loop (-47)

.instrument_07:					; SC Bass         
	db $08							; Waveform 1
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
								; --- Macro loop
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
	db $18,$ec						; Loop (-21)

.instrument_08:					; SC Brass Satan  
	db $98							; Waveform 19
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$08						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
								; --- Macro loop
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
	db $0c,$01						; Volume -
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $0a,$01						; Volume +
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $18,$d2						; Loop (-47)

.instrument_09:					; PGS String snake
	db $98							; Waveform 19
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
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
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $04,$01,$00					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$01,$00					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $04,$01,$00					; Tone add
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $06,$ff,$ff					; Tone sub
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $06,$ff,$ff					; Tone sub
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $06,$ff,$ff					; Tone sub
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $18,$c9						; Loop (-56)

.instrument_10:					; ARP SQ          
	db $70							; Waveform 14
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$08						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$07						; Volume _
								; --- Macro loop
	db $00							; Volume same
	db $18,$fe						; Loop (-3)

.instrument_11:					; Piano tremolo   
	db $50							; Waveform 10
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $0c,$02						; Volume -
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
	db $0a,$01						; Volume +
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $0a,$01						; Volume +
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $18,$d7						; Loop (-42)

.instrument_12:					; Piano Tremolo HI
	db $50							; Waveform 10
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$08						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $0c,$02						; Volume -
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
	db $0a,$01						; Volume +
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $0a,$01						; Volume +
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $18,$d7						; Loop (-42)

.instrument_13:					; Mystery Chords  
	db $30							; Waveform 6
	db $02,$10						; Mixer (T)
	db $08,$06						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$08						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$07						; Volume _
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
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$08						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $18,$c1						; Loop (-64)

.instrument_14:					; Vlins Melody    
	db $68							; Waveform 13
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
								; --- Macro loop
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
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $18,$b0						; Loop (-81)

.instrument_15:					; Rev Cymbal A8   
	db $00							; Waveform 0
	db $02,$90						; Mixer (TN)
	db $0E,$00						; Noise _
	db $08,$05						; Volume _
	db $02,$90						; Mixer (TN)
	db $08,$05						; Volume _
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $08,$06						; Volume _
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $08,$07						; Volume _
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $08,$08						; Volume _
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $08,$09						; Volume _
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $08,$0a						; Volume _
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $08,$0b						; Volume _
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $08,$0c						; Volume _
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $08,$0d						; Volume _
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $08,$0e						; Volume _
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $08,$0f						; Volume _
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
								; --- Macro loop
	db $02,$90						; Mixer (TN)
	db $0E,$00						; Noise _
	db $0c,$01						; Volume -
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $18,$f0						; Loop (-17)

.instrument_16:					; SHAKER II G7    
	db $a0							; Waveform 20
	db $02,$80						; Mixer (N)
	db $0E,$15						; Noise _
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$11						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$10						; Noise _
	db $08,$0e						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$0d						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$0a						; Noise _
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$08						; Noise _
	db $08,$0b						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$05						; Noise _
	db $08,$0a						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$03						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$00						; Noise _
	db $08,$09						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$08						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$07						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$06						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$05						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$04						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
								; --- Macro loop
	db $08,$04						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_17:					; SHAKER III      
	db $a0							; Waveform 20
	db $02,$80						; Mixer (N)
	db $0E,$15						; Noise _
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$11						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$0e						; Noise _
	db $08,$0e						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$0d						; Noise _
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0b						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$0c						; Noise _
	db $08,$0a						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0b						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$09						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$0a						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$08						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$07						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$06						; Volume _
								; --- Macro loop
	db $08,$06						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_18:					; LOW SHAKER      
	db $a0							; Waveform 20
	db $02,$80						; Mixer (N)
	db $0E,$15						; Noise _
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$14						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$12						; Noise _
	db $08,$0e						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$10						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$0f						; Noise _
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0b						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0a						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0e						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$09						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$08						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$0d						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$07						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$06						; Volume _
								; --- Macro loop
	db $08,$06						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_19:					; SD-MAIN         
	db $00							; Waveform 0
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$05						; Noise _
	db $08,$0e						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$06						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$07						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$08						; Noise _
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$09						; Noise _
	db $08,$0b						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$0a						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0b						; Noise _
	db $08,$0a						; Volume _
	db $02,$80						; Mixer (N)
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
	db $0E,$0b						; Noise _
	db $08,$09						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$0c						; Noise _
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
	db $0E,$0d						; Noise _
	db $08,$08						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$0c						; Noise _
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
	db $0E,$0d						; Noise _
	db $08,$07						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$0e						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0f						; Noise _
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0e						; Noise _
	db $00							; Volume same
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$0f						; Noise _
	db $08,$06						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$10						; Noise _
	db $08,$06						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $0E,$0f						; Noise _
	db $00							; Volume same
	db $18,$eb						; Loop (-22)

.instrument_20:					; PP ClariFlute   
	db $48							; Waveform 9
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
								; --- Macro loop
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
	db $0a,$01						; Volume +
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $18,$cf						; Loop (-50)

.instrument_21:					; Crash_Ride      
	db $00							; Waveform 0
	db $02,$90						; Mixer (TN)
	db $0E,$00						; Noise _
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$90						; Mixer (TN)
	db $0E,$00						; Noise _
	db $0c,$01						; Volume -
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $02,$90						; Mixer (TN)
	db $00							; Volume same
	db $18,$ed						; Loop (-20)

.instrument_22:					; Clarinet        
	db $90							; Waveform 18
	db $02,$10						; Mixer (T)
	db $08,$07						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$08						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$08						; Volume _
								; --- Macro loop
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
	db $0a,$01						; Volume +
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
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $18,$be						; Loop (-67)


; [ Song track data ]
.track_000:
	db $02			;Note D-1
	db $6c			;Volume 11
	db $7a			;Instrument 9
	db $a1,$06			;CMD Track detune
	db $c7			;Wait 8
	db $6b			;Volume 10
	db $cc			;Wait 13
	db $6a			;Volume 9
	db $ca			;Wait 11
	db $22			;Note A#3
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $92,$04			;CMD Portamento down
	db $cf			;Wait 16
	db $95,$04			;CMD Portamento up
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_001:
	db $2d			;Note A-4
	db $6c			;Volume 11
	db $7b			;Instrument 10
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $69			;Volume 8
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $4b			;Note D#7
	db $69			;Volume 8
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $4a			;Note D-7
	db $69			;Volume 8
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $4b			;Note D#7
	db $69			;Volume 8
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4a			;Note D-7
	db $68			;Volume 7
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4b			;Note D#7
	db $68			;Volume 7
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4a			;Note D-7
	db $68			;Volume 7
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4b			;Note D#7
	db $68			;Volume 7
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4a			;Note D-7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4b			;Note D#7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4a			;Note D-7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4b			;Note D#7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2d			;Note A-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4a			;Note D-7
	db $66			;Volume 5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4b			;Note D#7
	db $66			;Volume 5
					;Wait Repeat 2
	db $2d			;Note A-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4a			;Note D-7
	db $66			;Volume 5
					;Wait Repeat 2
	db $2f			;Note B-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4b			;Note D#7
	db $66			;Volume 5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_002:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_004:
	db $02			;Note D-1
	db $6b			;Volume 10
	db $7f			;Instrument 14
	db $a9,$08			; SCC Set Waveform 1
	db $c1			;Wait 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6d			;Volume 12
	db $ac,$03			; SCC Morph speed 3
					;Wait Repeat 1
	db $6e			;Volume 13
	db $9c,$10			; SCC Morph to Waveform 2
					;Wait Repeat 1
	db $6f			;Volume 14
	db $d7			;Wait 24
	db $9c,$68			; SCC Morph to Waveform 18
	db $e2			;Wait 35
	db $bf			;[End-Of-Track]
.track_005:
	db $32			;Note D-5
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $33			;Note D#5
	db $68			;Volume 7
					;Wait Repeat 4
	db $32			;Note D-5
	db $6a			;Volume 9
					;Wait Repeat 4
	db $33			;Note D#5
	db $67			;Volume 6
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $79			;Instrument 8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_006:
	db $22			;Note A#3
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $92,$04			;CMD Portamento down
	db $cf			;Wait 16
	db $95,$04			;CMD Portamento up
					;Wait Repeat 16
	db $43			;Note G-6
	db $6b			;Volume 10
	db $7b			;Instrument 10
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $4a			;Note D-7
	db $c1			;Wait 2
	db $43			;Note G-6
	db $69			;Volume 8
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $4a			;Note D-7
	db $c1			;Wait 2
	db $43			;Note G-6
	db $6b			;Volume 10
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $44			;Note G#6
	db $69			;Volume 8
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $44			;Note G#6
	db $68			;Volume 7
					;Wait Repeat 2
	db $4a			;Note D-7
	db $c1			;Wait 2
	db $43			;Note G-6
	db $66			;Volume 5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_007:
	db $c6			;Wait 7
	db $22			;Note A#3
	db $68			;Volume 7
	db $75			;Instrument 4
	db $92,$04			;CMD Portamento down
	db $cf			;Wait 16
	db $95,$04			;CMD Portamento up
	db $c8			;Wait 9
	db $39			;Note A-5
	db $69			;Volume 8
	db $7b			;Instrument 10
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $67			;Volume 6
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $39			;Note A-5
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $67			;Volume 6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $39			;Note A-5
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $66			;Volume 5
					;Wait Repeat 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $64			;Volume 3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_008:
	db $22			;Note A#3
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $92,$04			;CMD Portamento down
	db $cf			;Wait 16
	db $95,$04			;CMD Portamento up
	db $ce			;Wait 15
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $20			;Note G#3
	db $6c			;Volume 11
	db $7a			;Instrument 9
	db $a1,$00			;CMD Track detune
	db $c7			;Wait 8
	db $1e			;Note F#3
	db $c3			;Wait 4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
	db $c1			;Wait 2
	db $67			;Volume 6
					;Wait Repeat 2
	db $60			;Release 96
	db $cb			;Wait 12
	db $bf			;[End-Of-Track]
.track_012:
	db $c4			;Wait 5
	db $21			;Note A-3
	db $68			;Volume 7
	db $75			;Instrument 4
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 2
	db $28			;Note E-4
	db $c5			;Wait 6
	db $27			;Note D#4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $c7			;Wait 8
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $24			;Note C-4
	db $c5			;Wait 6
	db $20			;Note G#3
	db $c1			;Wait 2
	db $26			;Note D-4
	db $cb			;Wait 12
	db $25			;Note C#4
	db $c3			;Wait 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $20			;Note G#3
	db $bf			;[End-Of-Track]
.track_013:
	db $32			;Note D-5
	db $6d			;Volume 12
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $33			;Note D#5
	db $6a			;Volume 9
					;Wait Repeat 4
	db $32			;Note D-5
	db $6c			;Volume 11
					;Wait Repeat 4
	db $33			;Note D#5
	db $69			;Volume 8
					;Wait Repeat 4
	db $32			;Note D-5
	db $68			;Volume 7
					;Wait Repeat 4
	db $33			;Note D#5
	db $67			;Volume 6
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_014:
	db $28			;Note E-4
	db $6d			;Volume 12
	db $79			;Instrument 8
	db $c0			;Wait 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $27			;Note D#4
	db $6d			;Volume 12
	db $79			;Instrument 8
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $c5			;Wait 6
	db $94,$46		;CMD Vibrato
					;Wait Repeat 6
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $26			;Note D-4
	db $c1			;Wait 2
	db $24			;Note C-4
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $6b			;Volume 10
	db $c4			;Wait 5
	db $20			;Note G#3
	db $6d			;Volume 12
	db $79			;Instrument 8
	db $c1			;Wait 2
	db $26			;Note D-4
	db $c4			;Wait 5
	db $94,$46		;CMD Vibrato
	db $c6			;Wait 7
	db $25			;Note C#4
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $24			;Note C-4
					;Wait Repeat 4
	db $20			;Note G#3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_015:
	db $c0			;Wait 1
	db $21			;Note A-3
	db $68			;Volume 7
	db $75			;Instrument 4
	db $a1,$03			;CMD Track detune
	db $c1			;Wait 2
	db $28			;Note E-4
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
	db $c1			;Wait 2
	db $27			;Note D#4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c8			;Wait 9
	db $26			;Note D-4
	db $69			;Volume 8
	db $79			;Instrument 8
	db $a1,$00			;CMD Track detune
	db $c1			;Wait 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $23			;Note B-3
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $27			;Note D#4
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $6b			;Volume 10
	db $c6			;Wait 7
	db $21			;Note A-3
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $c5			;Wait 6
	db $6a			;Volume 9
	db $c2			;Wait 3
	db $69			;Volume 8
					;Wait Repeat 3
	db $68			;Volume 7
	db $c0			;Wait 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $65			;Volume 4
					;Wait Repeat 1
	db $64			;Volume 3
					;Wait Repeat 1
	db $63			;Volume 2
					;Wait Repeat 1
	db $60			;Release 96
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_016:
	db $c2			;Wait 3
	db $1f			;Note G-3
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $c5			;Wait 6
	db $1b			;Note D#3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $cb			;Wait 12
	db $14			;Note G#2
	db $c3			;Wait 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $0f			;Note D#2
	db $bf			;[End-Of-Track]
.track_017:
	db $2d			;Note A-4
	db $6c			;Volume 11
	db $7b			;Instrument 10
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $69			;Volume 8
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $4b			;Note D#7
	db $69			;Volume 8
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $4a			;Note D-7
	db $69			;Volume 8
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $4b			;Note D#7
	db $69			;Volume 8
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4a			;Note D-7
	db $68			;Volume 7
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4b			;Note D#7
	db $68			;Volume 7
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4a			;Note D-7
	db $68			;Volume 7
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4b			;Note D#7
	db $68			;Volume 7
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_018:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_020:
	db $1f			;Note G-3
	db $6d			;Volume 12
	db $79			;Instrument 8
	db $c5			;Wait 6
	db $1b			;Note D#3
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $c3			;Wait 4
	db $94,$46		;CMD Vibrato
	db $c7			;Wait 8
	db $14			;Note G#2
	db $6d			;Volume 12
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $0f			;Note D#2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_021:
	db $32			;Note D-5
	db $6d			;Volume 12
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $33			;Note D#5
	db $6a			;Volume 9
					;Wait Repeat 4
	db $32			;Note D-5
	db $6c			;Volume 11
					;Wait Repeat 4
	db $33			;Note D#5
	db $69			;Volume 8
					;Wait Repeat 4
	db $32			;Note D-5
	db $68			;Volume 7
					;Wait Repeat 4
	db $33			;Note D#5
	db $67			;Volume 6
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_022:
	db $22			;Note A#3
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $a9,$50			; SCC Set Waveform 13
	db $c7			;Wait 8
	db $26			;Note D-4
	db $c9			;Wait 10
	db $ac,$03			; SCC Morph speed 3
	db $c0			;Wait 1
	db $9c,$00			; SCC Morph to Waveform 0
	db $cc			;Wait 13
	db $bf			;[End-Of-Track]
.track_023:
	db $27			;Note D#4
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c7			;Wait 8
	db $29			;Note F-4
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_024:
	db $22			;Note A#3
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $92,$04			;CMD Portamento down
	db $cf			;Wait 16
	db $95,$04			;CMD Portamento up
					;Wait Repeat 16
	db $4f			;Note G-7
	db $6d			;Volume 12
	db $81			;Instrument 16
	db $9b			;CMD End 
	db $c5			;Wait 6
	db $4f			;Note G-7
	db $6b			;Volume 10
					;Wait Repeat 6
	db $4f			;Note G-7
	db $6a			;Volume 9
					;Wait Repeat 6
	db $51			;Note A-7
	db $6a			;Volume 9
	db $83			;Instrument 18
	db $c4			;Wait 5
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_025:
	db $2d			;Note A-4
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4b			;Note D#7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4a			;Note D-7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4b			;Note D#7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2d			;Note A-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4a			;Note D-7
	db $66			;Volume 5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4b			;Note D#7
	db $66			;Volume 5
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4a			;Note D-7
	db $68			;Volume 7
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4b			;Note D#7
	db $68			;Volume 7
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4a			;Note D-7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4b			;Note D#7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4a			;Note D-7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4b			;Note D#7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2d			;Note A-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4a			;Note D-7
	db $66			;Volume 5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4b			;Note D#7
	db $66			;Volume 5
					;Wait Repeat 2
	db $2d			;Note A-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4a			;Note D-7
	db $66			;Volume 5
					;Wait Repeat 2
	db $2f			;Note B-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4b			;Note D#7
	db $66			;Volume 5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_029:
	db $0e			;Note D-2
	db $6e			;Volume 13
	db $79			;Instrument 8
	db $cb			;Wait 12
	db $33			;Note D#5
	db $67			;Volume 6
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $33			;Note D#5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_030:
	db $43			;Note G-6
	db $6b			;Volume 10
	db $7b			;Instrument 10
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $4a			;Note D-7
	db $c1			;Wait 2
	db $43			;Note G-6
	db $69			;Volume 8
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $4a			;Note D-7
	db $c1			;Wait 2
	db $43			;Note G-6
	db $6b			;Volume 10
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $44			;Note G#6
	db $69			;Volume 8
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $44			;Note G#6
	db $68			;Volume 7
					;Wait Repeat 2
	db $4a			;Note D-7
	db $c1			;Wait 2
	db $43			;Note G-6
	db $66			;Volume 5
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_031:
	db $39			;Note A-5
	db $69			;Volume 8
	db $7b			;Instrument 10
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $67			;Volume 6
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $39			;Note A-5
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $67			;Volume 6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $39			;Note A-5
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $66			;Volume 5
					;Wait Repeat 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $64			;Volume 3
	db $e1			;Wait 34
	db $bf			;[End-Of-Track]
.track_032:
	db $0c			;Note C-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$01		;CMD Envelope multiplier high
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $84			;Instrument 19
	db $c7			;Wait 8
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $86			;Instrument 21
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $71			;Instrument 0
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $70			;Volume 15
					;Wait Repeat 4
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $86			;Instrument 21
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $86			;Instrument 21
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_033:
	db $49			;Note C#7
	db $6b			;Volume 10
	db $7b			;Instrument 10
	db $a5,$20		;CMD Envelope multiplier low
	db $c1			;Wait 2
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $49			;Note C#7
	db $68			;Volume 7
					;Wait Repeat 1
	db $42			;Note F#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $42			;Note F#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $44			;Note G#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $44			;Note G#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $42			;Note F#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $42			;Note F#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $44			;Note G#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $44			;Note G#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $49			;Note C#7
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $49			;Note C#7
	db $68			;Volume 7
					;Wait Repeat 1
	db $42			;Note F#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $42			;Note F#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $44			;Note G#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $44			;Note G#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $49			;Note C#7
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $49			;Note C#7
	db $68			;Volume 7
					;Wait Repeat 1
	db $42			;Note F#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $42			;Note F#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $44			;Note G#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $44			;Note G#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $49			;Note C#7
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $49			;Note C#7
	db $68			;Volume 7
					;Wait Repeat 1
	db $42			;Note F#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $42			;Note F#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $44			;Note G#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $44			;Note G#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $49			;Note C#7
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $49			;Note C#7
	db $68			;Volume 7
					;Wait Repeat 1
	db $42			;Note F#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $42			;Note F#6
	db $68			;Volume 7
	db $bf			;[End-Of-Track]
.track_036:
	db $0f			;Note D#2
	db $6f			;Volume 14
	db $78			;Instrument 7
	db $a9,$08			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $0f			;Note D#2
	db $c7			;Wait 8
	db $0d			;Note C#2
					;Wait Repeat 8
	db $0f			;Note D#2
	db $c3			;Wait 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $0d			;Note C#2
	db $c7			;Wait 8
	db $0f			;Note D#2
					;Wait Repeat 8
	db $08			;Note G#1
	db $c3			;Wait 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $0d			;Note C#2
					;Wait Repeat 4
	db $0f			;Note D#2
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_037:
	db $20			;Note G#3
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $a9,$30			; SCC Set Waveform 6
	db $c3			;Wait 4
	db $20			;Note G#3
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $90,$02			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
	db $c1			;Wait 2
	db $20			;Note G#3
	db $68			;Volume 7
	db $90,$02			;CMD Portamento tone
	db $c8			;Wait 9
	db $ac,$04			; SCC Morph speed 4
	db $c2			;Wait 3
	db $9c,$00			; SCC Morph to Waveform 0
	db $cd			;Wait 14
	db $20			;Note G#3
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $a9,$30			; SCC Set Waveform 6
	db $c3			;Wait 4
	db $20			;Note G#3
	db $6b			;Volume 10
	db $a9,$30			; SCC Set Waveform 6
	db $c1			;Wait 2
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $90,$02			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
	db $c3			;Wait 4
	db $20			;Note G#3
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $a9,$30			; SCC Set Waveform 6
					;Wait Repeat 4
	db $20			;Note G#3
	db $6b			;Volume 10
					;Wait Repeat 4
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_038:
	db $25			;Note C#4
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $25			;Note C#4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $24			;Note C-4
	db $6b			;Volume 10
	db $90,$02			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
	db $c1			;Wait 2
	db $25			;Note C#4
	db $68			;Volume 7
	db $90,$02			;CMD Portamento tone
	db $cb			;Wait 12
	db $aa				; SCC Morph foloow (Carbon C0poy) 0
	db $cd			;Wait 14
	db $25			;Note C#4
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $a9,$38			; SCC Set Waveform 7
	db $c3			;Wait 4
	db $25			;Note C#4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $24			;Note C-4
	db $6b			;Volume 10
	db $90,$02			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
	db $c3			;Wait 4
	db $25			;Note C#4
	db $6b			;Volume 10
	db $7e			;Instrument 13
					;Wait Repeat 4
	db $25			;Note C#4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_039:
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6b			;Volume 10
	db $90,$02			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $68			;Volume 7
	db $90,$02			;CMD Portamento tone
	db $d9			;Wait 26
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6b			;Volume 10
	db $90,$02			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $7e			;Instrument 13
					;Wait Repeat 4
	db $2a			;Note F#4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_041:
	db $3c			;Note C-6
	db $6b			;Volume 10
	db $7b			;Instrument 10
	db $a5,$20		;CMD Envelope multiplier low
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $41			;Note F-6
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $41			;Note F-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $3c			;Note C-6
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $3c			;Note C-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $41			;Note F-6
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $41			;Note F-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $3c			;Note C-6
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $3c			;Note C-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $41			;Note F-6
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $41			;Note F-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $3c			;Note C-6
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $3c			;Note C-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $41			;Note F-6
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $41			;Note F-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $3c			;Note C-6
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $3c			;Note C-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $41			;Note F-6
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $41			;Note F-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $3c			;Note C-6
	db $6b			;Volume 10
					;Wait Repeat 1
	db $30			;Note C-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $30			;Note C-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $3c			;Note C-6
	db $68			;Volume 7
	db $bf			;[End-Of-Track]
.track_044:
	db $0e			;Note D-2
	db $6f			;Volume 14
	db $78			;Instrument 7
	db $a9,$08			; SCC Set Waveform 1
	db $c3			;Wait 4
	db $0e			;Note D-2
	db $c7			;Wait 8
	db $0c			;Note C-2
					;Wait Repeat 8
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $09			;Note A-1
	db $c7			;Wait 8
	db $0c			;Note C-2
					;Wait Repeat 8
	db $0e			;Note D-2
					;Wait Repeat 8
	db $07			;Note G-1
	db $c3			;Wait 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $0e			;Note D-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_045:
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $a9,$20			; SCC Set Waveform 4
	db $c3			;Wait 4
	db $24			;Note C-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $23			;Note B-3
	db $6b			;Volume 10
	db $90,$02			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
	db $c1			;Wait 2
	db $24			;Note C-4
	db $68			;Volume 7
	db $90,$02			;CMD Portamento tone
	db $c8			;Wait 9
	db $ac,$04			; SCC Morph speed 4
	db $c2			;Wait 3
	db $9c,$00			; SCC Morph to Waveform 0
	db $cd			;Wait 14
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $a9,$20			; SCC Set Waveform 4
	db $c3			;Wait 4
	db $24			;Note C-4
	db $6b			;Volume 10
	db $a9,$20			; SCC Set Waveform 4
	db $c1			;Wait 2
	db $23			;Note B-3
	db $6b			;Volume 10
	db $90,$02			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
	db $c3			;Wait 4
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $a9,$20			; SCC Set Waveform 4
					;Wait Repeat 4
	db $24			;Note C-4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_046:
	db $29			;Note F-4
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $a9,$30			; SCC Set Waveform 6
	db $c3			;Wait 4
	db $29			;Note F-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $28			;Note E-4
	db $6b			;Volume 10
	db $90,$02			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
	db $c1			;Wait 2
	db $29			;Note F-4
	db $68			;Volume 7
	db $90,$02			;CMD Portamento tone
	db $cb			;Wait 12
	db $aa				; SCC Morph foloow (Carbon C0poy) 0
	db $cd			;Wait 14
	db $29			;Note F-4
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $a9,$30			; SCC Set Waveform 6
	db $c3			;Wait 4
	db $29			;Note F-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $28			;Note E-4
	db $6b			;Volume 10
	db $90,$02			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
	db $c3			;Wait 4
	db $29			;Note F-4
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $29			;Note F-4
	db $6b			;Volume 10
	db $a9,$30			; SCC Set Waveform 6
					;Wait Repeat 4
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_047:
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $90,$02			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $68			;Volume 7
	db $90,$02			;CMD Portamento tone
	db $d9			;Wait 26
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7e			;Instrument 13
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $6b			;Volume 10
	db $90,$02			;CMD Portamento tone
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7e			;Instrument 13
					;Wait Repeat 4
	db $2b			;Note G-4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $6a			;Volume 9
	db $c1			;Wait 2
	db $69			;Volume 8
	db $c0			;Wait 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_048:
	db $0c			;Note C-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $84			;Instrument 19
	db $c7			;Wait 8
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $86			;Instrument 21
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $71			;Instrument 0
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $70			;Volume 15
					;Wait Repeat 4
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $86			;Instrument 21
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $73			;Instrument 2
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $86			;Instrument 21
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_049:
	db $0d			;Note C#2
	db $6b			;Volume 10
	db $7a			;Instrument 9
	db $a1,$06			;CMD Track detune
	db $c3			;Wait 4
	db $0c			;Note C-2
					;Wait Repeat 4
	db $0a			;Note A#1
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $05			;Note F-1
					;Wait Repeat 4
	db $01			;Note C#1
					;Wait Repeat 4
	db $08			;Note G#1
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $6b			;Volume 10
	db $a1,$00			;CMD Track detune
	db $cf			;Wait 16
	db $07			;Note G-1
	db $6b			;Volume 10
	db $a1,$06			;CMD Track detune
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_052:
	db $19			;Note C#3
	db $68			;Volume 7
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $18			;Note C-3
	db $69			;Volume 8
					;Wait Repeat 4
	db $16			;Note A#2
	db $6a			;Volume 9
					;Wait Repeat 4
	db $15			;Note A-2
	db $6b			;Volume 10
					;Wait Repeat 4
	db $13			;Note G-2
	db $6d			;Volume 12
					;Wait Repeat 4
	db $11			;Note F-2
	db $6e			;Volume 13
					;Wait Repeat 4
	db $0d			;Note C#2
	db $6f			;Volume 14
					;Wait Repeat 4
	db $08			;Note G#1
					;Wait Repeat 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $07			;Note G-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_053:
	db $25			;Note C#4
	db $6a			;Volume 9
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $29			;Note F-4
	db $c3			;Wait 4
	db $2a			;Note F#4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $6c			;Volume 11
					;Wait Repeat 4
	db $2e			;Note A#4
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $2a			;Note F#4
	db $c3			;Wait 4
	db $35			;Note F-5
	db $66			;Volume 5
	db $85			;Instrument 20
	db $c1			;Wait 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_054:
	db $2a			;Note F#4
	db $6a			;Volume 9
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $2c			;Note G#4
	db $c3			;Wait 4
	db $2e			;Note A#4
	db $6b			;Volume 10
					;Wait Repeat 4
	db $30			;Note C-5
	db $c3			;Wait 4
	db $31			;Note C#5
	db $6c			;Volume 11
					;Wait Repeat 4
	db $33			;Note D#5
					;Wait Repeat 4
	db $35			;Note F-5
					;Wait Repeat 4
	db $31			;Note C#5
	db $c3			;Wait 4
	db $31			;Note C#5
	db $79			;Instrument 8
	db $a9,$30			; SCC Set Waveform 6
	db $cf			;Wait 16
	db $2e			;Note A#4
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_055:
	db $2e			;Note A#4
	db $6a			;Volume 9
	db $7c			;Instrument 11
	db $c3			;Wait 4
	db $30			;Note C-5
	db $c3			;Wait 4
	db $31			;Note C#5
	db $6b			;Volume 10
					;Wait Repeat 4
	db $33			;Note D#5
	db $c3			;Wait 4
	db $35			;Note F-5
	db $6c			;Volume 11
					;Wait Repeat 4
	db $37			;Note G-5
					;Wait Repeat 4
	db $38			;Note G#5
					;Wait Repeat 4
	db $3a			;Note A#5
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $79			;Instrument 8
	db $c4			;Wait 5
	db $94,$26		;CMD Vibrato
	db $ca			;Wait 11
	db $33			;Note D#5
	db $9b			;CMD End 
	db $c4			;Wait 5
	db $94,$46		;CMD Vibrato
	db $ca			;Wait 11
	db $bf			;[End-Of-Track]
.track_056:
	db $21			;Note A-3
	db $6e			;Volume 13
	db $72			;Instrument 1
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $86			;Instrument 21
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
					;Wait Repeat 2
	db $1d			;Note F-3
	db $6b			;Volume 10
	db $74			;Instrument 3
	db $d3			;Wait 20
	db $4f			;Note G-7
	db $6e			;Volume 13
	db $81			;Instrument 16
	db $c5			;Wait 6
	db $4f			;Note G-7
	db $6b			;Volume 10
					;Wait Repeat 6
	db $4f			;Note G-7
	db $6a			;Volume 9
					;Wait Repeat 6
	db $51			;Note A-7
	db $6b			;Volume 10
	db $82			;Instrument 17
	db $c4			;Wait 5
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_057:
	db $07			;Note G-1
	db $6b			;Volume 10
	db $7a			;Instrument 9
	db $a1,$06			;CMD Track detune
	db $cf			;Wait 16
	db $29			;Note F-4
	db $6b			;Volume 10
	db $a1,$00			;CMD Track detune
	db $c2			;Wait 3
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $29			;Note F-4
	db $6b			;Volume 10
	db $c5			;Wait 6
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $69			;Volume 8
	db $c1			;Wait 2
	db $22			;Note A#3
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $92,$04			;CMD Portamento down
	db $cf			;Wait 16
	db $95,$04			;CMD Portamento up
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_060:
	db $13			;Note G-2
	db $6f			;Volume 14
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $07			;Note G-1
					;Wait Repeat 4
	db $07			;Note G-1
	db $c3			;Wait 4
	db $07			;Note G-1
	db $92,$0d			;CMD Portamento down
	db $c0			;Wait 1
	db $9c,$00			; SCC Morph to Waveform 0
	db $c4			;Wait 5
	db $60			;Release 96
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $30			;Note C-5
	db $67			;Volume 6
	db $7e			;Instrument 13
	db $a9,$78			; SCC Set Waveform 20
	db $c3			;Wait 4
	db $30			;Note C-5
	db $cb			;Wait 12
	db $2e			;Note A#4
	db $c3			;Wait 4
	db $2e			;Note A#4
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $30			;Note C-5
	db $bf			;[End-Of-Track]
.track_061:
	db $35			;Note F-5
	db $66			;Volume 5
	db $85			;Instrument 20
	db $c1			;Wait 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $37			;Note G-5
	db $c1			;Wait 2
	db $44			;Note G#6
	db $6a			;Volume 9
	db $7b			;Instrument 10
					;Wait Repeat 2
	db $41			;Note F-6
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $44			;Note G#6
	db $66			;Volume 5
					;Wait Repeat 1
	db $3d			;Note C#6
	db $6a			;Volume 9
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $41			;Note F-6
	db $66			;Volume 5
					;Wait Repeat 1
	db $3c			;Note C-6
	db $6a			;Volume 9
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3d			;Note C#6
	db $66			;Volume 5
					;Wait Repeat 1
	db $3b			;Note B-5
	db $6a			;Volume 9
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3c			;Note C-6
	db $66			;Volume 5
					;Wait Repeat 1
	db $37			;Note G-5
	db $6a			;Volume 9
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3b			;Note B-5
	db $66			;Volume 5
					;Wait Repeat 1
	db $35			;Note F-5
	db $6a			;Volume 9
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $66			;Volume 5
					;Wait Repeat 1
	db $31			;Note C#5
	db $6a			;Volume 9
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $35			;Note F-5
	db $66			;Volume 5
	db $c0			;Wait 1
	db $25			;Note C#4
	db $67			;Volume 6
	db $7e			;Instrument 13
	db $a9,$18			; SCC Set Waveform 3
	db $c3			;Wait 4
	db $25			;Note C#4
	db $cb			;Wait 12
	db $23			;Note B-3
	db $c3			;Wait 4
	db $23			;Note B-3
					;Wait Repeat 4
	db $25			;Note C#4
					;Wait Repeat 4
	db $25			;Note C#4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_062:
	db $2d			;Note A-4
	db $6c			;Volume 11
	db $79			;Instrument 8
	db $a9,$30			; SCC Set Waveform 6
	db $c4			;Wait 5
	db $94,$46		;CMD Vibrato
	db $c9			;Wait 10
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $6b			;Volume 10
	db $a9,$40			; SCC Set Waveform 9
	db $c2			;Wait 3
	db $68			;Volume 7
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $c4			;Wait 5
	db $94,$46		;CMD Vibrato
	db $c6			;Wait 7
	db $2b			;Note G-4
	db $6b			;Volume 10
	db $7d			;Instrument 12
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $cb			;Wait 12
	db $29			;Note F-4
	db $c3			;Wait 4
	db $29			;Note F-4
					;Wait Repeat 4
	db $2b			;Note G-4
					;Wait Repeat 4
	db $2b			;Note G-4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_063:
	db $32			;Note D-5
	db $6c			;Volume 11
	db $79			;Instrument 8
	db $9b			;CMD End 
	db $c4			;Wait 5
	db $94,$46		;CMD Vibrato
	db $ca			;Wait 11
	db $31			;Note C#5
	db $6b			;Volume 10
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $68			;Volume 7
	db $c0			;Wait 1
	db $31			;Note C#5
	db $6b			;Volume 10
	db $79			;Instrument 8
	db $c4			;Wait 5
	db $94,$46		;CMD Vibrato
	db $c6			;Wait 7
	db $30			;Note C-5
	db $6b			;Volume 10
	db $7d			;Instrument 12
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $30			;Note C-5
	db $cb			;Wait 12
	db $2e			;Note A#4
	db $c3			;Wait 4
	db $2e			;Note A#4
					;Wait Repeat 4
	db $30			;Note C-5
					;Wait Repeat 4
	db $30			;Note C-5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_064:
	db $f6			;Wait 55
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c8			;Wait 9
	db $bf			;[End-Of-Track]
.track_065:
	db $92,$05			;CMD Portamento down
	db $cf			;Wait 16
	db $95,$05			;CMD Portamento up
					;Wait Repeat 16
	db $92,$05			;CMD Portamento down
					;Wait Repeat 16
	db $95,$05			;CMD Portamento up
	db $ce			;Wait 15
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_068:
	db $c2			;Wait 3
	db $2d			;Note A-4
	db $68			;Volume 7
	db $7e			;Instrument 13
	db $a9,$78			; SCC Set Waveform 20
	db $c5			;Wait 6
	db $67			;Volume 6
	db $c2			;Wait 3
	db $66			;Volume 5
	db $c1			;Wait 2
	db $65			;Volume 4
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $66			;Volume 5
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $c7			;Wait 8
	db $29			;Note F-4
	db $c7			;Wait 8
	db $27			;Note D#4
	db $68			;Volume 7
	db $7e			;Instrument 13
	db $a9,$90			; SCC Set Waveform 25
	db $c0			;Wait 1
	db $a8				; SCC Soften Waveform
	db $c6			;Wait 7
	db $26			;Note D-4
	db $c7			;Wait 8
	db $1e			;Note F#3
					;Wait Repeat 8
	db $23			;Note B-3
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_069:
	db $22			;Note A#3
	db $67			;Volume 6
	db $7e			;Instrument 13
	db $a9,$28			; SCC Set Waveform 5
	db $c3			;Wait 4
	db $66			;Volume 5
	db $c2			;Wait 3
	db $65			;Volume 4
					;Wait Repeat 3
	db $64			;Volume 3
	db $c1			;Wait 2
	db $23			;Note B-3
	db $67			;Volume 6
	db $c3			;Wait 4
	db $20			;Note G#3
	db $c7			;Wait 8
	db $1e			;Note F#3
	db $c7			;Wait 8
	db $20			;Note G#3
	db $6b			;Volume 10
	db $87			;Instrument 22
					;Wait Repeat 8
	db $23			;Note B-3
	db $6b			;Volume 10
					;Wait Repeat 8
	db $1e			;Note F#3
	db $6b			;Volume 10
	db $c6			;Wait 7
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
	db $bf			;[End-Of-Track]
.track_070:
	db $28			;Note E-4
	db $6b			;Volume 10
	db $7d			;Instrument 12
	db $c3			;Wait 4
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $65			;Volume 4
	db $c2			;Wait 3
	db $29			;Note F-4
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $26			;Note D-4
	db $c7			;Wait 8
	db $24			;Note C-4
	db $c7			;Wait 8
	db $24			;Note C-4
	db $6b			;Volume 10
	db $87			;Instrument 22
					;Wait Repeat 8
	db $6a			;Volume 9
	db $cf			;Wait 16
	db $23			;Note B-3
	db $6b			;Volume 10
	db $87			;Instrument 22
	db $c2			;Wait 3
	db $6a			;Volume 9
					;Wait Repeat 3
	db $69			;Volume 8
	db $c0			;Wait 1
	db $68			;Volume 7
	db $bf			;[End-Of-Track]
.track_071:
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $7d			;Instrument 12
	db $c3			;Wait 4
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
					;Wait Repeat 1
	db $67			;Volume 6
					;Wait Repeat 1
	db $66			;Volume 5
					;Wait Repeat 1
	db $65			;Volume 4
	db $c2			;Wait 3
	db $2e			;Note A#4
	db $6b			;Volume 10
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $c7			;Wait 8
	db $29			;Note F-4
	db $c7			;Wait 8
	db $27			;Note D#4
	db $6b			;Volume 10
	db $87			;Instrument 22
	db $c3			;Wait 4
	db $94,$46		;CMD Vibrato
					;Wait Repeat 4
	db $26			;Note D-4
	db $6b			;Volume 10
	db $9b			;CMD End 
	db $c7			;Wait 8
	db $6a			;Volume 9
					;Wait Repeat 8
	db $6a			;Volume 9
	db $c2			;Wait 3
	db $69			;Volume 8
	db $c1			;Wait 2
	db $68			;Volume 7
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_073:
	db $2a			;Note F#4
	db $69			;Volume 8
	db $7a			;Instrument 9
	db $a1,$00			;CMD Track detune
	db $cf			;Wait 16
	db $68			;Volume 7
					;Wait Repeat 16
	db $67			;Volume 6
	db $d9			;Wait 26
	db $2d			;Note A-4
	db $6b			;Volume 10
	db $85			;Instrument 20
	db $a1,$01			;CMD Track detune
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $c0			;Wait 1
	db $31			;Note C#5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $32			;Note D-5
	db $bf			;[End-Of-Track]
.track_076:
	db $12			;Note F#2
	db $6f			;Volume 14
	db $78			;Instrument 7
	db $c3			;Wait 4
	db $12			;Note F#2
	db $c7			;Wait 8
	db $0d			;Note C#2
					;Wait Repeat 8
	db $0b			;Note B-1
	db $c3			;Wait 4
	db $10			;Note E-2
	db $cb			;Wait 12
	db $12			;Note F#2
	db $c7			;Wait 8
	db $0d			;Note C#2
					;Wait Repeat 8
	db $0b			;Note B-1
	db $c3			;Wait 4
	db $10			;Note E-2
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_077:
	db $24			;Note C-4
	db $6d			;Volume 12
	db $87			;Instrument 22
	db $a1,$00			;CMD Track detune
	db $c6			;Wait 7
	db $94,$45		;CMD Vibrato
	db $c3			;Wait 4
	db $ac,$05			; SCC Morph speed 5
	db $c2			;Wait 3
	db $9c,$00			; SCC Morph to Waveform 0
	db $e8			;Wait 41
	db $2d			;Note A-4
	db $6f			;Volume 14
	db $85			;Instrument 20
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $c0			;Wait 1
	db $31			;Note C#5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $32			;Note D-5
	db $c0			;Wait 1
	db $34			;Note E-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $36			;Note F#5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_078:
	db $21			;Note A-3
	db $69			;Volume 8
	db $7f			;Instrument 14
	db $a1,$00			;CMD Track detune
	db $c5			;Wait 6
	db $94,$44		;CMD Vibrato
	db $d1			;Wait 18
	db $69			;Volume 8
	db $c7			;Wait 8
	db $6a			;Volume 9
					;Wait Repeat 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6c			;Volume 11
	db $ce			;Wait 15
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_079:
	db $26			;Note D-4
	db $69			;Volume 8
	db $7f			;Instrument 14
	db $a1,$00			;CMD Track detune
	db $c5			;Wait 6
	db $94,$44		;CMD Vibrato
	db $d1			;Wait 18
	db $69			;Volume 8
	db $c7			;Wait 8
	db $6a			;Volume 9
					;Wait Repeat 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6c			;Volume 11
	db $ce			;Wait 15
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_081:
	db $2d			;Note A-4
	db $68			;Volume 7
	db $7a			;Instrument 9
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $6a			;Volume 9
	db $76			;Instrument 5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $2f			;Note B-4
	db $c0			;Wait 1
	db $31			;Note C#5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $32			;Note D-5
	db $c0			;Wait 1
	db $34			;Note E-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $36			;Note F#5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $38			;Note G#5
	db $c0			;Wait 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $38			;Note G#5
	db $c2			;Wait 3
	db $94,$44		;CMD Vibrato
	db $c7			;Wait 8
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $36			;Note F#5
	db $6a			;Volume 9
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $39			;Note A-5
	db $c0			;Wait 1
	db $36			;Note F#5
	db $c3			;Wait 4
	db $39			;Note A-5
	db $c0			;Wait 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $3b			;Note B-5
	db $c3			;Wait 4
	db $94,$24		;CMD Vibrato
	db $c4			;Wait 5
	db $39			;Note A-5
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $94,$44		;CMD Vibrato
					;Wait Repeat 4
	db $38			;Note G#5
	db $9b			;CMD End 
					;Wait Repeat 4
	db $94,$44		;CMD Vibrato
					;Wait Repeat 4
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_085:
	db $38			;Note G#5
	db $6f			;Volume 14
	db $85			;Instrument 20
	db $c0			;Wait 1
	db $39			;Note A-5
					;Wait Repeat 1
	db $38			;Note G#5
	db $c0			;Wait 1
	db $ac,$04			; SCC Morph speed 4
					;Wait Repeat 1
	db $9c,$80			; SCC Morph to Waveform 21
	db $c1			;Wait 2
	db $94,$44		;CMD Vibrato
	db $cb			;Wait 12
	db $9c,$48			; SCC Morph to Waveform 11
	db $c5			;Wait 6
	db $36			;Note F#5
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $39			;Note A-5
	db $c0			;Wait 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $3b			;Note B-5
	db $c4			;Wait 5
	db $94,$24		;CMD Vibrato
	db $c3			;Wait 4
	db $9c,$80			; SCC Morph to Waveform 21
	db $c4			;Wait 5
	db $39			;Note A-5
	db $9b			;CMD End 
	db $c7			;Wait 8
	db $38			;Note G#5
					;Wait Repeat 8
	db $36			;Note F#5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_086:
	db $25			;Note C#4
	db $69			;Volume 8
	db $7f			;Instrument 14
	db $a1,$00			;CMD Track detune
	db $c5			;Wait 6
	db $94,$44		;CMD Vibrato
	db $d1			;Wait 18
	db $69			;Volume 8
	db $c7			;Wait 8
	db $6a			;Volume 9
					;Wait Repeat 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6c			;Volume 11
	db $ce			;Wait 15
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_087:
	db $27			;Note D#4
	db $69			;Volume 8
	db $7f			;Instrument 14
	db $a1,$00			;CMD Track detune
	db $c5			;Wait 6
	db $94,$44		;CMD Vibrato
	db $d1			;Wait 18
	db $69			;Volume 8
	db $c7			;Wait 8
	db $6a			;Volume 9
					;Wait Repeat 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6c			;Volume 11
	db $ce			;Wait 15
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_089:
	db $2a			;Note F#4
	db $68			;Volume 7
	db $7a			;Instrument 9
	db $a1,$00			;CMD Track detune
	db $cf			;Wait 16
	db $34			;Note E-5
	db $6a			;Volume 9
	db $76			;Instrument 5
	db $c3			;Wait 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $39			;Note A-5
	db $c2			;Wait 3
	db $94,$44		;CMD Vibrato
	db $c6			;Wait 7
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $26			;Note D-4
	db $6b			;Volume 10
	db $7a			;Instrument 9
	db $a1,$09			;CMD Track detune
	db $c3			;Wait 4
	db $25			;Note C#4
					;Wait Repeat 4
	db $2c			;Note G#4
	db $cf			;Wait 16
	db $2c			;Note G#4
	db $c3			;Wait 4
	db $30			;Note C-5
	db $bf			;[End-Of-Track]
.track_093:
	db $34			;Note E-5
	db $6f			;Volume 14
	db $85			;Instrument 20
	db $a9,$48			; SCC Set Waveform 11
	db $c3			;Wait 4
	db $32			;Note D-5
	db $c1			;Wait 2
	db $9c,$80			; SCC Morph to Waveform 21
					;Wait Repeat 2
	db $39			;Note A-5
	db $c5			;Wait 6
	db $94,$44		;CMD Vibrato
	db $d1			;Wait 18
	db $26			;Note D-4
	db $70			;Volume 15
	db $87			;Instrument 22
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $25			;Note C#4
					;Wait Repeat 4
	db $2c			;Note G#4
	db $c4			;Wait 5
	db $6f			;Volume 14
	db $c0			;Wait 1
	db $94,$44		;CMD Vibrato
					;Wait Repeat 1
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $6d			;Volume 12
					;Wait Repeat 2
	db $6c			;Volume 11
					;Wait Repeat 2
	db $6b			;Volume 10
	db $c2			;Wait 3
	db $2c			;Note G#4
	db $6f			;Volume 14
	db $87			;Instrument 22
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $30			;Note C-5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_094:
	db $2d			;Note A-4
	db $68			;Volume 7
	db $7f			;Instrument 14
	db $d7			;Wait 24
	db $69			;Volume 8
	db $c7			;Wait 8
	db $2d			;Note A-4
	db $6a			;Volume 9
	db $90,$50			;CMD Portamento tone
					;Wait Repeat 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6c			;Volume 11
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_095:
	db $2f			;Note B-4
	db $68			;Volume 7
	db $7f			;Instrument 14
	db $d7			;Wait 24
	db $69			;Volume 8
	db $c7			;Wait 8
	db $30			;Note C-5
	db $6a			;Volume 9
	db $90,$50			;CMD Portamento tone
					;Wait Repeat 8
	db $6b			;Volume 10
					;Wait Repeat 8
	db $6c			;Volume 11
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_096:
	db $4a			;Note D-7
	db $6b			;Volume 10
	db $7b			;Instrument 10
	db $c1			;Wait 2
	db $56			;Note D-8
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $54			;Note C-8
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $51			;Note A-7
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $50			;Note G#7
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $48			;Note C-7
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $45			;Note A-6
	db $c4			;Wait 5
	db $50			;Note G#7
	db $68			;Volume 7
	db $c1			;Wait 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $26			;Note D-4
	db $bf			;[End-Of-Track]
.track_097:
	db $23			;Note B-3
	db $6f			;Volume 14
	db $74			;Instrument 3
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $18			;Note C-3
	db $6e			;Volume 13
					;Wait Repeat 4
	db $08			;Note G#1
	db $6f			;Volume 14
	db $7b			;Instrument 10
					;Wait Repeat 4
	db $14			;Note G#2
	db $c3			;Wait 4
	db $14			;Note G#2
	db $6e			;Volume 13
					;Wait Repeat 4
	db $14			;Note G#2
	db $6d			;Volume 12
					;Wait Repeat 4
	db $14			;Note G#2
	db $6c			;Volume 11
					;Wait Repeat 4
	db $14			;Note G#2
	db $6b			;Volume 10
					;Wait Repeat 4
	db $24			;Note C-4
	db $6b			;Volume 10
	db $7a			;Instrument 9
	db $c7			;Wait 8
	db $6a			;Volume 9
	db $c2			;Wait 3
	db $69			;Volume 8
					;Wait Repeat 3
	db $68			;Volume 7
	db $c1			;Wait 2
	db $4f			;Note G-7
	db $6e			;Volume 13
	db $81			;Instrument 16
	db $c5			;Wait 6
	db $4f			;Note G-7
	db $6b			;Volume 10
					;Wait Repeat 6
	db $4f			;Note G-7
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_100:
	db $08			;Note G#1
	db $6b			;Volume 10
	db $7f			;Instrument 14
	db $a9,$08			; SCC Set Waveform 1
	db $c1			;Wait 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6d			;Volume 12
	db $ac,$03			; SCC Morph speed 3
					;Wait Repeat 1
	db $6e			;Volume 13
	db $9c,$10			; SCC Morph to Waveform 2
					;Wait Repeat 1
	db $6f			;Volume 14
	db $d7			;Wait 24
	db $9c,$68			; SCC Morph to Waveform 18
	db $c2			;Wait 3
	db $14			;Note G#2
	db $6f			;Volume 14
	db $78			;Instrument 7
	db $a9,$28			; SCC Set Waveform 5
	db $c3			;Wait 4
	db $13			;Note G-2
					;Wait Repeat 4
	db $12			;Note F#2
					;Wait Repeat 4
	db $0e			;Note D-2
					;Wait Repeat 4
	db $0c			;Note C-2
					;Wait Repeat 4
	db $08			;Note G#1
					;Wait Repeat 4
	db $0b			;Note B-1
					;Wait Repeat 4
	db $0c			;Note C-2
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_101:
	db $32			;Note D-5
	db $6f			;Volume 14
	db $87			;Instrument 22
	db $c3			;Wait 4
	db $94,$44		;CMD Vibrato
	db $c1			;Wait 2
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $6d			;Volume 12
	db $c4			;Wait 5
	db $6c			;Volume 11
					;Wait Repeat 5
	db $6b			;Volume 10
	db $cb			;Wait 12
	db $50			;Note G#7
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $4b			;Note D#7
					;Wait Repeat 2
	db $4a			;Note D-7
					;Wait Repeat 2
	db $45			;Note A-6
	db $c1			;Wait 2
	db $44			;Note G#6
	db $6a			;Volume 9
					;Wait Repeat 2
	db $3f			;Note D#6
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $39			;Note A-5
	db $c1			;Wait 2
	db $38			;Note G#5
	db $69			;Volume 8
					;Wait Repeat 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $68			;Volume 7
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_102:
	db $2a			;Note F#4
	db $68			;Volume 7
	db $7f			;Instrument 14
	db $a9,$18			; SCC Set Waveform 3
	db $c4			;Wait 5
	db $94,$44		;CMD Vibrato
	db $c0			;Wait 1
	db $67			;Volume 6
	db $c5			;Wait 6
	db $66			;Volume 5
	db $c4			;Wait 5
	db $65			;Volume 4
	db $ce			;Wait 15
	db $26			;Note D-4
	db $6a			;Volume 9
	db $7f			;Instrument 14
	db $9b			;CMD End 
	db $c5			;Wait 6
	db $94,$44		;CMD Vibrato
	db $c1			;Wait 2
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $6c			;Volume 11
	db $ce			;Wait 15
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_103:
	db $2d			;Note A-4
	db $68			;Volume 7
	db $7f			;Instrument 14
	db $c5			;Wait 6
	db $67			;Volume 6
	db $94,$44		;CMD Vibrato
					;Wait Repeat 6
	db $66			;Volume 5
	db $c4			;Wait 5
	db $65			;Volume 4
	db $ce			;Wait 15
	db $2a			;Note F#4
	db $6a			;Volume 9
	db $7f			;Instrument 14
	db $9b			;CMD End 
	db $c6			;Wait 7
	db $94,$44		;CMD Vibrato
	db $c0			;Wait 1
	db $6b			;Volume 10
	db $c7			;Wait 8
	db $6c			;Volume 11
	db $ce			;Wait 15
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_104:
	db $1f			;Note G-3
	db $6f			;Volume 14
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $18			;Note C-3
	db $6e			;Volume 13
					;Wait Repeat 4
	db $13			;Note G-2
	db $6d			;Volume 12
	db $ea			;Wait 43
	db $48			;Note C-7
	db $6b			;Volume 10
	db $7a			;Instrument 9
	db $c1			;Wait 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $30			;Note C-5
	db $bf			;[End-Of-Track]
.track_105:
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $86			;Instrument 21
	db $c7			;Wait 8
	db $4f			;Note G-7
	db $6e			;Volume 13
	db $81			;Instrument 16
	db $c3			;Wait 4
	db $4f			;Note G-7
	db $6b			;Volume 10
	db $82			;Instrument 17
	db $c3			;Wait 4
	db $25			;Note C#4
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $27			;Note D#4
	db $c4			;Wait 5
	db $28			;Note E-4
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $2a			;Note F#4
	db $c4			;Wait 5
	db $31			;Note C#5
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $33			;Note D#5
	db $c1			;Wait 2
	db $33			;Note D#5
	db $9a,$03			;CMD Note delay
	db $c2			;Wait 3
	db $34			;Note E-5
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
					;Wait Repeat 3
	db $36			;Note F#5
	db $c4			;Wait 5
	db $39			;Note A-5
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $38			;Note G#5
	db $cc			;Wait 13
	db $bf			;[End-Of-Track]
.track_108:
	db $01			;Note C#1
	db $6b			;Volume 10
	db $7f			;Instrument 14
	db $a9,$08			; SCC Set Waveform 1
	db $c1			;Wait 2
	db $6c			;Volume 11
	db $c0			;Wait 1
	db $6d			;Volume 12
	db $ac,$03			; SCC Morph speed 3
					;Wait Repeat 1
	db $6e			;Volume 13
	db $9c,$10			; SCC Morph to Waveform 2
					;Wait Repeat 1
	db $6f			;Volume 14
	db $d7			;Wait 24
	db $9c,$68			; SCC Morph to Waveform 18
	db $d2			;Wait 19
	db $48			;Note C-7
	db $6a			;Volume 9
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $44			;Note G#6
					;Wait Repeat 2
	db $41			;Note F-6
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_109:
	db $19			;Note C#3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $9b			;CMD End 
	db $c7			;Wait 8
	db $6f			;Volume 14
	db $c0			;Wait 1
	db $6e			;Volume 13
					;Wait Repeat 1
	db $6d			;Volume 12
					;Wait Repeat 1
	db $6b			;Volume 10
					;Wait Repeat 1
	db $6a			;Volume 9
	db $c0			;Wait 1
	db $1c			;Note E-3
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $20			;Note G#3
	db $c4			;Wait 5
	db $20			;Note G#3
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $21			;Note A-3
	db $c4			;Wait 5
	db $28			;Note E-4
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $2a			;Note F#4
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $9a,$03			;CMD Note delay
	db $c2			;Wait 3
	db $2c			;Note G#4
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
					;Wait Repeat 3
	db $2d			;Note A-4
	db $c4			;Wait 5
	db $32			;Note D-5
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $30			;Note C-5
	db $cd			;Wait 14
	db $30			;Note C-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_110:
	db $0d			;Note C#2
	db $6c			;Volume 11
	db $7a			;Instrument 9
	db $a1,$06			;CMD Track detune
	db $c7			;Wait 8
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $6a			;Volume 9
					;Wait Repeat 1
	db $69			;Volume 8
					;Wait Repeat 1
	db $68			;Volume 7
	db $c0			;Wait 1
	db $a1,$00			;CMD Track detune
					;Wait Repeat 1
	db $20			;Note G#3
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $23			;Note B-3
	db $c4			;Wait 5
	db $23			;Note B-3
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $25			;Note C#4
	db $c4			;Wait 5
	db $2c			;Note G#4
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $2e			;Note A#4
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $9a,$03			;CMD Note delay
	db $c2			;Wait 3
	db $31			;Note C#5
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
					;Wait Repeat 3
	db $31			;Note C#5
	db $c4			;Wait 5
	db $36			;Note F#5
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $35			;Note F-5
	db $cd			;Wait 14
	db $35			;Note F-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_111:
	db $60			;Release 96
	db $9b			;CMD End 
	db $cc			;Wait 13
	db $25			;Note C#4
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $27			;Note D#4
	db $c4			;Wait 5
	db $28			;Note E-4
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $2a			;Note F#4
	db $c4			;Wait 5
	db $31			;Note C#5
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $33			;Note D#5
	db $c1			;Wait 2
	db $33			;Note D#5
	db $9a,$03			;CMD Note delay
	db $c2			;Wait 3
	db $34			;Note E-5
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
					;Wait Repeat 3
	db $36			;Note F#5
	db $c4			;Wait 5
	db $39			;Note A-5
	db $6b			;Volume 10
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $38			;Note G#5
	db $c3			;Wait 4
	db $94,$44		;CMD Vibrato
	db $c9			;Wait 10
	db $38			;Note G#5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_112:
	db $c2			;Wait 3
	db $3e			;Note D-6
	db $6b			;Volume 10
	db $7a			;Instrument 9
	db $c1			;Wait 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $24			;Note C-4
	db $c0			;Wait 1
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c7			;Wait 8
	db $21			;Note A-3
	db $6f			;Volume 14
	db $74			;Instrument 3
	db $c3			;Wait 4
	db $18			;Note C-3
	db $c3			;Wait 4
	db $4f			;Note G-7
	db $6e			;Volume 13
	db $81			;Instrument 16
					;Wait Repeat 4
	db $4f			;Note G-7
	db $6b			;Volume 10
	db $82			;Instrument 17
					;Wait Repeat 4
	db $50			;Note G#7
	db $6c			;Volume 11
	db $7b			;Instrument 10
	db $c1			;Wait 2
	db $4b			;Note D#7
	db $6b			;Volume 10
	db $c0			;Wait 1
	db $50			;Note G#7
	db $68			;Volume 7
					;Wait Repeat 1
	db $49			;Note C#7
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $4b			;Note D#7
	db $68			;Volume 7
					;Wait Repeat 1
	db $44			;Note G#6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $49			;Note C#7
	db $68			;Volume 7
					;Wait Repeat 1
	db $43			;Note G-6
	db $6c			;Volume 11
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $44			;Note G#6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3e			;Note D-6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $43			;Note G-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $3c			;Note C-6
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3e			;Note D-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
	db $7b			;Instrument 10
					;Wait Repeat 1
	db $3c			;Note C-6
	db $68			;Volume 7
	db $bf			;[End-Of-Track]
.track_113:
	db $c0			;Wait 1
	db $38			;Note G#5
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c1			;Wait 2
	db $36			;Note F#5
	db $c7			;Wait 8
	db $38			;Note G#5
	db $cd			;Wait 14
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $c7			;Wait 8
	db $2d			;Note A-4
	db $cd			;Wait 14
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $c7			;Wait 8
	db $2b			;Note G-4
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_116:
	db $3e			;Note D-6
	db $6a			;Volume 9
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $38			;Note G#5
					;Wait Repeat 2
	db $35			;Note F-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $20			;Note G#3
	db $c1			;Wait 2
	db $12			;Note F#2
	db $6c			;Volume 11
	db $78			;Instrument 7
					;Wait Repeat 2
	db $0e			;Note D-2
	db $6d			;Volume 12
					;Wait Repeat 2
	db $0d			;Note C#2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $0c			;Note C-2
	db $6f			;Volume 14
					;Wait Repeat 2
	db $08			;Note G#1
	db $cf			;Wait 16
	db $07			;Note G-1
	db $c7			;Wait 8
	db $0f			;Note D#2
	db $70			;Volume 15
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_117:
	db $2f			;Note B-4
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c7			;Wait 8
	db $30			;Note C-5
	db $cd			;Wait 14
	db $24			;Note C-4
	db $c1			;Wait 2
	db $23			;Note B-3
	db $c7			;Wait 8
	db $26			;Note D-4
	db $cd			;Wait 14
	db $26			;Note D-4
	db $c1			;Wait 2
	db $25			;Note C#4
	db $c7			;Wait 8
	db $24			;Note C-4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_118:
	db $32			;Note D-5
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c7			;Wait 8
	db $35			;Note F-5
	db $cd			;Wait 14
	db $29			;Note F-4
	db $c1			;Wait 2
	db $26			;Note D-4
	db $c7			;Wait 8
	db $2a			;Note F#4
	db $cd			;Wait 14
	db $2a			;Note F#4
	db $c1			;Wait 2
	db $27			;Note D#4
	db $c7			;Wait 8
	db $26			;Note D-4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_119:
	db $36			;Note F#5
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c2			;Wait 3
	db $94,$44		;CMD Vibrato
	db $c4			;Wait 5
	db $38			;Note G#5
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $94,$44		;CMD Vibrato
	db $c9			;Wait 10
	db $2c			;Note G#4
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $2a			;Note F#4
	db $c2			;Wait 3
	db $94,$44		;CMD Vibrato
	db $c4			;Wait 5
	db $2d			;Note A-4
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $94,$44		;CMD Vibrato
	db $c9			;Wait 10
	db $2d			;Note A-4
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $9b			;CMD End 
	db $c7			;Wait 8
	db $2b			;Note G-4
	db $9b			;CMD End 
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_120:
	db $c2			;Wait 3
	db $36			;Note F#5
	db $68			;Volume 7
	db $7b			;Instrument 10
	db $c1			;Wait 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $29			;Note F-4
	db $c0			;Wait 1
	db $21			;Note A-3
	db $6b			;Volume 10
	db $72			;Instrument 1
					;Wait Repeat 1
	db $21			;Note A-3
	db $6b			;Volume 10
					;Wait Repeat 1
	db $21			;Note A-3
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6e			;Volume 13
					;Wait Repeat 2
	db $21			;Note A-3
	db $c5			;Wait 6
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $80			;Instrument 15
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_121:
	db $c7			;Wait 8
	db $4f			;Note G-7
	db $6e			;Volume 13
	db $81			;Instrument 16
	db $c3			;Wait 4
	db $4f			;Note G-7
	db $6b			;Volume 10
	db $82			;Instrument 17
					;Wait Repeat 4
	db $4f			;Note G-7
	db $6b			;Volume 10
	db $83			;Instrument 18
					;Wait Repeat 4
	db $4f			;Note G-7
	db $6a			;Volume 9
	db $c3			;Wait 4
	db $02			;Note D-1
	db $6c			;Volume 11
	db $7a			;Instrument 9
	db $a1,$06			;CMD Track detune
	db $c7			;Wait 8
	db $01			;Note C#1
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_122:
	db $f7			;Wait 56
	db $bf			;[End-Of-Track]
.track_124:
	db $c3			;Wait 4
	db $0f			;Note D#2
	db $78			;Instrument 7
					;Wait Repeat 4
	db $0f			;Note D#2
					;Wait Repeat 4
	db $0f			;Note D#2
					;Wait Repeat 4
	db $0f			;Note D#2
					;Wait Repeat 4
	db $0f			;Note D#2
					;Wait Repeat 4
	db $0e			;Note D-2
	db $c7			;Wait 8
	db $0d			;Note C#2
	db $cf			;Wait 16
	db $01			;Note C#1
	db $70			;Volume 15
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_125:
	db $36			;Note F#5
	db $6b			;Volume 10
	db $7c			;Instrument 11
	db $c1			;Wait 2
	db $33			;Note D#5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $7b			;Instrument 10
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2c			;Note G#4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $29			;Note F-4
	db $d3			;Wait 20
	db $20			;Note G#3
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_126:
	db $c7			;Wait 8
	db $24			;Note C-4
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $cf			;Wait 16
	db $24			;Note C-4
	db $c7			;Wait 8
	db $29			;Note F-4
	db $6b			;Volume 10
	db $cb			;Wait 12
	db $1d			;Note F-3
	db $c3			;Wait 4
	db $20			;Note G#3
					;Wait Repeat 4
	db $25			;Note C#4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_127:
	db $c7			;Wait 8
	db $27			;Note D#4
	db $6b			;Volume 10
	db $77			;Instrument 6
	db $c3			;Wait 4
	db $94,$44		;CMD Vibrato
	db $d3			;Wait 20
	db $20			;Note G#3
	db $6b			;Volume 10
	db $9b			;CMD End 
	db $cb			;Wait 12
	db $20			;Note G#3
	db $c3			;Wait 4
	db $25			;Note C#4
					;Wait Repeat 4
	db $29			;Note F-4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_128:
	db $5b			;Note G-8
	db $6f			;Volume 14
	db $86			;Instrument 21
	db $c2			;Wait 3
	db $37			;Note G-5
	db $6a			;Volume 9
	db $76			;Instrument 5
	db $c3			;Wait 4
	db $3c			;Note C-6
	db $c3			;Wait 4
	db $33			;Note D#5
	db $6a			;Volume 9
	db $c2			;Wait 3
	db $94,$45		;CMD Vibrato
	db $c8			;Wait 9
	db $32			;Note D-5
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $30			;Note C-5
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $9a,$03			;CMD Note delay
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_129:
	db $15			;Note A-2
	db $6f			;Volume 14
	db $7b			;Instrument 10
	db $c3			;Wait 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $09			;Note A-1
					;Wait Repeat 4
	db $15			;Note A-2
					;Wait Repeat 4
	db $09			;Note A-1
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_132:
	db $09			;Note A-1
	db $70			;Volume 15
	db $78			;Instrument 7
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_133:
	db $37			;Note G-5
	db $6f			;Volume 14
	db $85			;Instrument 20
	db $ac,$01			; SCC Morph speed 1
	db $c3			;Wait 4
	db $3c			;Note C-6
					;Wait Repeat 4
	db $39			;Note A-5
	db $c1			;Wait 2
	db $9c,$80			; SCC Morph to Waveform 21
					;Wait Repeat 2
	db $94,$35		;CMD Vibrato
	db $c6			;Wait 7
	db $6e			;Volume 13
	db $c2			;Wait 3
	db $6d			;Volume 12
					;Wait Repeat 3
	db $6c			;Volume 11
					;Wait Repeat 3
	db $6b			;Volume 10
	db $c2			;Wait 3
	db $69			;Volume 8
	db $9b			;CMD End 
	db $bf			;[End-Of-Track]
.track_134:
	db $24			;Note C-4
	db $68			;Volume 7
	db $7f			;Instrument 14
	db $c7			;Wait 8
	db $33			;Note D#5
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $c0			;Wait 1
	db $6c			;Volume 11
					;Wait Repeat 1
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $6e			;Volume 13
	db $94,$45		;CMD Vibrato
					;Wait Repeat 1
	db $6f			;Volume 14
	db $c7			;Wait 8
	db $32			;Note D-5
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $30			;Note C-5
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $9a,$03			;CMD Note delay
	db $c2			;Wait 3
	db $2b			;Note G-4
	db $9a,$02			;CMD Note delay
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_135:
	db $27			;Note D#4
	db $68			;Volume 7
	db $7f			;Instrument 14
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_137:
	db $2d			;Note A-4
	db $6c			;Volume 11
	db $7b			;Instrument 10
	db $a1,$00			;CMD Track detune
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $69			;Volume 8
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $4b			;Note D#7
	db $69			;Volume 8
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $4a			;Note D-7
	db $69			;Volume 8
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6c			;Volume 11
					;Wait Repeat 2
	db $4b			;Note D#7
	db $69			;Volume 8
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4a			;Note D-7
	db $68			;Volume 7
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4b			;Note D#7
	db $68			;Volume 7
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4a			;Note D-7
	db $68			;Volume 7
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6b			;Volume 10
					;Wait Repeat 2
	db $4b			;Note D#7
	db $68			;Volume 7
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4a			;Note D-7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2c			;Note G#4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4b			;Note D#7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4a			;Note D-7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2f			;Note B-4
	db $6a			;Volume 9
					;Wait Repeat 2
	db $4b			;Note D#7
	db $67			;Volume 6
					;Wait Repeat 2
	db $2d			;Note A-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4a			;Note D-7
	db $66			;Volume 5
					;Wait Repeat 2
	db $2c			;Note G#4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4b			;Note D#7
	db $66			;Volume 5
					;Wait Repeat 2
	db $2d			;Note A-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4a			;Note D-7
	db $66			;Volume 5
					;Wait Repeat 2
	db $2f			;Note B-4
	db $69			;Volume 8
					;Wait Repeat 2
	db $4b			;Note D#7
	db $66			;Volume 5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_143:
	db $26			;Note D-4
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $92,$01			;CMD Portamento down
					;Wait Repeat 1
	db $6c			;Volume 11
	db $c1			;Wait 2
	db $6b			;Volume 10
					;Wait Repeat 2
	db $6a			;Volume 9
	db $ca			;Wait 11
	db $95,$01			;CMD Portamento up
	db $c8			;Wait 9
	db $39			;Note A-5
	db $69			;Volume 8
	db $7b			;Instrument 10
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $67			;Volume 6
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $69			;Volume 8
					;Wait Repeat 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $39			;Note A-5
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $67			;Volume 6
					;Wait Repeat 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $39			;Note A-5
	db $c1			;Wait 2
	db $3e			;Note D-6
	db $66			;Volume 5
					;Wait Repeat 2
	db $43			;Note G-6
	db $c1			;Wait 2
	db $39			;Note A-5
	db $64			;Volume 3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]

