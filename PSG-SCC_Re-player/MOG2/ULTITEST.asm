; Song: TT Vs Replayer ULTIMATE  TESTv11
; By:   Gryzor87 (c)2021                
; Period table: A445 Konami

; [ Song start data ]
	db $0c					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_001, .track_002, .track_003, .track_004, .track_004, .track_004, .track_004	; Step:000 Pattern:000
	dw .track_008, .track_009, .track_010, .track_011, .track_012, .track_013, .track_014, .track_015	; Step:001 Pattern:001
	dw .track_016, .track_017, .track_018, .track_019, .track_020, .track_010, .track_010, .track_010	; Step:002 Pattern:002
	dw .track_024, .track_025, .track_026, .track_004, .track_004, .track_010, .track_010, .track_010	; Step:003 Pattern:003
	dw .track_032, .track_032, .track_032, .track_035, .track_036, .track_037, .track_032, .track_032	; Step:004 Pattern:004
	dw .track_040, .track_041, .track_042, .track_043, .track_044, .track_044, .track_044, .track_044	; Step:005 Pattern:005
	dw .track_040, .track_049, .track_050, .track_051, .track_052, .track_053, .track_010, .track_010	; Step:006 Pattern:006
	dw .track_040, .track_057, .track_004, .track_004, .track_004, .track_004, .track_004, .track_010	; Step:007 Pattern:007
	dw .track_064, .track_065, .track_066, .track_066, .track_066, .track_066, .track_066, .track_066	; Step:008 Pattern:008
	dw .track_072, .track_073, .track_010, .track_010, .track_010, .track_010, .track_010, .track_010	; Step:009 Pattern:009
	dw .track_080, .track_081, .track_082, .track_010, .track_010, .track_010, .track_010, .track_010	; Step:010 Pattern:010
	dw .track_072, .track_004, .track_004, .track_091, .track_092, .track_093, .track_094, .track_010	; Step:011 Pattern:011
	dw .track_072, .track_010, .track_010, .track_099, .track_100, .track_101, .track_102, .track_010	; Step:012 Pattern:012
	dw .track_104, .track_105, .track_106, .track_107, .track_004, .track_004, .track_004, .track_004	; Step:013 Pattern:013
	dw .track_112, .track_004, .track_004, .track_115, .track_010, .track_010, .track_010, .track_010	; Step:014 Pattern:014
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
	db $a0, $90, $a0, $ac, $f0, $a0, $16, $00, $90, $00, $20, $40, $60, $50, $38, $1c, $f2, $e2, $d6, $d0, $d0, $da, $dc, $e0, $e2, $e2, $e2, $e0, $dc, $d8, $d0, $b0				; Waveform:7
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0, $00, $10, $20, $30, $40, $50, $60, $70				; Waveform:8
	db $00, $f8, $e8, $d8, $c8, $b8, $ac, $9c, $90, $8c, $8a, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $88, $77, $68, $58, $48, $38, $28, $18, $08				; Waveform:9
	db $78, $70, $68, $60, $58, $50, $48, $40, $38, $30, $28, $20, $18, $10, $08, $00, $78, $70, $68, $60, $58, $50, $48, $40, $38, $30, $28, $20, $18, $10, $08, $00				; Waveform:10
	db $00, $30, $50, $60, $70, $60, $50, $30, $00, $d0, $b0, $a0, $90, $a0, $b0, $d0, $00, $40, $60, $70, $60, $40, $00, $c0, $a0, $90, $a0, $c0, $00, $70, $00, $90				; Waveform:11
	db $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $77, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87				; Waveform:12
	db $28, $58, $58, $28, $00, $00, $18, $48, $68, $78, $68, $38, $e8, $d8, $e0, $00, $20, $20, $10, $c0, $a0, $90, $a0, $c0, $00, $00, $d0, $b0, $b0, $d0, $00, $00				; Waveform:13
	db $00, $40, $7f, $40, $10, $01, $ea, $ce, $bb, $b1, $a7, $9c, $94, $8d, $87, $82, $81, $80, $80, $81, $81, $83, $87, $8d, $94, $9c, $a7, $b1, $bb, $ce, $ea, $ff				; Waveform:16
	db $27, $5f, $4f, $4f, $5f, $67, $7f, $7f, $6f, $6f, $7f, $6f, $5f, $4f, $67, $5f, $37, $e7, $d7, $c7, $d7, $ff, $e7, $cf, $c7, $c7, $bf, $97, $87, $af, $d7, $ff				; Waveform:18
	db $90, $d0, $20, $0c, $bc, $aa, $e6, $dc, $bc, $e3, $40, $30, $e0, $d0, $10, $06, $e4, $0c, $70, $50, $e0, $d0, $10, $00, $d0, $f0, $40, $20, $c4, $c0, $f0, $90				; Waveform:19
	db $00, $10, $20, $30, $40, $50, $60, $70, $7f, $70, $60, $50, $40, $30, $20, $10, $ff, $f0, $e0, $d0, $c0, $b0, $a0, $90, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0				; Waveform:20
	db $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20, $00, $e0, $c0, $a0, $80, $a0, $c0, $e0, $00, $20, $40, $60, $7f, $60, $40, $20				; Waveform:22
	db $08, $20, $48, $68, $7f, $30, $08, $30, $60, $70, $7f, $28, $b8, $80, $c8, $20, $f8, $c8, $b8, $c0, $d0, $c8, $d8, $e0, $00, $e0, $d0, $b8, $c8, $e0, $f0, $00				; Waveform:28
	db $07, $57, $37, $4f, $27, $e7, $9f, $2f, $6f, $b7, $ff, $e7, $1f, $ff, $4f, $d7, $e7, $ff, $f7, $df, $f7, $67, $47, $d7, $1f, $97, $b7, $e7, $d7, $c7, $f7, $ff				; Waveform:31

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; BD C2           
	dw .instrument_01				; LAZER           
	dw .instrument_02				; HH CL A8        
	dw .instrument_03				; Volume          
	dw .instrument_04				; VOL  CONT       
	dw .instrument_05				; ENV  A          
	dw .instrument_06				; ENV   8         
	dw .instrument_07				; SC Bass         
	dw .instrument_08				; VOL MELODY cont 
	dw .instrument_09				; Piano Tremolo HI
	dw .instrument_10				; PIANO           

.instrument_00:					; BD C2           
	db $50						; Waveform 10
	db $02,$10						; Mixer (T)
	db $1c,$09						; Envelope shape
	db $02,$10						; Mixer (T)
	db $1a						; Envelope
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $1a						; Envelope
	db $18,$fc						; Loop (-5)

