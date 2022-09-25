
IFDEF TAIL_ON
	;--- needed for volume balance
	db $11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11
	db $11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11
	db $11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11
	db $11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11
_VOLUME_TABLE:
      ;  tail PSG 1 / SCC 1
	db $11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11
	db $11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11
	db $11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$21,$21,$21,$22
	db $11,$11,$11,$11,$11,$11,$11,$11,$21,$21,$21,$21,$21,$31,$32,$33
	db $11,$11,$11,$11,$11,$11,$21,$21,$21,$21,$31,$31,$31,$32,$43,$44
	db $11,$11,$11,$11,$11,$21,$21,$21,$31,$31,$31,$41,$42,$43,$54,$55
	db $11,$11,$11,$11,$21,$21,$21,$31,$31,$41,$41,$42,$53,$54,$65,$66
	db $11,$11,$11,$11,$21,$21,$31,$31,$41,$41,$52,$53,$64,$65,$76,$77
	db $11,$11,$11,$21,$21,$31,$31,$41,$41,$52,$53,$64,$65,$76,$77,$88
	db $11,$11,$11,$21,$21,$31,$41,$41,$52,$53,$64,$75,$76,$87,$88,$99
	db $11,$11,$11,$21,$31,$31,$41,$52,$53,$64,$75,$76,$87,$98,$99,$AA
	db $11,$11,$11,$21,$31,$41,$42,$53,$64,$75,$76,$87,$98,$A9,$AA,$BB
	db $11,$11,$21,$21,$31,$42,$53,$64,$65,$76,$87,$98,$A9,$AA,$BB,$CC
	db $11,$11,$21,$31,$32,$43,$54,$65,$76,$87,$98,$A9,$AA,$BB,$CC,$DD
	db $11,$11,$21,$32,$43,$54,$65,$76,$77,$88,$99,$AA,$BB,$CC,$DD,$EE
	db $11,$11,$22,$33,$44,$55,$66,$77,$88,$99,$AA,$BB,$CC,$DD,$EE,$FF
ELSE
	;--- needed for volume balance
 	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00     
_VOLUME_TABLE:
      ; No tail
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$10,$11
	db $00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$10,$20,$20,$21,$22
	db $00,$00,$00,$10,$10,$10,$10,$10,$20,$20,$20,$20,$20,$31,$32,$33
	db $00,$00,$10,$10,$10,$10,$20,$20,$20,$20,$30,$30,$31,$32,$43,$44
	db $00,$00,$10,$10,$10,$20,$20,$20,$30,$30,$30,$41,$42,$43,$54,$55
	db $00,$00,$10,$10,$20,$20,$20,$30,$30,$40,$41,$42,$53,$54,$65,$66
	db $00,$00,$10,$10,$20,$20,$30,$30,$40,$41,$52,$53,$64,$65,$76,$77
	db $00,$10,$10,$20,$20,$30,$30,$40,$41,$52,$53,$64,$65,$76,$77,$88
	db $00,$10,$10,$20,$20,$30,$40,$41,$52,$53,$64,$75,$76,$87,$88,$99
	db $00,$10,$10,$20,$30,$30,$41,$52,$53,$64,$75,$76,$87,$98,$99,$AA
	db $00,$10,$10,$20,$30,$41,$42,$53,$64,$75,$76,$87,$98,$A9,$AA,$BB
	db $00,$10,$20,$20,$31,$42,$53,$64,$65,$76,$87,$98,$A9,$AA,$BB,$CC
	db $00,$10,$20,$31,$32,$43,$54,$65,$76,$87,$98,$A9,$AA,$BB,$CC,$DD
	db $00,$10,$21,$32,$43,$54,$65,$76,$77,$88,$99,$AA,$BB,$CC,$DD,$EE
	db $00,$11,$22,$33,$44,$55,$66,$77,$88,$99,$AA,$BB,$CC,$DD,$EE,$FF
ENDIF


