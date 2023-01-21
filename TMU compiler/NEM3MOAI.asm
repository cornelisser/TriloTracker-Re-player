; Song: NEM3 -Moai Stage                
; By:   Konami (Arr. by Gryzor87)       
; Period table: A445 Konami

; [ Song start data ]
	db $06					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_001, .track_002, .track_002, .track_004, .track_005, .track_006, .track_007	; Step:000 Pattern:000
	dw .track_008, .track_009, .track_010, .track_010, .track_012, .track_013, .track_014, .track_015	; Step:001 Pattern:001
	dw .track_016, .track_017, .track_010, .track_010, .track_020, .track_021, .track_022, .track_023	; Step:002 Pattern:002
	dw .track_008, .track_025, .track_010, .track_010, .track_012, .track_029, .track_030, .track_031	; Step:003 Pattern:003
	dw .track_016, .track_033, .track_010, .track_010, .track_020, .track_029, .track_038, .track_039	; Step:004 Pattern:004
	dw .track_008, .track_041, .track_010, .track_010, .track_012, .track_029, .track_046, .track_047	; Step:005 Pattern:005
	dw .track_016, .track_010, .track_010, .track_010, .track_020, .track_029, .track_054, .track_055	; Step:006 Pattern:006
	dw .track_008, .track_057, .track_010, .track_010, .track_012, .track_029, .track_062, .track_063	; Step:007 Pattern:007
	dw .track_016, .track_065, .track_010, .track_010, .track_020, .track_029, .track_070, .track_071	; Step:008 Pattern:008
	dw .track_008, .track_073, .track_010, .track_010, .track_012, .track_077, .track_078, .track_079	; Step:009 Pattern:009
	dw .track_016, .track_081, .track_010, .track_010, .track_084, .track_085, .track_086, .track_087	; Step:010 Pattern:010
	dw .track_008, .track_089, .track_010, .track_010, .track_092, .track_093, .track_094, .track_095	; Step:011 Pattern:011
	dw .track_016, .track_097, .track_010, .track_010, .track_100, .track_101, .track_102, .track_103	; Step:012 Pattern:012
	dw .track_008, .track_105, .track_010, .track_010, .track_012, .track_109, .track_110, .track_111	; Step:013 Pattern:013
	dw .track_016, .track_113, .track_010, .track_010, .track_020, .track_109, .track_118, .track_119	; Step:014 Pattern:014
	dw 0x0000, .restart				; End of sequence delimiter + restart address.


; [ SCC Waveforms ]
.waveform_start:
	db $80, $b0, $c0, $10, $1a, $2a, $2c, $1a, $00, $e0, $d0, $e0, $22, $53, $70, $75, $70, $31, $ea, $80, $88, $8a, $8c, $8e, $00, $7f, $75, $73, $62, $00, $c0, $90				; Waveform:1
	db $80, $8e, $a0, $c0, $e0, $00, $20, $3f, $3e, $3c, $3a, $37, $31, $29, $20, $1c, $10, $00, $e6, $c0, $d0, $00, $20, $3f, $10, $e0, $80, $c0, $00, $20, $00, $90				; Waveform:5
	db $00, $f8, $f0, $e8, $e0, $d8, $d0, $c8, $c0, $b8, $b0, $a8, $a0, $98, $90, $88, $80, $78, $70, $68, $60, $58, $50, $48, $40, $38, $30, $28, $20, $18, $10, $08				; Waveform:6
	db $a0, $90, $a0, $ac, $f0, $a0, $16, $00, $90, $00, $20, $40, $60, $50, $38, $1c, $f2, $e2, $d6, $d0, $d0, $da, $dc, $e0, $e2, $e2, $e2, $e0, $dc, $d8, $d0, $b0				; Waveform:7
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0, $00, $10, $20, $30, $40, $50, $60, $70				; Waveform:8
	db $00, $7f, $00, $80, $a0, $c0, $d8, $f0, $08, $20, $30, $40, $50, $60, $70, $78, $7c, $7f, $7c, $78, $70, $60, $50, $40, $30, $20, $08, $f0, $d8, $c0, $a0, $80				; Waveform:17
	db $a0, $90, $90, $a0, $a0, $b0, $b0, $b0, $c0, $c0, $d0, $d0, $e0, $e0, $f0, $f0, $00, $00, $10, $10, $20, $20, $30, $30, $40, $40, $50, $50, $60, $60, $60, $50				; Waveform:18
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $00, $e7, $cf, $b9, $a6, $96, $8b, $83, $80, $83, $8b, $96, $a6, $b9, $cf, $e7				; Waveform:21
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $80, $a0, $c0, $e0, $00, $20, $40, $60, $80, $a0, $c0, $e0, $00, $20, $40, $60				; Waveform:25
	db $90, $88, $90, $9c, $b0, $c0, $e0, $26, $70, $7c, $70, $56, $40, $20, $10, $fc, $e0, $fc, $10, $fc, $40, $54, $72, $7f, $70, $26, $e0, $c0, $b0, $9c, $90, $88				; Waveform:30
	db $00, $00, $00, $80, $00, $70, $70, $70, $00, $00, $00, $80, $00, $00, $00, $80, $80, $80, $80, $00, $80, $00, $00, $00, $00, $80, $80, $80, $00, $80, $80, $80				; Waveform:31

