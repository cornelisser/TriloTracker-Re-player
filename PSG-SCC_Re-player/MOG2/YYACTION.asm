; Song: Time For Some Action            
; By:   Jorito 2022                     
; Period table: A440 Modern

; [ Song start data ]
	db $07						; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start		; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_002, .track_003, .track_004, .track_005, .track_006, .track_007	; Step:000 Pattern:000
.restart:
	dw .track_016, .track_001, .track_018, .track_019, .track_020, .track_021, .track_022, .track_023	; Step:001 Pattern:002
	dw .track_000, .track_001, .track_018, .track_003, .track_004, .track_005, .track_030, .track_031	; Step:002 Pattern:003
	dw .track_032, .track_001, .track_018, .track_019, .track_020, .track_021, .track_038, .track_039	; Step:003 Pattern:004
	dw .track_040, .track_041, .track_018, .track_043, .track_044, .track_045, .track_046, .track_047	; Step:004 Pattern:005
	dw .track_048, .track_041, .track_018, .track_051, .track_020, .track_021, .track_054, .track_055	; Step:005 Pattern:006
	dw .track_000, .track_001, .track_018, .track_003, .track_004, .track_005, .track_062, .track_063	; Step:006 Pattern:007
	dw 0x0000, .restart				; End of sequence delimiter + restart address.


; [ SCC Waveforms ]
.waveform_start:
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00				; Waveform:0
	db $80, $b0, $c0, $10, $1a, $2a, $2c, $1a, $00, $e0, $d0, $e0, $22, $53, $70, $75, $70, $31, $ea, $80, $88, $8a, $8c, $8e, $00, $7f, $75, $73, $62, $00, $c0, $90				; Waveform:1
	db $00, $7f, $00, $80, $a0, $c0, $d8, $f0, $08, $20, $30, $40, $50, $60, $70, $78, $7c, $7f, $7c, $78, $70, $60, $50, $40, $30, $20, $08, $f0, $d8, $c0, $a0, $80				; Waveform:5
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $00, $e7, $cf, $b9, $a6, $96, $8b, $83, $80, $83, $8b, $96, $a6, $b9, $cf, $e7				; Waveform:6
	db $90, $88, $90, $9c, $b0, $c0, $e0, $26, $70, $7c, $70, $56, $40, $20, $10, $fc, $e0, $fc, $10, $fc, $40, $54, $72, $7f, $70, $26, $e0, $c0, $b0, $9c, $90, $88				; Waveform:7
	db $07, $27, $67, $3f, $07, $c7, $d7, $2f, $47, $07, $0f, $07, $ef, $f7, $ff, $df, $b7, $87, $c7, $4f, $1f, $c7, $e7, $0f, $07, $0f, $47, $6f, $27, $d7, $df, $ef				; Waveform:11
	db $30, $68, $7d, $68, $38, $20, $40, $54, $60, $68, $5c, $20, $e8, $18, $30, $28, $10, $e0, $bc, $c0, $d8, $b8, $98, $90, $9f, $98, $88, $98, $a0, $b4, $b0, $d8				; Waveform:12

; [ Instruments]
.instrument_start:
	dw .instrument_00				; BD POW Solid    
	dw .instrument_01				; SD POW Solid    
	dw .instrument_02				; HH close So HI  
	dw .instrument_03				; HH open Solid   
	dw .instrument_04				; TOM             
	dw .instrument_05				; Staccato BASS   
	dw .instrument_06				; HH OP A8        
	dw .instrument_07				; CONT            
	dw .instrument_08				; SC Dist GTR B   
	dw .instrument_09				; Response BELL   
	dw .instrument_10				; ARP 2           
	dw .instrument_11				; HH roll         

