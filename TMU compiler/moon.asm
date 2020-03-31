; Compiled using tt_compile.exe V0.5.0 [06-09-2019]
; Copyright 2016 Richard Cornelisse

; Song: TriloTracker v0.9.1 public beta 
; By:   Richard Cornelisse      (c) 2015

;	org $c000

; [ Song start data ]
	db $04				; Initial song speed.
	dw .customvoice_start 		; Start of the custom voices data.
	dw .drummacro_start 		; Start of the drum macro data.
	dw .instrument_start 		; Start of the instrument data.

; [ Song order pointer list ]
		dw .track_0,.track_1,.track_2,.track_1,.track_2,.track_3,.track_4,.track_5		; Sequence step 0 /pattern 0
		dw .track_6,.track_7,.track_8,.track_7,.track_8,.track_9,.track_10,.track_11		; Sequence step 1 /pattern 1
		dw .track_6,.track_12,.track_13,.track_12,.track_14,.track_9,.track_4,.track_15		; Sequence step 2 /pattern 2
		dw .track_6,.track_16,.track_17,.track_16,.track_17,.track_9,.track_10,.track_18		; Sequence step 3 /pattern 3
		dw .track_6,.track_19,.track_20,.track_21,.track_22,.track_9,.track_4,.track_15		; Sequence step 4 /pattern 4
		dw .track_6,.track_23,.track_24,.track_25,.track_23,.track_9,.track_10,.track_18		; Sequence step 5 /pattern 5
.restart:
		dw .track_6,.track_26,.track_27,.track_28,.track_29,.track_9,.track_4,.track_15		; Sequence step 6 /pattern 6
		dw .track_30,.track_31,.track_32,.track_33,.track_31,.track_9,.track_10,.track_9		; Sequence step 7 /pattern 7
		dw 0x0000, .restart			; End of sequence delimiter + restart address.

.customvoice_start:
	db $21,$22,$52,$45,$E1,$D3,$F4,$F6	; Custom voice 0(was 0)

.drummacro_start:

.instrument_start:
	dw .ins_1
	dw .ins_2
	dw .ins_3
	dw .ins_4
	dw .ins_5
	dw .ins_6
	dw .ins_7
	dw .ins_8
	dw .ins_9
	dw .ins_10
	dw .ins_11
	dw .ins_12
	dw .ins_13
	dw .ins_14
	dw .ins_15
	dw .ins_16
	dw .ins_17
	dw .ins_18
	dw .ins_19
	dw .ins_20
	dw .ins_21
	dw .ins_22
	dw .ins_23
	dw .ins_24
	dw .ins_25
	dw .ins_26
	dw .ins_27
	dw .ins_28
	dw .ins_29
	dw .ins_30
.ins_1:						; BD POW Solid    
		db 0					; Hardware voice
		db $B1,$0F,$1F
		db $A1,$00,$1F
		db $A1,$00,$1F
		db $A1,$00,$1F
		db $A1,$00,$1D
		db $81,$00,$00
		db $A1,$00,$1B
.rst_i1:
		db $89,$00,$00
		dw .rst_i1
.ins_2:						; SD POW Solid    
		db 0					; Hardware voice
		db $B5,$0E,$1F,$05,$00
		db $85,$0C,$00,$FB,$FF
		db $E1,$0B,$0B
		db $E1,$0B,$0B
		db $A1,$0A,$1D
		db $81,$0A,$00
		db $A1,$09,$1B
.rst_i2:
		db $89,$09,$00
		dw .rst_i2
.ins_3:						; HH close So HI  
		db 0					; Hardware voice
		db $81,$0C,$00
		db $81,$06,$00
		db $A1,$00,$1F
		db $A1,$00,$1F
		db $A1,$00,$1D
		db $81,$00,$00
		db $A1,$00,$1B
.rst_i3:
		db $89,$00,$00
		dw .rst_i3
.ins_4:						; HH open Solid   
.ins_5:						; Ride Cymbal     
.ins_6:						; PGS String snak2
.ins_7:						; PSG NEM2 trump  
.ins_8:						; PSG Lead        
.ins_9:						; PGS String snake
.ins_10:						; SC Bass         
		db 7					; Hardware voice
		db $15,$0F,$10,$00
		db $15,$0F,$F0,$FF
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$08
		db $11,$08
		db $11,$08
