	defpage	0,0x4000, 0x8000		; page 0 contains main code + far call routines

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
	
	;--- initialise replayer
	call	replay_init
	call	SFX_INIT
	
	;--- initialise demo song
	ld	hl,demo_song
	call	replay_loadsong
	
	;--- initialise sfx pointers
	
	
	
	ei
	
	xor	a
	ld	(pattern),a

	
	
infinite:
	halt
	;--- display debug info
	
	
	
	
	
	;---- Test for space
	xor	a
	call	$00D8
	and	a
	jp	z,infinite

	call	replay_pause
	ld	bc,$0101
	call	sccFX_START
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
	call	replay_route		; first outout data
	call	replay_play			; calculate next output
	call	ayFX_PLAY
	call	sccFX_PLAY
	ret
	
	
	
	include	"..\code\ttreplay.asm"
	include	"..\code\ttreplayDAT.asm"
	include	"..\ttsfxplay\ttsfxplay.asm"
demo_song:
	include	".\demosong.asm"
	
ayFX_STREAMS:
sccFX_STREAMS:
	dw	sfx1
	dw	sfx2
	dw	sfx3
	dw	sfx4
	dw	sfx5



sfx1:
	db	1
	incbin	"..\ttsfxplay\sfx\menu1.afx"
sfx2:
	db	1
	incbin	"..\ttsfxplay\sfx\menu2.afx"	
sfx3:
	db	1
	incbin	"..\ttsfxplay\sfx\menu3.afx"
sfx4:
	db	1
	incbin	"..\ttsfxplay\sfx\menu4.afx"
sfx5:
	db	1
	incbin	"..\ttsfxplay\sfx\menu5.afx"

	
	
	map	0xc000
	include	"..\code\ttreplayRAM.asm"
	include	"..\ttsfxplay\ttsfxplay_RAM.asm"
pattern	#1
