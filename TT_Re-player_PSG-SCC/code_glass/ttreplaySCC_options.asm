; Compile options:

MSX2:	equ 1				; Used in speed equalization
TAIL_ON:	equ 0			; Limit volume to 1

;--- Only set 1 of the settings below for the period table
PERIOD_A440:	equ 0		; Modern 
PERIOD_A432:	equ 0		; Earth
PERIOD_A445:	equ 1		; Konami
PERIOD_A448:	equ 0		; Classical

EXTERNAL_SCC:	equ 0 
INTERNAL_SCC:	equ 1		; For internal no slot select is needed.
SCC_I:	equ 1                  ; For SCC+ playback
SFXPLAY_ENABLED:	equ 0		; Enable the SFX functionality.

;---- Performance option
FPGA_SCC:	equ 0			; FPGA SCC can be written faster
					; as there are no artifacts when writing same values
TREMOLO_OFF:	equ 0		; removes tremolo code making the replayer a little bit faster
