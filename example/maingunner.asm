	defpage	0,0x4000, 0x2000		; page 0 contains main code + far call routines
	defpage 1,0x6000, 0x2000
	defpage	2,0x6000, 0x2000		; NPC/titlescreen/gameinit code
	defpage	3,0x6000, 0x2000		; additional code (intro,ending etc)
	defpage	4,0xA000, 0x2000		; global functions.
	defpage	5,0x8000,	0x2000		; this is the first of the 8kb swap blocks
	defpage	6..14
	defpage	15,0xE000,0x2000		; contians the ISR + pure data
				; the IM2 vector + ISR + ISR subfunctions are in last page (15)







; -----------------------------
; Gunner
; My first Assembly game
; Trilobyte 2010
; ------------------------------
	include	".\code\variables.asm"

	page 0
	code page 0
	
	org	04000h
	db	041h,042h
	dw	initmain
	dz 	'TRI002'
	ds	5
		
; ------------
; Far calls to pages functions.

title_screen_far:
	ld	a,:title_screen
	ld	(_bank2),a		; load code in bank 1 (0x6000 - 0x7FFF)
	call	title_screen
	ld	a,1				;restore bank to default page
	ld	(_bank2),a	
	ret
	
introdemo_far:
	ld	a,:introdemo
	ld	(_bank2),a		; load code in bank 1 (0x6000 - 0x7FFF)
	call	introdemo
	ld	a,1				;restore bank to default page
	ld	(_bank2),a	
	ret

gameover_far:
	ld	a,:gameover
	ld	(_bank2),a		; load code in bank 1 (0x6000 - 0x7FFF)
	call	gameover
	ld	a,1				;restore bank to default page
	ld	(_bank2),a	
	ret


initmain:

	ei
	halt
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
	
	; init global functions
	ld	a,:globalfunctions					; Set the global functions in page 5 to bank 4
	ld	(_bank4),a

	;clear RAM
	ld	bc,1024*8
	ld	hl,0xc000
	ld	de,0xc001

	ld	(hl),0
	ldir	





	call    CheckIf60Hz			; result is in vsf = 0 60hz !=0 50hz
	
/*	; make emulators detect correct romtype (scc
	jp .skipfakebankswitch
	ld a,0
	ld ($5000),a
	ld a,2
	ld ($9000),a
	ld a,3
	ld ($b000),a
	ld a,0
	ld ($5000),a
	ld a,2
	ld ($9000),a
	ld a,3
	ld ($b000),a
	ld a,0
	ld ($5000),a
	ld a,2
	ld ($9000),a
	ld a,3
	ld ($b000),a
	ld a,0
	ld ($5000),a
	ld a,2
	ld ($9000),a
	ld a,3
	ld ($b000),a
	ld a,0
	ld ($5000),a
	ld a,2
	ld ($9000),a
	ld a,3
	ld ($b000),a
	ld a,0
	ld ($5000),a
	ld a,2
	ld ($9000),a
	ld a,3
	ld ($b000),a
	ld a,0
	ld ($5000),a
	ld a,2
	ld ($9000),a
	ld a,3
	ld ($b000),a
	ld a,0
	ld ($5000),a
	ld a,2
	ld ($9000),a
	ld a,3
	ld ($b000),a
	ld a,0
	ld ($5000),a
	ld a,2
	ld ($9000),a
	ld a,3
	ld ($b000),a
*/



.skipfakebankswitch:
	; set default palette
	xor	a
	ld	(palette),a

	; detect MSX type
	ld	a,(0x2D)	; get msxtype		-> 0=MSX1, 1=MSX2, 2=MSX2+, 3=turboR
	ld	(msxtype),a
	cp	0
	jp	z,0f

	ld	a,(msxtype)
	and	a
	jp	z,0f
	; msx 2 or higher found
	ld	a,2
	ld	(palette),a
	call	setpalette

	ld	a,(msxtype)
	cp	3
	jp	nz,0f
	;if MSX turboR then R800 mode
	ld	a,1+128				
	call	0x0180
	;di

