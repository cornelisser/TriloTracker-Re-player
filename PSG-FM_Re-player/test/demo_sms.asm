; Song: TT -TRIPLETS-SCC Converted to FM
; By:   Gryzor87 (c)2021                

; [ Song start data ]
	db $06					; Initial song speed.
	dw .customvoice_start-8			; Start of the custom voices data.
	dw .drummacro_start				; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
.restart:
	dw .track_000, .track_000, .track_002, .track_002, .track_004, .track_005, .track_000, .track_000	; Step:001 Pattern:000
	dw .track_008, .track_009, .track_010, .track_011, .track_012, .track_013, .track_014, .track_015	; Step:002 Pattern:001
	dw .track_008, .track_009, .track_010, .track_011, .track_012, .track_013, .track_014, .track_015	; Step:003 Pattern:001
	dw .track_016, .track_017, .track_010, .track_011, .track_012, .track_021, .track_022, .track_023	; Step:004 Pattern:002
	dw .track_016, .track_017, .track_010, .track_011, .track_012, .track_021, .track_022, .track_023	; Step:005 Pattern:002
	dw .track_008, .track_009, .track_010, .track_011, .track_012, .track_013, .track_014, .track_015	; Step:006 Pattern:001
	dw .track_024, .track_025, .track_010, .track_027, .track_028, .track_029, .track_030, .track_031	; Step:007 Pattern:003
	dw 0x0000, .restart				; End of sequence delimiter + restart address.

; [ Custom FM voices ]
.customvoice_start:
	db $10,$14,$00,$04,$f1,$f1,$f1,$11 		; Custom voice:61
	db $61,$62,$0e,$06,$f5,$f2,$0f,$fe 		; Custom voice:182

; [ SCC Waveforms ]
.waveform_start:

; [ FM Drum macros]
.drummacro_start:
	dw .drum_00
	dw .drum_01
	dw .drum_04

.drum_00:

.drum_01:

.drum_04:

; [ Instruments]
.instrument_start:
	dw .instrument_00				; SD A3           
	dw .instrument_01				; HH CL A8        
	dw .instrument_02				; TOM             
	dw .instrument_03				; GTR CHORDS      
	dw .instrument_04				; SC String solo  
	dw .instrument_05				; SC Bass         
	dw .instrument_06				; SC Brass Satan  
	dw .instrument_07				; ARP SQ          
	dw .instrument_08				; Clarinet low    
	dw .instrument_09				; Response BELL   
	dw .instrument_10				; HH OP A8        
	dw .instrument_11				; SD-MAIN         

.instrument_00:					; SD A3           
	db $10					; FM Hardware Voice 1
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $e8			; Info byte: 11101000
	db $08			; Volume _
	db $05			; Noise
	db $0f			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $06			; Noise
	db $0e			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $06			; Noise
	db $0d			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $06			; Noise
	db $0c			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $06			; Noise
	db $0a			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $06			; Noise
	db $08			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $06			; Noise
	db $06			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $06			; Noise
	db $04			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $06			; Noise
	db $02			; Noise volume
.rst_i00:
	db $09			; Info byte: 00001001
	db $00			; Volume _
	dw .rst_i00						; Loop address
.instrument_01:					; HH CL A8        
	db $70					; FM Hardware Voice 7
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $04			; Noise
	db $0d			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $04			; Noise
	db $0e			; Noise volume
.rst_i01:
	db $09			; Info byte: 00001001
	db $00			; Volume _
	dw .rst_i01						; Loop address
.instrument_02:					; TOM             
	db $10					; FM Hardware Voice 1
	db $38			; Info byte: 00111000
	db $0f			; Volume _
	dw $0020			; Tone
	db $38			; Info byte: 00111000
	db $0d			; Volume _
	dw $0020			; Tone
	db $3c			; Info byte: 00111100
	db $ff			; Volume -
	dw $0020			; Tone
	db $30			; Info byte: 00110000
	dw $0020			; Tone
	db $3c			; Info byte: 00111100
	db $ff			; Volume -
	dw $0020			; Tone
	db $30			; Info byte: 00110000
	dw $0020			; Tone
	db $3c			; Info byte: 00111100
	db $ff			; Volume -
	dw $0020			; Tone
	db $30			; Info byte: 00110000
	dw $0020			; Tone
	db $30			; Info byte: 00110000
	dw $0020			; Tone
	db $3c			; Info byte: 00111100
	db $ff			; Volume -
	dw $0020			; Tone
	db $3c			; Info byte: 00111100
	db $ff			; Volume -
	dw $0020			; Tone
	db $3c			; Info byte: 00111100
	db $ff			; Volume -
	dw $0020			; Tone
	db $3c			; Info byte: 00111100
	db $ff			; Volume -
	dw $0020			; Tone