.instrument_00:					; BD POW Solid    
	db $00						; Waveform 0
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $08,$00						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_01:					; SD POW Solid    
	db $00						; Waveform 0
	db $02,$10						; Mixer (T)
	db $04,$05,$00					; Tone add
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$00						; Noise _
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$0b						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$0a						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$09						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$08						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$07						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$05						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$04						; Volume _
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$00						; Noise _
	db $08,$02						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_02:					; HH close So HI  
	db $00						; Waveform 0
	db $02,$90						; Mixer (TN)
	db $0E,$00						; Noise _
	db $08,$0e						; Volume _
	db $02,$90						; Mixer (TN)
	db $08,$06						; Volume _
								; --- Macro loop
	db $02,$90						; Mixer (TN)
	db $0E,$00						; Noise _
	db $08,$00						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_03:					; HH open Solid   
	db $00						; Waveform 0
	db $02,$90						; Mixer (TN)
	db $0E,$00						; Noise _
	db $08,$0e						; Volume _
	db $02,$90						; Mixer (TN)
	db $08,$0e						; Volume _
	db $02,$90						; Mixer (TN)
	db $08,$0c						; Volume _
								; --- Macro loop
	db $02,$90						; Mixer (TN)
	db $0E,$00						; Noise _
	db $08,$01						; Volume _
	db $18,$f9						; Loop (-8)

.instrument_04:					; TOM             
	db $00						; Waveform 0
	db $02,$10						; Mixer (T)
	db $04,$40,$00					; Tone add
	db $08,$0e						; Volume _
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
	db $18,$ec						; Loop (-21)

.instrument_05:					; Staccato BASS   
	db $08						; Waveform 1
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
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
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_06:					; HH OP A8        
	db $10						; Waveform 2
	db $02,$90						; Mixer (TN)
	db $0E,$00						; Noise _
	db $08,$0e						; Volume _
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

.instrument_07:					; CONT            
	db $20						; Waveform 4
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_08:					; SC Dist GTR B   
	db $28						; Waveform 5
	db $02,$10						; Mixer (T)
	db $04,$02,$00					; Tone add
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_09:					; Response BELL   
	db $30						; Waveform 6
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
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
	db $0c,$01						; Volume -
	db $18,$d5						; Loop (-44)

.instrument_10:					; ARP 2           
	db $10						; Waveform 2
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$07						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$07						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_11:					; HH roll         
	db $18						; Waveform 3
	db $02,$90						; Mixer (TN)
	db $0E,$02						; Noise _
	db $08,$0f						; Volume _
								; --- Macro loop
	db $02,$90						; Mixer (TN)
	db $0E,$02						; Noise _
	db $08,$0c						; Volume _
	db $02,$90						; Mixer (TN)
	db $04,$ff,$ff					; Tone sub
	db $12,$02						; Noise +
	db $08,$0c						; Volume _
	db $18,$f0						; Loop (-17)


; [ Song track data ]
.track_000:
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $21			;Note A-3
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $21			;Note A-3
	db $71			;Volume 15
	db $73			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $75			;Instrument 3
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $21			;Note A-3
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 14
	db $73			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $75			;Instrument 3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_001:
	db $09			;Note A-1
	db $6d			;Volume 11
	db $78			;Instrument 6
	db $c7			;Wait 8
	db $21			;Note A-3
	db $6f			;Volume 13
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6d			;Volume 11
	db $78			;Instrument 6
					;Wait Repeat 4
	db $09			;Note A-1
	db $6d			;Volume 11
					;Wait Repeat 4
	db $2d			;Note A-4
	db $6f			;Volume 13
	db $7d			;Instrument 11
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $76			;Instrument 4
					;Wait Repeat 4
	db $39			;Note A-5
	db $6f			;Volume 13
	db $7d			;Instrument 11
					;Wait Repeat 4
	db $09			;Note A-1
	db $6d			;Volume 11
	db $78			;Instrument 6
	db $c5			;Wait 6
	db $09			;Note A-1
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6d			;Volume 11
	db $78			;Instrument 6
					;Wait Repeat 4
	db $09			;Note A-1
	db $6d			;Volume 11
					;Wait Repeat 4
	db $32			;Note D-5
	db $6f			;Volume 13
	db $7d			;Instrument 11
	db $c7			;Wait 8
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_002:
	db $71			;Volume 15
	db $72			;Instrument 0
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_003:
	db $09			;Note A-1
	db $71			;Volume 15
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $9c			;CMD End 
					;Wait Repeat 1
	db $60			;Release 96
	db $c9			;Wait 10
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $04			;Note E-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $07			;Note G-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c9			;Wait 10
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $0a			;Note A#1
	db $96,$17			;CMD Portamento up
					;Wait Repeat 2
	db $0c			;Note C-2
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$a8			;CMD Vibrato Extended
					;Wait Repeat 1
	db $95,$ca			;CMD Vibrato Extended
	db $c1			;Wait 2
	db $93,$06			;CMD Portamento down
	db $c0			;Wait 1
	db $93,$a3			;CMD Portamento down
	db $bf			;[End-Of-Track]