0:

;; set new stack
	ld	sp,0xEF00

;; install vectorlist and isr+isr sub functions
	ld	a,:interrupt
	ld	(_bank3),a	; set bank 4 to page 15

	ld	a,0xF0
	ld	de,0xEF00
	ld	(de),a
	inc	de
	ld	(de),a
	inc	de	
	ld	b,255
1:
	ld	(de),a
	inc	de
	djnz	1b	
	
	ld	hl,0x90F0			; start of code in page
	ld	de,0xF0F0			; destination
	ld	bc,0xFFFF-0xF0F0	; Copy all code in page till end. Just to be sure.
	ldir
	
;; set IM2 	
	ld	a,0xEF
	ld	i,a
	im	2
	
	
;; initialize default SAT before updating.	
	ld 	hl,	sat		
	ld	(hl),204		;disable sat
	ld 	(satpointer),hl		; set sat length to 0


 	call	initvdp			; screen 2

	; init tileupdate
	xor	a
	call	init_tileupdate
;	ld	hl,tileanim_empty
;	ld	(tileupdate_pointer),hl
;	ld	(tileupdate_start),hl 
      
     xor	a
     ld	(fadeaction),a
	ld   	a,15
	ld   	(_psg_volume),a		; ranges in -1,-15 
	ld	a,15
	ld	(_scc_volume),a
	ld	a,13
	ld	(_sfx_volume),a
	
	call _SCC_PSG_Volume_balance

	call 	Audio_init_code

	
	ld      hl,cnt
	ld      (hl),1               ; reset the tic counter

	xor a
	ld     (PT3_SETUP),a       	; LOOP the song
	call    _PT3_MUTE

	ei

	;=====================
	; HI-Score and score reset (BCD)
	;=====================	
	ld hl,score				; reset score to 000000
	
	xor a
	ld (hl),a		
	inc hl
	ld (hl),a
	inc	hl	
	ld (hl),a
	inc	hl
	ld (hl),a				; reset hiscore to 000000
	inc hl
	ld (hl),a
	inc	hl	
	ld (hl),a


infinite:
	call	title_screen_far      

	; check  if we need to start the intro demo
	ld 	bc,(keys)		; store oldkeys in b and keys in c
	bit 	_KEY1,c		; key1 pressed?
	jr 	z,0f			; if yes continue to play game
	bit 	_KEY2,c		; key2 pressed?
	jr 	z,0f		;  if yes continue to play game

	call	introdemo_far
	jp	infinite		; after demo return to titlescreen


0:	;start playing
 	call	gamemain

	call gameover_far
	jp 	infinite

	include	".\code\gamemain.asm"
	include ".\code\mc.asm"
	include ".\code\NPC\npc.asm"
	include ".\code\NPC\npccollision.asm"
	
	include	".\code\NPC\npctype23_genericmove1_patterns.asm"
	
	include ".\code\NPC\npctype10_TILE_BUG_pane3.asm"
	;include ".\code\NPC\npctype11_TILE_EXPLOSION_pane3.asm"	
	;include ".\code\NPC\npctype12_BUILDING_pane3.asm"	
	include ".\code\NPC\npctype15_3dwall_pane3.asm"	
	;include ".\code\NPC\npctype18_WALKER_pane3.asm"	
	;include ".\code\NPC\npctype21_BOSS_TIC_pane3.asm"	
	;include ".\code\NPC\npctype31_MESSAGE_pane3.asm"
	include ".\code\NPC\npctype32_SCRIPT_1_pane3.asm"

	

	code	page 1
_page2_start:	
	include	".\code\NPC\npctype22_genericmove2_data.asm"
_page_GM2_end:
	ds	256 - (_page_GM2_end - _page2_start),16
	include	".\code\NPC\npctype23_genericmove1_data.asm"
	
_npc_type22:
	include	".\code\NPC\npctype22_genericmove2.asm"		