.rst_i02:
	db $09			; Info byte: 00001001
	db $00			; Volume _
	dw .rst_i02						; Loop address
.instrument_03:					; GTR CHORDS      
	db $00,$04					; FM Software Voice 0
.rst_i03:
	db $29			; Info byte: 00101001
	db $0f			; Volume _
	dw .rst_i03						; Loop address
.instrument_04:					; SC String solo  
	db $00,$08					; FM Software Voice 1
.rst_i04:
	db $29			; Info byte: 00101001
	db $0f			; Volume _
	dw .rst_i04						; Loop address
.instrument_05:					; SC Bass         
	db $e0					; FM Hardware Voice 14
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $28			; Info byte: 00101000
	db $0f			; Volume _
	db $28			; Info byte: 00101000
	db $0f			; Volume _
.rst_i05:
	db $2c			; Info byte: 00101100
	db $ff			; Volume -
	db $20			; Info byte: 00100000
	db $20			; Info byte: 00100000
	db $21			; Info byte: 00100001
	dw .rst_i05						; Loop address
.instrument_06:					; SC Brass Satan  
	db $00,$04					; FM Software Voice 0
.rst_i06:
	db $29			; Info byte: 00101001
	db $0f			; Volume _
	dw .rst_i06						; Loop address
.instrument_07:					; ARP SQ          
	db $c0					; FM Hardware Voice 12
	db $28			; Info byte: 00101000
	db $0e			; Volume _
	db $28			; Info byte: 00101000
	db $0e			; Volume _
	db $28			; Info byte: 00101000
	db $0e			; Volume _
	db $28			; Info byte: 00101000
	db $0e			; Volume _
	db $28			; Info byte: 00101000
	db $0e			; Volume _
.rst_i07:
	db $09			; Info byte: 00001001
	db $00			; Volume _
	dw .rst_i07						; Loop address
.instrument_08:					; Clarinet low    
	db $50					; FM Hardware Voice 5
.rst_i08:
	db $29			; Info byte: 00101001
	db $0d			; Volume _
	dw .rst_i08						; Loop address
.instrument_09:					; Response BELL   
	db $d0					; FM Hardware Voice 13
	db $28			; Info byte: 00101000
	db $0d			; Volume _
	db $28			; Info byte: 00101000
	db $0b			; Volume _
	db $28			; Info byte: 00101000
	db $0a			; Volume _
.rst_i09:
	db $2c			; Info byte: 00101100
	db $ff			; Volume -
	db $20			; Info byte: 00100000
	db $20			; Info byte: 00100000
	db $20			; Info byte: 00100000
	db $20			; Info byte: 00100000
	db $20			; Info byte: 00100000
	db $2c			; Info byte: 00101100
	db $01			; Volume +
	db $20			; Info byte: 00100000
	db $20			; Info byte: 00100000
	db $20			; Info byte: 00100000
	db $20			; Info byte: 00100000
	db $2d			; Info byte: 00101101
	db $ff			; Volume -
	dw .rst_i09						; Loop address
.instrument_10:					; HH OP A8        
	db $01					; FM Hardware Voice was not set
	db $c8			; Info byte: 11001000
	db $0e			; Volume _
	db $04			; Noise
	db $08			; Noise volume
	db $cc			; Info byte: 11001100
	db $ff			; Volume -
	db $04			; Noise
	db $08			; Noise volume
	db $c0			; Info byte: 11000000
	db $04			; Noise
	db $07			; Noise volume
	db $c0			; Info byte: 11000000
	db $04			; Noise
	db $07			; Noise volume
	db $c0			; Info byte: 11000000
	db $04			; Noise
	db $06			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $04			; Noise
	db $06			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $04			; Noise
	db $05			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $04			; Noise
	db $05			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $04			; Noise
	db $04			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $04			; Noise
	db $04			; Noise volume
	db $c8			; Info byte: 11001000
	db $00			; Volume _
	db $04			; Noise
	db $03			; Noise volume
.rst_i10:
	db $c9			; Info byte: 11001001
	db $00			; Volume _
	db $04			; Noise
	db $03			; Noise volume
	dw .rst_i10						; Loop address