; [ Instruments]
.instrument_start:
	dw .instrument_00				; BD G2           
	dw .instrument_01				; SD A3           
	dw .instrument_02				; HH CL A8        
	dw .instrument_03				; TOM A3          
	dw .instrument_04				; Short Snare     
	dw .instrument_05				; SC Bass         
	dw .instrument_06				; PSG intro       
	dw .instrument_07				; BASS LONG       
	dw .instrument_08				; PSG THEME       
	dw .instrument_09				; ARP SCC         
	dw .instrument_10				; SCC Main THEME  
	dw .instrument_11				; ARP THEME SCC   
	dw .instrument_12				; ARP SCC3        
	dw .instrument_13				; THEME SCC       
	dw .instrument_14				; FINAL SCC melody
	dw .instrument_15				; CONT            
	dw .instrument_16				; ARP             

.instrument_00:					; BD G2           
	db $08						; Waveform 1
	db $02,$10						; Mixer (T)
	db $04,$00,$03					; Tone add
	db $1c,$03						; Envelope shape
	db $02,$10						; Mixer (T)
	db $1a						; Envelope
	db $08,$00						; Volume _
	db $06						; End

.instrument_01:					; SD A3           
	db $00						; Waveform 0
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$01						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$0e						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0d						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0b						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$07						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$06						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$05						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$04						; Volume _
	db $08,$00						; Volume _
	db $06						; End

.instrument_02:					; HH CL A8        
	db $18						; Waveform 3
	db $02,$80						; Mixer (N)
	db $0E,$00						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0b						; Volume _
	db $08,$00						; Volume _
	db $06						; End

.instrument_03:					; TOM A3          
	db $38						; Waveform 7
	db $02,$90						; Mixer (TN)
	db $0E,$0f						; Noise _
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$09						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $08,$08						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $00							; Volume same
	db $06						; End

.instrument_04:					; Short Snare     
	db $00						; Waveform 0
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$80						; Mixer (N)
	db $0E,$06						; Noise _
	db $08,$0f						; Volume _
	db $02,$80						; Mixer (N)
	db $08,$0b						; Volume _
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
								; --- Macro loop
	db $02,$80						; Mixer (N)
	db $0E,$06						; Noise _
	db $0c,$01						; Volume -
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $02,$80						; Mixer (N)
	db $00							; Volume same
	db $18,$ed						; Loop (-20)

.instrument_05:					; SC Bass         
	db $00						; Waveform 0
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$08						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_06:					; PSG intro       
	db $50						; Waveform 10
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
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
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
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
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $18,$e6						; Loop (-27)

.instrument_07:					; BASS LONG       
	db $50						; Waveform 10
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
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
	db $0c,$01						; Volume -
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $18,$ef						; Loop (-18)

.instrument_08:					; PSG THEME       
	db $08						; Waveform 1
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$08						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_09:					; ARP SCC         
	db $40						; Waveform 8
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_10:					; SCC Main THEME  
	db $10						; Waveform 2
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_11:					; ARP THEME SCC   
	db $10						; Waveform 2
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
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
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_12:					; ARP SCC3        
	db $20						; Waveform 4
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $00							; Volume same
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_13:					; THEME SCC       
	db $30						; Waveform 6
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
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

.instrument_14:					; FINAL SCC melody
	db $20						; Waveform 4
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0e						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
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

.instrument_15:					; CONT            
	db $48						; Waveform 9
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$0c						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_16:					; ARP             
	db $28						; Waveform 5
	db $02,$10						; Mixer (T)
	db $08,$0f						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
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


; [ Song track data ]
.track_000:
	db $29			;Note F-4
	db $72			;Instrument 0
	db $a5,$01			;CMD Envelope multiplier high
	db $c2			;Wait 3
	db $13			;Note G-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $c0			;Wait 1
	db $13			;Note G-2
	db $6f			;Volume 13
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $13			;Note G-2
	db $6f			;Volume 13
	db $c2			;Wait 3
	db $29			;Note F-4
	db $72			;Instrument 0
	db $c2			;Wait 3
	db $13			;Note G-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $c0			;Wait 1
	db $13			;Note G-2
	db $6f			;Volume 13
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $13			;Note G-2
	db $6f			;Volume 13
	db $c2			;Wait 3
	db $29			;Note F-4
	db $72			;Instrument 0
	db $c2			;Wait 3
	db $13			;Note G-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $c0			;Wait 1
	db $13			;Note G-2
	db $6f			;Volume 13
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $13			;Note G-2
	db $6f			;Volume 13
	db $c0			;Wait 1
	db $13			;Note G-2
	db $6f			;Volume 13
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $29			;Note F-4
	db $72			;Instrument 0
	db $c2			;Wait 3
	db $13			;Note G-2
	db $6f			;Volume 13
	db $74			;Instrument 2
	db $c0			;Wait 1
	db $13			;Note G-2
	db $6f			;Volume 13
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $13			;Note G-2
	db $6f			;Volume 13
	db $c2			;Wait 3
	db $29			;Note F-4
	db $72			;Instrument 0
	db $c2			;Wait 3
	db $21			;Note A-3
	db $70			;Volume 14
	db $73			;Instrument 1
					;Wait Repeat 3
	db $21			;Note A-3
	db $70			;Volume 14
	db $c0			;Wait 1
	db $21			;Note A-3
	db $6f			;Volume 13
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6f			;Volume 13
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_001:
	db $1f			;Note G-3
	db $6d			;Volume 11
	db $78			;Instrument 6
	db $c8			;Wait 9
	db $22			;Note A#3
					;Wait Repeat 9
	db $27			;Note D#4
					;Wait Repeat 9
	db $20			;Note G#3
					;Wait Repeat 9
	db $23			;Note B-3
	db $c5			;Wait 6
	db $1f			;Note G-3
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_002:
	db $71			;Volume 15
	db $72			;Instrument 0
	db $ef			;Wait 48
	db $bf			;[End-Of-Track]