.instrument_01:					; LAZER           
	db $80						; Waveform 16
	db $02,$10						; Mixer (T)
	db $06,$fd,$ff					; Tone sub
	db $1c,$0e						; Envelope shape
	db $02,$10						; Mixer (T)
	db $06,$ff,$ff					; Tone sub
	db $1c,$0e						; Envelope shape
	db $02,$10						; Mixer (T)
	db $08,$01						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$05						; Volume _
	db $02,$10						; Mixer (T)
	db $04,$04,$00					; Tone add
	db $1c,$0e						; Envelope shape
	db $02,$10						; Mixer (T)
	db $06,$ff,$ff					; Tone sub
	db $1c,$0e						; Envelope shape
	db $02,$10						; Mixer (T)
	db $1c,$0e						; Envelope shape
	db $02,$10						; Mixer (T)
	db $04,$01,$00					; Tone add
	db $1c,$0e						; Envelope shape
	db $02,$10						; Mixer (T)
	db $1c,$0e						; Envelope shape
	db $02,$10						; Mixer (T)
	db $06,$ff,$ff					; Tone sub
	db $1c,$0e						; Envelope shape
	db $02,$10						; Mixer (T)
	db $04,$08,$00					; Tone add
	db $1c,$0e						; Envelope shape
	db $02,$10						; Mixer (T)
	db $04,$0c,$00					; Tone add
	db $1c,$0e						; Envelope shape
								; --- Macro loop
	db $08,$00						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_02:					; HH CL A8        
	db $30						; Waveform 6
	db $02,$90						; Mixer (TN)
	db $0E,$00						; Noise _
	db $08,$0f						; Volume _
								; --- Macro loop
	db $08,$00						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_03:					; Volume          
	db $58						; Waveform 11
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
								; --- Macro loop
	db $08,$00						; Volume _
	db $18,$fd						; Loop (-4)

.instrument_04:					; VOL  CONT       
	db $58						; Waveform 11
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_05:					; ENV  A          
	db $28						; Waveform 5
	db $02,$10						; Mixer (T)
	db $1c,$0a						; Envelope shape
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $1a						; Envelope
	db $18,$fc						; Loop (-5)

.instrument_06:					; ENV   8         
	db $70						; Waveform 14
	db $02,$10						; Mixer (T)
	db $1c,$08						; Envelope shape
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $1a						; Envelope
	db $18,$fc						; Loop (-5)

.instrument_07:					; SC Bass         
	db $08						; Waveform 1
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $0c,$01						; Volume -
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $18,$f5						; Loop (-12)

.instrument_08:					; VOL MELODY cont 
	db $38						; Waveform 7
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$00						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_09:					; Piano Tremolo HI
	db $60						; Waveform 12
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
	db $08,$08						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $0c,$01						; Volume -
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

.instrument_10:					; PIANO           
	db $10						; Waveform 2
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
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


; [ Song track data ]
.track_000:
	db $2b			;Note G-4
	db $70			;Volume 15
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $6f			;Volume 14
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6c			;Volume 11
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6a			;Volume 9
					;Wait Repeat 1
	db $2b			;Note G-4
	db $69			;Volume 8
					;Wait Repeat 1
	db $2b			;Note G-4
	db $68			;Volume 7
					;Wait Repeat 1
	db $2b			;Note G-4
	db $67			;Volume 6
					;Wait Repeat 1
	db $2b			;Note G-4
	db $66			;Volume 5
					;Wait Repeat 1
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $64			;Volume 3
					;Wait Repeat 1
	db $2b			;Note G-4
	db $63			;Volume 2
					;Wait Repeat 1
	db $2b			;Note G-4
	db $62			;Volume 1
					;Wait Repeat 1
	db $2b			;Note G-4
					;Wait Repeat 1
	db $60			;Release 96
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_001:
	db $60			;Release 96
	db $a3,$0c			;CMD Speed
	db $cf			;Wait 16
	db $37			;Note G-5
	db $70			;Volume 15
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $37			;Note G-5
	db $6f			;Volume 14
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $37			;Note G-5
	db $6d			;Volume 12
					;Wait Repeat 1
	db $37			;Note G-5
	db $6c			;Volume 11
					;Wait Repeat 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6a			;Volume 9
					;Wait Repeat 1
	db $37			;Note G-5
	db $69			;Volume 8
					;Wait Repeat 1
	db $37			;Note G-5
	db $68			;Volume 7
					;Wait Repeat 1
	db $37			;Note G-5
	db $67			;Volume 6
					;Wait Repeat 1
	db $37			;Note G-5
	db $66			;Volume 5
					;Wait Repeat 1
	db $37			;Note G-5
	db $65			;Volume 4
					;Wait Repeat 1
	db $37			;Note G-5
	db $64			;Volume 3
					;Wait Repeat 1
	db $37			;Note G-5
	db $63			;Volume 2
					;Wait Repeat 1
	db $37			;Note G-5
	db $62			;Volume 1
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_002:
	db $60			;Release 96
	db $df			;Wait 32
	db $43			;Note G-6
	db $70			;Volume 15
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $43			;Note G-6
	db $6f			;Volume 14
					;Wait Repeat 1
	db $43			;Note G-6
	db $6e			;Volume 13
					;Wait Repeat 1
	db $43			;Note G-6
	db $6d			;Volume 12
					;Wait Repeat 1
	db $43			;Note G-6
	db $6c			;Volume 11
					;Wait Repeat 1
	db $43			;Note G-6
	db $6b			;Volume 10
					;Wait Repeat 1
	db $43			;Note G-6
	db $6a			;Volume 9
					;Wait Repeat 1
	db $43			;Note G-6
	db $69			;Volume 8
					;Wait Repeat 1
	db $43			;Note G-6
	db $68			;Volume 7
					;Wait Repeat 1
	db $43			;Note G-6
	db $67			;Volume 6
					;Wait Repeat 1
	db $43			;Note G-6
	db $66			;Volume 5
					;Wait Repeat 1
	db $43			;Note G-6
	db $65			;Volume 4
					;Wait Repeat 1
	db $43			;Note G-6
	db $64			;Volume 3
					;Wait Repeat 1
	db $43			;Note G-6
	db $63			;Volume 2
					;Wait Repeat 1
	db $43			;Note G-6
	db $62			;Volume 1
					;Wait Repeat 1
	db $43			;Note G-6
					;Wait Repeat 1
	db $60			;Release 96
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_003:
	db $60			;Release 96
	db $ef			;Wait 48
	db $2b			;Note G-4
	db $70			;Volume 15
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $6f			;Volume 14
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6e			;Volume 13
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6d			;Volume 12
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6c			;Volume 11
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6b			;Volume 10
					;Wait Repeat 1
	db $2b			;Note G-4
	db $6a			;Volume 9
					;Wait Repeat 1
	db $2b			;Note G-4
	db $69			;Volume 8
					;Wait Repeat 1
	db $2b			;Note G-4
	db $68			;Volume 7
					;Wait Repeat 1
	db $2b			;Note G-4
	db $67			;Volume 6
					;Wait Repeat 1
	db $2b			;Note G-4
	db $66			;Volume 5
					;Wait Repeat 1
	db $2b			;Note G-4
	db $65			;Volume 4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $64			;Volume 3
					;Wait Repeat 1
	db $2b			;Note G-4
	db $63			;Volume 2
					;Wait Repeat 1
	db $2b			;Note G-4
	db $62			;Volume 1
					;Wait Repeat 1
	db $2b			;Note G-4
	db $bf			;[End-Of-Track]