.instrument_11:					; SD-MAIN         
	db $10					; FM Hardware Voice 1
	db $28			; Info byte: 00101000
	db $0e			; Volume _
	db $c8			; Info byte: 11001000
	db $0c			; Volume _
	db $06			; Noise
	db $0c			; Noise volume
	db $c8			; Info byte: 11001000
	db $0a			; Volume _
	db $05			; Noise
	db $0a			; Noise volume
	db $c8			; Info byte: 11001000
	db $0a			; Volume _
	db $05			; Noise
	db $0a			; Noise volume
	db $c8			; Info byte: 11001000
	db $09			; Volume _
	db $05			; Noise
	db $09			; Noise volume
	db $c8			; Info byte: 11001000
	db $09			; Volume _
	db $05			; Noise
	db $08			; Noise volume
	db $c8			; Info byte: 11001000
	db $08			; Volume _
	db $04			; Noise
	db $07			; Noise volume
	db $c8			; Info byte: 11001000
	db $08			; Volume _
	db $04			; Noise
	db $06			; Noise volume
	db $c8			; Info byte: 11001000
	db $07			; Volume _
	db $04			; Noise
	db $05			; Noise volume
	db $c8			; Info byte: 11001000
	db $07			; Volume _
	db $04			; Noise
	db $04			; Noise volume
.rst_i11:
	db $09			; Info byte: 00001001
	db $00			; Volume _
	dw .rst_i11						; Loop address

; [ Song track data ]
.track_000:
	db $60			;Release 96
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_002:
	db $df			;Wait 32
	db $bf			;[End-Of-Track]
.track_004:
	db $52			;Note A#7
	db $6f			;Volume 14
	db $78			;Instrument 7
	db $c0			;Wait 1
	db $4f			;Note G-7
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $4d			;Note F-7
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $c0			;Wait 1
	db $46			;Note A#6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $43			;Note G-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $52			;Note A#7
	db $6b			;Volume 10
	db $a1,$08			;CMD Track detune
	db $c0			;Wait 1
	db $4f			;Note G-7
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $4d			;Note F-7
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $c0			;Wait 1
	db $46			;Note A#6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $43			;Note G-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $52			;Note A#7
	db $6b			;Volume 10
	db $a6,$50			;CMD Channel setup
	db $c0			;Wait 1
	db $4f			;Note G-7
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $4d			;Note F-7
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $c0			;Wait 1
	db $46			;Note A#6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $43			;Note G-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $52			;Note A#7
	db $67			;Volume 6
	db $a1,$08			;CMD Track detune
	db $c0			;Wait 1
	db $4f			;Note G-7
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $4d			;Note F-7
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $c0			;Wait 1
	db $46			;Note A#6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $43			;Note G-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_005:
	db $60			;Release 96
	db $c2			;Wait 3
	db $52			;Note A#7
	db $67			;Volume 6
	db $78			;Instrument 7
	db $c0			;Wait 1
	db $4f			;Note G-7
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $4d			;Note F-7
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $c0			;Wait 1
	db $46			;Note A#6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $43			;Note G-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $52			;Note A#7
	db $66			;Volume 5
	db $a1,$08			;CMD Track detune
	db $c0			;Wait 1
	db $4f			;Note G-7
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $4d			;Note F-7
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $c0			;Wait 1
	db $46			;Note A#6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $43			;Note G-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $52			;Note A#7
	db $65			;Volume 4
	db $a6,$50			;CMD Channel setup
	db $c0			;Wait 1
	db $4f			;Note G-7
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $4d			;Note F-7
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $c0			;Wait 1
	db $46			;Note A#6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $43			;Note G-6
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $52			;Note A#7
	db $64			;Volume 3
	db $a1,$08			;CMD Track detune
	db $c0			;Wait 1
	db $4f			;Note G-7
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $4d			;Note F-7
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $4a			;Note D-7
	db $bf			;[End-Of-Track]
.track_008:
	db $9c,$01			;CMD Drum $01
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $9c,$01			;CMD Drum $01
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $9c,$01			;CMD Drum $01
	db $c3			;Wait 4
	db $2f			;Note B-4
	db $6e			;Volume 13
	db $73			;Instrument 2
	db $c0			;Wait 1
	db $2f			;Note B-4
	db $c3			;Wait 4
	db $29			;Note F-4
	db $9a,$03			;CMD Note delay
	db $c4			;Wait 5
	db $26			;Note D-4
	db $9a,$05			;CMD Note delay
	db $c5			;Wait 6
	db $9c,$01			;CMD Drum $01
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $9c,$01			;CMD Drum $01
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $9c,$01			;CMD Drum $01
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $c3			;Wait 4
	db $9c,$01			;CMD Drum $01
					;Wait Repeat 4
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7b			;Instrument 10
	db $9c,$05			;CMD Drum $05
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_009:
			;CMD 8 Unused [WARNING]
	db $c2			;Wait 3
	db $47			;Note B-6
	db $67			;Volume 6
	db $7a			;Instrument 9
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3b			;Note B-5
	db $bf			;[End-Of-Track]