.rst_i10:
		db $19,$08
		dw .rst_i10
.ins_11:						; SC Piano        
.ins_12:						; SC piano dly    
.ins_13:						; SC NEM saw      
.ins_14:						; SC Pad LOW      
.ins_15:						; SC SD BRASS SAW 
.ins_16:						; SC SD BrassDelay
.ins_17:						; SC Venom KVIIpno
		db 0					; Hardware voice
		db $85,$0E,$00,$05,$00
		db $85,$0C,$00,$FB,$FF
		db $E1,$0B,$0B
		db $E1,$0B,$0B
		db $81,$0A,$00
		db $81,$0A,$00
		db $E1,$09,$09
		db $E1,$09,$09
		db $E1,$09,$09
		db $81,$08,$00
		db $E1,$07,$07
		db $81,$06,$00
		db $E1,$05,$05
		db $81,$04,$00
.rst_i17:
		db $89,$02,$00
		dw .rst_i17
.ins_18:						; SC SD Side pick 
		db 2					; Hardware voice
		db $15,$0F,$07,$00
		db $15,$0C,$F9,$FF
		db $11,$0C
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$08
		db $11,$07
.rst_i18:
		db $19,$05
		dw .rst_i18
.ins_19:						; SC Sawlead      
.ins_20:						; SC DOUBLE       
.ins_21:						; SD Tom          
.ins_22:						; SC SD MainMelody
.ins_23:						; SC NEM2chords   
.ins_24:						; SC SlowStringsnk
		db 6					; Hardware voice
		db $11,$0F
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0B
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$0A
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$09
		db $11,$08
		db $11,$08
		db $11,$08
		db $11,$08
		db $11,$08
.rst_i24:
		db $15,$07,$01,$00
		db $11,$07
		db $11,$07
		db $15,$07,$FF,$FF
		db $11,$07
		db $19,$07
		dw .rst_i24
.ins_25:						; SC String solid 
.ins_26:						; PSG tom noise   
.ins_27:						; SC Venom attack 
.ins_28:						; SC Venom brass  
.ins_29:						; SC Pian SnakeLOW
.ins_30:						; SC Mantabrass sn
		db 16					; Custom voice (was 0)
		db $11,$0F
		db $11,$08
		db $11,$07
		db $11,$06
		db $11,$05
		db $11,$04
		db $11,$04
		db $11,$08
		db $11,$06
		db $11,$05
		db $11,$04
		db $11,$03
.rst_i30:
		db $19,$01
		dw .rst_i30

; [ Song track data ]
.track_0:
	db $42		;[Note] 67
	db $6F		;[Volume] 15
	db $8D		;[Instrument] 30
	db $C3		;[Wait] 4
	db $36		;[Note] 55
	db $C1		;[Wait] 2
	db $42		;[Note] 67
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $36		;[Note] 55
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $42		;[Note] 67
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $44		;[Note] 69
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $42		;[Note] 67
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $44		;[Note] 69
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $42		;[Note] 67
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $44		;[Note] 69
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $42		;[Note] 67
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $47		;[Note] 72
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $44		;[Note] 69
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $47		;[Note] 72
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $47		;[Note] 72
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $46		;[Note] 71
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $47		;[Note] 72
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $46		;[Note] 71
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $46		;[Note] 71
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $44		;[Note] 69
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $46		;[Note] 71
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $42		;[Note] 67
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $44		;[Note] 69
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_1:
	db $6F		;[Volume] 15
	db $81		;[Instrument] 18
	db $FF		;[Wait] 64
	db $BF		;[End-Of-Track]
.track_2:
	db $6F		;[Volume] 15
	db $87		;[Instrument] 24
	db $FF		;[Wait] 64
	db $BF		;[End-Of-Track]
.track_3:
	db $6F		;[Volume] 15
	db $FF		;[Wait] 64
	db $BF		;[End-Of-Track]