_npc_type23:
	include	".\code\NPC\npctype23_genericmove1.asm"		
_npc_type1:
	include	".\code\NPC\npctype1_EXPLOSION.asm"	; standard mc explosions

_npc_type2:	
	include	".\code\NPC\npctype2_LINEAR_BULLET.asm"	; standard bullets

_npc_type3:
	include	".\code\NPC\npctype3_BOTHERFLY.asm"

_npc_type4:
	include	".\code\NPC\npctype4_DRAGONFLOAT.asm"

_npc_type5:
	include	".\code\NPC\npctype5_STINGERWASP.asm"

_npc_type6:
	include	".\code\NPC\npctype6_MOTHLY_CRUEL.asm"

_npc_type7:		
	include	".\code\NPC\npctype7_HEAVY_BEETLE.asm"

_npc_type8:
	include	".\code\NPC\npctype8_BLOW_FLY.asm"

_npc_type9:	
	include	".\code\NPC\npctype9_BOMBERBEE.asm"

_npc_type10:
	include	".\code\NPC\npctype10_VERTICAL_LASER.asm"

_npc_type11:
	include	".\code\NPC\npctype11_TILE_EXPLOSION.asm" 

_npc_type12:
	include ".\code\NPC\npctype12_BUILDING.asm"

_npc_type13:
	include	".\code\NPC\npctype13_BLOCKER.asm"

_npc_type14:
	include	".\code\NPC\npctype14_minitic.asm"

_npc_type18:
	include ".\code\NPC\npctype18_WALKER.asm"


_npc_type16:
	include	".\code\NPC\npctype16_wave1.asm"

_npc_type17:
	include	".\code\NPC\npctype17_genericmove.asm"



_npc_type15:
	include	".\code\NPC\npctype15_3dwall.asm"
	
_npc_type19:
	include ".\code\NPC\npctype19_3_BULLETS.asm"
	
_npc_type20:
	include ".\code\NPC\npctype20_5_BULLETS.asm"

_npc_type21:
	include ".\code\NPC\npctype21_BOSS_TIC.asm"

	code	page 2
FIRSTNPC_IN_PAGE2	equ	24
_npc_type24:
;	include ".\code\NPC\npctype666_MULTIPLE_BULLET.asm"

_npc_type25:	
	include	".\code\NPC\npctype25_ENERGY_WEAP.asm"

_npc_type26:
	include	".\code\NPC\npctype26_WEAP_ITEM.asm"

_npc_type27:
	include	".\code\NPC\npctype27_ENERGY_POD.asm"

_npc_type28:
	include	".\code\NPC\npctype28_POWER_POD.asm"

_npc_type29:
	include	".\code\NPC\npctype29_ENERGY_GREEN.asm"

_npc_type30:
	include	".\code\NPC\npctype30_ENERGY_YELLOW.asm"

_npc_type31:
	include	".\code\NPC\npctype31_MESSAGE.asm"

_npc_type32:
	include	".\code\NPC\npctype32_SCRIPT.asm"


_npc_type0:
	jp next_npc		; dummy for non-existing npctypes.
	
	
	
	
	code	page 3	
	include	".\code\titlescreen.asm"
		
	include	".\code\introdemo.asm"
		
	include	".\code\gameover.asm"

	
	page 4
	code	page 4

globalfunctions:			; for automatic setting/restoring right page for global functions


	;THIS CODE NEEDS TO BE AT THE START OF THE PAGE !!!! DATA ALIGMENT
	include	".\code\npc\npc_path.asm" 	; movement data

	; fill up de 256 bytes range
	ds	256 - (npc_path_data_END - npc_path_data)
	
_SCCconvvol: 
	;db 0,1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 5, 7,10,14,15
	db 0, 1, 1, 1, 1, 2, 3, 4, 5, 7,10,14,15,15,15,15
	
	; lookup table to caluculate the y pos to PNT location
	; !!!!KEEP IN 256kb boundary!!!
