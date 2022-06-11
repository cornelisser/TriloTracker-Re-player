	defpage	0,0x4000, 0x8000		; page 0 contains main code + far call routines

; -----------------------------
; TT-replayer example
; 
; This example plays compiled PSG+FM songs
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
	
	
	
	;--- Init screen
	call 	init_vdp
	ei
	halt
	di
	call	init_font		; set the new font
	
	;--- initialise replayer
	call	replay_init
;	xor	a
	ld	a,1
	call	replay_equalization
;	call	ttsfx_init

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

	ld 	hl,80*13+56
	ld	de,TEXT_Register_Drum
	call	draw_label	

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
	ld	bc,$0001
;	call	ttsfx_start
;	ld	a,0
;	call	replay_set_SCC_balance
;	ld	de,-2
;	call	replay_transpose	
;	ld	a,16
;	call	replay_fade_out
	call	replay_pause
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
;	call	ttsfx_play



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
	ld	a,(ix+TRACK_Voice)
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
	dec	a
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
	ld	iyl,6
	ld 	de,debug_pnt+(80*2)+38
;	ld	(debug_pointer1),bc
	call	register_debug_loop
	
	
	;	DRAW FM Drum macro + percusion
	ld	iyl,1
	ld 	de,debug_pnt+(80*5)+56
;	ld	(debug_pointer1),bc
	call	register_debug_loop

	;	DRAW FM Drum tone + vol
	ld	iyl,3
	ld 	de,debug_pnt+(80*5)+65
;	ld	(debug_pointer1),bc
	call	register_debug_loop
	
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
	dw	FM_regToneA,FM_regVOLA 
	dw	FM_regToneB,FM_regVOLB 
	dw	FM_regToneC,FM_regVOLC 
	dw	FM_regToneD,FM_regVOLD 
	dw	FM_regToneE,FM_regVOLE 
	dw	FM_regToneF,FM_regVOLF 
	dw	FM_DRUM_MACRO,FM_DRUM
	dw	DRUM_regToneBD,DRUM_regVolBD
	dw	DRUM_regToneSH,DRUM_regVolSH	
	dw	DRUM_regToneCT,DRUM_regVolCT	




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
	ld	(hl),'F'
	jp	2f
1:
	ld	(hl),'P'
	
2:
	inc	hl
	bit	6,b
	jp	z,1f
	ld	(hl),'V'
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
	include	"..\code\ttreplayFM.asm"
	include	"..\code\ttreplayFMDAT.asm"
	include	"..\ttsfxplayPSG\ttsfxplayPSG.asm"

	
demo_song:
	include	".\test1.asm"
	
TEXT_Title:
	db	"TriloTracker FM Re-player Debug info",0	
TEXT_Step:
	db	"Step:",0	
TEXT_Header_Data:
	db	"C# Nt In FM Vl Cm Flags",0
TEXT_Register_Header:
	db 	"Tone Vl  Tone Vl  Nois Mx  Env  Sh",0
TEXT_Register_Drum:
	db 	"Macr Drm Tone Vl",0	
TEXT_Legend_Data:
	db	"Legend: Psg, Fm, Voice, Env, Keyon, Command, Active(note)",0

	
	
font_data:
	incbin	".\fontpat.bin"


sfxbank:
;	include ".\sfx.asm"

;sfx_PSG_STREAMS:
;sfx_SCC_STREAMS:
;	dw	sfx1
;	dw	sfx2
;	dw	sfx3
;	dw	sfx4
;	dw	sfx5
;
;
;
;sfx1:
;	db	1,4*8
;	incbin	"..\ttsfxplay\sfx\menu1.afx"
;sfx2:
;	db	1,2*8
;	incbin	"..\ttsfxplay\sfx\menu2.afx"	
;sfx3:
;	db	1,3*8
;	incbin	"..\ttsfxplay\sfx\menu3.afx"
;sfx4:
;	db	1,5*8
;	incbin	"..\ttsfxplay\sfx\menu4.afx"
;sfx5:
;	db	1,6*8
;	incbin	"..\ttsfxplay\sfx\menu5.afx"
;
	
	
	map	0xc000
	include	"..\code\ttreplayFMRAM.asm"
	

debug_pointer1:	#2
debug_pointer2:	#2	
debug_pnt:		#8*80
TEXT_Chan		#40

	
	include	"..\ttsfxplayPSG\ttsfxplayPSG_RAM.asm"
pattern	#1