.track_004:
	db $0c			;Note C-2
	db $6c			;Volume 10
	db $79			;Instrument 7
	db $c8			;Wait 9
	db $0f			;Note D#2
					;Wait Repeat 9
	db $14			;Note G#2
					;Wait Repeat 9
	db $0d			;Note C#2
					;Wait Repeat 9
	db $0b			;Note B-1
	db $c5			;Wait 6
	db $07			;Note G-1
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_005:
	db $39			;Note A-5
	db $67			;Volume 5
	db $7b			;Instrument 9
	db $c0			;Wait 1
	db $3a			;Note A#5
					;Wait Repeat 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $3c			;Note C-6
	db $c5			;Wait 6
	db $3c			;Note C-6
	db $c0			;Wait 1
	db $3d			;Note C#6
					;Wait Repeat 1
	db $3e			;Note D-6
					;Wait Repeat 1
	db $3f			;Note D#6
	db $c5			;Wait 6
	db $41			;Note F-6
	db $c0			;Wait 1
	db $42			;Note F#6
					;Wait Repeat 1
	db $43			;Note G-6
					;Wait Repeat 1
	db $44			;Note G#6
	db $c5			;Wait 6
	db $3a			;Note A#5
	db $c0			;Wait 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $3d			;Note C#6
	db $c5			;Wait 6
	db $38			;Note G#5
	db $c0			;Wait 1
	db $39			;Note A-5
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $3a			;Note A#5
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $3f			;Note D#6
	db $c0			;Wait 1
	db $41			;Note F-6
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $42			;Note F#6
	db $c0			;Wait 1
	db $43			;Note G-6
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_006:
	db $30			;Note C-5
	db $6b			;Volume 9
	db $79			;Instrument 7
	db $aa,$10			; SCC Set Waveform 6
	db $c8			;Wait 9
	db $33			;Note D#5
					;Wait Repeat 9
	db $38			;Note G#5
					;Wait Repeat 9
	db $31			;Note C#5
					;Wait Repeat 9
	db $2f			;Note B-4
	db $c5			;Wait 6
	db $37			;Note G-5
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_007:
	db $26			;Note D-4
	db $6b			;Volume 9
	db $79			;Instrument 7
	db $c8			;Wait 9
	db $29			;Note F-4
					;Wait Repeat 9
	db $2e			;Note A#4
					;Wait Repeat 9
	db $29			;Note F-4
					;Wait Repeat 9
	db $2a			;Note F#4
	db $c5			;Wait 6
	db $32			;Note D-5
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_008:
	db $29			;Note F-4
	db $72			;Instrument 0
	db $c2			;Wait 3
	db $15			;Note A-2
	db $6d			;Volume 11
	db $76			;Instrument 4
					;Wait Repeat 3
	db $21			;Note A-3
	db $70			;Volume 14
	db $73			;Instrument 1
					;Wait Repeat 3
	db $13			;Note G-2
	db $6f			;Volume 13
	db $74			;Instrument 2
					;Wait Repeat 3
	db $21			;Note A-3
	db $70			;Volume 14
	db $73			;Instrument 1
					;Wait Repeat 3
	db $13			;Note G-2
	db $6f			;Volume 13
	db $74			;Instrument 2
					;Wait Repeat 3
	db $15			;Note A-2
	db $6d			;Volume 11
	db $76			;Instrument 4
					;Wait Repeat 3
	db $21			;Note A-3
	db $70			;Volume 14
	db $73			;Instrument 1
					;Wait Repeat 3
	db $21			;Note A-3
	db $6e			;Volume 12
	db $75			;Instrument 3
	db $c0			;Wait 1
	db $21			;Note A-3
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $21			;Note A-3
	db $c2			;Wait 3
	db $21			;Note A-3
					;Wait Repeat 3
	db $21			;Note A-3
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_009:
	db $2f			;Note B-4
	db $6c			;Volume 10
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $31			;Note C#5
	db $c0			;Wait 1
	db $32			;Note D-5
	db $6d			;Volume 11
	db $c2			;Wait 3
	db $26			;Note D-4
	db $c5			;Wait 6
	db $26			;Note D-4
	db $c2			;Wait 3
	db $26			;Note D-4
	db $c5			;Wait 6
	db $29			;Note F-4
	db $c2			;Wait 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $27			;Note D#4
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_010:
	db $e3			;Wait 36
	db $bf			;[End-Of-Track]