TRACK_ToneTable_PSG:
IFDEF PERIOD_A440
;--- PSG_A440_Modern:
      dw      $0D5C, $0C9D, $0BE7, $0B3C, $0A9B, $0A02, $0973, $08EB, $086B, $07F2, $0780, $0714
      dw      $06AE, $064E, $05F4, $059E, $054D, $0501, $04B9, $0475, $0435, $03F9, $03C0, $038A
      dw      $0357, $0327, $02FA, $02CF, $02A7, $0281, $025D, $023B, $021B, $01FC, $01E0, $01C5
      dw      $01AC, $0194, $017D, $0168, $0153, $0140, $012E, $011D, $010D, $00FE, $00F0, $00E2
      dw      $00D6, $00CA, $00BE, $00B4, $00AA, $00A0, $0097, $008F, $0087, $007F, $0078, $0071
      dw      $006B, $0065, $005F, $005A, $0055, $0050, $004C, $0047, $0043, $0040, $003C, $0039
      dw      $0035, $0032, $0030, $002D, $002A, $0028, $0026, $0024, $0022, $0020, $001E, $001C
      dw      $001B, $0019, $0018, $0016, $0015, $0014, $0013, $0012, $0011, $0010, $000F, $000E
ENDIF
IFDEF PERIOD_A432
;--- PSG_A432_Earth:
      dw      $0D9C, $0CD8, $0C20, $0B72, $0ACD, $0A32, $099F, $0915, $0893, $0817, $07A3, $0735
      dw      $06CE, $066C, $0610, $05B9, $0567, $0519, $04D0, $048B, $0449, $040C, $03D2, $039B
      dw      $0367, $0336, $0308, $02DC, $02B3, $028C, $0268, $0245, $0225, $0206, $01E9, $01CD
      dw      $01B3, $019B, $0184, $016E, $015A, $0146, $0134, $0123, $0112, $0103, $00F4, $00E7
      dw      $00DA, $00CE, $00C2, $00B7, $00AD, $00A3, $009A, $0091, $0089, $0081, $007A, $0073
      dw      $006D, $0067, $0061, $005C, $0056, $0052, $004D, $0049, $0045, $0041, $003D, $003A
      dw      $0036, $0033, $0030, $002E, $002B, $0029, $0026, $0024, $0022, $0020, $001F, $001D
      dw      $001B, $001A, $0018, $0017, $0016, $0014, $0013, $0012, $0011, $0010, $000F, $000E
ENDIF
IFDEF PERIOD_A445
;--- PSG_A445_Konami:
      dw      $0D36, $0C78, $0BC5, $0B1C, $0A7C, $09E6, $0957, $08D1, $0853, $07DB, $076A, $0700
      dw      $069B, $063C, $05E3, $058E, $053E, $04F3, $04AC, $0469, $0429, $03ED, $03B5, $0380
      dw      $034E, $031E, $02F1, $02C7, $029F, $0279, $0256, $0234, $0215, $01F7, $01DB, $01C0
      dw      $01A7, $018F, $0179, $0163, $0150, $013D, $012B, $011A, $010A, $00FB, $00ED, $00E0
      dw      $00D3, $00C8, $00BC, $00B2, $00A8, $009E, $0095, $008D, $0085, $007E, $0077, $0070
      dw      $006A, $0064, $005E, $0059, $0054, $004F, $004B, $0047, $0043, $003F, $003B, $0038
      dw      $0035, $0032, $002F, $002C, $002A, $0028, $0025, $0023, $0021, $001F, $001E, $001C
      dw      $001A, $0019, $0018, $0016, $0015, $0014, $0013, $0012, $0011, $0010, $000F, $000E
ENDIF
IFDEF PERIOD_A448
;--- PSG_A448:
      dw      $0D1F, $0C63, $0BB1, $0B09, $0A6A, $09D5, $0947, $08C2, $0844, $07CE, $075D, $06F4
      dw      $0690, $0631, $05D8, $0584, $0535, $04EA, $04A4, $0461, $0422, $03E7, $03AF, $037A
      dw      $0348, $0319, $02EC, $02C2, $029B, $0275, $0252, $0231, $0211, $01F3, $01D7, $01BD
      dw      $01A4, $018C, $0176, $0161, $014D, $013B, $0129, $0118, $0109, $00FA, $00EC, $00DE
      dw      $00D2, $00C6, $00BB, $00B1, $00A7, $009D, $0094, $008C, $0084, $007D, $0076, $006F
      dw      $0069, $0063, $005E, $0058, $0053, $004F, $004A, $0046, $0042, $003E, $003B, $0038
      dw      $0034, $0032, $002F, $002C, $002A, $0027, $0025, $0023, $0021, $001F, $001D, $001C
      dw      $001A, $0019, $0017, $0016, $0015, $0014, $0013, $0012, $0011, $0010, $000F, $000E
ENDIF