_bufferpos_table:
	dw     0, 1*24, 2*24, 3*24, 4*24, 5*24, 6*24, 7*24, 8*24, 9*24,10*24,11*24,12*24,13*24,14*24,15*24
	dw 16*24,17*24,18*24,19*24,20*24,21*24,22*24,23*24,24*24,25*24,26*24,27*24,28*24,29*24,30*24,31*24
	
	include	".\code\vdp.asm"
	include ".\code\isrvdp.asm"	
	include	".\code\isrtileupdate.asm"

	include ".\code\keyjoy.asm"
	include ".\code\bcd.asm"
	include ".\code\pletter.asm"
	include ".\code\random.asm"

	include ".\code\math.asm"

	include ".\code\sccdetect\SCCaudio.asm"
	include ".\code\PT3-ROM.ASM"
	include ".\code\ayFX-ROM.ASM"
	include ".\code\musicfunc.asm"


	
	include ".\code\level.asm" 
	include	".\code\leveldata.asm"


_levelpat:
	dw l0pat
	dw l1pat
	dw l2pat
	dw l3pat
	dw l4pat
	dw l5pat
	dw l6pat
	dw l7pat
	dw l8pat
	dw l9pat
	dw l10pat
	dw l11pat
	dw l12pat
	dw l13pat
	dw l14pat
	dw l15pat



_levelcol:
	dw l0col
	dw l1col
	dw l2col
	dw l3col
	dw l4col
	dw l5col
	dw l6col
	dw l7col
	dw l8col
	dw l9col
	dw l10col
	dw l11col
	dw l12col
	dw l13col
	dw l14col
	dw l15col


		
_levelsprite:
	dw l0sprite
	dw l1sprite	
	dw l2sprite	
	dw l3sprite	
	dw l4sprite	
	dw l5sprite	
	dw l6sprite	
	dw l7sprite	
	dw l8sprite	
	dw l9sprite	
	dw l10sprite	
	dw l11sprite	
	dw l12sprite	
	dw l13sprite	
	dw l14sprite	
	dw l15sprite	


; we asume dat color and sprite data of the level is in the same page
_levelpatpages:
	db :l0pat
	db :l1pat
	db :l2pat
	db :l3pat
	db :l4pat
	db :l5pat
	db :l6pat
	db :l7pat
	db :l8pat
	db :l9pat
	db :l10pat
	db :l11pat
	db :l12pat
	db :l13pat
	db :l14pat
	db :l15pat
	
	
;_levelmusic:
;	db	02	;level 0 - atack wave
;	db	03	;level 1 - amazon forrest
;	db	04	;level 2 - artic
;	db	05	;level 3 - ocean
;	db	00	;level 4 - through the shield
;	db	06	;level 5 - armada 
;	db	07	;level 6 - alien planet
;	db	02	;level 7 - atack wave
;	db	03	;level 8 - amazon forrest
;	db	12	;level 9 - map
;	db	05	;level 10 - ocean
;	db	00	;level 11 - through the shield
;	db	06	;level 12 - armada 
;	db	07	;level 13 - alien planet
;	db	06	;level 14 - armada 
;	db	07	;level 15 - alien planet





_musiclist:
	dw	MUSIC0, MUSIC1, MUSIC2, MUSIC3
	dw	MUSIC4, MUSIC5, MUSIC6, MUSIC7
	dw	MUSIC8, MUSIC9, MUSIC10,MUSIC11
	dw	MUSIC12,MUSIC13,MUSIC14,MUSIC15
	dw	MUSIC16,MUSIC17,MUSIC18,MUSIC19
	dw	MUSIC20
_musiclistpage:
	db	:MUSIC0, :MUSIC1, :MUSIC2, :MUSIC3
	db	:MUSIC4, :MUSIC5, :MUSIC6, :MUSIC7
	db	:MUSIC8, :MUSIC9, :MUSIC10,:MUSIC11
	db	:MUSIC12,:MUSIC13,:MUSIC14,:MUSIC15
	db	:MUSIC16,:MUSIC17,:MUSIC18,:MUSIC19
	db	:MUSIC19


