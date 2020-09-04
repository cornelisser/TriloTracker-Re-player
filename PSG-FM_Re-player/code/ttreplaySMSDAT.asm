

	; Balance setting space volume max - 8
	ds 8*16, $0F
_VOLUME_TABLE
	; Combined volume table PSG/FM
	db	 $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
	db	 $0F, $0F, $0F, $0F, $0F, $0F, $0F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1E
	db	 $0F, $0F, $0F, $0F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $2F, $2F, $2E, $2D
	db	 $0F, $0F, $0F, $1F, $1F, $1F, $1F, $1F, $2F, $2F, $2F, $2F, $2F, $3E, $3D, $3C
	db	 $0F, $0F, $1F, $1F, $1F, $1F, $2F, $2F, $2F, $2F, $3F, $3F, $3E, $3D, $4C, $4B
	db	 $0F, $0F, $1F, $1F, $1F, $2F, $2F, $2F, $3F, $3F, $3F, $4E, $4D, $4C, $5B, $5A
	db	 $0F, $0F, $1F, $1F, $2F, $2F, $2F, $3F, $3F, $4F, $4E, $4D, $5C, $5B, $6A, $69
	db	 $0F, $0F, $1F, $1F, $2F, $2F, $3F, $3F, $4F, $4E, $5D, $5C, $6B, $6A, $79, $78
	db	 $0F, $1F, $1F, $2F, $2F, $3F, $3F, $4F, $4E, $5D, $5C, $6B, $6A, $79, $78, $87
	db	 $0F, $1F, $1F, $2F, $2F, $3F, $4F, $4E, $5D, $5C, $6B, $7A, $79, $88, $87, $96
	db	 $0F, $1F, $1F, $2F, $3F, $3F, $4E, $5D, $5C, $6B, $7A, $79, $88, $97, $96, $A5
	db	 $0F, $1F, $1F, $2F, $3F, $4E, $4D, $5C, $6B, $7A, $79, $88, $97, $A6, $A5, $B4
	db	 $0F, $1F, $2F, $2F, $3E, $4D, $5C, $6B, $6A, $79, $88, $97, $A6, $A5, $B4, $C3
	db	 $0F, $1F, $2F, $3E, $3D, $4C, $5B, $6A, $79, $88, $97, $A6, $A5, $B4, $C3, $D2
	db	 $0F, $1F, $2E, $3D, $4C, $5B, $6A, $79, $78, $87, $96, $A5, $B4, $C3, $D2, $E1
	db	 $0F, $1E, $2D, $3C, $4B, $5A, $69, $78, $87, $96, $A5, $B4, $C3, $D2, $E1, $F0
	

;Konami values found in	Nemesis 2 replayer.
C_PER		equ	$6a*32	
C1_PER	equ	$64*32
D_PER		equ	$5e*32
D1_PER	equ	$59*32
E_PER		equ	$54*32
F_PER		equ	$4f*32
F1_PER	equ	$4a*32
G_PER		equ	$46*32
G1_PER	equ	$42*32
A_PER		equ	$3f*32
A1_PER	equ	$3b*32
B_PER		equ	$38*32

TRACK_ToneTable_PSG:	
	dw C_PER/1	,C1_PER/1  ,D_PER/1  ,D1_PER/1  ,E_PER/1	,F_PER/1  ,F1_PER/1  ,G_PER/1	 ,G1_PER/1	,A_PER/1  ,A1_PER/1  ,B_PER/1
	dw C_PER/2	,C1_PER/2  ,D_PER/2  ,D1_PER/2  ,E_PER/2	,F_PER/2  ,F1_PER/2  ,G_PER/2	 ,G1_PER/2	,A_PER/2  ,A1_PER/2  ,B_PER/2
	dw C_PER/4	,C1_PER/4  ,D_PER/4  ,D1_PER/4  ,E_PER/4	,F_PER/4  ,F1_PER/4  ,G_PER/4	 ,G1_PER/4	,A_PER/4  ,A1_PER/4  ,B_PER/4
	dw C_PER/8	,C1_PER/8  ,D_PER/8  ,D1_PER/8  ,E_PER/8	,F_PER/8  ,F1_PER/8  ,G_PER/8	 ,G1_PER/8	,A_PER/8  ,A1_PER/8  ,B_PER/8
	dw C_PER/16	,C1_PER/16 ,D_PER/16 ,D1_PER/16 ,E_PER/16	,F_PER/16 ,F1_PER/16 ,G_PER/16 ,G1_PER/16	,A_PER/16 ,A1_PER/16 ,B_PER/16
	dw C_PER/32	,C1_PER/32 ,D_PER/32 ,D1_PER/32 ,E_PER/32	,F_PER/32 ,F1_PER/32 ,G_PER/32 ,G1_PER/32	,A_PER/32 ,A1_PER/32 ,B_PER/32
	dw C_PER/64	,C1_PER/64 ,D_PER/64 ,D1_PER/64 ,E_PER/64	,F_PER/64 ,F1_PER/64 ,G_PER/64 ,G1_PER/64	,A_PER/64 ,A1_PER/64 ,B_PER/64
	dw C_PER/128,C1_PER/128,D_PER/128,D1_PER/128,E_PER/128,F_PER/128,F1_PER/128,G_PER/128,G1_PER/128,A_PER/128,A1_PER/128,B_PER/128

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