.track_4:
	db $42		;[Note] 67
	db $6F		;[Volume] 15
	db $8D		;[Instrument] 30
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_5:
	db $64		;[Volume] 4
	db $8D		;[Instrument] 30
	db $C5		;[Wait] 6
	db $42		;[Note] 67
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_6:
	db $42		;[Note] 67
	db $6F		;[Volume] 15
	db $8D		;[Instrument] 30
	db $C1		;[Wait] 2
	db $42		;[Note] 67
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $36		;[Note] 55
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $42		;[Note] 67
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $36		;[Note] 55
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $42		;[Note] 67
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $44		;[Note] 69
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $42		;[Note] 67
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $44		;[Note] 69
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $42		;[Note] 67
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $44		;[Note] 69
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $42		;[Note] 67
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $47		;[Note] 72
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $44		;[Note] 69
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $47		;[Note] 72
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $47		;[Note] 72
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $46		;[Note] 71
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $47		;[Note] 72
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $46		;[Note] 71
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $46		;[Note] 71
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $44		;[Note] 69
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $46		;[Note] 71
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $42		;[Note] 67
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $44		;[Note] 69
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_7:
	db $2A		;[Note] 43
	db $CB		;[Wait] 12
	db $31		;[Note] 50
				;[Skip delay] 12
	db $36		;[Note] 55
	db $C7		;[Wait] 8
	db $A7, $67	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $1F	;[CMD vibrato] rep
	db $DE		;[Wait] 31
	db $BF		;[End-Of-Track]
.track_8:
	db $25		;[Note] 38
	db $CF		;[Wait] 16
	db $A7, $66	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $17	;[CMD vibrato] rep
	db $D6		;[Wait] 23
	db $2A		;[Note] 43
	db $C7		;[Wait] 8
	db $2C		;[Note] 45
	db $A6, $20; tone-slide
	db $C0		;[Wait] 1
	db $B0, $03; tone-slide rep
	db $C6		;[Wait] 7
	db $2F		;[Note] 48
	db $A6, $20; tone-slide
	db $C0		;[Wait] 1
	db $B0, $04; tone-slide rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_9:
	db $FF		;[Wait] 64
	db $BF		;[End-Of-Track]
.track_10:
	db $42		;[Note] 67
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_11:
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
	db $C0		;[Wait] 1
	db $A3, $0C; arpegio
				;[Skip delay] 1
	db $BF		;[End-Of-Track]
.track_12:
	db $28		;[Note] 41
	db $CB		;[Wait] 12
	db $2F		;[Note] 48
				;[Skip delay] 12
	db $34		;[Note] 53
	db $C7		;[Wait] 8
	db $A7, $67	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $66	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $65	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0F	;[CMD vibrato] rep
	db $CE		;[Wait] 15
	db $BF		;[End-Of-Track]
.track_13:
	db $2F		;[Note] 48
	db $CF		;[Wait] 16
	db $2E		;[Note] 47
	db $A1, $03	; note delay
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
	db $DB		;[Wait] 28
	db $2C		;[Note] 45
	db $C7		;[Wait] 8
	db $2A		;[Note] 43
	db $A6, $20; tone-slide
	db $C0		;[Wait] 1
	db $B0, $03; tone-slide rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_14:
	db $2F		;[Note] 48
	db $CF		;[Wait] 16
	db $2E		;[Note] 47
	db $C2		;[Wait] 3
	db $60		;[Note] 97
	db $C0		;[Wait] 1
	db $2E		;[Note] 47
	db $DB		;[Wait] 28
	db $2C		;[Note] 45
	db $C7		;[Wait] 8
	db $2A		;[Note] 43
	db $A6, $20; tone-slide
	db $C0		;[Wait] 1
	db $B0, $03; tone-slide rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_15:
	db $60		;[Note] 97
	db $64		;[Volume] 4
	db $8D		;[Instrument] 30
	db $C1		;[Wait] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_16:
	db $27		;[Note] 40
	db $CB		;[Wait] 12
	db $2E		;[Note] 47
				;[Skip delay] 12
	db $33		;[Note] 52
	db $C7		;[Wait] 8
	db $A7, $67	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $66	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $65	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0F	;[CMD vibrato] rep
	db $CE		;[Wait] 15
	db $BF		;[End-Of-Track]