.track_004:
	db $60			;Release 96
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_008:
	db $e7			;Wait 40
	db $4f			;Note G-7
	db $70			;Volume 15
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $4f			;Note G-7
	db $6f			;Volume 14
					;Wait Repeat 1
	db $4f			;Note G-7
	db $6e			;Volume 13
					;Wait Repeat 1
	db $4f			;Note G-7
	db $6d			;Volume 12
	db $c4			;Wait 5
	db $37			;Note G-5
	db $70			;Volume 15
	db $75			;Instrument 4
	db $c1			;Wait 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $5b			;Note G-8
					;Wait Repeat 2
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_009:
	db $eb			;Wait 44
	db $4f			;Note G-7
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $4f			;Note G-7
	db $6b			;Volume 10
					;Wait Repeat 1
	db $4f			;Note G-7
	db $6a			;Volume 9
					;Wait Repeat 1
	db $4f			;Note G-7
	db $69			;Volume 8
	db $d0			;Wait 17
	db $bf			;[End-Of-Track]
.track_010:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_011:
	db $60			;Release 96
	db $f7			;Wait 56
	db $37			;Note G-5
	db $70			;Volume 15
	db $75			;Instrument 4
	db $c1			;Wait 2
	db $43			;Note G-6
					;Wait Repeat 2
	db $4f			;Note G-7
					;Wait Repeat 2
	db $5b			;Note G-8
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_012:
	db $37			;Note G-5
	db $70			;Volume 15
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $37			;Note G-5
	db $6f			;Volume 14
					;Wait Repeat 1
	db $37			;Note G-5
	db $6e			;Volume 13
					;Wait Repeat 1
	db $37			;Note G-5
	db $6d			;Volume 12
	db $cc			;Wait 13
	db $43			;Note G-6
	db $70			;Volume 15
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $43			;Note G-6
	db $6f			;Volume 14
					;Wait Repeat 1
	db $43			;Note G-6
	db $6e			;Volume 13
					;Wait Repeat 1
	db $43			;Note G-6
	db $6d			;Volume 12
	db $cc			;Wait 13
	db $4f			;Note G-7
	db $70			;Volume 15
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $4f			;Note G-7
	db $6f			;Volume 14
					;Wait Repeat 1
	db $4f			;Note G-7
	db $6e			;Volume 13
					;Wait Repeat 1
	db $4f			;Note G-7
	db $6d			;Volume 12
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_013:
	db $c3			;Wait 4
	db $37			;Note G-5
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $37			;Note G-5
	db $6b			;Volume 10
					;Wait Repeat 1
	db $37			;Note G-5
	db $6a			;Volume 9
					;Wait Repeat 1
	db $37			;Note G-5
	db $69			;Volume 8
	db $cc			;Wait 13
	db $43			;Note G-6
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $43			;Note G-6
	db $6b			;Volume 10
					;Wait Repeat 1
	db $43			;Note G-6
	db $6a			;Volume 9
					;Wait Repeat 1
	db $43			;Note G-6
	db $69			;Volume 8
	db $cc			;Wait 13
	db $4f			;Note G-7
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $4f			;Note G-7
	db $6b			;Volume 10
					;Wait Repeat 1
	db $4f			;Note G-7
	db $6a			;Volume 9
					;Wait Repeat 1
	db $4f			;Note G-7
	db $69			;Volume 8
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_014:
	db $c7			;Wait 8
	db $37			;Note G-5
	db $68			;Volume 7
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $37			;Note G-5
	db $67			;Volume 6
					;Wait Repeat 1
	db $37			;Note G-5
	db $66			;Volume 5
					;Wait Repeat 1
	db $37			;Note G-5
	db $65			;Volume 4
	db $cc			;Wait 13
	db $43			;Note G-6
	db $68			;Volume 7
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $43			;Note G-6
	db $67			;Volume 6
					;Wait Repeat 1
	db $43			;Note G-6
	db $66			;Volume 5
					;Wait Repeat 1
	db $43			;Note G-6
	db $65			;Volume 4
	db $e4			;Wait 37
	db $bf			;[End-Of-Track]
.track_015:
	db $cb			;Wait 12
	db $37			;Note G-5
	db $64			;Volume 3
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $37			;Note G-5
	db $63			;Volume 2
					;Wait Repeat 1
	db $37			;Note G-5
	db $62			;Volume 1
					;Wait Repeat 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $60			;Release 96
	db $cb			;Wait 12
	db $43			;Note G-6
	db $64			;Volume 3
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $43			;Note G-6
	db $63			;Volume 2
					;Wait Repeat 1
	db $43			;Note G-6
	db $62			;Volume 1
					;Wait Repeat 1
	db $43			;Note G-6
					;Wait Repeat 1
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_016:
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $9d,$00			;CMD Arpegio speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $9d,$01			;CMD Arpegio speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $9d,$00			;CMD Arpegio speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_017:
	db $24			;Note C-4
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $93,$47			;CMD Arpeggio
	db $c7			;Wait 8
	db $1f			;Note G-3
	db $6f			;Volume 14
	db $93,$47			;CMD Arpeggio
					;Wait Repeat 8
	db $2e			;Note A#4
	db $6e			;Volume 13
	db $93,$47			;CMD Arpeggio
	db $c3			;Wait 4
	db $29			;Note F-4
					;Wait Repeat 4
	db $25			;Note C#4
					;Wait Repeat 4
	db $20			;Note G#3
	db $c3			;Wait 4
	db $1d			;Note F-3
	db $6e			;Volume 13
	db $93,$7c			;CMD Arpeggio
	db $c7			;Wait 8
	db $11			;Note F-2
	db $6e			;Volume 13
	db $93,$7c			;CMD Arpeggio
					;Wait Repeat 8
	db $05			;Note F-1
	db $6e			;Volume 13
	db $93,$7c			;CMD Arpeggio
	db $c1			;Wait 2
	db $06			;Note F#1
					;Wait Repeat 2
	db $05			;Note F-1
					;Wait Repeat 2
	db $04			;Note E-1
					;Wait Repeat 2
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_018:
	db $9d,$07			;CMD Arpegio speed
	db $c7			;Wait 8
	db $9d,$03			;CMD Arpegio speed
					;Wait Repeat 8
	db $9d,$01			;CMD Arpegio speed
	db $cf			;Wait 16
	db $30			;Note C-5
	db $6d			;Volume 12
	db $75			;Instrument 4
	db $93,$7c			;CMD Arpeggio
	db $c1			;Wait 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $28			;Note E-4
	db $c1			;Wait 2
	db $24			;Note C-4
	db $6d			;Volume 12
	db $93,$7c			;CMD Arpeggio
					;Wait Repeat 2
	db $1e			;Note F#3
					;Wait Repeat 2
	db $1d			;Note F-3
					;Wait Repeat 2
	db $1c			;Note E-3
	db $c1			;Wait 2
	db $29			;Note F-4
	db $6e			;Volume 13
	db $93,$7c			;CMD Arpeggio
					;Wait Repeat 2
	db $2a			;Note F#4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $28			;Note E-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_019:
	db $60			;Release 96
	db $f7			;Wait 56
	db $05			;Note F-1
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a9,$38			; SCC Set Waveform 8
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_020:
	db $60			;Release 96
	db $f5			;Wait 54
	db $ab,$01			; SCC Morph follow (Carbon C0poy) 1
	db $c0			;Wait 1
	db $ac,$01			; SCC Morph speed 1
					;Wait Repeat 1
	db $05			;Note F-1
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a9,$20			; SCC Set Waveform 4
					;Wait Repeat 1
	db $9c,$98			; SCC Morph to Waveform 31
	db $c6			;Wait 7
	db $bf			;[End-Of-Track]