.track_010:
	db $ff			;Wait 64
	db $bf			;[End-Of-Track]
.track_011:
	db $53			;Note B-7
	db $70			;Volume 15
	db $78			;Instrument 7
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 2
	db $4e			;Note F#7
	db $6f			;Volume 14
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $53			;Note B-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $53			;Note B-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $53			;Note B-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $53			;Note B-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $53			;Note B-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $53			;Note B-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $53			;Note B-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $53			;Note B-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $53			;Note B-7
					;Wait Repeat 2
	db $4e			;Note F#7
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $4e			;Note F#7
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_012:
	db $17			;Note B-2
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $c3			;Wait 4
	db $17			;Note B-2
	db $c1			;Wait 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $23			;Note B-3
	db $c3			;Wait 4
	db $17			;Note B-2
	db $c1			;Wait 2
	db $17			;Note B-2
					;Wait Repeat 2
	db $19			;Note C#3
	db $c4			;Wait 5
	db $21			;Note A-3
	db $9a,$02			;CMD Note delay
					;Wait Repeat 5
	db $25			;Note C#4
	db $9a,$05			;CMD Note delay
	db $c5			;Wait 6
	db $1a			;Note D-3
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $26			;Note D-4
	db $c3			;Wait 4
	db $1a			;Note D-3
	db $c1			;Wait 2
	db $1a			;Note D-3
					;Wait Repeat 2
	db $19			;Note C#3
	db $c3			;Wait 4
	db $19			;Note C#3
	db $c1			;Wait 2
	db $19			;Note C#3
					;Wait Repeat 2
	db $25			;Note C#4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_013:
	db $39			;Note A-5
	db $6c			;Volume 11
	db $77			;Instrument 6
	db $cb			;Wait 12
	db $39			;Note A-5
	db $c1			;Wait 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3b			;Note B-5
	db $c4			;Wait 5
	db $3b			;Note B-5
	db $9a,$03			;CMD Note delay
					;Wait Repeat 5
	db $3b			;Note B-5
	db $9a,$05			;CMD Note delay
	db $c5			;Wait 6
	db $3d			;Note C#6
	db $cb			;Wait 12
	db $3d			;Note C#6
	db $c1			;Wait 2
	db $3d			;Note C#6
					;Wait Repeat 2
	db $3b			;Note B-5
	db $c4			;Wait 5
	db $3b			;Note B-5
	db $9a,$03			;CMD Note delay
					;Wait Repeat 5
	db $38			;Note G#5
	db $9a,$05			;CMD Note delay
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_014:
	db $3e			;Note D-6
	db $6c			;Volume 11
	db $77			;Instrument 6
	db $cb			;Wait 12
	db $3e			;Note D-6
	db $c1			;Wait 2
	db $3e			;Note D-6
					;Wait Repeat 2
	db $40			;Note E-6
	db $c4			;Wait 5
	db $40			;Note E-6
	db $9a,$03			;CMD Note delay
					;Wait Repeat 5
	db $40			;Note E-6
	db $9a,$05			;CMD Note delay
	db $c5			;Wait 6
	db $42			;Note F#6
	db $cb			;Wait 12
	db $42			;Note F#6
	db $c1			;Wait 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $40			;Note E-6
	db $c4			;Wait 5
	db $40			;Note E-6
	db $9a,$03			;CMD Note delay
					;Wait Repeat 5
	db $3b			;Note B-5
	db $9a,$05			;CMD Note delay
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_015:
	db $42			;Note F#6
	db $6c			;Volume 11
	db $77			;Instrument 6
	db $c2			;Wait 3
	db $94,$66		;CMD Vibrato
	db $c8			;Wait 9
	db $42			;Note F#6
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $44			;Note G#6
	db $c4			;Wait 5
	db $45			;Note A-6
	db $9a,$03			;CMD Note delay
					;Wait Repeat 5
	db $47			;Note B-6
	db $9a,$05			;CMD Note delay
	db $c5			;Wait 6
	db $45			;Note A-6
	db $c3			;Wait 4
	db $94,$66		;CMD Vibrato
	db $c7			;Wait 8
	db $45			;Note A-6
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $45			;Note A-6
					;Wait Repeat 2
	db $44			;Note G#6
	db $c4			;Wait 5
	db $42			;Note F#6
	db $9a,$03			;CMD Note delay
					;Wait Repeat 5
	db $40			;Note E-6
	db $9a,$05			;CMD Note delay
	db $c5			;Wait 6
	db $bf			;[End-Of-Track]
