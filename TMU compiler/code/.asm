; Song:                                 
; By:                                   
; Period table: A440 Modern

; [ Song start data ]
	db $06					; Initial song speed.
	dw .customvoice_start-8			; Start of the custom voices data.
	dw .drummacro_start				; Start of the drum macro data.
	dw .instrument_start			; Start of the instrument data.

; [ Song order pointer list ]
	dw .track_000, .track_001, .track_002, .track_003, .track_004, .track_000, .track_000, .track_000	; Step:000 Pattern:000
	dw .track_008, .track_009, .track_010, .track_011, .track_012, .track_008, .track_008, .track_008	; Step:001 Pattern:001
	dw .track_008, .track_017, .track_018, .track_019, .track_020, .track_008, .track_008, .track_008	; Step:002 Pattern:002
	dw .track_008, .track_017, .track_026, .track_027, .track_028, .track_008, .track_008, .track_008	; Step:003 Pattern:003
	dw .track_008, .track_017, .track_018, .track_019, .track_036, .track_008, .track_008, .track_008	; Step:004 Pattern:004
	dw .track_008, .track_017, .track_026, .track_027, .track_028, .track_008, .track_008, .track_008	; Step:005 Pattern:005
	dw .track_008, .track_049, .track_050, .track_051, .track_052, .track_008, .track_008, .track_008	; Step:006 Pattern:006
	dw .track_008, .track_049, .track_058, .track_059, .track_060, .track_008, .track_008, .track_008	; Step:007 Pattern:007
	dw .track_008, .track_049, .track_050, .track_051, .track_068, .track_008, .track_008, .track_008	; Step:008 Pattern:008
	dw .track_008, .track_049, .track_074, .track_075, .track_076, .track_008, .track_008, .track_008	; Step:009 Pattern:009
	dw .track_008, .track_008, .track_082, .track_083, .track_084, .track_008, .track_008, .track_008	; Step:010 Pattern:010
	dw .track_008, .track_008, .track_090, .track_091, .track_092, .track_008, .track_008, .track_008	; Step:011 Pattern:011
	dw