.track_004:
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6f			;Volume 13
	db $7b			;Instrument 9
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $24			;Note C-4
	db $96,$07			;CMD Portamento up
	db $c0			;Wait 1
	db $26			;Note D-4
	db $9c			;CMD End 
					;Wait Repeat 1
	db $95,$44			;CMD Vibrato
	db $c1			;Wait 2
	db $24			;Note C-4
	db $9c			;CMD End 
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $21			;Note A-3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_005:
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $6c			;Volume 10
	db $7c			;Instrument 10
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $30			;Note C-5
	db $c0			;Wait 1
	db $32			;Note D-5
	db $c2			;Wait 3
	db $30			;Note C-5
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_006:
	db $09			;Note A-1
	db $71			;Volume 15
	db $7a			;Instrument 8
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $9c			;CMD End 
					;Wait Repeat 1
	db $60			;Release 96
	db $c9			;Wait 10
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $04			;Note E-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $07			;Note G-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c9			;Wait 10
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $0a			;Note A#1
	db $96,$17			;CMD Portamento up
					;Wait Repeat 2
	db $0c			;Note C-2
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$a8			;CMD Vibrato Extended
					;Wait Repeat 1
	db $95,$ca			;CMD Vibrato Extended
	db $c1			;Wait 2
	db $93,$06			;CMD Portamento down
	db $c0			;Wait 1
	db $93,$a3			;CMD Portamento down
	db $bf			;[End-Of-Track]
.track_007:
	db $60			;Release 96
	db $71			;Volume 15
	db $72			;Instrument 0
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_016:
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $21			;Note A-3
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $21			;Note A-3
	db $71			;Volume 15
	db $73			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $75			;Instrument 3
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $21			;Note A-3
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $21			;Note A-3
	db $71			;Volume 15
	db $73			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $75			;Instrument 3
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_018:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_019:
	db $09			;Note A-1
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c9			;Wait 10
	db $09			;Note A-1
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $04			;Note E-1
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $07			;Note G-1
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $09			;Note A-1
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c9			;Wait 10
	db $09			;Note A-1
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $c1			;Wait 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $0f			;Note D#2
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $0f			;Note D#2
	db $96,$07			;CMD Portamento up
					;Wait Repeat 1
	db $10			;Note E-2
	db $9c			;CMD End 
					;Wait Repeat 1
	db $13			;Note G-2
	db $c1			;Wait 2
	db $0e			;Note D-2
	db $c0			;Wait 1
	db $93,$14			;CMD Portamento down
					;Wait Repeat 1
	db $0c			;Note C-2
	db $9c			;CMD End 
					;Wait Repeat 1
	db $95,$88			;CMD Vibrato
	db $bf			;[End-Of-Track]
.track_020:
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $26			;Note D-4
					;Wait Repeat 2
	db $27			;Note D#4
	db $c1			;Wait 2
	db $95,$88			;CMD Vibrato
	db $c3			;Wait 4
	db $28			;Note E-4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_021:
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $31			;Note C#5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $33			;Note D#5
	db $c1			;Wait 2
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $34			;Note E-5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_022:
	db $09			;Note A-1
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c9			;Wait 10
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $04			;Note E-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $07			;Note G-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c9			;Wait 10
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $31			;Note C#5
	db $c0			;Wait 1
	db $32			;Note D-5
	db $91,$02			;CMD Portamento tone
	db $c3			;Wait 4
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_023:
	db $60			;Release 96
	db $a2,$02			;CMD Track detune
	db $f5			;Wait 54
	db $2d			;Note A-4
	db $6b			;Volume 9
	db $79			;Instrument 7
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $30			;Note C-5
					;Wait Repeat 2
	db $31			;Note C#5
	db $c0			;Wait 1
	db $32			;Note D-5
	db $91,$02			;CMD Portamento tone
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_030:
	db $32			;Note D-5
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $33			;Note D#5
	db $91,$06			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c3			;Wait 4
	db $32			;Note D-5
	db $c1			;Wait 2
	db $95,$48			;CMD Vibrato
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $30			;Note C-5
	db $91,$1a			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
	db $95,$48			;CMD Vibrato
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $29			;Note F-4
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $91,$07			;CMD Portamento tone
	db $c1			;Wait 2
	db $95,$48			;CMD Vibrato
	db $c2			;Wait 3
	db $28			;Note E-4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $2d			;Note A-4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $30			;Note C-5
	db $c0			;Wait 1
	db $32			;Note D-5
	db $91,$07			;CMD Portamento tone
	db $c3			;Wait 4
	db $33			;Note D#5
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $91,$07			;CMD Portamento tone
	db $bf			;[End-Of-Track]
