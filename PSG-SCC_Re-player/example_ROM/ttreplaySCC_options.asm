; Compile options:

define MSX2				; Used in speed equalization
;define TAIL_ON			; Limit volume to 1

;--- Only set 1 of the settings below for the period table
;define PERIOD_A440		; Modern 
;define PERIOD_A432		; Earth
define PERIOD_A445		; Konami
;define PERIOD_A448		; Classical

;define EXTERNAL_SCC 
define INTERNAL_SCC		; For internal no slot select is needed.

;define SFXPLAY_ENABLED		; Enable the SFX functionality.

;---- Performance option
;define FPGA_SCC			; FPGA SCC can be written faster
					; as there are no artifacts when writing same values
;define TREMOLO_OFF		; removes tremolo code making the replayer a little bit faster