.track_17:
	db $31		;[Note] 50
	db $A6, $20; tone-slide
	db $C0		;[Wait] 1
	db $B0, $03; tone-slide rep
	db $D6		;[Wait] 23
	db $2A		;[Note] 43
	db $CF		;[Wait] 16
	db $36		;[Note] 55
	db $A6, $20; tone-slide
	db $C0		;[Wait] 1
	db $B0, $0F; tone-slide rep
	db $D6		;[Wait] 23
	db $BF		;[End-Of-Track]
.track_18:
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $42		;[Note] 67
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $47		;[Note] 72
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $3D		;[Note] 62
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $46		;[Note] 71
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $44		;[Note] 69
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_19:
	db $26		;[Note] 39
	db $CB		;[Wait] 12
	db $2D		;[Note] 46
				;[Skip delay] 12
	db $32		;[Note] 51
	db $C7		;[Wait] 8
	db $A7, $67	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $66	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $65	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0B	;[CMD vibrato] rep
	db $CA		;[Wait] 11
	db $3D		;[Note] 62
	db $6F		;[Volume] 15
	db $87		;[Instrument] 24
	db $C3		;[Wait] 4
	db $BF		;[End-Of-Track]
.track_20:
	db $A7, $66	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $2F	;[CMD vibrato] rep
	db $EE		;[Wait] 47
	db $38		;[Note] 57
	db $C7		;[Wait] 8
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $60		;[Note] 97
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_21:
	db $26		;[Note] 39
	db $CB		;[Wait] 12
	db $2D		;[Note] 46
				;[Skip delay] 12
	db $32		;[Note] 51
	db $C7		;[Wait] 8
	db $A7, $67	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $66	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $65	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0F	;[CMD vibrato] rep
	db $CE		;[Wait] 15
	db $BF		;[End-Of-Track]
.track_22:
	db $A7, $66	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $2F	;[CMD vibrato] rep
	db $EE		;[Wait] 47
	db $38		;[Note] 57
	db $C7		;[Wait] 8
	db $36		;[Note] 55
	db $C3		;[Wait] 4
	db $3D		;[Note] 62
				;[Skip delay] 4
	db $BF		;[End-Of-Track]
.track_23:
	db $B0, $05; tone-slide rep
	db $C7		;[Wait] 8
	db $A7, $66	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $37	;[CMD vibrato] rep
	db $F6		;[Wait] 55
	db $BF		;[End-Of-Track]
.track_24:
	db $36		;[Note] 55
	db $6F		;[Volume] 15
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
				;[Skip delay] 2
	db $36		;[Note] 55
	db $80		;[Instrument] 17
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_25:
	db $12		;[Note] 19
	db $68		;[Volume] 8
	db $79		;[Instrument] 10
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
	db $69		;[Volume] 9
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6A		;[Volume] 10
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6B		;[Volume] 11
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6C		;[Volume] 12
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6D		;[Volume] 13
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6E		;[Volume] 14
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_26:
	db $B1, $10	;[CMD vibrato] rep
	db $CF		;[Wait] 16
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $2F		;[Note] 48
	db $A6, $10; tone-slide
	db $C0		;[Wait] 1
	db $B0, $03; tone-slide rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $31		;[Note] 50
	db $C7		;[Wait] 8
	db $A7, $66	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $36		;[Note] 55
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $36		;[Note] 55
	db $A6, $10; tone-slide
	db $C0		;[Wait] 1
	db $B0, $03; tone-slide rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_27:
	db $36		;[Note] 55
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $36		;[Note] 55
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $36		;[Note] 55
	db $80		;[Instrument] 17
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_28:
	db $12		;[Note] 19
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $12		;[Note] 19
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $11		;[Note] 18
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_29:
	db $60		;[Note] 97
	db $B1, $10	;[CMD vibrato] rep
	db $CF		;[Wait] 16
	db $2E		;[Note] 47
	db $C3		;[Wait] 4
	db $2F		;[Note] 48
	db $A6, $10; tone-slide
	db $C0		;[Wait] 1
	db $B0, $03; tone-slide rep
	db $C2		;[Wait] 3
	db $31		;[Note] 50
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $31		;[Note] 50
	db $C7		;[Wait] 8
	db $A7, $66	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $03	;[CMD vibrato] rep
	db $C2		;[Wait] 3
	db $36		;[Note] 55
	db $C1		;[Wait] 2
	db $60		;[Note] 97
	db $C5		;[Wait] 6
	db $35		;[Note] 54
	db $C7		;[Wait] 8
	db $36		;[Note] 55
	db $A6, $10; tone-slide
	db $C0		;[Wait] 1
	db $B0, $03; tone-slide rep
	db $C6		;[Wait] 7
	db $BF		;[End-Of-Track]
