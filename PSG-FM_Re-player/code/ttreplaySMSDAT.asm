

	; Balance setting space volume max - 8
	ds 8*16, $1E
_VOLUME_TABLE
	; Combined volume table PSG/FM
;	db	 $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
;	db	 $0F, $0F, $0F, $0F, $0F, $0F, $0F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1E
;	db	 $0F, $0F, $0F, $0F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $2F, $2F, $2E, $2D
;	db	 $0F, $0F, $0F, $1F, $1F, $1F, $1F, $1F, $2F, $2F, $2F, $2F, $2F, $3E, $3D, $3C
;	db	 $0F, $0F, $1F, $1F, $1F, $1F, $2F, $2F, $2F, $2F, $3F, $3F, $3E, $3D, $4C, $4B
;	db	 $0F, $0F, $1F, $1F, $1F, $2F, $2F, $2F, $3F, $3F, $3F, $4E, $4D, $4C, $5B, $5A
;	db	 $0F, $0F, $1F, $1F, $2F, $2F, $2F, $3F, $3F, $4F, $4E, $4D, $5C, $5B, $6A, $69
;	db	 $0F, $0F, $1F, $1F, $2F, $2F, $3F, $3F, $4F, $4E, $5D, $5C, $6B, $6A, $79, $78
;	db	 $0F, $1F, $1F, $2F, $2F, $3F, $3F, $4F, $4E, $5D, $5C, $6B, $6A, $79, $78, $87
;	db	 $0F, $1F, $1F, $2F, $2F, $3F, $4F, $4E, $5D, $5C, $6B, $7A, $79, $88, $87, $96
;	db	 $0F, $1F, $1F, $2F, $3F, $3F, $4E, $5D, $5C, $6B, $7A, $79, $88, $97, $96, $A5
;	db	 $0F, $1F, $1F, $2F, $3F, $4E, $4D, $5C, $6B, $7A, $79, $88, $97, $A6, $A5, $B4
;	db	 $0F, $1F, $2F, $2F, $3E, $4D, $5C, $6B, $6A, $79, $88, $97, $A6, $A5, $B4, $C3
;	db	 $0F, $1F, $2F, $3E, $3D, $4C, $5B, $6A, $79, $88, $97, $A6, $A5, $B4, $C3, $D2
;	db	 $0F, $1F, $2E, $3D, $4C, $5B, $6A, $79, $78, $87, $96, $A5, $B4, $C3, $D2, $E1
;	db	 $0F, $1E, $2D, $3C, $4B, $5A, $69, $78, $87, $96, $A5, $B4, $C3, $D2, $E1, $F0

	; Tail mode on (psg 1/ FM E)	
	db	 $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E
	db	 $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E
	db	 $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $2E, $2E, $2E, $2D
	db	 $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $2E, $2E, $2E, $2E, $2E, $3E, $3D, $3C
	db	 $1E, $1E, $1E, $1E, $1E, $1E, $2E, $2E, $2E, $2E, $3E, $3E, $3E, $3D, $4C, $4B
	db	 $1E, $1E, $1E, $1E, $1E, $2E, $2E, $2E, $3E, $3E, $3E, $4E, $4D, $4C, $5B, $5A
	db	 $1E, $1E, $1E, $1E, $2E, $2E, $2E, $3E, $3E, $4E, $4E, $4D, $5C, $5B, $6A, $69
	db	 $1E, $1E, $1E, $1E, $2E, $2E, $3E, $3E, $4E, $4E, $5D, $5C, $6B, $6A, $79, $78
	db	 $1E, $1E, $1E, $2E, $2E, $3E, $3E, $4E, $4E, $5D, $5C, $6B, $6A, $79, $78, $87
	db	 $1E, $1E, $1E, $2E, $2E, $3E, $4E, $4E, $5D, $5C, $6B, $7A, $79, $88, $87, $96
	db	 $1E, $1E, $1E, $2E, $3E, $3E, $4E, $5D, $5C, $6B, $7A, $79, $88, $97, $96, $A5
	db	 $1E, $1E, $1E, $2E, $3E, $4E, $4D, $5C, $6B, $7A, $79, $88, $97, $A6, $A5, $B4
	db	 $1E, $1E, $2E, $2E, $3E, $4D, $5C, $6B, $6A, $79, $88, $97, $A6, $A5, $B4, $C3
	db	 $1E, $1E, $2E, $3E, $3D, $4C, $5B, $6A, $79, $88, $97, $A6, $A5, $B4, $C3, $D2
	db	 $1E, $1E, $2E, $3D, $4C, $5B, $6A, $79, $78, $87, $96, $A5, $B4, $C3, $D2, $E1
	db	 $1E, $1E, $2D, $3C, $4B, $5A, $69, $78, $87, $96, $A5, $B4, $C3, $D2, $E1, $F0