.track_031:
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $32			;Note D-5
	db $6b			;Volume 9
	db $79			;Instrument 7
	db $9c			;CMD End 
					;Wait Repeat 1
	db $33			;Note D#5
	db $91,$06			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c3			;Wait 4
	db $32			;Note D-5
	db $c1			;Wait 2
	db $95,$48			;CMD Vibrato
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $30			;Note C-5
	db $91,$1a			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c3			;Wait 4
	db $28			;Note E-4
	db $c1			;Wait 2
	db $95,$48			;CMD Vibrato
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $29			;Note F-4
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $91,$07			;CMD Portamento tone
	db $c1			;Wait 2
	db $95,$48			;CMD Vibrato
	db $c2			;Wait 3
	db $28			;Note E-4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $2d			;Note A-4
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $30			;Note C-5
	db $c0			;Wait 1
	db $32			;Note D-5
	db $91,$07			;CMD Portamento tone
	db $c3			;Wait 4
	db $33			;Note D#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_032:
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $21			;Note A-3
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $21			;Note A-3
	db $71			;Volume 15
	db $73			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $75			;Instrument 3
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $21			;Note A-3
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $09			;Note A-1
	db $71			;Volume 15
					;Wait Repeat 2
	db $21			;Note A-3
	db $71			;Volume 15
	db $73			;Instrument 1
	db $c2			;Wait 3
	db $15			;Note A-2
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 3
	db $21			;Note A-3
	db $71			;Volume 15
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_038:
	db $c1			;Wait 2
	db $95,$22			;CMD Vibrato
	db $c3			;Wait 4
	db $95,$24			;CMD Vibrato
	db $c2			;Wait 3
	db $93,$07			;CMD Portamento down
	db $c0			;Wait 1
	db $60			;Release 96
	db $cd			;Wait 14
	db $28			;Note E-4
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $32			;Note D-5
	db $c0			;Wait 1
	db $33			;Note D#5
	db $91,$0a			;CMD Portamento tone
					;Wait Repeat 1
	db $95,$44			;CMD Vibrato
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $9c			;CMD End 
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $30			;Note C-5
	db $c0			;Wait 1
	db $32			;Note D-5
	db $91,$0a			;CMD Portamento tone
					;Wait Repeat 1
	db $95,$44			;CMD Vibrato
	db $c1			;Wait 2
	db $30			;Note C-5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $2d			;Note A-4
	db $91,$1a			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $2d			;Note A-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $32			;Note D-5
	db $c0			;Wait 1
	db $33			;Note D#5
	db $91,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $37			;Note G-5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_039:
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $91,$07			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$22			;CMD Vibrato
	db $c3			;Wait 4
	db $95,$24			;CMD Vibrato
	db $c2			;Wait 3
	db $93,$07			;CMD Portamento down
	db $c0			;Wait 1
	db $60			;Release 96
	db $cd			;Wait 14
	db $28			;Note E-4
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $2b			;Note G-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $2d			;Note A-4
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $32			;Note D-5
	db $c0			;Wait 1
	db $33			;Note D#5
	db $91,$0a			;CMD Portamento tone
					;Wait Repeat 1
	db $95,$44			;CMD Vibrato
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $9c			;CMD End 
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $30			;Note C-5
	db $c0			;Wait 1
	db $32			;Note D-5
	db $91,$0a			;CMD Portamento tone
					;Wait Repeat 1
	db $95,$44			;CMD Vibrato
	db $c1			;Wait 2
	db $30			;Note C-5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $2d			;Note A-4
	db $91,$1a			;CMD Portamento tone
					;Wait Repeat 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $2d			;Note A-4
	db $c0			;Wait 1
	db $60			;Release 96
					;Wait Repeat 1
	db $32			;Note D-5
	db $c0			;Wait 1
	db $33			;Note D#5
	db $91,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_040:
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $21			;Note A-3
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $21			;Note A-3
	db $71			;Volume 15
	db $73			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $75			;Instrument 3
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $21			;Note A-3
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
	db $c2			;Wait 3
	db $21			;Note A-3
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $c0			;Wait 1
	db $21			;Note A-3
	db $71			;Volume 15
	db $c2			;Wait 3
	db $21			;Note A-3
	db $71			;Volume 15
					;Wait Repeat 3
	db $21			;Note A-3
	db $71			;Volume 15
					;Wait Repeat 3
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 3
	db $21			;Note A-3
	db $71			;Volume 15
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_041:
	db $09			;Note A-1
	db $6d			;Volume 11
	db $78			;Instrument 6
	db $c7			;Wait 8
	db $21			;Note A-3
	db $6f			;Volume 13
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6d			;Volume 11
	db $78			;Instrument 6
					;Wait Repeat 4
	db $09			;Note A-1
	db $6d			;Volume 11
					;Wait Repeat 4
	db $2d			;Note A-4
	db $6f			;Volume 13
	db $7d			;Instrument 11
					;Wait Repeat 4
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $76			;Instrument 4
					;Wait Repeat 4
	db $39			;Note A-5
	db $6f			;Volume 13
	db $7d			;Instrument 11
					;Wait Repeat 4
	db $09			;Note A-1
	db $6d			;Volume 11
	db $78			;Instrument 6
	db $c5			;Wait 6
	db $09			;Note A-1
	db $6d			;Volume 11
	db $c1			;Wait 2
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $09			;Note A-1
	db $6d			;Volume 11
	db $78			;Instrument 6
					;Wait Repeat 4
	db $09			;Note A-1
	db $6d			;Volume 11
	db $cb			;Wait 12
	db $1c			;Note E-3
	db $6f			;Volume 13
	db $76			;Instrument 4
	db $c3			;Wait 4
	db $bf			;[End-Of-Track]