.track_012:
	db $0c			;Note C-2
	db $6f			;Volume 13
	db $77			;Instrument 5
	db $c5			;Wait 6
	db $13			;Note G-2
					;Wait Repeat 6
	db $0c			;Note C-2
	db $c2			;Wait 3
	db $13			;Note G-2
	db $c5			;Wait 6
	db $16			;Note A#2
					;Wait Repeat 6
	db $11			;Note F-2
	db $c2			;Wait 3
	db $14			;Note G#2
					;Wait Repeat 3
	db $0d			;Note C#2
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_013:
	db $18			;Note C-3
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $aa,$08			; SCC Set Waveform 5
	db $c5			;Wait 6
	db $1f			;Note G-3
					;Wait Repeat 6
	db $18			;Note C-3
	db $c2			;Wait 3
	db $1f			;Note G-3
	db $c5			;Wait 6
	db $22			;Note A#3
					;Wait Repeat 6
	db $1d			;Note F-3
	db $c2			;Wait 3
	db $20			;Note G#3
					;Wait Repeat 3
	db $19			;Note C#3
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_014:
	db $34			;Note E-5
	db $6b			;Volume 9
	db $7c			;Instrument 10
	db $c0			;Wait 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $37			;Note G-5
	db $c2			;Wait 3
	db $2b			;Note G-4
	db $c5			;Wait 6
	db $2b			;Note G-4
	db $c2			;Wait 3
	db $2b			;Note G-4
	db $c5			;Wait 6
	db $2e			;Note A#4
	db $c8			;Wait 9
	db $2c			;Note G#4
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_015:
	db $31			;Note C#5
	db $6b			;Volume 9
	db $7c			;Instrument 10
	db $c0			;Wait 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $34			;Note E-5
	db $c2			;Wait 3
	db $28			;Note E-4
	db $c5			;Wait 6
	db $28			;Note E-4
	db $c2			;Wait 3
	db $28			;Note E-4
	db $c5			;Wait 6
	db $2b			;Note G-4
	db $c2			;Wait 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $29			;Note F-4
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_016:
	db $29			;Note F-4
	db $72			;Instrument 0
	db $c2			;Wait 3
	db $15			;Note A-2
	db $6d			;Volume 11
	db $76			;Instrument 4
					;Wait Repeat 3
	db $21			;Note A-3
	db $70			;Volume 14
	db $73			;Instrument 1
					;Wait Repeat 3
	db $13			;Note G-2
	db $6f			;Volume 13
	db $74			;Instrument 2
					;Wait Repeat 3
	db $21			;Note A-3
	db $70			;Volume 14
	db $73			;Instrument 1
					;Wait Repeat 3
	db $13			;Note G-2
	db $6f			;Volume 13
	db $74			;Instrument 2
					;Wait Repeat 3
	db $13			;Note G-2
	db $6f			;Volume 13
					;Wait Repeat 3
	db $13			;Note G-2
	db $6f			;Volume 13
					;Wait Repeat 3
	db $13			;Note G-2
	db $6f			;Volume 13
	db $c0			;Wait 1
	db $13			;Note G-2
	db $6f			;Volume 13
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $15			;Note A-2
	db $6d			;Volume 11
	db $76			;Instrument 4
	db $c2			;Wait 3
	db $13			;Note G-2
	db $6f			;Volume 13
	db $74			;Instrument 2
					;Wait Repeat 3
	db $13			;Note G-2
	db $6f			;Volume 13
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_017:
	db $2f			;Note B-4
	db $6c			;Volume 10
	db $7a			;Instrument 8
	db $c0			;Wait 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $31			;Note C#5
	db $c0			;Wait 1
	db $32			;Note D-5
	db $6d			;Volume 11
	db $c2			;Wait 3
	db $26			;Note D-4
	db $c5			;Wait 6
	db $26			;Note D-4
	db $c2			;Wait 3
	db $26			;Note D-4
	db $c5			;Wait 6
	db $22			;Note A#3
	db $c8			;Wait 9
	db $22			;Note A#3
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_020:
	db $0c			;Note C-2
	db $6f			;Volume 13
	db $77			;Instrument 5
	db $c5			;Wait 6
	db $13			;Note G-2
					;Wait Repeat 6
	db $0c			;Note C-2
	db $c2			;Wait 3
	db $13			;Note G-2
	db $c5			;Wait 6
	db $08			;Note G#1
					;Wait Repeat 6
	db $0f			;Note D#2
	db $c2			;Wait 3
	db $0a			;Note A#1
					;Wait Repeat 3
	db $11			;Note F-2
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_021:
	db $0c			;Note C-2
	db $6c			;Volume 10
	db $77			;Instrument 5
	db $aa,$08			; SCC Set Waveform 5
	db $c5			;Wait 6
	db $13			;Note G-2
					;Wait Repeat 6
	db $0c			;Note C-2
	db $c2			;Wait 3
	db $13			;Note G-2
	db $c5			;Wait 6
	db $08			;Note G#1
					;Wait Repeat 6
	db $0f			;Note D#2
	db $c2			;Wait 3
	db $0a			;Note A#1
					;Wait Repeat 3
	db $11			;Note F-2
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_022:
	db $34			;Note E-5
	db $6b			;Volume 9
	db $7c			;Instrument 10
	db $c0			;Wait 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $37			;Note G-5
	db $c2			;Wait 3
	db $2b			;Note G-4
	db $c5			;Wait 6
	db $2b			;Note G-4
	db $c2			;Wait 3
	db $2b			;Note G-4
	db $c5			;Wait 6
	db $27			;Note D#4
	db $c8			;Wait 9
	db $29			;Note F-4
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_023:
	db $31			;Note C#5
	db $6b			;Volume 9
	db $7c			;Instrument 10
	db $c0			;Wait 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $34			;Note E-5
	db $c2			;Wait 3
	db $28			;Note E-4
	db $c5			;Wait 6
	db $28			;Note E-4
	db $c2			;Wait 3
	db $28			;Note E-4
	db $c5			;Wait 6
	db $24			;Note C-4
	db $c8			;Wait 9
	db $24			;Note C-4
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_025:
	db $60			;Release 96
	db $c8			;Wait 9
	db $34			;Note E-5
	db $6c			;Volume 10
	db $81			;Instrument 15
	db $a2,$01			;CMD Track detune
	db $c0			;Wait 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $36			;Note F#5
	db $c0			;Wait 1
	db $37			;Note G-5
	db $6c			;Volume 10
	db $c3			;Wait 4
	db $95,$18			;CMD Vibrato
	db $d3			;Wait 20
	db $bf			;[End-Of-Track]
