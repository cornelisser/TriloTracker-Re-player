; ==============================================================================
; TriloTracker Re-player PSG+SCC - Glass Assembler Example ROM
; Target: MSX1/MSX2 32KB ROM (0x4000 - 0xBFFF)
; Assembler: Glass (grauw.nl)
; ==============================================================================

	include "ttreplaySCC_options.asm"

TT_RAM_START: equ 0C000h
	include "../code_glass/ttreplaySCCRAM.asm"

	org 04000h

	; MSX Cartridge Header
	db 041h, 042h		; "AB" ROM signature
	dw initmain		; Init execution address
	db "TTDEMO", 0		; Cartridge name
	ds 5, 0			; Reserved

initmain:
	di

	; Set page 2 (0x8000 - 0xBFFF) to the same slot as page 1 (0x4000 - 0x7FFF)
	call 00138h		; RSLREG (read primary slot register)
	rrca
	rrca
	and 003h
	ld c, a
	ld b, 0
	ld hl, 0FCC1h		; EXPTBL
	add hl, bc
	or (hl)
	ld b, a
	inc hl
	inc hl
	inc hl
	inc hl
	ld a, (hl)		; SLTTBL
	and 00Ch
	or b

	ld h, 080h
	call 00024h		; ENASLT

	; Place ISR hook on H.TIMI (0xFD9A)
	ld a, 0C3h		; JP
	ld hl, isr
	ld (0FD9Ah), a
	ld (0FD9Bh), hl

	; Detect SCC
	call find_SCC

	; Initialise replayer
	call replay_init

	; Load song
	ld hl, demo_song
	call replay_loadsong

	ei

infinite:
	halt
	jp infinite

isr:
	in a, (099h)		; Acknowledge VDP interrupt
	call replay_route	; Output audio registers to chip
	call replay_play	; Calculate next tick
	ret

	include "../code_glass/ttreplaySCC.asm"
	include "../code_glass/ttreplaySCCDAT.asm"
	include "../code_glass/sccdetect.asm"

demo_song:
	include "TEST2026.asm"

	; Pad to 32KB
	ds 0C000h - $, 0
