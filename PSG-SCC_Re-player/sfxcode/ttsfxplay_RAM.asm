		; --- TT sfx player v0.1 ---

		; --- THIS FILE MUST BE COMPILED IN RAM ---

sfx_PRIORITY:		#1			; Current sfx_PSG stream priority
sfx_STATUS:			#1			; 0 = inactive, 1 or 2 is one or more sfx beeing played.
sfx_PSG_POINTER:		#2			; Pointer to the current sfx_PSG stream
sfx_PSG_TONE:	    	#2			; Current tone of the sfx_PSG stream
sfx_PSG_NOISE:	    	#1			; Current noise of the sfx_PSG stream
;sfx_PSG_VOLUME:		#1			; Current volume of the sfx_PSG stream
sfx_PSG_BALANCE:		#2			; Pointer to the volume table

;sfx_SCC_PRIORITY:		#1			; Current sfx_SCC stream priority
sfx_SCC_POINTER:		#2			; Pointer to the current sfx_SCC stream
sfx_SCC_TONE:	    	#2			; Current tone of the sfx_SCC stream
;sfx_SCC_WAVE:	    	#2			; Current waveform of the sfx_SCC stream
;sfx_SCC_VOLUME:		#1			; Current volume of the sfx_SCC stream
sfx_SCC_BALANCE:		#2			; Pointer to the volume table