.track_016:
	db $9c,$01			;CMD Drum $01
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $9c,$01			;CMD Drum $01
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $9c,$01			;CMD Drum $01
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $c3			;Wait 4
	db $9c,$01			;CMD Drum $01
					;Wait Repeat 4
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $9c,$02			;CMD Drum $02
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7b			;Instrument 10
					;Wait Repeat 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $9c,$01			;CMD Drum $01
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $9c,$01			;CMD Drum $01
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $9c,$02			;CMD Drum $02
					;Wait Repeat 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $72			;Instrument 1
	db $c1			;Wait 2
	db $9c,$01			;CMD Drum $01
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6d			;Volume 12
	db $c1			;Wait 2
	db $5d			;Note A-8
	db $6e			;Volume 13
	db $7b			;Instrument 10
	db $9c,$05			;CMD Drum $05
					;Wait Repeat 2
	db $9c,$01			;CMD Drum $01
					;Wait Repeat 2
	db $21			;Note A-3
	db $70			;Volume 15
	db $7c			;Instrument 11
	db $9c,$02			;CMD Drum $02
	db $c3			;Wait 4
	db $5d			;Note A-8
	db $6f			;Volume 14
	db $7b			;Instrument 10
	db $9c,$05			;CMD Drum $05
	db $c1			;Wait 2
	db $21			;Note A-3
	db $6d			;Volume 12
	db $71			;Instrument 0
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_017:
			;CMD 8 Unused [WARNING]
	db $c2			;Wait 3
	db $47			;Note B-6
	db $69			;Volume 8
	db $7a			;Instrument 9
	db $a1,$08			;CMD Track detune
	db $c1			;Wait 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $47			;Note B-6
					;Wait Repeat 2
	db $42			;Note F#6
					;Wait Repeat 2
	db $3b			;Note B-5
	db $bf			;[End-Of-Track]
.track_021:
	db $32			;Note D-5
	db $6c			;Volume 11
	db $74			;Instrument 3
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $32			;Note D-5
	db $c5			;Wait 6
	db $32			;Note D-5
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $34			;Note E-5
					;Wait Repeat 2
	db $34			;Note E-5
	db $c5			;Wait 6
	db $34			;Note E-5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $c5			;Wait 6
	db $36			;Note F#5
	db $c1			;Wait 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $36			;Note F#5
	db $c5			;Wait 6
	db $36			;Note F#5
	db $c1			;Wait 2
	db $36			;Note F#5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $6e			;Volume 13
	db $75			;Instrument 4
	db $c7			;Wait 8
	db $2c			;Note G#4
	db $c7			;Wait 8
	db $bf			;[End-Of-Track]
.track_022:
	db $34			;Note E-5
	db $70			;Volume 15
	db $79			;Instrument 8
	db $a1,$08			;CMD Track detune
	db $c0			;Wait 1
	db $36			;Note F#5
	db $90,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $94,$26		;CMD Vibrato
	db $c4			;Wait 5
	db $34			;Note E-5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $38			;Note G#5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $9a,$03			;CMD Note delay
	db $c2			;Wait 3
	db $2f			;Note B-4
	db $9a,$02			;CMD Note delay
					;Wait Repeat 3
	db $34			;Note E-5
	db $c1			;Wait 2
	db $38			;Note G#5
	db $9a,$03			;CMD Note delay
	db $c2			;Wait 3
	db $3b			;Note B-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 3
	db $38			;Note G#5
	db $c0			;Wait 1
	db $39			;Note A-5
	db $90,$04			;CMD Portamento tone
	db $c3			;Wait 4
	db $94,$36		;CMD Vibrato
					;Wait Repeat 4
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $38			;Note G#5
	db $c1			;Wait 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3e			;Note D-6
	db $c0			;Wait 1
	db $3d			;Note C#6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $3b			;Note B-5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $39			;Note A-5
	db $c0			;Wait 1
	db $38			;Note G#5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $36			;Note F#5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $34			;Note E-5
	db $a1,$08			;CMD Track detune
	db $c0			;Wait 1
	db $36			;Note F#5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $38			;Note G#5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $39			;Note A-5
	db $c0			;Wait 1
	db $34			;Note E-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $31			;Note C#5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $bf			;[End-Of-Track]