.track_029:
	db $24			;Note C-4
	db $68			;Volume 6
	db $7d			;Instrument 11
	db $c2			;Wait 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $30			;Note C-5
					;Wait Repeat 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $30			;Note C-5
					;Wait Repeat 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $2e			;Note A#4
					;Wait Repeat 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $2e			;Note A#4
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_030:
	db $60			;Release 96
	db $c2			;Wait 3
	db $34			;Note E-5
	db $6a			;Volume 8
	db $7f			;Instrument 13
	db $c0			;Wait 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $37			;Note G-5
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_031:
	db $60			;Release 96
	db $c2			;Wait 3
	db $28			;Note E-4
	db $6a			;Volume 8
	db $7f			;Instrument 13
	db $c0			;Wait 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_033:
	db $c8			;Wait 9
	db $34			;Note E-5
	db $6c			;Volume 10
	db $81			;Instrument 15
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $37			;Note G-5
	db $c2			;Wait 3
	db $37			;Note G-5
					;Wait Repeat 3
	db $37			;Note G-5
					;Wait Repeat 3
	db $36			;Note F#5
					;Wait Repeat 3
	db $36			;Note F#5
					;Wait Repeat 3
	db $35			;Note F-5
					;Wait Repeat 3
	db $35			;Note F-5
					;Wait Repeat 3
	db $33			;Note D#5
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_038:
	db $c2			;Wait 3
	db $34			;Note E-5
	db $6a			;Volume 8
	db $7f			;Instrument 13
	db $c0			;Wait 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $37			;Note G-5
	db $c2			;Wait 3
	db $37			;Note G-5
					;Wait Repeat 3
	db $37			;Note G-5
					;Wait Repeat 3
	db $36			;Note F#5
					;Wait Repeat 3
	db $36			;Note F#5
					;Wait Repeat 3
	db $35			;Note F-5
					;Wait Repeat 3
	db $35			;Note F-5
					;Wait Repeat 3
	db $33			;Note D#5
	db $c5			;Wait 6
	db $30			;Note C-5
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_039:
	db $c2			;Wait 3
	db $28			;Note E-4
	db $6a			;Volume 8
	db $7f			;Instrument 13
	db $c0			;Wait 1
	db $29			;Note F-4
					;Wait Repeat 1
	db $2a			;Note F#4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c2			;Wait 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $2a			;Note F#4
					;Wait Repeat 3
	db $2a			;Note F#4
					;Wait Repeat 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $27			;Note D#4
	db $c5			;Wait 6
	db $24			;Note C-4
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_041:
	db $c2			;Wait 3
	db $30			;Note C-5
	db $6c			;Volume 10
	db $81			;Instrument 15
					;Wait Repeat 3
	db $60			;Release 96
	db $c2			;Wait 3
	db $2e			;Note A#4
	db $6c			;Volume 10
	db $c0			;Wait 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $2b			;Note G-4
	db $c4			;Wait 5
	db $95,$18			;CMD Vibrato
	db $d2			;Wait 19
	db $bf			;[End-Of-Track]
.track_046:
	db $60			;Release 96
	db $c2			;Wait 3
	db $2e			;Note A#4
	db $7f			;Instrument 13
	db $c0			;Wait 1
	db $33			;Note D#5
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $2c			;Note G#4
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $2b			;Note G-4
	db $7f			;Instrument 13
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_047:
	db $60			;Release 96
	db $c2			;Wait 3
	db $22			;Note A#3
	db $7f			;Instrument 13
	db $c0			;Wait 1
	db $27			;Note D#4
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $20			;Note G#3
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $1f			;Note G-3
	db $7f			;Instrument 13
	db $ce			;Wait 15
	db $27			;Note D#4
	db $7f			;Instrument 13
	db $c5			;Wait 6
	db $16			;Note A#2
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $19			;Note C#3
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $20			;Note G#3
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_054:
	db $aa,$30			; SCC Set Waveform 18
	db $e3			;Wait 36
	db $bf			;[End-Of-Track]
.track_055:
	db $1f			;Note G-3
	db $7f			;Instrument 13
	db $aa,$30			; SCC Set Waveform 18
	db $c2			;Wait 3
	db $37			;Note G-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $37			;Note G-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $35			;Note F-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $35			;Note F-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $3a			;Note A#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $3a			;Note A#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $33			;Note D#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $33			;Note D#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $38			;Note G#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $38			;Note G#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $31			;Note C#5
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_057:
	db $c5			;Wait 6
	db $60			;Release 96
	db $c1			;Wait 2
	db $a2,$08			;CMD Track detune
	db $c0			;Wait 1
	db $34			;Note E-5
	db $6c			;Volume 10
	db $81			;Instrument 15
	db $9c			;CMD End 
					;Wait Repeat 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $37			;Note G-5
	db $c4			;Wait 5
	db $95,$18			;CMD Vibrato
	db $d2			;Wait 19
	db $bf			;[End-Of-Track]