.track_024:
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $9d,$00			;CMD Arpegio speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $9d,$00			;CMD Arpegio speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $9d,$00			;CMD Arpegio speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_025:
	db $18			;Note C-3
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $95,$0c			;CMD Portamento up
	db $c3			;Wait 4
	db $92,$0c			;CMD Portamento down
					;Wait Repeat 4
	db $24			;Note C-4
	db $6e			;Volume 13
	db $95,$06			;CMD Portamento up
					;Wait Repeat 4
	db $92,$06			;CMD Portamento down
					;Wait Repeat 4
	db $30			;Note C-5
	db $6e			;Volume 13
	db $95,$03			;CMD Portamento up
					;Wait Repeat 4
	db $92,$03			;CMD Portamento down
					;Wait Repeat 4
	db $3c			;Note C-6
	db $6e			;Volume 13
	db $95,$02			;CMD Portamento up
					;Wait Repeat 4
	db $92,$02			;CMD Portamento down
					;Wait Repeat 4
	db $92,$04			;CMD Portamento down
					;Wait Repeat 4
	db $92,$08			;CMD Portamento down
					;Wait Repeat 4
	db $92,$0f			;CMD Portamento down
					;Wait Repeat 4
	db $92,$20			;CMD Portamento down
					;Wait Repeat 4
	db $92,$40			;CMD Portamento down
					;Wait Repeat 4
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $70			;Volume 15
	db $92,$a0			;CMD Portamento down
	db $c2			;Wait 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $05			;Note F-1
	db $95,$a0			;CMD Portamento up
	db $c2			;Wait 3
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_026:
	db $9e,$0f			;CMD Portamento fine up
	db $c3			;Wait 4
	db $9f,$ff			;CMD Portamento fine up
	db $d3			;Wait 20
	db $9e,$01			;CMD Portamento fine up
	db $e7			;Wait 40
	db $bf			;[End-Of-Track]
.track_032:
	db $60			;Release 96
	db $eb			;Wait 44
	db $bf			;[End-Of-Track]
.track_035:
	db $0e			;Note D-2
	db $70			;Volume 15
	db $75			;Instrument 4
	db $a9,$80			; SCC Set Waveform 20
	db $c0			;Wait 1
	db $92,$0a			;CMD Portamento down
	db $c3			;Wait 4
	db $95,$0a			;CMD Portamento up
					;Wait Repeat 4
	db $92,$0a			;CMD Portamento down
					;Wait Repeat 4
	db $95,$0a			;CMD Portamento up
					;Wait Repeat 4
	db $92,$0a			;CMD Portamento down
					;Wait Repeat 4
	db $95,$0a			;CMD Portamento up
					;Wait Repeat 4
	db $92,$0a			;CMD Portamento down
					;Wait Repeat 4
	db $95,$0a			;CMD Portamento up
					;Wait Repeat 4
	db $92,$0a			;CMD Portamento down
					;Wait Repeat 4
	db $95,$0a			;CMD Portamento up
					;Wait Repeat 4
	db $92,$0a			;CMD Portamento down
	db $c1			;Wait 2
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_036:
	db $15			;Note A-2
	db $70			;Volume 15
	db $75			;Instrument 4
	db $a9,$80			; SCC Set Waveform 20
	db $c0			;Wait 1
	db $92,$0a			;CMD Portamento down
	db $c4			;Wait 5
	db $95,$0a			;CMD Portamento up
					;Wait Repeat 5
	db $92,$0a			;CMD Portamento down
					;Wait Repeat 5
	db $95,$0a			;CMD Portamento up
					;Wait Repeat 5
	db $92,$0a			;CMD Portamento down
					;Wait Repeat 5
	db $95,$0a			;CMD Portamento up
					;Wait Repeat 5
	db $92,$0a			;CMD Portamento down
					;Wait Repeat 5
	db $95,$0a			;CMD Portamento up
					;Wait Repeat 5
	db $92,$0a			;CMD Portamento down
	db $c1			;Wait 2
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_037:
	db $1c			;Note E-3
	db $70			;Volume 15
	db $75			;Instrument 4
	db $a9,$80			; SCC Set Waveform 20
	db $c0			;Wait 1
	db $92,$0a			;CMD Portamento down
	db $c6			;Wait 7
	db $95,$0a			;CMD Portamento up
					;Wait Repeat 7
	db $92,$0a			;CMD Portamento down
					;Wait Repeat 7
	db $95,$0a			;CMD Portamento up
	db $c5			;Wait 6
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $4d			;Note F-7
	db $70			;Volume 15
	db $a9,$18			; SCC Set Waveform 3
					;Wait Repeat 1
	db $92,$03			;CMD Portamento down
					;Wait Repeat 1
	db $95,$03			;CMD Portamento up
					;Wait Repeat 1
	db $92,$03			;CMD Portamento down
					;Wait Repeat 1
	db $95,$03			;CMD Portamento up
					;Wait Repeat 1
	db $92,$03			;CMD Portamento down
					;Wait Repeat 1
	db $95,$03			;CMD Portamento up
					;Wait Repeat 1
	db $92,$03			;CMD Portamento down
					;Wait Repeat 1
	db $95,$03			;CMD Portamento up
					;Wait Repeat 1
	db $92,$03			;CMD Portamento down
					;Wait Repeat 1
	db $95,$03			;CMD Portamento up
					;Wait Repeat 1
	db $92,$03			;CMD Portamento down
					;Wait Repeat 1
	db $95,$03			;CMD Portamento up
					;Wait Repeat 1
	db $92,$03			;CMD Portamento down
					;Wait Repeat 1
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_040:
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $9d,$00			;CMD Arpegio speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $9d,$00			;CMD Arpegio speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $9d,$00			;CMD Arpegio speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_041:
	db $26			;Note D-4
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $28			;Note E-4
	db $90,$0a			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6f			;Volume 14
	db $c1			;Wait 2
	db $34			;Note E-5
	db $90,$05			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $6f			;Volume 14
	db $c1			;Wait 2
	db $40			;Note E-6
	db $90,$03			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $6f			;Volume 14
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $90,$10			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $c7			;Wait 8
	db $21			;Note A-3
	db $6f			;Volume 14
	db $c0			;Wait 1
	db $23			;Note B-3
					;Wait Repeat 1
	db $24			;Note C-4
	db $c0			;Wait 1
	db $26			;Note D-4
	db $6f			;Volume 14
	db $79			;Instrument 8
	db $c0			;Wait 1
	db $28			;Note E-4
	db $75			;Instrument 4
	db $90,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $6e			;Volume 13
	db $94,$65			;CMD Vibrato
					;Wait Repeat 4
	db $6d			;Volume 12
					;Wait Repeat 4
	db $6c			;Volume 11
					;Wait Repeat 4
	db $6b			;Volume 10
	db $c2			;Wait 3
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_042:
	db $60			;Release 96
	db $9b			;CMD End 
	db $ec			;Wait 45
	db $26			;Note D-4
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $a1,$08			;CMD Track detune
	db $c0			;Wait 1
	db $28			;Note E-4
	db $6c			;Volume 11
	db $90,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $6b			;Volume 10
	db $94,$65			;CMD Vibrato
					;Wait Repeat 4
	db $6a			;Volume 9
					;Wait Repeat 4
	db $69			;Volume 8
					;Wait Repeat 4
	db $68			;Volume 7
	db $c0			;Wait 1
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_043:
	db $60			;Release 96
	db $9b			;CMD End 
	db $c3			;Wait 4
	db $26			;Note D-4
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $a9,$58			; SCC Set Waveform 12
	db $c1			;Wait 2
	db $28			;Note E-4
	db $90,$0a			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $32			;Note D-5
	db $6f			;Volume 14
	db $c1			;Wait 2
	db $34			;Note E-5
	db $90,$05			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $3e			;Note D-6
	db $6f			;Volume 14
	db $c1			;Wait 2
	db $40			;Note E-6
	db $90,$03			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c7			;Wait 8
	db $1a			;Note D-3
	db $6f			;Volume 14
	db $c3			;Wait 4
	db $1c			;Note E-3
	db $90,$10			;CMD Portamento tone
					;Wait Repeat 4
	db $60			;Release 96
	db $d7			;Wait 24
	db $bf			;[End-Of-Track]
