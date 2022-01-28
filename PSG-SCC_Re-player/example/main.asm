	defpage	0,0x4000, 0x8000		; page 0 contains main code + far call routines
	defpage	1,0x4000, 0x8000		; page 0 contains main code + far call routines
; -----------------------------
; TT-replayer example
; 
; This example plays compiled PSG+SCC songs
; ------------------------------

;	include	".\code\variables.asm"

	page 0
	code page 0
	
	org	04000h
	db	041h,042h 
	dw	initmain
	dz 	'TTDEMO'
	ds	5 
		
initmain:

   outi
;	ei
;	halt
 	di
		 
;; set pages and subslot
;;
	call    0x138 
	rrca
	rrca 
	and     0x03 
	ld      c,a
	ld      b,0
	ld      hl,0xfcc1
	add     hl,bc
	or      (hl)
	ld      b,a 
	inc     hl
	inc     hl
	inc     hl
	inc     hl
	ld      a,(hl)
	and     0x0c
	or      b
    
	ld      h,0x80
	call    0x24        
	
	;clear RAM (first kb only)
	ld	bc,1024
	ld	hl,0xc000
	ld	de,0xc001

	ld	(hl),0
	ldir	

	;--- place replayer on hook
	ld	a,0xc3
	ld	hl,isr
	ld	(0xFD9A),a
	ld	(0xFD9B),hl	
	
	
	;--- Set speed equalization
	ld	a,($FFE8)	; get mirror of VDP reg# 9
	and	2
	jp	z,99f
	ld	a,-1
99:
	inc	a			; 1 = 60hz
	ld	(equalization_freq),a
	ld	(equalization_cnt),a
	
	;--- Init screen
	call 	init_vdp
	ei
	halt
	di
	call	init_font		; set the new font
	
	;--- initialise replayer
	call	replay_init
	call	ttsfx_init
	ld	a,1
	ld	(equalization_freq),a
	ld	(equalization_cnt),a	
	;--- initialise demo song
	ld	hl,demo_song
	call	replay_loadsong
	
	;--- initialise sfx pointers
	
	
	call	clear_debug
	
	ei
	
	call	clear_screen
	ld	hl,80*4+22
	ld	de,TEXT_Title
	call	draw_label
	ld	hl,80*6+36
	ld	de,TEXT_Step
	call	draw_label
	ld	hl,80*8+4
	ld	de,TEXT_Header_Data
	call	draw_label	
	
	ld	hl,80*8+38
	ld	de,TEXT_Register_Header
	call	draw_label		

;	ld 	hl,80*13+56
;	ld	de,TEXT_Register_Drum
;	call	draw_label	

	ld 	hl,80*18+4
	ld	de,TEXT_Legend_Data
	call	draw_label	


	
	xor	a
	ld	(pattern),a

;	call	replay_pause
;	ld	bc,$0001
;	call	ttsfx_start
	
infinite:
	halt	
;	call	register_debug

	
;	ld	a,$f0 ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
;	out	(0x99),a
;	ld	a,7+128
;	out	(0x99),a	


	
;	ld	a,$f3 ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
;	out	(0x99),a
;	ld	a,7+128
;	out	(0x99),a
	
;	ld	a,$f0
;	out	(0x99),a
;	ld	a,7+128
;	out	(0x99),a	
	;--- display debug info
	call	debuginfo	
	call	register_debug
	call	step_debug
	
	
	 
	
	;---- Test for space
	xor	a
	call	$00D8
	and	a
	jp	z,infinite

;	call	replay_pause
	;---- play an SFX

	
	ld	a,(sfx)
	inc	a
	ld	b,a
	ld	a,(sfxbank) 
	srl	a
	dec	a
	cp	b
	jp	nc,.skip
	ld	b,0
.skip:

	ld	a,b
	ld	(sfx),a
	ld	c,0
	call	ttsfx_start
