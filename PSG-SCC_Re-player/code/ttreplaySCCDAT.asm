	ds 8*16, 1
_VOLUME_TABLE
      ; No tail
;	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;	db $00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$10,$11
;	db $00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$10,$20,$20,$21,$22
;	db $00,$00,$00,$10,$10,$10,$10,$10,$20,$20,$20,$20,$20,$31,$32,$33
;	db $00,$00,$10,$10,$10,$10,$20,$20,$20,$20,$30,$30,$31,$32,$43,$44
;	db $00,$00,$10,$10,$10,$20,$20,$20,$30,$30,$30,$41,$42,$43,$54,$55
;	db $00,$00,$10,$10,$20,$20,$20,$30,$30,$40,$41,$42,$53,$54,$65,$66
;	db $00,$00,$10,$10,$20,$20,$30,$30,$40,$41,$52,$53,$64,$65,$76,$77
;	db $00,$10,$10,$20,$20,$30,$30,$40,$41,$52,$53,$64,$65,$76,$77,$88
;	db $00,$10,$10,$20,$20,$30,$40,$41,$52,$53,$64,$75,$76,$87,$88,$99
;	db $00,$10,$10,$20,$30,$30,$41,$52,$53,$64,$75,$76,$87,$98,$99,$AA
;	db $00,$10,$10,$20,$30,$41,$42,$53,$64,$75,$76,$87,$98,$A9,$AA,$BB
;	db $00,$10,$20,$20,$31,$42,$53,$64,$65,$76,$87,$98,$A9,$AA,$BB,$CC
;	db $00,$10,$20,$31,$32,$43,$54,$65,$76,$87,$98,$A9,$AA,$BB,$CC,$DD
;	db $00,$10,$21,$32,$43,$54,$65,$76,$77,$88,$99,$AA,$BB,$CC,$DD,$EE
;	db $00,$11,$22,$33,$44,$55,$66,$77,$88,$99,$AA,$BB,$CC,$DD,$EE,$FF

      ;  tail PSG 1 / SCC 1
	db $11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11
	db $11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11
	db $11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$21,$21,$21,$22
	db $11,$11,$11,$11,$11,$11,$11,$11,$21,$21,$21,$21,$21,$31,$32,$33
	db $11,$11,$11,$11,$11,$11,$21,$21,$21,$21,$31,$31,$31,$32,$43,$44
	db $11,$11,$11,$11,$11,$21,$21,$21,$31,$31,$31,$41,$42,$43,$54,$55
	db $11,$11,$11,$11,$21,$21,$21,$31,$31,$41,$41,$42,$53,$54,$65,$66
	db $11,$11,$11,$11,$21,$21,$31,$31,$41,$41,$52,$53,$64,$65,$76,$77
	db $11,$11,$11,$21,$21,$31,$31,$41,$41,$52,$53,$64,$65,$76,$77,$88
	db $11,$11,$11,$21,$21,$31,$41,$41,$52,$53,$64,$75,$76,$87,$88,$99
	db $11,$11,$11,$21,$31,$31,$41,$52,$53,$64,$75,$76,$87,$98,$99,$AA
	db $11,$11,$11,$21,$31,$41,$42,$53,$64,$75,$76,$87,$98,$A9,$AA,$BB
	db $11,$11,$21,$21,$31,$42,$53,$64,$65,$76,$87,$98,$A9,$AA,$BB,$CC
	db $11,$11,$21,$31,$32,$43,$54,$65,$76,$87,$98,$A9,$AA,$BB,$CC,$DD
	db $11,$11,$21,$32,$43,$54,$65,$76,$77,$88,$99,$AA,$BB,$CC,$DD,$EE
	db $11,$11,$22,$33,$44,$55,$66,$77,$88,$99,$AA,$BB,$CC,$DD,$EE,$FF


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
	