.track_044:
	db $60			;Release 96
	db $9b			;CMD End 
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_049:
	db $33			;Note D#5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $95,$02			;CMD Portamento up
	db $c0			;Wait 1
	db $35			;Note F-5
	db $90,$04			;CMD Portamento tone
	db $c1			;Wait 2
	db $6e			;Volume 13
	db $94,$75			;CMD Vibrato
					;Wait Repeat 2
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $33			;Note D#5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $9b			;CMD End 
					;Wait Repeat 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $6e			;Volume 13
	db $94,$76			;CMD Vibrato
					;Wait Repeat 2
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $9b			;CMD End 
					;Wait Repeat 1
	db $30			;Note C-5
	db $6f			;Volume 14
	db $c1			;Wait 2
	db $94,$77			;CMD Vibrato
					;Wait Repeat 2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $95,$03			;CMD Portamento up
	db $c0			;Wait 1
	db $33			;Note D#5
	db $90,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $94,$66			;CMD Vibrato
	db $c0			;Wait 1
	db $6e			;Volume 13
	db $c1			;Wait 2
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $30			;Note C-5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $95,$02			;CMD Portamento up
	db $c0			;Wait 1
	db $31			;Note C#5
	db $90,$06			;CMD Portamento tone
	db $c1			;Wait 2
	db $6e			;Volume 13
	db $94,$75			;CMD Vibrato
					;Wait Repeat 2
	db $30			;Note C-5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $30			;Note C-5
	db $6f			;Volume 14
	db $79			;Instrument 8
	db $c0			;Wait 1
	db $30			;Note C-5
	db $70			;Volume 15
	db $75			;Instrument 4
	db $95,$02			;CMD Portamento up
					;Wait Repeat 1
	db $31			;Note C#5
	db $90,$06			;CMD Portamento tone
	db $c1			;Wait 2
	db $6e			;Volume 13
	db $94,$75			;CMD Vibrato
					;Wait Repeat 2
	db $30			;Note C-5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $31			;Note C#5
	db $c0			;Wait 1
	db $33			;Note D#5
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $33			;Note D#5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $95,$01			;CMD Portamento up
					;Wait Repeat 1
	db $35			;Note F-5
	db $90,$08			;CMD Portamento tone
	db $c1			;Wait 2
	db $6e			;Volume 13
					;Wait Repeat 2
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $92,$0a			;CMD Portamento down
	db $c1			;Wait 2
	db $31			;Note C#5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $95,$04			;CMD Portamento up
	db $c0			;Wait 1
	db $33			;Note D#5
	db $90,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $94,$74			;CMD Vibrato
	db $c0			;Wait 1
	db $6e			;Volume 13
	db $c2			;Wait 3
	db $6d			;Volume 12
	db $bf			;[End-Of-Track]
.track_050:
	db $60			;Release 96
	db $c3			;Wait 4
	db $33			;Note D#5
	db $6c			;Volume 11
	db $75			;Instrument 4
	db $95,$02			;CMD Portamento up
	db $c0			;Wait 1
	db $35			;Note F-5
	db $90,$04			;CMD Portamento tone
	db $c1			;Wait 2
	db $94,$75			;CMD Vibrato
	db $c2			;Wait 3
	db $33			;Note D#5
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $31			;Note C#5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $94,$76			;CMD Vibrato
	db $c2			;Wait 3
	db $2e			;Note A#4
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $30			;Note C-5
	db $c1			;Wait 2
	db $94,$77			;CMD Vibrato
	db $c5			;Wait 6
	db $30			;Note C-5
	db $95,$03			;CMD Portamento up
	db $c0			;Wait 1
	db $33			;Note D#5
	db $90,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $94,$66			;CMD Vibrato
	db $c4			;Wait 5
	db $30			;Note C-5
	db $95,$02			;CMD Portamento up
	db $c0			;Wait 1
	db $31			;Note C#5
	db $90,$06			;CMD Portamento tone
	db $c1			;Wait 2
	db $94,$75			;CMD Vibrato
					;Wait Repeat 2
	db $30			;Note C-5
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $30			;Note C-5
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $30			;Note C-5
	db $75			;Instrument 4
	db $95,$02			;CMD Portamento up
					;Wait Repeat 1
	db $31			;Note C#5
	db $90,$06			;CMD Portamento tone
	db $c1			;Wait 2
	db $94,$75			;CMD Vibrato
					;Wait Repeat 2
	db $30			;Note C-5
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $31			;Note C#5
	db $c0			;Wait 1
	db $33			;Note D#5
	db $74			;Instrument 3
	db $c0			;Wait 1
	db $33			;Note D#5
	db $75			;Instrument 4
	db $95,$01			;CMD Portamento up
					;Wait Repeat 1
	db $35			;Note F-5
	db $90,$08			;CMD Portamento tone
	db $c1			;Wait 2
	db $94,$5a			;CMD Vibrato
	db $c2			;Wait 3
	db $92,$0a			;CMD Portamento down
	db $c1			;Wait 2
	db $31			;Note C#5
	db $95,$04			;CMD Portamento up
	db $c0			;Wait 1
	db $33			;Note D#5
	db $90,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $94,$74			;CMD Vibrato
	db $bf			;[End-Of-Track]