;	ld	a,0
;	call	replay_set_SCC_balance
;	ld	de,-2
;	call	replay_transpose	
;	ld	a,32
;	call	replay_fade_out
;	call	replay_pause
	; wait_key_release
99:	
	xor	a
	call	$00D8
	and	a
	jp	nz,99b
	
	jp	infinite

	
	
isr:
	in	a,(0x99)
	call	write_debug

	ld	b,150
1:
	push	bc
	pop	bc
	djnz	1b



	ld	a,$fe ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
	out	(0x99),a
	ld	a,7+128
	out	(0x99),a	

	call	ttsfx_play	
	ld	a,$fc ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
	out	(0x99),a
	ld	a,7+128
	out	(0x99),a	
	call	replay_route		; first outout data
	ld	a,$f4 ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
	out	(0x99),a
	ld	a,7+128
	out	(0x99),a		
	call	replay_play			; calculate next output
	ld	a,$f0 ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
	out	(0x99),a
	ld	a,7+128
	out	(0x99),a


	ret
	
write_debug:
	ld 	hl,_PNT+(80*9)
	call	set_vdpwrite	

	ld 	hl,debug_pnt
	ld	a,8
	ld	c,$98
_wd_loop:
	ld	b,80
	otir
	
	dec	a
	jp	nz,_wd_loop

	ret
	
clear_debug:
	ld	hl,debug_pnt
	ld	de,debug_pnt+1
	ld	(hl),32
	ld	bc,(8*80)-1
	ldir
	ret

debuginfo:
;	ld	bc,40
;	call	clear_TEXT
	
	ld	b,8
	ld	ix,TRACK_Chan1+17
	ld	de,debug_pnt+4
.loop	
	push	bc
	push	de
	
	ld	a,9
	sub	b
	call	draw_decimal
	inc	de
	ld	a,(ix+TRACK_Note)
	call	draw_hex2
	inc 	de
	ld	a,(ix+TRACK_Instrument)
	call	draw_hex2
	inc 	de
	ld	a,(ix+TRACK_Waveform)
	call	draw_hex2
	inc 	de	
	ld	a,(ix+TRACK_Volume)
	call	draw_hex2
	inc 	de
	ld	a,(ix+TRACK_Command)
	call	draw_hex2	
	inc 	de

	ex	de,hl
	ld	b,(ix+TRACK_Flags)
	call 	debug_flags


	; next line
	pop	hl
	ld	de,80
	add	hl,de
	ex	de,hl
	

	;--- Next track
	ld	bc,TRACK_REC_SIZE
	add	ix,bc
	
	pop	bc
	djnz	.loop
	ret

step_debug:
	ld	bc,7
	call	clear_TEXT
	ld	hl,(replay_orderpointer)
	ld	de,demo_song+7
	xor 	a
	sbc	hl,de
	add	hl,hl		;X2
	add	hl,hl		;X4	
	add	hl,hl		;X8
	add	hl,hl		;X16
	ld	a,h
;	dec	a
	ld	hl,debug_pointer1
	ld	(hl),a
	ld	de,TEXT_Chan
	call	draw_decimal3
	
	ld	hl,80*6+41
	ld	de,TEXT_Chan
	ld	b,3
	call	draw_label_fast
	ret
	

register_debug:
;	ld	bc,7
;	call	clear_TEXT
	ld	hl,REG_list
	
	;	DRAW PSG Tone vol	
	ld	iyl,3
	ld 	de,debug_pnt+47
;	ld	(debug_pointer1),bc
	call	register_debug_loop

	;	DRAW PSG Noise and mixer	
	ld	iyl,1
	ld 	de,debug_pnt+56
;	ld	(debug_pointer1),bc
	call	register_debug_loop	
	
	;	DRAW PSG Envelop + shape
	ld	iyl,1
	ld 	de,debug_pnt+65
;	ld	(debug_pointer1),bc
	call	register_debug_loop		

	;	DRAW FM Tone Vol	
	ld	iyl,5
	ld 	de,debug_pnt+(80*3)+38