.track_062:
	db $60			;Release 96
	db $c2			;Wait 3
	db $34			;Note E-5
	db $6b			;Volume 9
	db $7f			;Instrument 13
	db $c0			;Wait 1
	db $35			;Note F-5
					;Wait Repeat 1
	db $36			;Note F#5
					;Wait Repeat 1
	db $37			;Note G-5
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_063:
	db $60			;Release 96
	db $c2			;Wait 3
	db $30			;Note C-5
	db $6b			;Volume 9
	db $7f			;Instrument 13
	db $c0			;Wait 1
	db $32			;Note D-5
					;Wait Repeat 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $34			;Note E-5
	db $ce			;Wait 15
	db $2e			;Note A#4
	db $c5			;Wait 6
	db $29			;Note F-4
	db $c2			;Wait 3
	db $2c			;Note G#4
					;Wait Repeat 3
	db $25			;Note C#4
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_065:
	db $c8			;Wait 9
	db $3a			;Note A#5
	db $6c			;Volume 10
	db $81			;Instrument 15
	db $9c			;CMD End 
	db $c0			;Wait 1
	db $3b			;Note B-5
					;Wait Repeat 1
	db $3c			;Note C-6
					;Wait Repeat 1
	db $3d			;Note C#6
	db $c2			;Wait 3
	db $3d			;Note C#6
					;Wait Repeat 3
	db $3d			;Note C#6
					;Wait Repeat 3
	db $3c			;Note C-6
					;Wait Repeat 3
	db $3c			;Note C-6
					;Wait Repeat 3
	db $3a			;Note A#5
					;Wait Repeat 3
	db $3a			;Note A#5
					;Wait Repeat 3
	db $37			;Note G-5
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_070:
	db $c2			;Wait 3
	db $3a			;Note A#5
	db $7f			;Instrument 13
	db $c0			;Wait 1
	db $3b			;Note B-5
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $3c			;Note C-6
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $3d			;Note C#6
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $3d			;Note C#6
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $3d			;Note C#6
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $3c			;Note C-6
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $3c			;Note C-6
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $3a			;Note A#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $3a			;Note A#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $37			;Note G-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $37			;Note G-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $35			;Note F-5
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_071:
	db $24			;Note C-4
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $37			;Note G-5
	db $7f			;Instrument 13
	db $c0			;Wait 1
	db $38			;Note G#5
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $39			;Note A-5
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $3a			;Note A#5
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $3a			;Note A#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $3a			;Note A#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $37			;Note G-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $37			;Note G-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $35			;Note F-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $35			;Note F-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $33			;Note D#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $33			;Note D#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $31			;Note C#5
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_073:
	db $60			;Release 96
	db $c8			;Wait 9
	db $34			;Note E-5
	db $6c			;Volume 10
	db $81			;Instrument 15
	db $c0			;Wait 1
	db $37			;Note G-5
					;Wait Repeat 1
	db $30			;Note C-5
					;Wait Repeat 1
	db $3c			;Note C-6
	db $c2			;Wait 3
	db $95,$17			;CMD Vibrato
	db $d4			;Wait 21
	db $bf			;[End-Of-Track]
.track_077:
	db $24			;Note C-4
	db $6a			;Volume 8
	db $7d			;Instrument 11
	db $c2			;Wait 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $30			;Note C-5
					;Wait Repeat 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $30			;Note C-5
					;Wait Repeat 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $2e			;Note A#4
					;Wait Repeat 3
	db $33			;Note D#5
					;Wait Repeat 3
	db $2c			;Note G#4
					;Wait Repeat 3
	db $31			;Note C#5
					;Wait Repeat 3
	db $2b			;Note G-4
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_078:
	db $60			;Release 96
	db $c2			;Wait 3
	db $34			;Note E-5
	db $7f			;Instrument 13
	db $c0			;Wait 1
	db $37			;Note G-5
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $30			;Note C-5
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $3c			;Note C-6
	db $7f			;Instrument 13
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_079:
	db $60			;Release 96
	db $c2			;Wait 3
	db $2e			;Note A#4
	db $7f			;Instrument 13
	db $c0			;Wait 1
	db $30			;Note C-5
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $2b			;Note G-4
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $37			;Note G-5
	db $7f			;Instrument 13
	db $ce			;Wait 15
	db $27			;Note D#4
	db $7f			;Instrument 13
	db $c8			;Wait 9
	db $25			;Note C#4
	db $7f			;Instrument 13
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_081:
	db $c8			;Wait 9
	db $3a			;Note A#5
	db $6c			;Volume 10
	db $81			;Instrument 15
	db $c2			;Wait 3
	db $38			;Note G#5
					;Wait Repeat 3
	db $37			;Note G-5
	db $c5			;Wait 6
	db $2b			;Note G-4
	db $c2			;Wait 3
	db $1f			;Note G-3
					;Wait Repeat 3
	db $31			;Note C#5
					;Wait Repeat 3
	db $30			;Note C-5
					;Wait Repeat 3
	db $30			;Note C-5
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_084:
	db $0c			;Note C-2
	db $6f			;Volume 13
	db $77			;Instrument 5
	db $c5			;Wait 6
	db $13			;Note G-2
					;Wait Repeat 6
	db $0c			;Note C-2
	db $c2			;Wait 3
	db $13			;Note G-2
					;Wait Repeat 3
	db $00			;Note C-1
					;Wait Repeat 3
	db $19			;Note C#3
					;Wait Repeat 3
	db $18			;Note C-3
					;Wait Repeat 3
	db $18			;Note C-3
					;Wait Repeat 3
	db $0c			;Note C-2
					;Wait Repeat 3
	db $0c			;Note C-2
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_085:
	db $24			;Note C-4
	db $69			;Volume 7
	db $7d			;Instrument 11
	db $c2			;Wait 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $30			;Note C-5
					;Wait Repeat 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $30			;Note C-5
	db $c2			;Wait 3
	db $18			;Note C-3
	db $6c			;Volume 10
	db $7c			;Instrument 10
	db $aa,$00			; SCC Set Waveform 1
					;Wait Repeat 3
	db $20			;Note G#3
					;Wait Repeat 3
	db $1f			;Note G-3
					;Wait Repeat 3
	db $1f			;Note G-3
					;Wait Repeat 3
	db $13			;Note G-2
					;Wait Repeat 3
	db $13			;Note G-2
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_086:
	db $c2			;Wait 3
	db $3a			;Note A#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $38			;Note G#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $37			;Note G-5
	db $7f			;Instrument 13
	db $c5			;Wait 6
	db $2b			;Note G-4
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $1f			;Note G-3
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $31			;Note C#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $30			;Note C-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $30			;Note C-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $24			;Note C-4
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $24			;Note C-4
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_087:
	db $24			;Note C-4
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $35			;Note F-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $33			;Note D#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $32			;Note D-5
	db $7f			;Instrument 13
	db $c5			;Wait 6
	db $26			;Note D-4
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $0c			;Note C-2
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $2c			;Note G#4
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $2b			;Note G-4
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $2b			;Note G-4
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $1f			;Note G-3
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $1f			;Note G-3
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_089:
	db $24			;Note C-4
	db $6c			;Volume 10
	db $81			;Instrument 15
	db $c2			;Wait 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $60			;Release 96
					;Wait Repeat 3
	db $32			;Note D-5
	db $c0			;Wait 1
	db $33			;Note D#5
					;Wait Repeat 1
	db $2c			;Note G#4
					;Wait Repeat 1
	db $37			;Note G-5
	db $c3			;Wait 4
	db $95,$18			;CMD Vibrato
	db $d3			;Wait 20
	db $bf			;[End-Of-Track]