.track_051:
	db $0a			;Note A#1
	db $70			;Volume 15
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $0a			;Note A#1
	db $c0			;Wait 1
	db $0a			;Note A#1
					;Wait Repeat 1
	db $0a			;Note A#1
	db $c1			;Wait 2
	db $0a			;Note A#1
	db $c0			;Wait 1
	db $0a			;Note A#1
					;Wait Repeat 1
	db $09			;Note A-1
					;Wait Repeat 1
	db $0a			;Note A#1
					;Wait Repeat 1
	db $0a			;Note A#1
	db $c1			;Wait 2
	db $09			;Note A-1
	db $c0			;Wait 1
	db $0a			;Note A#1
					;Wait Repeat 1
	db $0a			;Note A#1
	db $c1			;Wait 2
	db $05			;Note F-1
					;Wait Repeat 2
	db $05			;Note F-1
	db $c0			;Wait 1
	db $05			;Note F-1
					;Wait Repeat 1
	db $05			;Note F-1
	db $c1			;Wait 2
	db $05			;Note F-1
	db $c0			;Wait 1
	db $05			;Note F-1
					;Wait Repeat 1
	db $08			;Note G#1
	db $c1			;Wait 2
	db $08			;Note G#1
	db $c0			;Wait 1
	db $08			;Note G#1
					;Wait Repeat 1
	db $08			;Note G#1
	db $c1			;Wait 2
	db $08			;Note G#1
	db $c0			;Wait 1
	db $08			;Note G#1
					;Wait Repeat 1
	db $06			;Note F#1
	db $c1			;Wait 2
	db $06			;Note F#1
	db $c0			;Wait 1
	db $06			;Note F#1
					;Wait Repeat 1
	db $06			;Note F#1
	db $c1			;Wait 2
	db $06			;Note F#1
	db $c0			;Wait 1
	db $06			;Note F#1
					;Wait Repeat 1
	db $06			;Note F#1
	db $c1			;Wait 2
	db $06			;Note F#1
	db $c0			;Wait 1
	db $06			;Note F#1
					;Wait Repeat 1
	db $06			;Note F#1
	db $c1			;Wait 2
	db $06			;Note F#1
	db $c0			;Wait 1
	db $08			;Note G#1
					;Wait Repeat 1
	db $0d			;Note C#2
	db $c1			;Wait 2
	db $0d			;Note C#2
	db $c0			;Wait 1
	db $0d			;Note C#2
					;Wait Repeat 1
	db $0d			;Note C#2
					;Wait Repeat 1
	db $14			;Note G#2
					;Wait Repeat 1
	db $19			;Note C#3
					;Wait Repeat 1
	db $19			;Note C#3
					;Wait Repeat 1
	db $08			;Note G#1
	db $c1			;Wait 2
	db $08			;Note G#1
	db $c0			;Wait 1
	db $06			;Note F#1
					;Wait Repeat 1
	db $08			;Note G#1
					;Wait Repeat 1
	db $0f			;Note D#2
					;Wait Repeat 1
	db $14			;Note G#2
					;Wait Repeat 1
	db $14			;Note G#2
	db $bf			;[End-Of-Track]
.track_052:
	db $ef			;Wait 48
	db $2c			;Note G#4
	db $67			;Volume 6
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $29			;Note F-4
					;Wait Repeat 4
	db $25			;Note C#4
					;Wait Repeat 4
	db $20			;Note G#3
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_053:
	db $ef			;Wait 48
	db $31			;Note C#5
	db $67			;Volume 6
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $2c			;Note G#4
					;Wait Repeat 4
	db $2c			;Note G#4
					;Wait Repeat 4
	db $30			;Note C-5
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_057:
	db $33			;Note D#5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $95,$02			;CMD Portamento up
	db $c0			;Wait 1
	db $35			;Note F-5
	db $90,$04			;CMD Portamento tone
	db $c1			;Wait 2
	db $6e			;Volume 13
	db $94,$75			;CMD Vibrato
	db $c2			;Wait 3
	db $6d			;Volume 12
					;Wait Repeat 3
	db $6c			;Volume 11
	db $c2			;Wait 3
	db $38			;Note G#5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $6e			;Volume 13
	db $94,$44			;CMD Vibrato
	db $c0			;Wait 1
	db $6d			;Volume 12
	db $c0			;Wait 1
	db $37			;Note G-5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $6e			;Volume 13
	db $94,$75			;CMD Vibrato
	db $c1			;Wait 2
	db $6d			;Volume 12
	db $c2			;Wait 3
	db $36			;Note F#5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $9b			;CMD End 
					;Wait Repeat 3
	db $6e			;Volume 13
	db $94,$75			;CMD Vibrato
					;Wait Repeat 3
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $31			;Note C#5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $35			;Note F-5
	db $c1			;Wait 2
	db $94,$6b			;CMD Vibrato
	db $c0			;Wait 1
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $6d			;Volume 12
	db $c2			;Wait 3
	db $6c			;Volume 11
	db $c3			;Wait 4
	db $1b			;Note D#3
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $1d			;Note F-3
					;Wait Repeat 1
	db $1e			;Note F#3
	db $c1			;Wait 2
	db $6e			;Volume 13
	db $94,$a8			;CMD Vibrato
					;Wait Repeat 2
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $20			;Note G#3
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $6e			;Volume 13
	db $94,$a8			;CMD Vibrato
	db $c1			;Wait 2
	db $6d			;Volume 12
					;Wait Repeat 2
	db $6c			;Volume 11
	db $bf			;[End-Of-Track]