;	ld	(debug_pointer1),bc
	call	register_debug_loop
	
	
	;	DRAW FM Drum macro + percusion
;	ld	iyl,1
;	ld 	de,debug_pnt+(80*5)+56
;;	ld	(debug_pointer1),bc
;	call	register_debug_loop
;
;	;	DRAW FM Drum tone + vol
;	ld	iyl,3
;	ld 	de,debug_pnt+(80*5)+65
;;	ld	(debug_pointer1),bc
;	call	register_debug_loop
	
	ret

register_debug_loop:
	push 	de
;	ld	de,TEXT_Chan
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	
	inc	bc
	ld	a,(bc)
	dec	bc
	call	draw_hex2		; tone
	ld	a,(bc)
	call	draw_hex2
	
	inc 	de	
	
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl	
	
	ld	a,(bc)
	call	draw_hex2		; vol
	
	;-- next line
	pop 	de
	ld	a,80
	add	a,e
	ld	e,a
	jp	nc,99f
	inc	d
99:	
	dec	iyl
	jp	nz,register_debug_loop
	ret

REG_list:
	dw	PSG_regToneA,PSG_regVOLA
	dw	PSG_regToneB,PSG_regVOLB
	dw	PSG_regToneC,PSG_regVOLC
	dw	PSG_regNOISE,PSG_regMIXER
	dw	0,0;PSG_regEnvL,PSG_regEnvShape 	
	dw	SCC_regToneA,SCC_regVOLA 
	dw	SCC_regToneB,SCC_regVOLB 
	dw	SCC_regToneC,SCC_regVOLC 
	dw	SCC_regToneD,SCC_regVOLD 
	dw	SCC_regToneE,SCC_regVOLE 
	dw	0,0;FM_regToneF,FM_regVOLF 
	dw	0,0;FM_DRUM_MACRO,FM_DRUM
	dw	0,0;FM_freqreg1,FM_volreg1
	dw	0,0;FM_freqreg2,FM_volreg2	
	dw	0,0;FM_freqreg3,FM_volreg3	




; input BC length to clear
clear_TEXT:
	dec	bc
	ld	hl,TEXT_Chan
	ld	de,TEXT_Chan+1
	ld	(hl),' '
	ldir
	ret

debug_flags:
	bit	7,b
	jp	z,1f
	ld	(hl),'S'
	jp	2f
1:
	ld	(hl),'P'
	
2:
	inc	hl
	bit	6,b
	jp	z,1f
	ld	(hl),'W'
	jp	2f
1:
	ld	(hl),' '
	
2:	
	inc	hl
	bit	5,b
	jp	z,1f
	ld	(hl),'S'
	jp	2f
1:
	ld	(hl),' '
	
2:	
	inc	hl
	bit	4,b
	jp	nz,1f
	ld	(hl),'K'
	jp	2f
1:
	ld	(hl),' '
	
2:	
	inc	hl
	bit	3,b
	jp	z,1f
	ld	(hl),'C'
	jp	2f
1:
	ld	(hl),' '
	
2:	
	inc	hl
	bit	2,b
	jp	z,1f
	ld	(hl),'E'
	jp	2f
1:
	ld	(hl),' '
	
2:	
	inc	hl	
	bit	1,b
	jp	z,1f
	ld	(hl),'A'
	jp	2f
1:
	ld	(hl),' '
	
2:	
	inc	hl	
	bit	0,b
	jp	z,1f
	ld	(hl),'N'
	jp	2f
1:
	ld	(hl),' '
	
2:	
	inc	hl		
	ex	de,hl

	inc 	de
	ret




	
	; --- init_vdp
	; 
	; Initial init of the vdp
