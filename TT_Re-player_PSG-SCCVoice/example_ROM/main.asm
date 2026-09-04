	defpage	0,0x4000, 0x8000		; page 0 contains main code + far call routines
	defpage	1,0x4000, 0x8000		; page 0 contains main code + far call routines
	defpage	2,0x4000, 0x8000		; page 0 contains main code + far call routines
	defpage	3,0x4000, 0x8000		; page 0 contains main code + far call routines
; -----------------------------
; TT-replayer example
; 
; This example plays compiled PSG+SCC songs
; ------------------------------

	include	"ttreplaySCC_options.asm"

	page 0
	code page 0
	
	org	04000h
	db	041h,042h 
	dw	initmain
	dz 	'TTDEMO'
	ds	5 
		
initmain:
 	di
;; set pages and subslot
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

	;enable SCC address registers
	ld	a,03Fh				; enable SCC
	ld	(0x9000),a
0:
	//call	play_sample

	//call	play_pitch_test
	call	play_raw8_test
	jp	0b

	//include	"legacy_test_play.z80" 
	//include "pitch_mode_test_play.z80"	
	include	"raw8_test_play.z80"


	map	0xc000
