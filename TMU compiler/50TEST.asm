; Song: Wave 50 test                    
; By:   Gryzor87 (c)2022                
; Period table: A445 Konami

; [ Song start data ]
	db $1c					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_000, .track_000, .track_003, .track_004, .track_005, .track_006, .track_007	; Step:000 Pattern:000
	dw 0x0000, .restart				; End of sequence delimiter + restart address.


; [ SCC Waveforms ]
.waveform_start:
	db $30, $60, $78, $68, $48, $38, $48, $58, $48, $38, $20, $18, $20, $58, $40, $20, $e0, $b0, $80, $88, $a0, $c0, $b4, $a8, $b4, $d0, $e8, $d8, $c8, $b8, $a8, $d0				; Waveform:1
	db $18, $30, $3c, $34, $24, $1c, $24, $2c, $24, $1c, $10, $0c, $10, $2c, $20, $10, $f3, $d7, $bf, $c3, $d9, $e7, $f3, $eb, $d9, $e7, $f3, $eb, $e3, $db, $d3, $e7				; Waveform:2
	db $90, $d0, $20, $0c, $bc, $aa, $e6, $dc, $bc, $e3, $40, $30, $e0, $d0, $10, $06, $e4, $0c, $70, $50, $e0, $d0, $10, $00, $d0, $f0, $40, $20, $c4, $c0, $f0, $90				; Waveform:3
	db $b0, $e0, $18, $04, $d4, $c2, $f6, $ec, $cc, $eb, $28, $18, $f0, $e0, $08, $00, $ec, $0b, $4f, $38, $f0, $e0, $08, $00, $e0, $f8, $28, $10, $d4, $d0, $f8, $c0				; Waveform:4
	db $00, $19, $31, $47, $5a, $6a, $75, $7d, $7f, $7d, $75, $6a, $5a, $47, $31, $19, $00, $f0, $e0, $d0, $c0, $b0, $a0, $90, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0				; Waveform:5
	db $00, $09, $11, $1f, $26, $2d, $31, $35, $37, $36, $35, $32, $2a, $1f, $11, $09, $00, $f8, $f0, $e8, $e0, $d8, $d0, $c8, $c0, $c8, $d0, $d8, $e0, $e8, $f0, $f8				; Waveform:6
	db $30, $50, $50, $30, $00, $00, $10, $40, $60, $70, $60, $30, $f0, $e0, $e0, $00, $20, $20, $10, $c0, $a0, $90, $a0, $c0, $00, $00, $d0, $b0, $b0, $d0, $00, $00				; Waveform:7
	db $20, $30, $30, $20, $00, $00, $18, $28, $38, $40, $38, $20, $f0, $e8, $e8, $00, $18, $18, $10, $d8, $d0, $c8, $d0, $e8, $00, $00, $e0, $d0, $d0, $e0, $00, $00				; Waveform:8
	db $27, $5f, $4f, $4f, $5f, $67, $7f, $7f, $6f, $6f, $7f, $6f, $5f, $4f, $67, $5f, $37, $e7, $d7, $c7, $d7, $ff, $e7, $cf, $c7, $c7, $bf, $97, $87, $af, $d7, $ff				; Waveform:9
	db $13, $2f, $27, $27, $2f, $33, $3f, $3f, $37, $37, $3f, $37, $2f, $27, $33, $2f, $1b, $f7, $eb, $e3, $eb, $ff, $f3, $e7, $e3, $e3, $df, $cb, $c3, $d7, $eb, $ff				; Waveform:10
	db $27, $5f, $4f, $4f, $5f, $67, $7f, $7f, $6f, $6f, $7f, $6f, $5f, $4f, $67, $5f, $37, $e7, $d7, $c7, $d7, $ff, $e7, $cf, $c7, $c7, $bf, $97, $87, $af, $d7, $ff				; Waveform:18

; [ Instruments]
.instrument_start:
	dw .instrument_00				; BD C2           
	dw .instrument_01				; ARP SQ          

.instrument_00:					; BD C2           
	db $48						; Waveform 9
	db $02,$10						; Mixer (T)
	db $04,$50,$ff					; Tone sub
	db $1c,$0a						; Envelope shape
	db $08,$00						; Volume _
								; --- Macro loop
	db $02,$10						; Mixer (T)
	db $08,$00						; Volume _
	db $18,$fb						; Loop (-6)

.instrument_01:					; ARP SQ          
	db $50						; Waveform 10
	db $02,$10						; Mixer (T)
	db $08,$0d						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$0b						; Volume _
	db $02,$10						; Mixer (T)
	db $00							; Volume same
	db $02,$10						; Mixer (T)
	db $08,$0a						; Volume _
	db $02,$10						; Mixer (T)
	db $08,$09						; Volume _
								; --- Macro loop
	db $00							; Volume same
	db $18,$fe						; Loop (-3)


; [ Song track data ]
.track_000:
	db $71			;Volume 15
	db $72			;Instrument 0
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_003:
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $aa,$00			; SCC Set Waveform 1
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $a9				; SCC Soften Waveform
					;Wait Repeat 2
	db $60			;Release 96
	db $d0			;Wait 17
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $aa,$00			; SCC Set Waveform 1
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $aa,$08			; SCC Set Waveform 2
					;Wait Repeat 2
	db $60			;Release 96
	db $e6			;Wait 39
	db $bf			;[End-Of-Track]
.track_004:
	db $c3			;Wait 4
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $aa,$10			; SCC Set Waveform 3
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $a9				; SCC Soften Waveform
					;Wait Repeat 2
	db $60			;Release 96
	db $d0			;Wait 17
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $aa,$10			; SCC Set Waveform 3
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $aa,$18			; SCC Set Waveform 4
					;Wait Repeat 2
	db $60			;Release 96
	db $e2			;Wait 35
	db $bf			;[End-Of-Track]
.track_005:
	db $c7			;Wait 8
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $aa,$20			; SCC Set Waveform 5
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $a9				; SCC Soften Waveform
					;Wait Repeat 2
	db $60			;Release 96
	db $d0			;Wait 17
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $aa,$20			; SCC Set Waveform 5
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $aa,$28			; SCC Set Waveform 6
					;Wait Repeat 2
	db $60			;Release 96
	db $de			;Wait 31
	db $bf			;[End-Of-Track]
.track_006:
	db $cb			;Wait 12
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $aa,$30			; SCC Set Waveform 7
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $a9				; SCC Soften Waveform
					;Wait Repeat 2
	db $60			;Release 96
	db $aa,$40			; SCC Set Waveform 9
	db $d0			;Wait 17
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $aa,$30			; SCC Set Waveform 7
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $aa,$38			; SCC Set Waveform 8
					;Wait Repeat 2
	db $60			;Release 96
	db $aa,$40			; SCC Set Waveform 9
					;Wait Repeat 2
	db $aa,$48			; SCC Set Waveform 10
	db $d8			;Wait 25
	db $bf			;[End-Of-Track]
.track_007:
	db $cf			;Wait 16
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $73			;Instrument 1
	db $aa,$40			; SCC Set Waveform 9
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $a9				; SCC Soften Waveform
					;Wait Repeat 2
	db $60			;Release 96
	db $d0			;Wait 17
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $aa,$40			; SCC Set Waveform 9
	db $c1			;Wait 2
	db $2b			;Note G-4
	db $6f			;Volume 13
	db $aa,$48			; SCC Set Waveform 10
					;Wait Repeat 2
	db $60			;Release 96
	db $d6			;Wait 23
	db $bf			;[End-Of-Track]