init_vdp:

	ld	a,00000100b ; Reg#0 [ 0 ][DG ][IE2][IE1][M5 ][M4 ][M3 ][ 0 ]
	out	(0x99),a
	ld	a,0+128
	out	(0x99),a

	ld	a,01110000b ; Reg#1 [ 0 ][BL ][IE0][M1 ][M2 ][ 0 ][SIZ][MAG]

	out	(0x99),a
	ld	a,1+128
	out	(0x99),a	

	ld	a,00001011b ; REG#2[ 0 ][A16][A15][A14][A13][A12][ 1 ][ 1 ]  - Pattern layout table

	out	(0x99),a
	ld	a,2+128
	out	(0x99),a	

	ld	a,10101111b ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]

	out	(0x99),a
	ld	a,3+128
	out	(0x99),a	
	
	ld	a,00010010b ; Reg#4 [ 0 ][ 0 ][A16][A15][A14][A13][A12][A11]  - Pattern generator table

	out	(0x99),a
	ld	a,4+128
	out	(0x99),a	
	
	ld	a,($FFE8)
	or	10000000b ; Reg#9 [LN ][ 0 ][S1 ][S0 ][IL ][EO ][NT ][DC ]
	out	(0x99),a
	ld	a,9+128
	out	(0x99),a	


	ld	a,$f0
	out	(0x99),a
	ld	a,7+128
	out	(0x99),a
	ld	a,$e1
	out	(0x99),a
	ld	a,12+128
	out	(0x99),a
	ld	a,0xF0	;reg#13
	out	(0x99),a
	ld	a,13+128
	out	(0x99),a		
	
	

	ret		
	include	".\screen.asm"
	include	"..\code\ttreplaySCC.asm"
	include	"..\code\ttreplaySCCDAT.asm"
	include	"..\sfxcode\ttsfxplay.asm"

	
demo_song:
	include	".\yy1.asm" 
	
TEXT_Title:
	db	"TriloTracker SCC Re-player Debug info",0	
TEXT_Step:
	db	"Step:",0	
TEXT_Header_Data:
	db	"C# Nt In Wv Vl Cm Flags",0
TEXT_Register_Header:
	db 	"Tone Vl  Tone Vl  Nois Mx  Env  Sh",0
;TEXT_Register_Drum:
;	db 	"Macr Drm Tone Vl",0	
TEXT_Legend_Data:
	db	"Legend: Psg, Scc, Wavefor, Env, xxxx, Command, Active(note)",0

	
font_data:
	incbin	".\fontpat.bin"



;------ SFX Data

sfxbank:
	incbin	".\GALIOUS_SFX_TEST.afb"

//forma para MoG2 @Nenefranz:
//WAVETABLES DE SCC PARA SFX
SFX_WAVEBASE:
;#00-SILENCE:
	db	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;#01-BLOB 1:
	db	$00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$80,$A0,$C0,$E0,$00,$20,$40,$60,$80,$A0,$C0,$E0,$00,$20,$40,$60
;#02-LIGHT1 PARA LASERS:
	db	$7F,$80,$7F,$80,$7F,$80,$7F,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7F,$80,$7F,$80,$7F,$80,$7F,$80
;#03-NOISE1:
	db	$70,$70,$70,$70,$70,$70,$70,$70,$80,$80,$80,$80,$80,$80,$80,$80,$70,$70,$70,$80,$80,$80,$70,$70,$70,$70,$80,$80,$80,$80,$80,$80
;#04-NEM3PIANO:
	db	$00,$68,$40,$04,$00,$26,$40,$F5,$10,$40,$20,$D0,$F0,$00,$C0,$80,$D0,$30,$C0,$A0,$B0,$C0,$80,$D0,$F0,$40,$10,$C0,$D4,$00,$C0,$E0
;#05-MOTO NEM3:
	db	$80,$80,$E8,$18,$38,$66,$78,$7F,$80,$80,$80,$80,$80,$80,$80,$9C,$80,$DC,$80,$20,$D0,$80,$7F,$80,$D0,$20,$80,$DC,$80,$9C,$80,$88