TRACK_ToneTable_PSG:	
	dw $0001	     ; C1			
	dw $0001	     ; C#1			
	dw $0001	     ; D1			
	dw $0001	     ; D#1			
	dw $0001	     ; E1			
	dw $0001	     ; F1			
	dw $0001	     ; F#1			
	dw $0001	     ; G1
	dw $0001	     ; G#1	
	dw $0001         ; A1
	dw $0001         ; A#1/Bb1 
	dw $0001         ; B1	
	dw $0001	     ; C2			
	dw $0001	     ; C#2			
	dw $0001	     ; D2			
	dw $0001	     ; D#2			
	dw $0001	     ; E2			
	dw $0001	     ; F2			
	dw $0001	     ; F#2			
	dw $0001	     ; G2
	dw $0001	     ; G#2			
   
	dw $03F9      ;A2
	dw $03C0      ; A#2/Bb2 
	dw $038A      ;B2
	dw $0357      ;C3
	dw $0327      ; C#3/Db3 
	dw $02FA      ;D3
	dw $02CF      ; D#3/Eb3 
	dw $02A7      ;E3
	dw $0281      ;F3
	dw $025D      ; F#3/Gb3 
	dw $023B      ;G3
	dw $021B      ; G#3/Ab3 
	dw $01FC      ;A3
	dw $01E0      ; A#3/Bb3 
	dw $01C5      ;B3
	dw $01AC      ;C4
	dw $0194      ; C#4/Db4 
	dw $017D      ;D4
	dw $0168      ; D#4/Eb4 
	dw $0153      ;E4
	dw $0140      ;F4
	dw $012E      ; F#4/Gb4 
	dw $011D      ;G4
	dw $010D      ; G#4/Ab4 
	dw $00FE      ;A4
	dw $00F0      ; A#4/Bb4 
	dw $00E2      ;B4
	dw $00D6      ;C5
	dw $00CA      ; C#5/Db5 
	dw $00BE      ;D5
	dw $00B4      ; D#5/Eb5 
	dw $00AA      ;E5
	dw $00A0      ;F5
	dw $0097      ; F#5/Gb5 
	dw $008F      ;G5
	dw $0087      ; G#5/Ab5 
	dw $007F      ;A5
	dw $0078      ; A#5/Bb5 
	dw $0071      ;B5
	dw $006B      ;C6
	dw $0065      ; C#6/Db6 
	dw $005F      ;D6
	dw $005A      ; D#6/Eb6 
	dw $0055      ;E6
	dw $0050      ;F6
	dw $004C      ; F#6/Gb6 
	dw $0047      ;G6
	dw $0043      ; G#6/Ab6 
	dw $0040      ;A6
	dw $003C      ; A#6/Bb6 
	dw $0039      ;B6
	dw $0035      ;C7
	dw $0032      ; C#7/Db7 
	dw $0030      ;D7
	dw $002D      ; D#7/Eb7 
	dw $002A      ;E7
	dw $0028      ;F7
	dw $0026      ; F#7/Gb7 
	dw $0024      ;G7
	dw $0022      ; G#7/Ab7 
	dw $0020      ;A7
	dw $001E      ; A#7/Bb7 
	dw $001C      ;B7
	dw $001B      ;C8
	dw $0019      ; C#8/Db8 
	dw $0018      ;D8
	dw $0016      ; D#8/Eb8 
	dw $0015      ;E8
	dw $0014      ;F8
	dw $0013      ; F#8/Gb8 
	dw $0012      ;G8
	dw $0011      ; G#8/Ab8 
	dw $0010      ;A8
	dw $000F      ; A#8/Bb8 
	dw $000E      ;B8
