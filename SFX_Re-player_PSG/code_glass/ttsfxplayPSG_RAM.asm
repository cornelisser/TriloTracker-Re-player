; --- TT SFX Re-player RAM definitions (Glass compatible) ---
; Define TTSFX_RAM_START before including this file, e.g. TTSFX_RAM_START: equ 0C200h

		; --- TT sfx player v0.1 ---

		; --- THIS FILE MUST BE COMPILED IN RAM ---
sfx_STATUS:	equ TTSFX_RAM_START; Status of the sfx
sfx_STATUS_END:	equ sfx_STATUS + 1
sfx_PRIORITY:	equ sfx_STATUS_END			; Current sfx_PSG stream priority
sfx_PRIORITY_END:	equ sfx_PRIORITY + 1
sfx_PSG_POINTER:	equ sfx_PRIORITY_END			; Pointer to the current sfx_PSG stream
sfx_PSG_POINTER_END:	equ sfx_PSG_POINTER + 2
sfx_PSG_TONE:	equ sfx_PSG_POINTER_END			; Current tone of the sfx_PSG stream
sfx_PSG_TONE_END:	equ sfx_PSG_TONE + 2
sfx_PSG_NOISE:	equ sfx_PSG_TONE_END			; Current noise of the sfx_PSG stream
sfx_PSG_NOISE_END:	equ sfx_PSG_NOISE + 1
sfx_PSG_VOLUME:	equ sfx_PSG_NOISE_END			; Current volume of the sfx_PSG stream
sfx_PSG_VOLUME_END:	equ sfx_PSG_VOLUME + 1
sfx_PSG_BALANCE:	equ sfx_PSG_VOLUME_END			; Pointer to the volume table
sfx_PSG_BALANCE_END:	equ sfx_PSG_BALANCE + 2




TTSFX_RAM_TOTAL_SIZE:	equ sfx_PSG_BALANCE_END - TTSFX_RAM_START