.track_30:
	db $42		;[Note] 67
	db $6F		;[Volume] 15
	db $8D		;[Instrument] 30
	db $C1		;[Wait] 2
	db $42		;[Note] 67
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $36		;[Note] 55
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $42		;[Note] 67
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $36		;[Note] 55
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $42		;[Note] 67
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $44		;[Note] 69
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $42		;[Note] 67
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $44		;[Note] 69
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $42		;[Note] 67
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $44		;[Note] 69
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $42		;[Note] 67
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $47		;[Note] 72
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $44		;[Note] 69
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $47		;[Note] 72
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $47		;[Note] 72
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $37		;[Note] 56
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $46		;[Note] 71
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $47		;[Note] 72
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $46		;[Note] 71
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $46		;[Note] 71
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $3D		;[Note] 62
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $44		;[Note] 69
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $46		;[Note] 71
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $42		;[Note] 67
	db $6F		;[Volume] 15
				;[Skip delay] 2
	db $44		;[Note] 69
	db $64		;[Volume] 4
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_31:
	db $38		;[Note] 57
	db $A7, $64	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C4		;[Wait] 5
	db $60		;[Note] 97
	db $C1		;[Wait] 2
	db $3A		;[Note] 59
	db $C3		;[Wait] 4
	db $36		;[Note] 55
	db $A6, $20; tone-slide
	db $C0		;[Wait] 1
	db $B0, $03; tone-slide rep
	db $CA		;[Wait] 11
	db $A7, $66	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $65	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $07	;[CMD vibrato] rep
	db $C6		;[Wait] 7
	db $A7, $64	;[CMD vibrato]
	db $C0		;[Wait] 1
	db $B1, $0F	;[CMD vibrato] rep
	db $CE		;[Wait] 15
	db $35		;[Note] 54
	db $C3		;[Wait] 4
	db $36		;[Note] 55
	db $A6, $10; tone-slide
	db $C0		;[Wait] 1
	db $B0, $03; tone-slide rep
	db $C2		;[Wait] 3
	db $BF		;[End-Of-Track]
.track_32:
	db $33		;[Note] 52
	db $70		;[Instrument] 1
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $33		;[Note] 52
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $33		;[Note] 52
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $33		;[Note] 52
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $33		;[Note] 52
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $33		;[Note] 52
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $33		;[Note] 52
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $33		;[Note] 52
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $31		;[Note] 50
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $31		;[Note] 50
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $31		;[Note] 50
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $31		;[Note] 50
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $31		;[Note] 50
	db $70		;[Instrument] 1
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $31		;[Note] 50
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $31		;[Note] 50
	db $71		;[Instrument] 2
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $31		;[Note] 50
	db $72		;[Instrument] 3
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_33:
	db $0F		;[Note] 16
	db $C3		;[Wait] 4
	db $0F		;[Note] 16
				;[Skip delay] 4
	db $0F		;[Note] 16
				;[Skip delay] 4
	db $0F		;[Note] 16
				;[Skip delay] 4
	db $0F		;[Note] 16
				;[Skip delay] 4
	db $0F		;[Note] 16
				;[Skip delay] 4
	db $0F		;[Note] 16
				;[Skip delay] 4
	db $0F		;[Note] 16
				;[Skip delay] 4
	db $0D		;[Note] 14
				;[Skip delay] 4
	db $0D		;[Note] 14
				;[Skip delay] 4
	db $0D		;[Note] 14
				;[Skip delay] 4
	db $0D		;[Note] 14
				;[Skip delay] 4
	db $0D		;[Note] 14
	db $C1		;[Wait] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $0D		;[Note] 14
				;[Skip delay] 2
	db $60		;[Note] 97
				;[Skip delay] 2
	db $BF		;[End-Of-Track]
.track_34:
	db $BF		;[End-Of-Track]
; [ Song sub-track data ]