.track_043:
	db $09			;Note A-1
	db $71			;Volume 15
	db $77			;Instrument 5
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $9c			;CMD End 
					;Wait Repeat 1
	db $60			;Release 96
	db $c9			;Wait 10
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $04			;Note E-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $07			;Note G-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c9			;Wait 10
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $07			;Note G-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $0a			;Note A#1
	db $96,$17			;CMD Portamento up
	db $c1			;Wait 2
	db $0c			;Note C-2
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$a8			;CMD Vibrato Extended
					;Wait Repeat 1
	db $95,$ca			;CMD Vibrato Extended
	db $c1			;Wait 2
	db $93,$06			;CMD Portamento down
	db $c0			;Wait 1
	db $93,$a3			;CMD Portamento down
	db $bf			;[End-Of-Track]
.track_044:
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $6f			;Volume 13
	db $7b			;Instrument 9
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $21			;Note A-3
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $1f			;Note G-3
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $21			;Note A-3
					;Wait Repeat 2
	db $60			;Release 96
	db $c2			;Wait 3
	db $24			;Note C-4
	db $96,$07			;CMD Portamento up
	db $c0			;Wait 1
	db $26			;Note D-4
	db $9c			;CMD End 
					;Wait Repeat 1
	db $95,$44			;CMD Vibrato
	db $c1			;Wait 2
	db $27			;Note D#4
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $28			;Note E-4
					;Wait Repeat 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_045:
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $6c			;Volume 10
	db $7c			;Instrument 10
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $2d			;Note A-4
	db $c1			;Wait 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
	db $c2			;Wait 3
	db $30			;Note C-5
	db $96,$07			;CMD Portamento up
	db $c0			;Wait 1
	db $32			;Note D-5
	db $9c			;CMD End 
					;Wait Repeat 1
	db $95,$44			;CMD Vibrato
	db $c1			;Wait 2
	db $33			;Note D#5
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $34			;Note E-5
					;Wait Repeat 3
	db $37			;Note G-5
					;Wait Repeat 3
	db $38			;Note G#5
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_046:
	db $32			;Note D-5
	db $71			;Volume 15
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $33			;Note D#5
	db $91,$06			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c3			;Wait 4
	db $32			;Note D-5
	db $c1			;Wait 2
	db $95,$48			;CMD Vibrato
					;Wait Repeat 2
	db $30			;Note C-5
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $33			;Note D#5
	db $c0			;Wait 1
	db $34			;Note E-5
	db $91,$0a			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$44			;CMD Vibrato
					;Wait Repeat 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $35			;Note F-5
	db $9c			;CMD End 
					;Wait Repeat 1
	db $37			;Note G-5
	db $91,$04			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $c3			;Wait 4
	db $34			;Note E-5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $93,$07			;CMD Portamento down
	db $c3			;Wait 4
	db $34			;Note E-5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $31			;Note C#5
	db $c0			;Wait 1
	db $32			;Note D-5
	db $91,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $37			;Note G-5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $38			;Note G#5
					;Wait Repeat 1
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_047:
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $32			;Note D-5
	db $6b			;Volume 9
	db $79			;Instrument 7
	db $9c			;CMD End 
					;Wait Repeat 1
	db $33			;Note D#5
	db $91,$06			;CMD Portamento tone
	db $c2			;Wait 3
	db $60			;Release 96
	db $c3			;Wait 4
	db $32			;Note D-5
	db $c1			;Wait 2
	db $95,$48			;CMD Vibrato
					;Wait Repeat 2
	db $30			;Note C-5
	db $9c			;CMD End 
	db $c3			;Wait 4
	db $60			;Release 96
					;Wait Repeat 4
	db $32			;Note D-5
					;Wait Repeat 4
	db $60			;Release 96
					;Wait Repeat 4
	db $33			;Note D#5
	db $c0			;Wait 1
	db $34			;Note E-5
	db $91,$0a			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$44			;CMD Vibrato
					;Wait Repeat 3
	db $60			;Release 96
	db $c0			;Wait 1
	db $35			;Note F-5
	db $9c			;CMD End 
					;Wait Repeat 1
	db $37			;Note G-5
	db $91,$04			;CMD Portamento tone
	db $c2			;Wait 3
	db $95,$48			;CMD Vibrato
	db $c3			;Wait 4
	db $34			;Note E-5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $93,$07			;CMD Portamento down
	db $c3			;Wait 4
	db $34			;Note E-5
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $31			;Note C#5
	db $c0			;Wait 1
	db $32			;Note D-5
	db $91,$0a			;CMD Portamento tone
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $37			;Note G-5
	db $c1			;Wait 2
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_048:
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $21			;Note A-3
	db $73			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $21			;Note A-3
	db $71			;Volume 15
	db $73			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $75			;Instrument 3
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $5d			;Note A-8
	db $c1			;Wait 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $21			;Note A-3
	db $71			;Volume 15
	db $73			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
					;Wait Repeat 2
	db $21			;Note A-3
	db $71			;Volume 15
	db $73			;Instrument 1
					;Wait Repeat 2
	db $09			;Note A-1
	db $71			;Volume 15
	db $72			;Instrument 0
					;Wait Repeat 2
	db $09			;Note A-1
	db $71			;Volume 15
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6e			;Volume 12
	db $74			;Instrument 2
	db $c0			;Wait 1
	db $21			;Note A-3
	db $6c			;Volume 10
	db $73			;Instrument 1
					;Wait Repeat 1
	db $21			;Note A-3
	db $6f			;Volume 13
					;Wait Repeat 1
	db $21			;Note A-3
	db $71			;Volume 15
	db $c2			;Wait 3
	db $21			;Note A-3
	db $71			;Volume 15
					;Wait Repeat 3
	db $21			;Note A-3
	db $71			;Volume 15
					;Wait Repeat 3
	db $15			;Note A-2
	db $71			;Volume 15
	db $72			;Instrument 0
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_051:
	db $09			;Note A-1
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c9			;Wait 10
	db $09			;Note A-1
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $04			;Note E-1
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $07			;Note G-1
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $09			;Note A-1
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c9			;Wait 10
	db $09			;Note A-1
	db $77			;Instrument 5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c3			;Wait 4
	db $0c			;Note C-2
	db $c2			;Wait 3
	db $0e			;Note D-2
					;Wait Repeat 3
	db $10			;Note E-2
					;Wait Repeat 3
	db $13			;Note G-2
					;Wait Repeat 3
	db $14			;Note G#2
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_054:
	db $37			;Note G-5
	db $70			;Volume 14
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $39			;Note A-5
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$22			;CMD Vibrato
	db $c4			;Wait 5
	db $95,$24			;CMD Vibrato
	db $c2			;Wait 3
	db $97,$86			;CMD Vibrato + Volume slide
	db $c5			;Wait 6
	db $60			;Release 96
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $33			;Note D#5
	db $71			;Volume 15
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $32			;Note D-5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $91,$0a			;CMD Portamento tone
					;Wait Repeat 1
	db $95,$44			;CMD Vibrato
	db $c1			;Wait 2
	db $30			;Note C-5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2a			;Note F#4
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $95,$44			;CMD Vibrato
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $9c			;CMD End 
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
	db $c2			;Wait 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $30			;Note C-5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_055:
	db $38			;Note G#5
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $37			;Note G-5
	db $6a			;Volume 8
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $39			;Note A-5
	db $91,$03			;CMD Portamento tone
	db $c3			;Wait 4
	db $95,$22			;CMD Vibrato
	db $c4			;Wait 5
	db $95,$24			;CMD Vibrato
	db $c2			;Wait 3
	db $97,$86			;CMD Vibrato + Volume slide
	db $c5			;Wait 6
	db $60			;Release 96
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $33			;Note D#5
	db $6b			;Volume 9
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $32			;Note D-5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $60			;Release 96
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $2d			;Note A-4
	db $91,$0a			;CMD Portamento tone
					;Wait Repeat 1
	db $95,$44			;CMD Vibrato
	db $c1			;Wait 2
	db $30			;Note C-5
	db $9c			;CMD End 
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $2a			;Note F#4
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $c0			;Wait 1
	db $95,$44			;CMD Vibrato
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $9c			;CMD End 
					;Wait Repeat 2
	db $2d			;Note A-4
					;Wait Repeat 2
	db $60			;Release 96
					;Wait Repeat 2
	db $28			;Note E-4
	db $c2			;Wait 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $30			;Note C-5
	db $c1			;Wait 2
	db $60			;Release 96
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $c1			;Wait 2
	db $60			;Release 96
	db $bf			;[End-Of-Track]