;#06-NEM3SIM BAJO INTERESANTE:
	db	$90,$88,$90,$9C,$B0,$C0,$E0,$26,$70,$7C,$70,$56,$40,$20,$10,$FC,$E0,$FC,$10,$24,$40,$54,$72,$7F,$70,$26,$E0,$C0,$B0,$9C,$90,$88
;#07-NOISE2 SALABASS (tipo CLAVI):
	db	$00,$00,$00,$80,$00,$70,$70,$70,$00,$00,$00,$80,$00,$00,$00,$80,$80,$80,$80,$00,$80,$00,$00,$00,$00,$80,$80,$80,$00,$80,$80,$80
;#08-BLOB2 (brillo):
	db	$00,$7F,$00,$80,$A0,$C0,$D8,$F0,$08,$20,$30,$40,$50,$60,$70,$78,$7C,$7F,$7C,$78,$70,$60,$50,$40,$30,$20,$08,$F0,$D8,$C0,$A0,$80
;#09-WAHBASS:
	db	$80,$D0,$20,$7F,$40,$00,$C0,$80,$D0,$20,$7F,$30,$D0,$80,$D0,$30,$7F,$30,$D0,$80,$B0,$E0,$18,$E0,$B0,$80,$90,$A0,$B0,$A0,$90,$80
;#0A/10-MIRROR:
	db	$90,$D0,$20,$0C,$BC,$AA,$E6,$DC,$BC,$E3,$40,$30,$E0,$D0,$10,$06,$E4,$0C,$70,$50,$E0,$D0,$10,$00,$D0,$F0,$40,$20,$C4,$C0,$F0,$90
;#0B/11-PARK BASS:
	db	$80,$AA,$C8,$00,$24,$40,$5C,$70,$7F,$6A,$4A,$26,$00,$D0,$A8,$8C,$80,$AA,$C8,$00,$24,$40,$5C,$70,$7F,$6A,$4A,$26,$00,$D0,$A8,$8C
;#0C/12-PARK MELODY:
	db	$00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$90,$A0,$B0,$C0,$D0,$E0,$F0
;#0D/13-WAH2:
	db	$00,$30,$F0,$30,$40,$50,$60,$60,$70,$79,$70,$78,$40,$00,$00,$0E,$70,$83,$60,$50,$00,$00,$00,$26,$74,$82,$84,$65,$64,$E4,$93,$84
;#0E/14-BASSTECH:
	db	$80,$A0,$C0,$CC,$C0,$BC,$C0,$C4,$E0,$24,$F0,$58,$4C,$4A,$3C,$50,$7F,$60,$40,$30,$40,$46,$40,$46,$3C,$20,$C6,$F2,$A4,$B4,$B6,$A0
;#0F/15-LIGHT2:
	db	$80,$98,$B8,$E0,$20,$50,$68,$7F,$68,$50,$20,$F0,$D0,$B8,$A8,$90,$90,$B8,$80,$00,$80,$40,$80,$7F,$80,$40,$80,$00,$80,$C0,$90,$90
;#10/16-VENBASS:
	db	$00,$40,$7F,$40,$01,$C0,$81,$C0,$01,$40,$7F,$40,$01,$C0,$01,$40,$01,$E0,$01,$20,$01,$F0,$01,$10,$01,$FF,$FF,$FF,$FF,$40,$40,$40
;#11/17-BLOB3:
	db	$80,$00,$00,$00,$70,$70,$00,$00,$80,$80,$80,$00,$00,$00,$00,$70,$70,$70,$80,$7F,$80,$80,$C0,$00,$20,$34,$40,$34,$20,$00,$C0,$80
;#12/18-BRASSNK:
	db	$A0,$90,$A0,$AC,$F0,$0A,$16,$00,$90,$00,$20,$40,$60,$50,$38,$1C,$F2,$E2,$D6,$D0,$D0,$DA,$DC,$E0,$E2,$E2,$E2,$E0,$DC,$D8,$D0,$B0