.track_092:
	db $05			;Note F-1
	db $6f			;Volume 13
	db $77			;Instrument 5
	db $c5			;Wait 6
	db $0c			;Note C-2
					;Wait Repeat 6
	db $05			;Note F-1
	db $c2			;Wait 3
	db $0c			;Note C-2
	db $c5			;Wait 6
	db $0f			;Note D#2
					;Wait Repeat 6
	db $0a			;Note A#1
	db $c2			;Wait 3
	db $0d			;Note C#2
					;Wait Repeat 3
	db $08			;Note G#1
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_093:
	db $1d			;Note F-3
	db $69			;Volume 7
	db $7d			;Instrument 11
	db $c2			;Wait 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $1d			;Note F-3
					;Wait Repeat 3
	db $24			;Note C-4
					;Wait Repeat 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $22			;Note A#3
					;Wait Repeat 3
	db $27			;Note D#4
					;Wait Repeat 3
	db $2c			;Note G#4
					;Wait Repeat 3
	db $25			;Note C#4
					;Wait Repeat 3
	db $2a			;Note F#4
					;Wait Repeat 3
	db $23			;Note B-3
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_094:
	db $60			;Release 96
	db $c2			;Wait 3
	db $32			;Note D-5
	db $7f			;Instrument 13
	db $aa,$08			; SCC Set Waveform 5
	db $c0			;Wait 1
	db $33			;Note D#5
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $2c			;Note G#4
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $37			;Note G-5
	db $7f			;Instrument 13
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_095:
	db $60			;Release 96
	db $c2			;Wait 3
	db $2b			;Note G-4
	db $7f			;Instrument 13
	db $aa,$08			; SCC Set Waveform 5
	db $c0			;Wait 1
	db $2c			;Note G#4
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $27			;Note D#4
	db $7f			;Instrument 13
					;Wait Repeat 1
	db $30			;Note C-5
	db $7f			;Instrument 13
	db $dd			;Wait 30
	db $bf			;[End-Of-Track]