_tileupdate_list:
	dw	tile_update0
	dw	tile_update1
	dw	tile_update2
	dw	tile_update3
	
_tileupdate_listpage
	db	:tile_update0	
	db	:tile_update1
	db	:tile_update2
	db	:tile_update3

	code	page 5..14

_titlepat: 
		incbin ".\data\titlepat.bin"
_titlecol:
		incbin ".\data\titlecol.bin"

	code	page 6..14

l0pat:
	incbin	".\data\level0pat.bin"
l0col:
	incbin	".\data\level0col.bin"
l0sprite:
	incbin	".\data\level0sprite.bin"

	code	page 6..14

l3pat:
l4pat:
l5pat:
l6pat:
l7pat:
l8pat:
l10pat:
l11pat:
l12pat:
l13pat:
l14pat:
l15pat:
l1pat:
	incbin	".\data\level1pat.bin"
		
l3col:
l4col:
l5col:
l6col:
l7col:
l8col:
l10col:
l11col:
l12col:
l13col:
l14col:
l15col:
l1col:
	incbin	".\data\level1col.bin"

l3sprite:
l4sprite:
l5sprite:
l6sprite:
l7sprite:
l8sprite:
l10sprite:
l11sprite:
l12sprite:
l13sprite:
l14sprite:
l15sprite:
l1sprite:
	incbin	".\data\level1sprite.bin"
	

	code	page 5..14

l2pat:
	incbin	".\data\level2pat.bin"
l2col:
	incbin	".\data\level2col.bin"
l2sprite:
	incbin	".\data\level2sprite.bin"


	code	page 5..14
l9pat:
	incbin	".\data\level9pat.bin"
l9col:
	incbin	".\data\level9col.bin"
l9sprite:
	incbin	".\data\level9sprite.bin"

	

	code	page 5..14
	include	".\data\l0_mdat.asm"
	include	".\data\l0_0dat.asm"
	include	".\data\l0_1dat.asm"
	include	".\data\l0_2dat.asm"
	include	".\data\l0_3dat.asm"
	include	".\data\l0_4dat.asm"
	include	".\data\l0_5dat.asm"
	include	".\data\l0_6dat.asm"
	include	".\data\l0_7dat.asm"


	code	page 5..14
	include	".\data\l1_mdat.asm"
	include	".\data\l1_0dat.asm"
	include	".\data\l1_1dat.asm"
	include	".\data\l1_2dat.asm"	
	
	code	page 5..14
	include	".\data\l2_mdat.asm"
	include	".\data\l2_0dat.asm"
	include	".\data\l2_1dat.asm"
	include	".\data\l2_2dat.asm"
	
	code	page 5..14
	include	".\data\l3_mdat.asm"
	include	".\data\l3_0dat.asm"
	include	".\data\l3_1dat.asm"
	include	".\data\l3_2dat.asm"	

	code	page 5..14
	include	".\data\l9_mdat.asm"
	include	".\data\l9_0dat.asm"
	include	".\data\l9_1dat.asm"


	code	page 5..14
MUSIC0:	
			db 0x00,0x03,0x01,0x01,0x0A,0x0B,0x00,0x00,0x00,0x0B,0x00,0x0B,   0,   0,   0,   0
			incbin	".\data\music00.bin"

	code	page 5..14
MUSIC1: 
			db 0x00,0x03,0x0B,0x0B,0x02,   0,   0,   0,   0,0x0B,   0,   0,   0,   0,   0,   0
			incbin	".\data\music01.bin"

	code	page 5..14
MUSIC2: 
			db 0x00,0x02,0x0B,0x01,0x0B,0x0B,0x0B,0x07,0x08,0x0B,0x0B,   0,   0,   0,   0,   0
			incbin	".\data\music02.bin"

	code	page 5..14
MUSIC3: 
			db 0   ,0x05,0x06,0x07,   0,   0,   0,   0,   0,0x0D,0x0D,   0,   0,   0,   0,   0  
			incbin	".\data\music03.bin"

	code	page 5..14
