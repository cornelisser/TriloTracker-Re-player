	; --- PAGE 0
	;
	; Global code (will never be swapped)
	;
	;
	; --------------------------------------------------
	org	0x0100
	include 	"ttreplaySCC_options.asm"

MAIN:
	; locate available SCC
	xor	a                       ; 0 = normal SCC (1=scc+)
	ld	(scc_type_check),a
	call	find_SCC		      ; find SCC
      cp	255
      jp	z,no_scc                ; Stop if no SCC is found
      
	;--- initialise replayer
	call	replay_init	

	;---- load song
	ld	hl,demo_song
	call	replay_loadsong

loop:
	;--- note: best to place this code in the interrupt handler 
	ei
	halt
	call	replay_route		; first outout data
	call	replay_play			; calculate next output

	jp	loop

no_scc:
	;--- add text here on screen
	ret

      ;-- Music
demo_song:	
	include 	"NEM3AIRB.asm"
      ;--- Replayer 
      include	"..\code\sccdetect.asm"
      include	"..\code\ttreplaySCC.asm"
      include	"..\code\ttreplaySCCDAT.asm"

      ;--- RAM
	map 0xC000
	include	"..\code\ttreplaySCCRAM.asm"