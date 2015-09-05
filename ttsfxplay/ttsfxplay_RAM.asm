		; --- ayFX REPLAYER v1.11r ---

		; --- THIS FILE MUST BE COMPILED IN RAM ---

ayFX_PRIORITY:		#1			; Current ayFX stream priority
ayFX_POINTER:		#2			; Pointer to the current ayFX stream
ayFX_TONE:	    		#2			; Current tone of the ayFX stream
ayFX_NOISE:	    		#1			; Current noise of the ayFX stream
ayFX_VOLUME:		#1			; Current volume of the ayFX stream
ayFX_BALANCE:		#2			; Pointer to the volume table

sccFX_PRIORITY:		#1			; Current sccFX stream priority
sccFX_POINTER:		#2			; Pointer to the current sccFX stream
sccFX_TONE:	    		#2			; Current tone of the sccFX stream
sccFX_WAVE:	    		#1			; Current waveform of the sccFX stream
sccFX_VOLUME:		#1			; Current volume of the sccFX stream
sccFX_BALANCE:		#2			; Pointer to the volume table


;ayFX_CHANNEL:			#1			; PSG channel to play the ayFX stream
;ayFX_VT:	    		#2			; ayFX relative volume table pointer

;_psg_volume:   			#1
;_scc_volume:			#1
;_sfx_volume:			#1
