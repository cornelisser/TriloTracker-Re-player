; Song: v0.10.0b                        
; By:                                   

; [ Song start data ]
	db $0c					; Initial song speed.
	dw .waveform_start			; Start of the waveform data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_001, .track_002, .track_002, .track_002, .track_002, .track_002, .track_002	; Step:001 Pattern:000
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:

; [ SCC Waveforms ]
.waveform_start:
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00				; Waveform:0

; [ FM Drum macros]
.drummacro_start:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; bass            

.instrument_00:					; bass            
	db $00							; Waveform 0
	db $1c,$0c					; Envelope shape
	db $1a						; Envelope
	db $1a						; Envelope
	db $1a						; Envelope
	db $1a						; Envelope
	db $1a						; Envelope
	db $1a						; Envelope
								; --- Macro loop
	db $1a						; Envelope
	db $18,$fe						; Loop (-3)


; [ Song track data ]
.track_000:
	db $0c			;Note C-2
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $0c			;Note C-2
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
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $10			;Note E-2
					;Wait Repeat 2
	db $1c			;Note E-3
					;Wait Repeat 2
	db $0c			;Note C-2
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
					;Wait Repeat 2
	db $0c			;Note C-2
					;Wait Repeat 2
	db $18			;Note C-3
					;Wait Repeat 2
	db $0e			;Note D-2
					;Wait Repeat 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $07			;Note G-1
					;Wait Repeat 2
	db $13			;Note G-2
	db $c1			;Wait 2
	db $95,$08			;CMD Portamento up
	db $cf			;Wait 16
	db $bf			;[End-Of-Track]
.track_001:
	db $a5,$6b		;CMD Envelope multiplier low
	db $c1			;Wait 2
	db $a5,$35		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$6b		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$35		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$6b		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$35		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$6b		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$35		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$55		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$2a		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$55		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$2a		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$6b		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$35		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$6b		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$35		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$6b		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$35		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$6b		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$35		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$5f		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$30		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$8f		;CMD Envelope multiplier low
					;Wait Repeat 2
	db $a5,$47		;CMD Envelope multiplier low
	db $d1			;Wait 18
	db $bf			;[End-Of-Track]
.track_002:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]