MUSIC4:    
			db 0x00,0x02,0x07,0x06,0x0B,   0,   0,   0,   0,   0,   0,0x03,0x0B,   0,   0,   0
			incbin	".\data\music04.bin"

	code	page 5..14
MUSIC5: 
			db 0x00,0x01,0x02,0x07,   0,   0,   0,   0,   0,0x07,   0,   0,   0,   0,   0,   0
			incbin	".\data\music05.bin"

	code	page 5..14
MUSIC6: 
			db 0x00,0x0F,0x0B,0x00,0x0F,0x0F,0x0F,0x0F,   0,0x01,0x07,   0,   0,   0,   0,   0
			incbin	".\data\music06.bin"

	code	page 5..14
MUSIC7: 
			db 0x00,0x03,0x07,0x01,0x0B,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
			incbin	".\data\music07.bin"

	code	page 5..14
MUSIC8: 
			db 0x00,0x07,0x05,0x07,0x05,0x05,0x05,0x05,0x07,0x06,   0,   0,   0,   0,   0,   0
			incbin	".\data\music08.bin"

	code	page 5..14
MUSIC9: 
			db 0x00,0x07,   0,   0,0x07,0x07,0x07,   0,   0,0x07,0x07,   0,   0,   0,   0,   0
			incbin	".\data\music09.bin"

	code	page 5..14
MUSIC10: 
			db 0x00,0x01,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
			incbin	".\data\music10.bin"

	code	page 5..14
MUSIC11: 
			db 0x00,0x02,0x01,0x04,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
			incbin	".\data\music11.bin"

	code	page 5..14
MUSIC12: 
			db    0,0x0D,0x07,   0,   0,   0,   0,   0,   0,0x01,   0,   0,   0,   0,   0,   0
			incbin	".\data\music12.bin"
			
	code	page 5..14
MUSIC13: 
 			db 0x00,0x06,0x0B,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
			incbin	".\data\music13.bin"

	code	page 5..14
MUSIC14: 
			db 0x00,0x01,0x00,0x0B,0x02,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
			incbin	".\data\music14.bin"

	code	page 5..14
MUSIC15: 
			db 0x00,0x01,0x0B,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
			incbin	".\data\music15.bin"

	code	page 5..14
MUSIC16: 
			db 0x00,0x0A,0x0B,0x0B,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
			incbin	".\data\music16.bin"

	code	page 5..14
MUSIC17: 
			db    0,0x03,0x01,0x00,0x01,0x0B,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
			incbin	".\data\music17.bin"

	code	page 5..14
MUSIC18: 
			db    0,   0,   0,   0,   0,   0,0x01,   0,   0,   0,   0,   0,   0,   0,   0,   0
			incbin	".\data\music18.bin"

	code	page 5..14
MUSIC19: 
			db    0,   0,   0,   0,   0,   0,0x01,   0,   0,   0,   0,   0,   0,   0,   0,   0
			incbin	".\data\music19.bin"
	code	page 5..14
MUSIC20: 
			db    0,   0,   0,   0,   0,   0,0x01,   0,   0,   0,   0,   0,   0,   0,   0,   0
			incbin	".\data\music20.bin"




	code	page 5..14
tile_update0:
			;EMPTY UPDATE
			db	254		; no loop

	code	page 5..14
tile_update1:
			;WALKER NPC TILEUPDATE
			include	".\data\tileupdate1_walker.asm"
			db	254		; no loop

	code	page 5..14
tile_update2:
			;FOLDING ROCK WALL

			include	".\data\tileupdate2_rockwall.asm"
			db	254		; no loop

	code	page 5..14
tile_update3:
			;LEVEL 0 BOSS

			include	".\data\tileupdate3_level0boss.asm"
			db	254		; no loop






	page	15	
	code page 15
	
	db	"HERE GOES ISR"	
	
	include	".\code\isr.asm" 