;#13/19-TRIANGLE:
	db	$00,$10,$20,$30,$40,$50,$60,$70,$7F,$70,$60,$50,$40,$30,$20,$10,$FF,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$90,$A0,$B0,$C0,$D0,$E0,$F0
;#14/20-STRSNAKE:
	db	$00,$40,$7F,$40,$10,$01,$EA,$D6,$C3,$B9,$AF,$A4,$9C,$95,$8F,$8A,$86,$83,$81,$83,$86,$8A,$8F,$95,$9C,$A4,$AF,$B9,$C3,$D6,$EA,$FF
;#15/21-XYLOPH:
	db	$00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$00,$E7,$CF,$B9,$A6,$96,$8B,$83,$80,$83,$8B,$96,$A6,$B9,$CF,$E7
;#16/22-PIANO KV2:
	db	$30,$50,$50,$30,$00,$00,$10,$40,$60,$70,$60,$30,$F0,$E0,$E0,$00,$20,$20,$10,$C0,$A0,$90,$A0,$C0,$00,$00,$D0,$B0,$B0,$D0,$00,$00
;#17/23-ORGUE:
	db	$00,$68,$48,$18,$48,$68,$28,$00,$48,$77,$58,$08,$28,$38,$00,$B8,$08,$58,$00,$E8,$F8,$00,$B8,$98,$C8,$08,$E8,$A8,$C8,$F8,$C8,$A8
;#18/24-PIANOBELL:
	db	$00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$00,$E0,$C0,$A0,$80,$A0,$C0,$E0,$00,$20,$40,$60,$7F,$60,$40,$20
;#19/25-SDINTRO:
	db	$00,$30,$50,$60,$70,$60,$50,$30,$00,$D0,$B0,$A0,$90,$A0,$B0,$D0,$00,$40,$60,$70,$60,$40,$00,$C0,$A0,$90,$A0,$C0,$00,$70,$00,$90
;#1A/26-TOM:
	db	$01,$2A,$40,$50,$5C,$68,$70,$78,$7F,$78,$70,$68,$5C,$50,$40,$2A,$FF,$D6,$C0,$B0,$A4,$98,$90,$88,$81,$88,$90,$98,$A4,$B0,$C0,$D6
;#1B/27-PIANO3:
	db	$00,$E0,$C0,$A0,$80,$A0,$C0,$E0,$00,$20,$40,$60,$7F,$60,$40,$20,$00,$E0,$C0,$A0,$80,$A0,$C0,$E0,$00,$20,$40,$60,$7F,$60,$40,$20
;#1C/28-SAW:
	db	$00,$F8,$F0,$E8,$E0,$D8,$D0,$C8,$C0,$B8,$B0,$A8,$A0,$98,$90,$88,$80,$78,$70,$68,$60,$58,$50,$48,$40,$38,$30,$28,$20,$18,$10,$08
;#1D/29-N3BASS:
	db	$80,$B0,$C0,$10,$1A,$2A,$2C,$1A,$00,$E0,$D0,$E0,$22,$53,$70,$75,$70,$31,$EA,$80,$88,$8A,$8C,$8E,$00,$7F,$75,$73,$62,$00,$C0,$90
;#1E/30-SQUARE:
	db	$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87,$87
;#1F/31-DOUBLE:
	db	$00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$80,$90,$A0,$B0,$C0,$D0,$E0,$F0,$00,$10,$20,$30,$40,$50,$60,$70


	
	
	map	0xc000
	include	"..\code\ttreplaySCCRAM.asm"
	include	"..\sfxcode\ttsfxplay_RAM.asm"	

debug_pointer1:	#2
debug_pointer2:	#2	
debug_pnt:		#8*80
TEXT_Chan		#40

sfx:			#1		; sfx to play
	

pattern	#1
