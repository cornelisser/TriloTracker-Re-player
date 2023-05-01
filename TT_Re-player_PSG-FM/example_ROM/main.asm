	defpage	0,0x4000, 0x8000		; page 0 contains main code + far call routines

; -----------------------------
; TT-replayer example
; 
; This example plays compiled PSG+FM songs
; ------------------------------

	include	"ttreplayFM_options.asm"

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
	
	;--- place replayer on hook
	ld	a,0xc3
	ld	hl,isr
	ld	(0xFD9A),a
	ld	(0xFD9B),hl	
	
	;clear RAM (first kb only)
	ld	bc,1024
	ld	hl,0xc000
	ld	de,0xc001
	ld	(hl),0
	ldir	

      ;--- Detect and init opll
	call	MSXMusic_Detect


	;--- initialise replayer
	call	replay_init
      call	replay_equalization_on

	ld	hl,demo_song
	call	replay_loadsong

	ei

infinite:
	halt	
	jp	infinite
	
	
isr:
	in	a,(0x99)
	call	replay_route		; first outout data
	call	replay_play			; calculate next output
	ret
	
	include     "..\code\fmdetect.asm"
	include	"..\code\ttreplayFM.asm"
	include	"..\code\ttreplayFMDAT.asm"

demo_song:
	include	"CCCSCORE.asm"


	map	0xc000
	include	"..\code\ttreplayFMRAM.asm"