.track_062:
	db $2b			;Note G-4
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$22			;CMD Vibrato
	db $c5			;Wait 6
	db $95,$24			;CMD Vibrato
	db $c0			;Wait 1
	db $97,$8c			;CMD Vibrato + Volume slide
	db $d0			;Wait 17
	db $60			;Release 96
	db $c0			;Wait 1
	db $09			;Note A-1
	db $71			;Volume 15
	db $7a			;Instrument 8
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $60			;Release 96
	db $c9			;Wait 10
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c5			;Wait 6
	db $09			;Note A-1
	db $c1			;Wait 2
	db $60			;Release 96
	db $c1			;Wait 2
	db $0a			;Note A#1
	db $96,$17			;CMD Portamento up
					;Wait Repeat 2
	db $00			;Note C-1
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $95,$a8			;CMD Vibrato Extended
					;Wait Repeat 1
	db $95,$ca			;CMD Vibrato Extended
	db $c1			;Wait 2
	db $93,$06			;CMD Portamento down
	db $c0			;Wait 1
	db $93,$a3			;CMD Portamento down
	db $bf			;[End-Of-Track]
.track_063:
	db $2c			;Note G#4
	db $c0			;Wait 1
	db $60			;Release 96
	db $c0			;Wait 1
	db $2b			;Note G-4
	db $79			;Instrument 7
	db $9c			;CMD End 
	db $c1			;Wait 2
	db $2d			;Note A-4
	db $91,$04			;CMD Portamento tone
	db $c4			;Wait 5
	db $95,$22			;CMD Vibrato
	db $c5			;Wait 6
	db $95,$24			;CMD Vibrato
	db $c0			;Wait 1
	db $97,$8c			;CMD Vibrato + Volume slide
	db $d0			;Wait 17
	db $60			;Release 96
	db $de			;Wait 31
	db $bf			;[End-Of-Track]