.track_064:
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_065:
	db $20			;Note G#3
	db $70			;Volume 15
	db $75			;Instrument 4
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $22			;Note A#3
	db $90,$01			;CMD Portamento tone
					;Wait Repeat 1
	db $91,$89			;CMD Portamento tone + Volume slide
	db $cd			;Wait 14
	db $2e			;Note A#4
	db $70			;Volume 15
	db $c1			;Wait 2
	db $94,$68			;CMD Vibrato
	db $c0			;Wait 1
	db $96,$89			;CMD Vibrato + Volume slide
	db $cc			;Wait 13
	db $20			;Note G#3
	db $70			;Volume 15
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $22			;Note A#3
	db $90,$04			;CMD Portamento tone
					;Wait Repeat 1
	db $91,$83			;CMD Portamento tone + Volume slide
	db $c5			;Wait 6
	db $2e			;Note A#4
	db $70			;Volume 15
	db $c1			;Wait 2
	db $94,$68			;CMD Vibrato
	db $c0			;Wait 1
	db $96,$83			;CMD Vibrato + Volume slide
	db $c4			;Wait 5
	db $bf			;[End-Of-Track]
.track_066:
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_072:
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_073:
	db $2c			;Note G#4
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $98,$7b			;CMD Tremolo
	db $cf			;Wait 16
	db $38			;Note G#5
	db $98,$3f			;CMD Tremolo
					;Wait Repeat 16
	db $20			;Note G#3
	db $6f			;Volume 14
	db $98,$83			;CMD Tremolo
					;Wait Repeat 16
	db $20			;Note G#3
	db $70			;Volume 15
	db $98,$87			;CMD Tremolo
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_080:
	db $df			;Wait 32
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $a5,$af			;CMD Envelope multiplier low
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_081:
	db $0c			;Note C-2
	db $70			;Volume 15
	db $71			;Instrument 0
	db $a4,$01			;CMD Envelope multiplier high
	db $c2			;Wait 3
	db $a4,$00			;CMD Envelope multiplier high
	db $c0			;Wait 1
	db $3c			;Note C-6
	db $a5,$50			;CMD Envelope multiplier low
	db $c3			;Wait 4
	db $54			;Note C-8
	db $a5,$10			;CMD Envelope multiplier low
					;Wait Repeat 4
	db $1f			;Note G-3
	db $a4,$30			;CMD Envelope multiplier high
	db $c9			;Wait 10
	db $a5,$00			;CMD Envelope multiplier low
	db $c0			;Wait 1
	db $a4,$00			;CMD Envelope multiplier high
					;Wait Repeat 1
	db $59			;Note F-8
	db $72			;Instrument 1
	db $a5,$09			;CMD Envelope multiplier low
	db $c6			;Wait 7
	db $a5,$00			;CMD Envelope multiplier low
	db $c0			;Wait 1
	db $1d			;Note F-3
	db $76			;Instrument 5
	db $a4,$04			;CMD Envelope multiplier high
	db $cf			;Wait 16
	db $10			;Note E-2
	db $77			;Instrument 6
	db $a4,$0f			;CMD Envelope multiplier high
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_082:
	db $60			;Release 96
	db $a5,$00			;CMD Envelope multiplier low
	db $c0			;Wait 1
	db $9b			;CMD End 
	db $fe			;Wait 63
	db $bf			;[End-Of-Track]
.track_091:
	db $09			;Note A-1
	db $70			;Volume 15
	db $78			;Instrument 7
	db $c1			;Wait 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $09			;Note A-1
	db $70			;Volume 15
	db $c1			;Wait 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $09			;Note A-1
	db $70			;Volume 15
	db $c1			;Wait 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $09			;Note A-1
	db $70			;Volume 15
	db $c1			;Wait 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $09			;Note A-1
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_092:
	db $cf			;Wait 16
	db $26			;Note D-4
	db $6a			;Volume 9
	db $75			;Instrument 4
	db $a9,$38			; SCC Set Waveform 8
	db $c2			;Wait 3
	db $97,$8b			;CMD Volume slide up
	db $cc			;Wait 13
	db $21			;Note A-3
	db $70			;Volume 15
	db $7a			;Instrument 9
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $97,$8f			;CMD Volume slide up
	db $cc			;Wait 13
	db $39			;Note A-5
	db $70			;Volume 15
	db $74			;Instrument 3
	db $a9,$58			; SCC Set Waveform 12
	db $c1			;Wait 2
	db $39			;Note A-5
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $39			;Note A-5
	db $a9,$58			; SCC Set Waveform 12
					;Wait Repeat 2
	db $39			;Note A-5
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $39			;Note A-5
	db $70			;Volume 15
	db $a9,$78			; SCC Set Waveform 19
					;Wait Repeat 2
	db $39			;Note A-5
	db $a8				; SCC Soften Waveform
					;Wait Repeat 2
	db $39			;Note A-5
	db $a9,$78			; SCC Set Waveform 19
					;Wait Repeat 2
	db $39			;Note A-5
	db $a8				; SCC Soften Waveform
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_093:
	db $1f			;Note G-3
	db $6b			;Volume 10
	db $75			;Instrument 4
	db $a9,$40			; SCC Set Waveform 9
	db $c1			;Wait 2
	db $a9,$38			; SCC Set Waveform 8
					;Wait Repeat 2
	db $a9,$48			; SCC Set Waveform 10
					;Wait Repeat 2
	db $a9,$00			; SCC Set Waveform 0
					;Wait Repeat 2
	db $a9,$78			; SCC Set Waveform 19
					;Wait Repeat 2
	db $a9,$80			; SCC Set Waveform 20
					;Wait Repeat 2
	db $a9,$88			; SCC Set Waveform 22
					;Wait Repeat 2
	db $a9,$30			; SCC Set Waveform 7
					;Wait Repeat 2
	db $2d			;Note A-4
	db $6a			;Volume 9
	db $a9,$38			; SCC Set Waveform 8
					;Wait Repeat 2
	db $94,$75			;CMD Vibrato
	db $c0			;Wait 1
	db $96,$8b			;CMD Vibrato + Volume slide
	db $cc			;Wait 13
	db $28			;Note E-4
	db $70			;Volume 15
	db $7a			;Instrument 9
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $97,$8f			;CMD Volume slide up
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_094:
	db $cf			;Wait 16
	db $30			;Note C-5
	db $6a			;Volume 9
	db $75			;Instrument 4
	db $a9,$38			; SCC Set Waveform 8
	db $c1			;Wait 2
	db $94,$75			;CMD Vibrato
	db $c0			;Wait 1
	db $96,$8b			;CMD Vibrato + Volume slide
	db $cc			;Wait 13
	db $2b			;Note G-4
	db $70			;Volume 15
	db $7a			;Instrument 9
	db $9b			;CMD End 
	db $c2			;Wait 3
	db $97,$8f			;CMD Volume slide up
	db $dc			;Wait 29
	db $bf			;[End-Of-Track]