.track_023:
	db $c2			;Wait 3
	db $34			;Note E-5
	db $68			;Volume 7
	db $79			;Instrument 8
	db $a1,$09			;CMD Track detune
	db $c0			;Wait 1
	db $36			;Note F#5
	db $90,$0a			;CMD Portamento tone
	db $c3			;Wait 4
	db $94,$26		;CMD Vibrato
	db $c4			;Wait 5
	db $34			;Note E-5
	db $9b			;CMD End 
	db $c1			;Wait 2
	db $32			;Note D-5
					;Wait Repeat 2
	db $36			;Note F#5
					;Wait Repeat 2
	db $38			;Note G#5
	db $c1			;Wait 2
	db $34			;Note E-5
	db $9a,$03			;CMD Note delay
	db $c2			;Wait 3
	db $2f			;Note B-4
	db $9a,$02			;CMD Note delay
					;Wait Repeat 3
	db $34			;Note E-5
	db $c1			;Wait 2
	db $38			;Note G#5
	db $9a,$03			;CMD Note delay
	db $c2			;Wait 3
	db $3b			;Note B-5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 3
	db $38			;Note G#5
	db $c0			;Wait 1
	db $39			;Note A-5
	db $90,$04			;CMD Portamento tone
	db $c3			;Wait 4
	db $94,$36		;CMD Vibrato
					;Wait Repeat 4
	db $9b			;CMD End 
	db $c0			;Wait 1
	db $38			;Note G#5
	db $c1			;Wait 2
	db $39			;Note A-5
					;Wait Repeat 2
	db $3b			;Note B-5
					;Wait Repeat 2
	db $3e			;Note D-6
	db $c0			;Wait 1
	db $3d			;Note C#6
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $3b			;Note B-5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $39			;Note A-5
	db $c0			;Wait 1
	db $38			;Note G#5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $36			;Note F#5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $34			;Note E-5
	db $a1,$08			;CMD Track detune
	db $c0			;Wait 1
	db $36			;Note F#5
	db $9a,$02			;CMD Note delay
					;Wait Repeat 1
	db $38			;Note G#5
	db $9a,$03			;CMD Note delay
	db $c1			;Wait 2
	db $39			;Note A-5
	db $bf			;[End-Of-Track]
.track_024:
	db $9c,$01			;CMD Drum $01
	db $c0			;Wait 1
	db $97,$8a			;CMD Volume slide up
	db $c6			;Wait 7
	db $60			;Release 96
	db $c5			;Wait 6
	db $9b			;CMD End 
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]
.track_025:
			;CMD 8 Unused [WARNING]
	db $c0			;Wait 1
	db $97,$8a			;CMD Volume slide up
	db $c6			;Wait 7
	db $60			;Release 96
	db $c5			;Wait 6
	db $9b			;CMD End 
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]
.track_027:
	db $53			;Note B-7
	db $6e			;Volume 13
	db $78			;Instrument 7
	db $a1,$08			;CMD Track detune
	db $c0			;Wait 1
	db $97,$8a			;CMD Volume slide up
	db $cc			;Wait 13
	db $9b			;CMD End 
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]
.track_028:
	db $17			;Note B-2
	db $6e			;Volume 13
	db $76			;Instrument 5
	db $97,$8a			;CMD Volume slide up
	db $cd			;Wait 14
	db $9b			;CMD End 
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]
.track_029:
	db $2d			;Note A-4
	db $6c			;Volume 11
	db $77			;Instrument 6
	db $97,$86			;CMD Volume slide up
	db $cd			;Wait 14
	db $9b			;CMD End 
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]
.track_030:
	db $32			;Note D-5
	db $6c			;Volume 11
	db $77			;Instrument 6
	db $97,$86			;CMD Volume slide up
	db $cd			;Wait 14
	db $9b			;CMD End 
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]
.track_031:
	db $36			;Note F#5
	db $6c			;Volume 11
	db $77			;Instrument 6
	db $97,$86			;CMD Volume slide up
	db $cd			;Wait 14
	db $9b			;CMD End 
	db $f1			;Wait 50
	db $bf			;[End-Of-Track]