.track_097:
	db $c8			;Wait 9
	db $35			;Note F-5
	db $6c			;Volume 10
	db $81			;Instrument 15
	db $9c			;CMD End 
	db $c2			;Wait 3
	db $35			;Note F-5
					;Wait Repeat 3
	db $33			;Note D#5
					;Wait Repeat 3
	db $33			;Note D#5
					;Wait Repeat 3
	db $2f			;Note B-4
	db $c5			;Wait 6
	db $33			;Note D#5
	db $c2			;Wait 3
	db $2f			;Note B-4
					;Wait Repeat 3
	db $31			;Note C#5
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_100:
	db $07			;Note G-1
	db $6f			;Volume 13
	db $77			;Instrument 5
	db $c5			;Wait 6
	db $0d			;Note C#2
					;Wait Repeat 6
	db $07			;Note G-1
	db $c2			;Wait 3
	db $0d			;Note C#2
	db $c5			;Wait 6
	db $11			;Note F-2
					;Wait Repeat 6
	db $0b			;Note B-1
	db $c2			;Wait 3
	db $0d			;Note C#2
					;Wait Repeat 3
	db $07			;Note G-1
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_101:
	db $1f			;Note G-3
	db $69			;Volume 7
	db $7d			;Instrument 11
	db $c2			;Wait 3
	db $25			;Note C#4
					;Wait Repeat 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $1f			;Note G-3
					;Wait Repeat 3
	db $25			;Note C#4
					;Wait Repeat 3
	db $2b			;Note G-4
					;Wait Repeat 3
	db $22			;Note A#3
					;Wait Repeat 3
	db $27			;Note D#4
					;Wait Repeat 3
	db $2c			;Note G#4
					;Wait Repeat 3
	db $25			;Note C#4
					;Wait Repeat 3
	db $2a			;Note F#4
					;Wait Repeat 3
	db $23			;Note B-3
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_102:
	db $c2			;Wait 3
	db $35			;Note F-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $35			;Note F-5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $33			;Note D#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $33			;Note D#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $2f			;Note B-4
	db $7f			;Instrument 13
	db $c5			;Wait 6
	db $33			;Note D#5
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $2f			;Note B-4
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $31			;Note C#5
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $2b			;Note G-4
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $2f			;Note B-4
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_103:
	db $2f			;Note B-4
	db $7f			;Instrument 13
	db $aa,$08			; SCC Set Waveform 5
	db $c2			;Wait 3
	db $2f			;Note B-4
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $2f			;Note B-4
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $2b			;Note G-4
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $2b			;Note G-4
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $29			;Note F-4
	db $7f			;Instrument 13
	db $c5			;Wait 6
	db $2f			;Note B-4
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $29			;Note F-4
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $2b			;Note G-4
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $23			;Note B-3
	db $7f			;Instrument 13
					;Wait Repeat 3
	db $25			;Note C#4
	db $7f			;Instrument 13
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_105:
	db $26			;Note D-4
	db $6c			;Volume 10
	db $82			;Instrument 16
	db $c2			;Wait 3
	db $32			;Note D-5
					;Wait Repeat 3
	db $26			;Note D-4
					;Wait Repeat 3
	db $32			;Note D-5
					;Wait Repeat 3
	db $26			;Note D-4
					;Wait Repeat 3
	db $32			;Note D-5
					;Wait Repeat 3
	db $32			;Note D-5
					;Wait Repeat 3
	db $26			;Note D-4
					;Wait Repeat 3
	db $35			;Note F-5
					;Wait Repeat 3
	db $29			;Note F-4
					;Wait Repeat 3
	db $33			;Note D#5
					;Wait Repeat 3
	db $27			;Note D#4
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_109:
	db $24			;Note C-4
	db $69			;Volume 7
	db $7e			;Instrument 12
	db $c1			;Wait 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $24			;Note C-4
					;Wait Repeat 2
	db $29			;Note F-4
					;Wait Repeat 2
	db $2b			;Note G-4
					;Wait Repeat 2
	db $20			;Note G#3
					;Wait Repeat 2
	db $25			;Note C#4
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $22			;Note A#3
					;Wait Repeat 2
	db $27			;Note D#4
					;Wait Repeat 2
	db $29			;Note F-4
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_110:
	db $2b			;Note G-4
	db $80			;Instrument 14
	db $c2			;Wait 3
	db $37			;Note G-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $2b			;Note G-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $37			;Note G-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $2b			;Note G-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $37			;Note G-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $37			;Note G-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $2b			;Note G-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $3a			;Note A#5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $2e			;Note A#4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $38			;Note G#5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $2c			;Note G#4
	db $80			;Instrument 14
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_111:
	db $28			;Note E-4
	db $80			;Instrument 14
	db $c2			;Wait 3
	db $34			;Note E-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $28			;Note E-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $34			;Note E-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $28			;Note E-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $34			;Note E-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $34			;Note E-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $28			;Note E-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $37			;Note G-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $2b			;Note G-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $35			;Note F-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $29			;Note F-4
	db $80			;Instrument 14
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_113:
	db $26			;Note D-4
	db $6c			;Volume 10
	db $82			;Instrument 16
	db $c2			;Wait 3
	db $32			;Note D-5
					;Wait Repeat 3
	db $26			;Note D-4
					;Wait Repeat 3
	db $32			;Note D-5
					;Wait Repeat 3
	db $26			;Note D-4
					;Wait Repeat 3
	db $32			;Note D-5
					;Wait Repeat 3
	db $32			;Note D-5
					;Wait Repeat 3
	db $26			;Note D-4
					;Wait Repeat 3
	db $20			;Note G#3
	db $c0			;Wait 1
	db $20			;Note G#3
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $2c			;Note G#4
	db $c2			;Wait 3
	db $22			;Note A#3
					;Wait Repeat 3
	db $2e			;Note A#4
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_118:
	db $2b			;Note G-4
	db $80			;Instrument 14
	db $c2			;Wait 3
	db $37			;Note G-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $2b			;Note G-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $37			;Note G-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $2b			;Note G-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $37			;Note G-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $37			;Note G-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $2b			;Note G-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $27			;Note D#4
	db $80			;Instrument 14
	db $c0			;Wait 1
	db $27			;Note D#4
	db $80			;Instrument 14
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $33			;Note D#5
	db $80			;Instrument 14
	db $c2			;Wait 3
	db $29			;Note F-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $35			;Note F-5
	db $80			;Instrument 14
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]
.track_119:
	db $28			;Note E-4
	db $80			;Instrument 14
	db $c2			;Wait 3
	db $34			;Note E-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $28			;Note E-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $34			;Note E-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $28			;Note E-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $34			;Note E-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $34			;Note E-5
	db $80			;Instrument 14
					;Wait Repeat 3
	db $28			;Note E-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $22			;Note A#3
	db $80			;Instrument 14
	db $c0			;Wait 1
	db $22			;Note A#3
	db $80			;Instrument 14
	db $9b,$02			;CMD Note delay
	db $c1			;Wait 2
	db $2e			;Note A#4
	db $80			;Instrument 14
	db $c2			;Wait 3
	db $24			;Note C-4
	db $80			;Instrument 14
					;Wait Repeat 3
	db $30			;Note C-5
	db $80			;Instrument 14
	db $c2			;Wait 3
	db $bf			;[End-Of-Track]