TRACK_ToneTable_FM:
;	db   	0,0
	db	0adh,000h,0b7h,000h,0c2h,000h,0cdh,000h,0d9h,000h,0e6h,000h
      db	0f4h,000h,003h,001h,012h,001h,022h,001h,034h,001h,046h,001h
      db    0adh,002h,0b7h,002h,0c2h,002h,0cdh,002h,0d9h,002h,0e6h,002h
      db    0f4h,002h,003h,003h,012h,003h,022h,003h,034h,003h,046h,003h
      db    0adh,004h,0b7h,004h,0c2h,004h,0cdh,004h,0d9h,004h,0e6h,004h
      db    0f4h,004h,003h,005h,012h,005h,022h,005h,034h,005h,046h,005h
      db    0adh,006h,0b7h,006h,0c2h,006h,0cdh,006h,0d9h,006h,0e6h,006h
      db    0f4h,006h,003h,007h,012h,007h,022h,007h,034h,007h,046h,007h
      db    0adh,008h,0b7h,008h,0c2h,008h,0cdh,008h,0d9h,008h,0e6h,008h
      db    0f4h,008h,003h,009h,012h,009h,022h,009h,034h,009h,046h,009h
      db    0adh,00ah,0b7h,00ah,0c2h,00ah,0cdh,00ah,0d9h,00ah,0e6h,00ah
      db    0f4h,00ah,003h,00bh,012h,00bh,022h,00bh,034h,00bh,046h,00bh
      db    0adh,00ch,0b7h,00ch,0c2h,00ch,0cdh,00ch,0d9h,00ch,0e6h,00ch
      db    0f4h,00ch,003h,00dh,012h,00dh,022h,00dh,034h,00dh,046h,00dh
      db    0adh,00eh,0b7h,00eh,0c2h,00eh,0cdh,00eh,0d9h,00eh,0e6h,00eh
      db    0f4h,00eh,003h,00fh,012h,00fh,022h,00fh,034h,00fh,046h,00fh


TRACK_Vibrato_sine:	; Sine table used for tremelo and vibrato
      db 	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00		      ; depth 	1
      db 	$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$02,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00		      ; depth 	2
      db 	$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$02,$02,$02,$02,$03,$03,$03,$03,$02,$02,$02,$02,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00		      ; depth 	3
      db 	$00,$00,$00,$00,$00,$01,$01,$01,$01,$02,$02,$02,$03,$03,$04,$04,$04,$04,$03,$03,$02,$02,$02,$01,$01,$01,$01,$00,$00,$00,$00,$00		      ; depth 	4
      db 	$00,$00,$00,$00,$01,$01,$01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$05,$05,$04,$04,$03,$03,$02,$02,$01,$01,$01,$01,$00,$00,$00,$00		      ; depth 	5
      db 	$00,$00,$00,$00,$01,$01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$06,$06,$05,$05,$04,$04,$03,$03,$02,$02,$01,$01,$01,$00,$00,$00,$00		      ; depth 	6
      db 	$00,$00,$00,$01,$01,$01,$02,$02,$03,$04,$04,$05,$06,$06,$07,$08,$08,$07,$06,$06,$05,$04,$04,$03,$02,$02,$01,$01,$01,$00,$00,$00		      ; depth 	7
      db 	$00,$00,$01,$01,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0C,$0D,$0D,$0C,$0A,$09,$08,$07,$06,$05,$04,$03,$02,$01,$01,$01,$00,$00		      ; depth 	8
      db 	$00,$00,$01,$02,$02,$04,$05,$06,$08,$09,$0B,$0D,$0F,$11,$13,$15,$15,$13,$11,$0F,$0D,$0B,$09,$08,$06,$05,$04,$02,$02,$01,$00,$00		      ; depth 	9
      db 	$00,$01,$01,$02,$04,$05,$07,$09,$0B,$0E,$10,$13,$16,$19,$1C,$1F,$1F,$1C,$19,$16,$13,$10,$0E,$0B,$09,$07,$05,$04,$02,$01,$01,$00		      ; depth 	A
      db 	$00,$01,$02,$03,$05,$08,$0B,$0E,$11,$15,$19,$1D,$21,$26,$2B,$2F,$2F,$2B,$26,$21,$1D,$19,$15,$11,$0E,$0B,$08,$05,$03,$02,$01,$00		      ; depth 	B
      db 	$01,$01,$03,$05,$07,$0B,$0E,$12,$17,$1C,$21,$27,$2D,$33,$39,$3F,$3F,$39,$33,$2D,$27,$21,$1C,$17,$12,$0E,$0B,$07,$05,$03,$01,$01		      ; depth 	C
