; Compiled using tt_compile.exe V0.4.0 [16-09-2016]
; Copyright 2016 Richard Cornelisse

; Song: TriloTracker v0.10.0 public beta
; By:    Richard Cornelisse      (c) 201

ttsfx_waveforms:
	db $7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$00	; Waveform 0(was 0)
	db $00,$19,$31,$47,$5A,$6A,$75,$7D,$7F,$7D,$75,$6A,$5A,$47,$31,$19,$80,$90,$A0,$B0,$C0,$D0,$E0,$F0,$00,$10,$20,$30,$40,$50,$60,$70	; Waveform 1(was 9)
	db $00,$00,$00,$80,$00,$70,$70,$70,$00,$00,$00,$80,$00,$00,$00,$80,$80,$80,$80,$00,$80,$00,$00,$00,$00,$80,$80,$80,$00,$80,$80,$80	; Waveform 2(was 31)

; [ sfx start data ]

; [ sfx order pointer list ]
sfxlist:
	dw sfx_0
	dw sfx_1
	dw sfx_2

sfx_0:	; sfx 0 /pattern 0
	db 1		; PSG
	dw sfxtrack_0
	db 0        ; End of SFX
sfx_1:	; sfx 1 /pattern 1
	db 1		; PSG
	dw sfxtrack_8
	db 0        ; End of SFX
sfx_2:	; sfx 2 /pattern 2
	db 2		; SCC
	dw sfxtrack_19
	db 0        ; End of SFX

; [ SFX data ]
sfxtrack_0:		;Chip:PSG
	; Note: 85  Ins: 1  Wav: 0  Vol: 240  
	db $3F, $19, $00
	db $3F, $1A, $00
	; Note: 73  
	db $3F, $32, $00
	db $3F, $33, $00
	; Note: 85  
	db $3F, $19, $00
	db $3F, $1A, $00
	; Note: 73  
	db $3F, $32, $00
	db $3F, $33, $00
	; Note: 85  
	db $3F, $19, $00
	db $3F, $1A, $00
	; Note: 73  
	db $3F, $32, $00
	db $3F, $33, $00
	; Note: 85  
	db $3F, $19, $00
	db $3F, $1A, $00
	; Note: 73  
	db $3F, $32, $00
	db $3F, $33, $00
	; Note: 85  
	db $3F, $19, $00
	db $3F, $1A, $00
	; Note: 73  
	db $3F, $32, $00
	db $3F, $33, $00
	; Note: 85  Vol: 160  
	db $3A, $19, $00
	db $3A, $1A, $00
	; Note: 73  
	db $3A, $32, $00
	db $3A, $33, $00
	; Note: 85  Vol: 128  
	db $38, $19, $00
	db $38, $1A, $00
	; Note: 73  
	db $38, $32, $00
	db $38, $33, $00
	; Note: 85  Vol: 96  
	db $36, $19, $00
	db $36, $1A, $00
	; Note: 73  
	db $36, $32, $00
	db $36, $33, $00
	; Note: 85  Vol: 64  
	db $34, $19, $00
	db $34, $1A, $00
;	db $12
	db 64		; End delimiter PSG
 
sfxtrack_8:		;Chip:PSG
	; Note: 29  Ins: 2  Wav: 0  Vol: 240  
	db $AC, $78, $02
	db $B8, $A8, $02
	; 
	db $AC, $78, $02
	db $B8, $A8, $02
	; 
	db $20, $78, $02
	db $00
	; 
	db $00
	db $00
	; 
	db $00
	db $8C
	; -R-: 
	db $00
	db $00
	db $00
	db 64		; End delimiter PSG
 
sfxtrack_19:		;Chip:SCC
	; Note: 85  Ins: 3  Wav: 1  Vol: 240  
	db $7B, $0F, $00, $08
	db $3A, $14, $00
	; 
	db $37, $0F, $00
	db $3C, $19, $00
	; 
	db $1A
	db $1A
	; 
	db $3A, $1A, $00
	db $1A
	; 
	db $3A, $19, $00
	db $19
	; 
	db $19
	db $39, $1A, $00
	; 
	db $19
	db $39, $19, $00
	; 
	db $18
	db $18
	; 
	db $38, $1A, $00
	db $18
	; 
	db $38, $19, $00
	db $17
	; 
	db $17
	db $37, $1A, $00
	; 
	db $17
	db $37, $19, $00
	; 
	db $16
	db $16
	; 
	db $36, $1A, $00
	db $16
	; 
	db $36, $19, $00
	db $15
	; 
	db $15
	db $35, $1A, $00
	; 
	db $15
	db $35, $19, $00
	; 
	db $14
	db $14
	; 
	db $34, $1A, $00
	db $14
	; 
	db $34, $19, $00
	db $13
	; 
	db $13
	db $33, $1A, $00
	; 
	db $13
	db $33, $19, $00
	; 
	db $12
	db $12
	; 
	db $32, $1A, $00
	db $12
	; 
	db $32, $19, $00
	db $11
	; 
	db $11
	db $31, $1A, $00
	; 
	db $11
	db $31, $19, $00
	; 
	db $10
	db $10
	db $30, $1A, $00
	db 128		; End delimiter SCC
 