.track_099:
	db $05			;Note F-1
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a9,$38			; SCC Set Waveform 8
	db $cf			;Wait 16
	db $2b			;Note G-4
	db $6e			;Volume 13
	db $a9,$58			; SCC Set Waveform 12
	db $c0			;Wait 1
	db $ac,$00			; SCC Morph speed 0
					;Wait Repeat 1
	db $ab,$01			; SCC Morph follow (Carbon C0poy) 1
	db $c1			;Wait 2
	db $9c,$10			; SCC Morph to Waveform 2
	db $c3			;Wait 4
	db $9c,$58			; SCC Morph to Waveform 12
					;Wait Repeat 4
	db $9c,$10			; SCC Morph to Waveform 2
					;Wait Repeat 4
	db $26			;Note D-4
	db $6c			;Volume 11
	db $9c,$58			; SCC Morph to Waveform 12
					;Wait Repeat 4
	db $9c,$10			; SCC Morph to Waveform 2
					;Wait Repeat 4
	db $9c,$58			; SCC Morph to Waveform 12
					;Wait Repeat 4
	db $9c,$10			; SCC Morph to Waveform 2
					;Wait Repeat 4
	db $9c,$58			; SCC Morph to Waveform 12
					;Wait Repeat 4
	db $9c,$90			; SCC Morph to Waveform 28
					;Wait Repeat 4
	db $9c,$68			; SCC Morph to Waveform 16
					;Wait Repeat 4
	db $9c,$00			; SCC Morph to Waveform 0
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_100:
	db $05			;Note F-1
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $a9,$20			; SCC Set Waveform 4
	db $c0			;Wait 1
	db $9c,$98			; SCC Morph to Waveform 31
	db $ce			;Wait 15
	db $60			;Release 96
	db $cf			;Wait 16
	db $2b			;Note G-4
	db $6c			;Volume 11
	db $aa				; SCC Morph foloow (Carbon C0poy) 0
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_101:
	db $ac,$02			; SCC Morph speed 2
	db $cf			;Wait 16
	db $60			;Release 96
	db $cf			;Wait 16
	db $2f			;Note B-4
	db $6c			;Volume 11
	db $75			;Instrument 4
	db $aa				; SCC Morph foloow (Carbon C0poy) 0
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_102:
	db $cf			;Wait 16
	db $60			;Release 96
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_104:
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $a3,$0b			;CMD Speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $a3,$0a			;CMD Speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $a3,$09			;CMD Speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $a3,$08			;CMD Speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $a3,$07			;CMD Speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $a3,$06			;CMD Speed
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_105:
	db $60			;Release 96
	db $d9			;Wait 26
	db $1f			;Note G-3
	db $7b			;Instrument 10
	db $a0			;CMD Note link
	db $c0			;Wait 1
	db $9d,$00			;CMD Arpegio speed
					;Wait Repeat 1
	db $41			;Note F-6
	db $6f			;Volume 14
	db $74			;Instrument 3
	db $a1,$07			;CMD Track detune
	db $c1			;Wait 2
	db $41			;Note F-6
	db $a1,$06			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$05			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$04			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$03			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$02			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$01			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$08			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$09			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$0a			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$0b			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$0c			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$0d			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$0e			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$0f			;CMD Track detune
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $41			;Note F-6
	db $75			;Instrument 4
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_106:
	db $60			;Release 96
	db $db			;Wait 28
	db $41			;Note F-6
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $c3			;Wait 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $41			;Note F-6
					;Wait Repeat 4
	db $41			;Note F-6
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $41			;Note F-6
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_107:
	db $37			;Note G-5
	db $6f			;Volume 14
	db $75			;Instrument 4
	db $a9,$58			; SCC Set Waveform 12
	db $c0			;Wait 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $34			;Note E-5
					;Wait Repeat 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $29			;Note F-4
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $9a,$03			;CMD Note delay
					;Wait Repeat 1
	db $2d			;Note A-4
	db $9a,$05			;CMD Note delay
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $9a,$03			;CMD Note delay
					;Wait Repeat 1
	db $2b			;Note G-4
	db $9a,$05			;CMD Note delay
	db $c1			;Wait 2
	db $30			;Note C-5
	db $7b			;Instrument 10
	db $a9,$58			; SCC Set Waveform 12
					;Wait Repeat 2
	db $2e			;Note A#4
	db $a0			;CMD Note link
					;Wait Repeat 2
	db $2d			;Note A-4
	db $a0			;CMD Note link
					;Wait Repeat 2
	db $2b			;Note G-4
	db $a0			;CMD Note link
					;Wait Repeat 2
	db $24			;Note C-4
	db $a0			;CMD Note link
					;Wait Repeat 2
	db $22			;Note A#3
	db $a0			;CMD Note link
					;Wait Repeat 2
	db $21			;Note A-3
	db $a0			;CMD Note link
					;Wait Repeat 2
	db $1f			;Note G-3
	db $a0			;CMD Note link
	db $c0			;Wait 1
	db $9d,$00			;CMD Arpegio speed
					;Wait Repeat 1
	db $41			;Note F-6
	db $6f			;Volume 14
	db $74			;Instrument 3
	db $a1,$07			;CMD Track detune
	db $c1			;Wait 2
	db $41			;Note F-6
	db $a1,$06			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$05			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$04			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$03			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$02			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$01			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$08			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$09			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$0a			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$0b			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$0c			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$0d			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$0e			;CMD Track detune
					;Wait Repeat 2
	db $41			;Note F-6
	db $a1,$0f			;CMD Track detune
	db $c3			;Wait 4
	db $41			;Note F-6
	db $75			;Instrument 4
	db $a1,$00			;CMD Track detune
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_112:
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $a3,$06			;CMD Speed
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $a3,$05			;CMD Speed
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
					;Wait Repeat 4
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_115:
	db $3c			;Note C-6
	db $75			;Instrument 4
	db $a9,$58			; SCC Set Waveform 12
	db $c1			;Wait 2
	db $37			;Note G-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $3c			;Note C-6
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $39			;Note A-5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $37			;Note G-5
	db $c0			;Wait 1
	db $35			;Note F-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $32			;Note D-5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $30			;Note C-5
	db $c0			;Wait 1
	db $34			;Note E-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $37			;Note G-5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $c0			;Wait 1
	db $40			;Note E-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $43			;Note G-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $48			;Note C-7
	db $c0			;Wait 1
	db $47			;Note B-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $45			;Note A-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $43			;Note G-6
	db $c0			;Wait 1
	db $41			;Note F-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $3e			;Note D-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $3c			;Note C-6
	db $c0			;Wait 1
	db $40			;Note E-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $43			;Note G-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $48			;Note C-7
	db $c0			;Wait 1
	db $43			;Note G-6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $40			;Note E-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $3c			;Note C-6
					;Wait Repeat 2
	db $60			;Release 96
	db $d5			;Wait 22
	db $bf			;[End-Of-Track]

