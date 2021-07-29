    org #4000
__sjasm_page_0_start:
; page 0 contains main code + far call routines
; page 0 contains main code + far call routines
; -----------------------------
; TT-replayer example
; 
; This example plays compiled PSG+SCC songs
; ------------------------------

;	include	".\code\variables.asm"





    org #4000
    db #0041, #0042
    dw initmain
    db "TTDEMO", 0
    ds 5, 0

initmain:

    outi
;	ei
;	halt
    di

;; set pages and subslot
;;
    call #0138
    rrca
    rrca
    and #03
    ld c, a
    ld b, 0
    ld hl, #fcc1
    add hl, bc
    or (hl)
    ld b, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, (hl)
    and #0c
    or b

    ld h, #80
    call #24

;clear RAM (first kb only)
    ld bc, 1024
    ld hl, #c000
    ld de, #c001

    ld (hl), 0
    ldir

;--- place replayer on hook
    ld a, #c3
    ld hl, isr
    ld (#fd9a), a
    ld (#fd9b), hl


;--- Set speed equalization
    ld a, (#ffe8)  ; get mirror of VDP reg# 9
    and 2
    jp z, _sjasm_reusable_99_1
    ld a, -1
_sjasm_reusable_99_1:
    inc a  ; 1 = 60hz
    ld (equalization_freq), a
    ld (equalization_cnt), a

;--- Init screen
    call init_vdp
    ei
    halt
    di
    call init_font  ; set the new font

;--- initialise replayer
    call replay_init
;	call	ttsfx_init
    ld a, 1
    ld (equalization_freq), a
    ld (equalization_cnt), a
;--- initialise demo song
    ld hl, demo_song
    call replay_loadsong

;--- initialise sfx pointers


;     call clear_debug  ; -mdl

clear_debug:
    ld hl, debug_pnt
    ld de, debug_pnt + 1
    ld (hl), 32
    ld bc, (8 * 80) - 1
    ldir
;     ret  ; -mdl

    ei

    call clear_screen
    ld hl, 80 * 4 + 22
    ld de, TEXT_Title
    call draw_label
    ld hl, 80 * 6 + 36
    ld de, TEXT_Step
    call draw_label
    ld hl, 80 * 8 + 4
    ld de, TEXT_Header_Data
    call draw_label

    ld hl, 80 * 8 + 38
    ld de, TEXT_Register_Header
    call draw_label

;	ld 	hl,80*13+56
;	ld	de,TEXT_Register_Drum
;	call	draw_label	

    ld hl, 80 * 18 + 4
    ld de, TEXT_Legend_Data
    call draw_label



    xor a
    ld (pattern), a

;	call	replay_pause
;	ld	bc,$0001
;	call	ttsfx_start

infinite:
    halt
;	call	register_debug


;	ld	a,$f0 ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
;	out	(0x99),a
;	ld	a,7+128
;	out	(0x99),a	



;	ld	a,$f3 ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
;	out	(0x99),a
;	ld	a,7+128
;	out	(0x99),a

;	ld	a,$f0
;	out	(0x99),a
;	ld	a,7+128
;	out	(0x99),a	
;--- display debug info
;     call debuginfo  ; -mdl

debuginfo:
;	ld	bc,40
;	call	clear_TEXT

    ld b, 8
    ld ix, TRACK_Chan1 + 17
    ld de, debug_pnt + 4
debuginfo.loop:
    push bc
    push de

    ld a, 9
    sub b
    call draw_decimal
    inc de
    ld a, (ix + TRACK_Note)
    call draw_hex2
    inc de
    ld a, (ix + TRACK_Instrument)
    call draw_hex2
    inc de
    ld a, (ix + TRACK_Waveform)
    call draw_hex2
    inc de
    ld a, (ix + TRACK_Volume)
    call draw_hex2
    inc de
    ld a, (ix + TRACK_Command)
    call draw_hex2
    inc de

    ex de, hl
    ld b, (ix + TRACK_Flags)
    call debug_flags


; next line
    pop hl
    ld de, 80
    add hl, de
    ex de, hl


;--- Next track
    ld bc, TRACK_REC_SIZE
    add ix, bc

    pop bc
    djnz debuginfo.loop
;     ret  ; -mdl
;     call register_debug  ; -mdl


register_debug:
;	ld	bc,7
;	call	clear_TEXT
    ld hl, REG_list

;	DRAW PSG Tone vol	
    ld iyl, 3
    ld de, debug_pnt + 47
;	ld	(debug_pointer1),bc
    call register_debug_loop

;	DRAW PSG Noise and mixer	
    ld iyl, 1
    ld de, debug_pnt + 56
;	ld	(debug_pointer1),bc
    call register_debug_loop

;	DRAW PSG Envelop + shape
    ld iyl, 1
    ld de, debug_pnt + 65
;	ld	(debug_pointer1),bc
    call register_debug_loop

;	DRAW FM Tone Vol	
    ld iyl, 5
    ld de, debug_pnt + (80 * 3) + 38
;	ld	(debug_pointer1),bc
    call register_debug_loop


;	DRAW FM Drum macro + percusion
;	ld	iyl,1
;	ld 	de,debug_pnt+(80*5)+56
;;	ld	(debug_pointer1),bc
;	call	register_debug_loop
;
;	;	DRAW FM Drum tone + vol
;	ld	iyl,3
;	ld 	de,debug_pnt+(80*5)+65
;;	ld	(debug_pointer1),bc
;	call	register_debug_loop

;     ret  ; -mdl
;     call step_debug  ; -mdl

step_debug:
    ld bc, 7
    call clear_TEXT
    ld hl, (replay_orderpointer)
    ld de, demo_song + 7
    xor a
    sbc hl, de
    add hl, hl  ;X2
    add hl, hl  ;X4	
    add hl, hl  ;X8
    add hl, hl  ;X16
    ld a, h
    dec a
    ld hl, debug_pointer1
    ld (hl), a
    ld de, TEXT_Chan
    call draw_decimal3

    ld hl, 80 * 6 + 41
    ld de, TEXT_Chan
    ld b, 3
    call draw_label_fast
;     ret  ; -mdl




;---- Test for space
    xor a
    call #00d8
    and a
    jp z, infinite

;	call	replay_pause
    ld bc, #0001
;	call	ttsfx_start
;	ld	a,0
;	call	replay_set_SCC_balance
;	ld	de,-2
;	call	replay_transpose	
;	ld	a,32
;	call	replay_fade_out
;	call	replay_pause
; wait_key_release
_sjasm_reusable_99_2:
    xor a
    call #00d8
    and a
    jp nz, _sjasm_reusable_99_2

    jp infinite



isr:
    in a, (#99)
;     call write_debug  ; -mdl

write_debug:
    ld hl, _PNT + (80 * 9)
    call set_vdpwrite

    ld hl, debug_pnt
    ld a, 8
    ld c, #98
_wd_loop:
    ld b, 80
    otir

    dec a
    jp nz, _wd_loop

;     ret  ; -mdl
    ld a, #fc  ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
    out (#99), a
    ld a, 7 + 128
    out (#99), a
    call replay_route  ; first outout data
    ld a, #f4  ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
    out (#99), a
    ld a, 7 + 128
    out (#99), a
    call replay_play  ; calculate next output
    ld a, #f0  ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
    out (#99), a
    ld a, 7 + 128
    out (#99), a
;	call	ttsfx_play



    ret

register_debug_loop:
    push de
;	ld	de,TEXT_Chan
    ld c, (hl)
    inc hl
    ld b, (hl)
    inc hl

    inc bc
    ld a, (bc)
    dec bc
    call draw_hex2  ; tone
    ld a, (bc)
    call draw_hex2

    inc de

    ld c, (hl)
    inc hl
    ld b, (hl)
    inc hl

    ld a, (bc)
    call draw_hex2  ; vol

;-- next line
    pop de
    ld a, 80
    add a, e
    ld e, a
    jp nc, _sjasm_reusable_99_3
    inc d
_sjasm_reusable_99_3:
    dec iyl
    jp nz, register_debug_loop
    ret

REG_list:
    dw PSG_regToneA, PSG_regVOLA
    dw PSG_regToneB, PSG_regVOLB
    dw PSG_regToneC, PSG_regVOLC
    dw PSG_regNOISE, PSG_regMIXER
    dw 0, 0  ;PSG_regEnvL,PSG_regEnvShape 	
    dw SCC_regToneA, SCC_regVOLA
    dw SCC_regToneB, SCC_regVOLB
    dw SCC_regToneC, SCC_regVOLC
    dw SCC_regToneD, SCC_regVOLD
    dw SCC_regToneE, SCC_regVOLE
    dw 0, 0  ;FM_regToneF,FM_regVOLF 
    dw 0, 0  ;FM_DRUM_MACRO,FM_DRUM
    dw 0, 0  ;FM_freqreg1,FM_volreg1
    dw 0, 0  ;FM_freqreg2,FM_volreg2	
    dw 0, 0  ;FM_freqreg3,FM_volreg3	




; input BC length to clear
clear_TEXT:
    dec bc
    ld hl, TEXT_Chan
    ld de, TEXT_Chan + 1
    ld (hl), " "
    ldir
    ret

debug_flags:
    bit 7, b
    jp z, _sjasm_reusable_1_1
    ld (hl), "S"
    jp _sjasm_reusable_2_1
_sjasm_reusable_1_1:
    ld (hl), "P"

_sjasm_reusable_2_1:
    inc hl
    bit 6, b
    jp z, _sjasm_reusable_1_2
    ld (hl), "W"
    jp _sjasm_reusable_2_2
_sjasm_reusable_1_2:
    ld (hl), " "

_sjasm_reusable_2_2:
    inc hl
    bit 5, b
    jp z, _sjasm_reusable_1_3
    ld (hl), "S"
    jp _sjasm_reusable_2_3
_sjasm_reusable_1_3:
    ld (hl), " "

_sjasm_reusable_2_3:
    inc hl
    bit 4, b
    jp nz, _sjasm_reusable_1_4
    ld (hl), "K"
    jp _sjasm_reusable_2_4
_sjasm_reusable_1_4:
    ld (hl), " "

_sjasm_reusable_2_4:
    inc hl
    bit 3, b
    jp z, _sjasm_reusable_1_5
    ld (hl), "C"
    jp _sjasm_reusable_2_5
_sjasm_reusable_1_5:
    ld (hl), " "

_sjasm_reusable_2_5:
    inc hl
    bit 2, b
    jp z, _sjasm_reusable_1_6
    ld (hl), "E"
    jp _sjasm_reusable_2_6
_sjasm_reusable_1_6:
    ld (hl), " "

_sjasm_reusable_2_6:
    inc hl
    bit 1, b
    jp z, _sjasm_reusable_1_7
    ld (hl), "A"
    jp _sjasm_reusable_2_7
_sjasm_reusable_1_7:
    ld (hl), " "

_sjasm_reusable_2_7:
    inc hl
    bit 0, b
    jp z, _sjasm_reusable_1_8
    ld (hl), "N"
    jp _sjasm_reusable_2_8
_sjasm_reusable_1_8:
    ld (hl), " "

_sjasm_reusable_2_8:
    inc hl
    ex de, hl

    inc de
    ret





; --- init_vdp
; 
; Initial init of the vdp
init_vdp:

    ld a, 00000100b  ; Reg#0 [ 0 ][DG ][IE2][IE1][M5 ][M4 ][M3 ][ 0 ]
    out (#99), a
    ld a, 0 + 128
    out (#99), a

    ld a, 01110000b  ; Reg#1 [ 0 ][BL ][IE0][M1 ][M2 ][ 0 ][SIZ][MAG]

    out (#99), a
    ld a, 1 + 128
    out (#99), a

    ld a, 00001011b  ; REG#2[ 0 ][A16][A15][A14][A13][A12][ 1 ][ 1 ]  - Pattern layout table

    out (#99), a
    ld a, 2 + 128
    out (#99), a

    ld a, 10101111b  ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]

    out (#99), a
    ld a, 3 + 128
    out (#99), a

    ld a, 00010010b  ; Reg#4 [ 0 ][ 0 ][A16][A15][A14][A13][A12][A11]  - Pattern generator table

    out (#99), a
    ld a, 4 + 128
    out (#99), a

    ld a, (#ffe8)
    or 10000000b  ; Reg#9 [LN ][ 0 ][S1 ][S0 ][IL ][EO ][NT ][DC ]
    out (#99), a
    ld a, 9 + 128
    out (#99), a


    ld a, #f0
    out (#99), a
    ld a, 7 + 128
    out (#99), a
    ld a, #e1
    out (#99), a
    ld a, 12 + 128
    out (#99), a
    ld a, #f0  ;reg#13
    out (#99), a
    ld a, 13 + 128
    out (#99), a



    ret
_UPLEFT: equ 130
_HORIZONTAL: equ 129
_UPRIGHT: equ 131
_VERTICAL: equ 128
_VERTICAL_SMALL: equ 135
_VERTICAL_DOUBLE: equ 134
_VERTICAL_STEP: equ 139
_ARROWLEFT: equ 176
_ARROWRIGHT: equ 177
_LOOPSIGN: equ 174
_TONE_OFF_SIGN: equ 241
_TONE_ON_SIGN: equ 242
_NOISE_OFF_SIGN: equ 243
_NOISE_ON_SIGN: equ 244
_ENV_OFF_SIGN: equ 245
_ENV_ON_SIGN: equ 246
_CMD_SIGN: equ 6 * 32 - 1
_CURSOR: equ 254

MOUSE_CHR: equ 252

_PNT: equ #2000  ; pnt
_CNT: equ #2a00  ; cnt



; ==========================================================	
; --- clear_window
; 
; Clears the current screen (pnt and cnt)
;
; ==========================================================	
clear_screen:
    ld hl, _PNT
    call set_vdpwrite

    ld e, 27
    ld a, 32
    di
_sjasm_reusable_0_1:  ;-- main loop
    ld bc, #5098
_sjasm_reusable_1_9:  ;--- sub loop
    out (c), a
    djnz _sjasm_reusable_1_9
; -- end sub loop
    dec e
    jr nz, _sjasm_reusable_0_1
; -- end main loop	

clear_cnt:
    ld hl, _CNT
    call set_vdpwrite

    ld e, 27
    ld a, 0
    di
_sjasm_reusable_0_2:  ;-- main loop
    ld bc, #0a98
_sjasm_reusable_1_10:  ;--- sub loop
    out (c), a
    djnz _sjasm_reusable_1_10
; -- end sub loop
    dec e
    jr nz, _sjasm_reusable_0_2
; -- end main loop	

    ei
    ret

; ==========================================================	
; --- clear_files
; 
; Clears the files area in the file dialog 
;
; ==========================================================	
clear_files:

    ld b, 20
    ld hl, _PNT + (80 * 6)

_sjasm_reusable_0_3:    push bc
    push hl
    call set_vdpwrite

    ld b, 56
    ld a, 32

_sjasm_reusable_1_11:  ;--- sub loop
    out (#98), a
    djnz _sjasm_reusable_1_11
; -- end sub loop
    pop hl
    ld bc, 80
    add hl, bc

    pop bc
    djnz _sjasm_reusable_0_3

    ret




; ==========================================================	
; --- draw_label
; 
; Draw box 
; HL = position in PNT (relative)
; DE = pointer to the label text
; ==========================================================
draw_label:
    di
;	ld	a,$f3 ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
;	out	(0x99),a
;	ld	a,7+128
;	out	(0x99),a	


    ld bc, _PNT
    add hl, bc
    call set_vdpwrite

draw_label_loop:
    ld a, (de)
    cp 0
    jr z, draw_label_end
    out (#98), a

    inc de
    jr draw_label_loop

draw_label_end:
;	ld	a,$f0 ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
;	out	(0x99),a
;	ld	a,7+128
;	out	(0x99),a	
    ei
    ret

; ==========================================================	
; --- draw_label_fast
; 
; Draw box 
; HL = position in PNT (relative)
; DE = pointer to the label text
; BC = number of bytes to copy to vram
; ==========================================================
draw_label_fast:
    di
;	ld	a,$f5 ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
;	out	(0x99),a
;	ld	a,7+128
;	out	(0x99),a		

    push bc
    ld bc, _PNT
    add hl, bc
    call set_vdpwrite

    ex de, hl
    pop bc
    ld c, #98

    otir


;	ld	a,$f0 ; Reg#3 [A13][A12][A11][A10][A09][ 1 ][ 1 ][ 1 ]  - Color table  [HIGH]
;	out	(0x99),a
;	ld	a,7+128
;	out	(0x99),a			
    ei

    ret

; ==========================================================	
; --- draw_fake_hex_sp
; 
; Prints the value at an address as 1 digit decimal value 
; But value 0 is printed as '.'
; Values can be larger than F
; A = the value
; DE = position (relative) to put the value in PNT
; 
; ==========================================================
draw_fake_hex_sp:
    and a
    jr nz, _sjasm_reusable_0_4
    ld a, "."
    ld (de), a
    inc de
    ret
_sjasm_reusable_0_4:
    cp 10
    jr nc, _sjasm_reusable_1_12
    add a, 48
    ld (de), a
    inc de
    ret
_sjasm_reusable_1_12:
    add a, 55
    ld (de), a
    inc de
    ret

; ==========================================================	
; --- draw_fake_hex_sp_small
; 
; Prints the value at an address as 1 digit decimal value 
; But value 0 is printed as '.'
; Values can be larger than F
; A = the value
; DE = position (relative) to put the value in PNT
; 
; ==========================================================
draw_fake_hex_sp_small:
    and a
    jr nz, _sjasm_reusable_0_5
    ld a, "."
    ld (de), a
    inc de
    ret
_sjasm_reusable_0_5:
    ld (de), a
    inc de
    ret



; ==========================================================	
; --- draw_hex_sp
; 
; Prints the value at an address as 1 digit decimal value 
; But value 0 is printed as '.'
; A = the value
; DE = position (relative) to put the value in PNT
; 
; ==========================================================
;draw_hex_sp:
;	and	a
;	jr.	nz,draw_hex
;	ld	a,"."
;	ld	(de),a
;	inc	de
;	ret

; ==========================================================	
; --- draw_hex_sp_small
; 
; Prints the value at an address as 1 digit decimal value 
; But value 0 is printed as '.'
; A = the value
; DE = position (relative) to put the value in PNT
; 
; ==========================================================
draw_hex_sp_small:
    and a
    jr nz, draw_hex_small
    ld a, "."
    ld (de), a
    inc de
    ret

; ==========================================================	
; --- draw_hex2_cmd
; 
; Prints the value at an address as 2 digit decimal value 
; A =  the value
; DE = position (relative) to put the value in PNT
; 
; Changes: AF
; ==========================================================
;draw_hex2_cmd:
;	push	af
;	and	0xf0
;	rrca
;	rrca
;	rrca
;	rrca	
;	call	draw_hex_small
;	pop	af
;	call	draw_hex_small
;	ret


; ==========================================================	
; --- draw_hex
; 
; Prints the value at an address as 1 digit decimal value 
; A = the value
; DE = position (relative) to put the value in PNT
; 
; ==========================================================
draw_hex:
    and #0f
draw_fakehex:
    add a, #90
    daa
    adc a, #40
    daa
    ld (de), a
    inc de
    ret


; ==========================================================	
; --- draw_hex_small
; 
; Prints the value at an address as 1 digit decimal value 
; A = the value
; DE = position (relative) to put the value in PNT
; 
; ==========================================================
draw_hex_small:
    and #0f
    ld (de), a
    inc de
    ret


; ==========================================================	
; --- draw_hex2
; 
; Prints the value at an address as 2 digit decimal value 
; A =  the value
; DE = position (relative) to put the value in PNT
; 
; Changes: AF
; ==========================================================
draw_hex2:
    push af
    and #f0
    rrca
    rrca
    rrca
    rrca
    call draw_hex
    pop af
    call draw_hex
    ret





; ==========================================================	
; --- conv_decimal
; 
; converts the value at HL into a 2 digit decimal at DE 
; HL = position of the value
; DE = postion  to put the 2 digit value value 
; 
; ==========================================================	

conv_decimal:

    ld a, (hl)
draw_decimal:
    ex de, hl
;	ld	hl,_dd_tmpstring

_sjasm_reusable_1_13:    ld b, -10
    call _dd_Num1
    ld b, -1
    call _dd_Num1

    ex de, hl
;	ld	hl,_dd_tmpstring

    ret
_dd_Num1:
    ld c, "0" - 1
_dd_Num2:
    inc c
    add a, b
    jr c, _dd_Num2
    sbc a, b
    ld (hl), c
    inc hl
    ret

draw_decimal3:
    ex de, hl
    ld b, -100
    call _dd_Num1
    jr _sjasm_reusable_1_13
_sjasm_reusable_0_6:
    cp 32
    jr nz, _sjasm_reusable_1_14
    ld a, _VERTICAL
    jr _sjasm_reusable_1_14


;_dd_tmpstring:		
;	db	"XX",0		; temporary + delimiter

; ==========================================================	
; --- draw_box
; 
; Draw box 
; HL = position in PNT (relative)
; D = width
; E = height
; ==========================================================
draw_box:
    di

    ld bc, _PNT
    add hl, bc
    call set_vdpwrite

    ld a, _UPLEFT  ; upperleft corner

draw_box_loop1:
    ld b, d
draw_box_loop0:

; change on last pos
    dec b
    jr nz, _sjasm_reusable_1_14
    cp _HORIZONTAL
    jr nz, _sjasm_reusable_0_6
    ld a, _UPRIGHT
; 	jr.	1f  ; -mdl

_sjasm_reusable_1_14:
    inc b



    out (#98), a

; changed on pos > 1
    cp _UPLEFT  ; if is upleftcorner thern	
    jr nz, _sjasm_reusable_0_7
    ld a, _HORIZONTAL
    jr _sjasm_reusable_1_15
_sjasm_reusable_0_7:
    cp _VERTICAL  ; if is vertical line then space
    jr nz, _sjasm_reusable_0_8
    ld a, 32  ; space	
    jr _sjasm_reusable_1_15
_sjasm_reusable_0_8:
_sjasm_reusable_1_15:

    djnz draw_box_loop0


;loop lines
    dec e
    jr z, draw_box_end

    ld bc, 80
    add hl, bc
    ld bc, _PNT
    call set_vdpwrite
    ld a, _VERTICAL
    jr draw_box_loop1


draw_box_end:
    ei
    ret




; ==========================================================	
; --- draw_colorbox
; 
; Draw box 
; H = x pos
; L = y pos
; D = width
; E = height
; ==========================================================
draw_colorbox:
; --- get maskleft
    ld a, h
    and #07
    and a
    jr nz, _sjasm_reusable_0_9
    ld a, 255
    jr _sjasm_reusable_1_16
_sjasm_reusable_0_9:
    ld b, a
    ld a, 255

_dc_maskleft_loop:
    srl a
    djnz _dc_maskleft_loop
_sjasm_reusable_1_16:    ld (cb_maskleft), a

; --- get maskright (7-(x+(w-1)) & 0x07)	
    ld a, d
    dec a
    add a, h
    and #07
    cp 7
    jr nz, _sjasm_reusable_0_10
    ld a, 0
    jr _sjasm_reusable_1_17
_sjasm_reusable_0_10:    ld b, a
    ld a, 7
    sub b


    ld b, a
    ld a, 255

_dc_maskright_loop:
    sla a
    djnz _dc_maskright_loop
_sjasm_reusable_1_17:    ld (cb_maskright), a

; --- calculate the full cnt bytes to copy
    ld a, h
    and #f8
    ld b, a  ; store in b the full bytes
    ld a, h
    add a, d
    and #f8
    sub b
    srl a  ; divide by 8
    srl a  ; divide by 8
    srl a  ; divide by 8
    dec a  ; 255 is begin and end in same byte
; 0 is no full bytes to copy
; >0 full bytes to copy inbetween masks
    ld (cb_fullbytes), a

; --- Calculate start address
    ld c, h  ; x in c
    ld b, l  ; y in b
    ld hl, _CNT
    ld a, b
    and a
    jr z, _sjasm_reusable_0_11

_dc_start_loop:
    ld a, l
    add a, 10  ; every line adds 10 bytes to the addres
    ld l, a
    jr nc, _sjasm_reusable_1_18
    inc h
_sjasm_reusable_1_18:
    djnz _dc_start_loop
_sjasm_reusable_0_11:
    ld a, c  ; add the x pos.
    and #f8
    srl a
    srl a
    srl a
    add a, l
    ld l, a
    jr nc, _sjasm_reusable_1_19
    inc h
_sjasm_reusable_1_19:
; now we have start addres in the cnt in HL
    ld c, e  ; # lines to plot

; --- get way to copy
    ld a, (cb_fullbytes)
    cp 255
    jr z, _cp_clip_copy

; --- 'normal' copy
_cb_copyloop_main:
    push hl
    call set_vdpread
    in a, (#98)
    ld b, a
    ld a, (cb_maskleft)
    or b
    ld b, a

    pop hl
    push hl
    call set_vdpwrite

    ld a, b
    out (#98), a
    ld a, (cb_fullbytes)
    and a
    ld b, a
    pop hl
    push hl
    inc hl
    jr z, _sjasm_reusable_0_12

    add a, l
    ld l, a
    jr nc, _sjasm_reusable_9_1
    inc h
_sjasm_reusable_9_1:
    ld a, 255
_cb_copyloop:
    out (#98), a
    djnz _cb_copyloop
_sjasm_reusable_0_12:
    ld d, h
    ld e, l
    call set_vdpread
    in a, (#98)
    ld b, a
    ld a, (cb_maskright)
    or b
    ld b, a

    ex de, hl
    call set_vdpwrite
    ld a, b
    out (#98), a

    pop hl
    ld de, 10
    add hl, de

    dec c
    jr nz, _cb_copyloop_main

    ret


_cp_clip_copy:
    push hl

    ld a, (cb_maskleft)
    ld b, a
    ld a, (cb_maskright)
    and b
    ld b, a

    call set_vdpread
    in a, (#98)

    or b
    ld b, a

    pop hl
    push hl
    call set_vdpwrite

    ld a, b
    out (#98), a

    pop hl
    ld de, 10
    add hl, de

    dec c
    jr nz, _cp_clip_copy

    ret

; ==========================================================	
; --- erase_colorbox
; 
; Draw box 
; H = x pos
; L = y pos
; D = width
; E = height
; ==========================================================
erase_colorbox:
; --- get maskleft
    ld a, h
    and #07
    and a
    jr nz, _sjasm_reusable_0_13
    ld a, 255
    jr _sjasm_reusable_1_20
_sjasm_reusable_0_13:
    ld b, a
    ld a, 255

_ecb_maskleft_loop:
    srl a
    djnz _ecb_maskleft_loop
_sjasm_reusable_1_20:
    xor 255
    ld (cb_maskleft), a

; --- get maskright (7-(x+(w-1)) & 0x07)	
    ld a, d
    dec a
    add a, h
    and #07
    cp 7
    jr nz, _sjasm_reusable_0_14
    ld a, 0
    jr _sjasm_reusable_1_21
_sjasm_reusable_0_14:    ld b, a
    ld a, 7
    sub b


    ld b, a
    ld a, 255

_ecb_maskright_loop:
    sla a
    djnz _ecb_maskright_loop
_sjasm_reusable_1_21:
    xor 255
    ld (cb_maskright), a

; --- calculate the full cnt bytes to copy
    ld a, h
    and #f8
    ld b, a  ; store in b the full bytes
    ld a, h
    add a, d
    and #f8
    sub b
    srl a  ; divide by 8
    srl a  ; divide by 8
    srl a  ; divide by 8
    dec a  ; 255 is begin and end in same byte
; 0 is no full bytes to copy
; >0 full bytes to copy inbetween masks
    ld (cb_fullbytes), a

; --- Calculate start address
    ld c, h  ; x in c
    ld b, l  ; y in b
    ld hl, _CNT
    ld a, b
    and a
    jr z, _sjasm_reusable_0_15

_ecb_start_loop:
    ld a, l
    add a, 10  ; every line adds 10 bytes to the addres
    ld l, a
    jr nc, _sjasm_reusable_1_22
    inc h
_sjasm_reusable_1_22:
    djnz _ecb_start_loop
_sjasm_reusable_0_15:
    ld a, c  ; add the x pos.
    and #f8
    srl a
    srl a
    srl a
    add a, l
    ld l, a
    jr nc, _sjasm_reusable_1_23
    inc h
_sjasm_reusable_1_23:
; now we have start addres in the cnt in HL
    ld c, e  ; # lines to plot

; --- get way to copy
    ld a, (cb_fullbytes)
    cp 255
    jr z, _ecb_clip_copy

; --- 'normal' copy
_ecb_copyloop_main:
    push hl
    call set_vdpread
    in a, (#98)
    ld b, a
    ld a, (cb_maskleft)
    and b
    ld b, a

    pop hl
    push hl
    call set_vdpwrite

    ld a, b
    out (#98), a
    ld a, (cb_fullbytes)
    and a
    ld b, a
    pop hl
    push hl
    inc hl
    jr z, _sjasm_reusable_0_16

    add a, l
    ld l, a
    jr nc, _sjasm_reusable_9_2
    inc h
_sjasm_reusable_9_2:
    ld a, 0
_ecb_copyloop:
    out (#98), a
    djnz _ecb_copyloop
_sjasm_reusable_0_16:
    ld d, h
    ld e, l
    call set_vdpread
    in a, (#98)
    ld b, a
    ld a, (cb_maskright)
    and b
    ld b, a

    ex de, hl
    call set_vdpwrite
    ld a, b
    out (#98), a

    pop hl
    ld de, 10
    add hl, de

    dec c
    jr nz, _ecb_copyloop_main

    ret


_ecb_clip_copy:
    push hl

    ld a, (cb_maskleft)
    ld b, a
    ld a, (cb_maskright)
    or b
    ld b, a

    call set_vdpread
    in a, (#98)

    and b
    ld b, a

    pop hl
    push hl
    call set_vdpwrite

    ld a, b
    out (#98), a

    pop hl
    ld de, 10
    add hl, de

    dec c
    jr nz, _ecb_clip_copy

    ret

; --- set_vdpwrite
; sets up the vdp address in HL to write to
; enables ISR and changes a

set_vdpwrite:
    xor a
    rlc h
    rla
    rlc h
    rla
    srl h
    srl h
    di
    out (#99), a
    ld a, 14 + 128
    out (#99), a
    ld a, l
    nop
    out (#99), a
    ld a, h
    or 64
    ei
    out (#99), a
    ret


; --- set_vdpwrite
; sets up the vdp address in HL to write to
; enables ISR and changes a

set_vdpread:
    xor a
    rlc h
    rla
    rlc h
    rla
    srl h
    srl h
    di
    out (#99), a
    ld a, 14 + 128
    out (#99), a
    ld a, l
    nop
    out (#99), a
    ld a, h
    out (#99), a
    ei
    ret


; --- Colorbox function variables
cb_maskleft: equ #0000
cb_maskright: equ #0001
cb_fullbytes: equ #0002
cb_status: equ #0003


; --- init_font
;
; Init the font in the PGT.

init_font:

    di
; relocate the PGT (old is at 0x1000)
; new is at 0x9000
;	ld	a,00010010b
;	out	(0x99),a
;	ld	a,128+4	
;	out	(0x99),a

    ld hl, #9000
    call set_vdpwrite

    di
    ld a, 8  ; loop 8 times
    ld c, #98

    ld hl, font_data

_fontloop:
    ld b, 255  ; subloop 255 times
    otir
    dec a
    jr nz, _fontloop

    ei
    ret
;=================================
; TriloTracker Re-player SCC
;
; Functions:
; 	replay_init
;	replay_pause
;	replay_fade_out
;================================

;===============================
; todo:
; - add external SCC support through conditional code.
; - add replayer speed up through conditional code.
; - optimize replayer code
; - instructions for external usage of the RAM variables (setting PSG/SCC base volumes etc)
;===============================
_REL: equ 96  ; = release
_SUS: equ 97  ; = sustain
_VOL: equ 98  ; = volume 1
_INS: equ 113  ; = instrument 1
_CMD: equ 144  ; = effect 0
_SPC: equ 184  ; = special commands
_EOT: equ 191  ; = end of track
_WAIT: equ 192  ; = wait 1

;define EXTERNAL_SCC 



;===========================================================
; ---	replay_init
; Initialize replayer data
; Only call this on start-up
; Input: none
;===========================================================
replay_init:
    ld a, 8
;     call replay_set_SCC_balance  ; -mdl


;===========================================================
; ---	replay_set_SCC_balance
; Set the main volume for the SCC chip. This enables for
; setting the balance between SCC en PSG as some MSX models 
; default balance differs. 
;
; in: [A] master volume (0-7) 0=halve volume, 7=full volume. 
;===========================================================	
replay_set_SCC_balance:
    call _getnewbalancebase
    ld (replay_mainSCCvol), hl
;     ret  ; -mdl
    ld a, 8
;     call replay_set_PSG_balance  ; -mdl

;===========================================================
; ---	replay_set_PSG_balance
; Set the main volume for the PSG chip. This enables for
; setting the balance between SCC en PSG as some MSX models 
; default balance differs. 
;
; in: [A] master volume (0-7) 0=halve volume, 7=full volume. 
;===========================================================	
replay_set_PSG_balance:
    call _getnewbalancebase
    ld (replay_mainPSGvol), hl
;     ret  ; -mdl

    xor a
    ld (replay_mode), a
    ld (equalization_cnt), a
    ld (equalization_flag), a
    ld (equalization_freq), a
    ld (replay_morph_speed), a
    ld (replay_morph_type), a

    ret

_r_pause_disable:
;-- stop decoding and processing music data
    xor a
    ld (replay_mode), a
;-- set mixers to silence.
    ld a, #3f
    ld (PSG_regMIXER), a
    xor a
    ld (SCC_regMIXER), a
    ret



;===========================================================
; ---	replay_fade_out
; Fade out the music. 
; Once the sound is silence the replayer is paused.
;
; in: [A] fade speed (1 - 255)
;===========================================================	
replay_fade_out:
    ld (replay_fade), a
    ld (replay_fade_timer), a
    xor a
    ld (replay_fade_vol), a
    ret

_getnewbalancebase:
    rlca
    rlca
    rlca
    rlca
    ld hl, _VOLUME_TABLE - 128
    and #f0
    add a, l
    ld l, a
    ret nc
    inc h
    ret




;===========================================================
; ---	replay_loadsong
; Initialize a song for playback
; 
; Input [HL] points to start song
;===========================================================
replay_loadsong:
;--- Get the start speed.
    ld a, (hl)
    inc hl
    ld (replay_speed), a

;--- Set waveform base, intrument base and track pointers 
    ld de, replay_wavebase
    ld bc, 20
    ldir
    ld (replay_orderpointer), hl  ; store pointer for next set
; of track pointers
;--- Initialize replayer variables.
    xor a
    ld (replay_speed_subtimer), a
;	ld	(replay_morph_active),a
;	ld	(replay_morph_waveform),a

;--- Set tonetable here as SCC and PSG share same tonetable
    ld hl, TRACK_ToneTable_PSG  ; Set the PSG note table
    ld (replay_tonetable), hl


;--- Erase channel data	in RAM
    ld bc, TRACK_REC_SIZE * 8 - 1
    ld hl, TRACK_Chan1
    ld de, TRACK_Chan1 + 1
    ld (hl), a
    ldir

    ld (replay_arp_speed), a
;--- Silence the chips
    ld (SCC_regMIXER), a
    ld (PSG_regVOLA), a
    ld (PSG_regVOLB), a
    ld (PSG_regVOLC), a
    ld (PSG_regNOISE), a
    ld a, #3f
    ld (PSG_regMIXER), a

    ld a, 1
    ld (replay_speed_timer), a
;	ld	(replay_morph_timer),a
;	ld	(replay_morph_speed),a
    ld (TRACK_Chan1 + 17 + TRACK_Delay), a
    ld (TRACK_Chan2 + 17 + TRACK_Delay), a
    ld (TRACK_Chan3 + 17 + TRACK_Delay), a
    ld (TRACK_Chan4 + 17 + TRACK_Delay), a
    ld (TRACK_Chan5 + 17 + TRACK_Delay), a
    ld (TRACK_Chan6 + 17 + TRACK_Delay), a
    ld (TRACK_Chan7 + 17 + TRACK_Delay), a
    ld (TRACK_Chan8 + 17 + TRACK_Delay), a

    ld a, 254
    ld (TRACK_Chan1 + 17 + TRACK_Instrument), a
    ld (TRACK_Chan2 + 17 + TRACK_Instrument), a
    ld (TRACK_Chan3 + 17 + TRACK_Instrument), a
    ld (TRACK_Chan4 + 17 + TRACK_Instrument), a
    ld (TRACK_Chan5 + 17 + TRACK_Instrument), a
    ld (TRACK_Chan6 + 17 + TRACK_Instrument), a
    ld (TRACK_Chan7 + 17 + TRACK_Instrument), a
    ld (TRACK_Chan8 + 17 + TRACK_Instrument), a



    ld a, 255
    ld (TRACK_Chan4 + 17 + TRACK_Waveform), a
    ld (TRACK_Chan5 + 17 + TRACK_Waveform), a
    ld (TRACK_Chan6 + 17 + TRACK_Waveform), a
    ld (TRACK_Chan7 + 17 + TRACK_Waveform), a
    ld a, 128
    ld (TRACK_Chan4 + 17 + TRACK_Flags), a
    ld (TRACK_Chan5 + 17 + TRACK_Flags), a
    ld (TRACK_Chan6 + 17 + TRACK_Flags), a
    ld (TRACK_Chan7 + 17 + TRACK_Flags), a
    ld (TRACK_Chan8 + 17 + TRACK_Flags), a

;	call scc_reg_update			; Probably not needed.


    call replay_route

; end	is here
    ld a, 1
    ld (replay_mode), a
    ret


;===========================================================
; ---	replay_play
; Decode music data and process instruments and effects. 
; Music chip registers will be prepared for replay_route 
;
; Input none
;===========================================================	
replay_play:
    ld a, (replay_mode)
    and a
    ret z  ; replay mode = 0	; halted
; replay mode = 1	; active

;---- SPEED EQUALIZATION 
    ld a, (equalization_freq)  ; 0 = 50Hz, otherwise 60Hz
    and a
    jr z, PAL  ; if PAL process at any interrupt;

NTSC:
    ld hl, equalization_cnt  ; if NTSC call 5 times out of 6
    dec (hl)
    jr nz, PAL  ; skip music data processing one tic out of 6

;--- Reset timer and raise equalization flag
    ld a, 6
    ld (hl), a
    ld (equalization_flag), a

    call process_data
    xor a
    ld (equalization_flag), a
    ret
PAL:
;---- END SPEED EQUALIZATION	


;--- The speed timer
    ld hl, replay_speed_timer
    dec (hl)

    jp nz, _replay_check_patternend

;--- Re-init Timer == 0
    xor a
    ld bc, (replay_speed)  ; [b]	subtimer [c] speed
    srl c  ; bit	0 is halve speedstep
    adc a, a
    xor b  ; alternate	speed	to have halve speed.
    ld (replay_speed_subtimer), a
    add a, c
    ld (replay_speed_timer), a
;===========================================================
; ---	decode_data
; Process the patterndata 
;===========================================================
decode_data:
;--- process the channels (tracks)
decode_data.decode1:
    ld hl, TRACK_Chan1 + 17 + TRACK_Delay
    dec (hl)
    jp nz, decode_data.decode2

    ld a, (TRACK_Chan1 + 17 + TRACK_Flags)
    ld d, a
    ld a, (TRACK_Chan1 + 17 + TRACK_Note)
    ld ix, TRACK_Chan1 + 17
    ld bc, (TRACK_pointer1)
    call decode_data_chan
    ld (TRACK_pointer1), bc
    ld a, d
    ld (TRACK_Chan1 + 17 + TRACK_Flags), a

decode_data.decode2:
    ld hl, TRACK_Chan2 + 17 + TRACK_Delay
    dec (hl)
    jp nz, decode_data.decode3

    ld a, (TRACK_Chan2 + 17 + TRACK_Flags)

    ld d, a
    ld a, (TRACK_Chan2 + 17 + TRACK_Note)
    ld ix, TRACK_Chan2 + 17
    ld bc, (TRACK_pointer2)
    call decode_data_chan
    ld (TRACK_pointer2), bc
    ld a, d  ;'
    ld (TRACK_Chan2 + 17 + TRACK_Flags), a

decode_data.decode3:
    ld hl, TRACK_Chan3 + 17 + TRACK_Delay

    dec (hl)
    jp nz, decode_data.decode4

    ld a, (TRACK_Chan3 + 17 + TRACK_Flags)
    ld d, a  ;'
    ld a, (TRACK_Chan3 + 17 + TRACK_Note)
    ld ix, TRACK_Chan3 + 17
    ld bc, (TRACK_pointer3)
    call decode_data_chan
    ld (TRACK_pointer3), bc
    ld a, d  ;'
    ld (TRACK_Chan3 + 17 + TRACK_Flags), a

decode_data.decode4:
    ld hl, TRACK_Chan4 + 17 + TRACK_Delay
    dec (hl)
    jp nz, decode_data.decode5

    ld a, (TRACK_Chan4 + 17 + TRACK_Flags)
    ld d, a  ;'
    ld a, (TRACK_Chan4 + 17 + TRACK_Note)
    ld ix, TRACK_Chan4 + 17
    ld bc, (TRACK_pointer4)
    call decode_data_chan
    ld (TRACK_pointer4), bc
    ld a, d  ;'
    ld (TRACK_Chan4 + 17 + TRACK_Flags), a

decode_data.decode5:
    ld hl, TRACK_Chan5 + 17 + TRACK_Delay
    dec (hl)
    jp nz, decode_data.decode6

    ld a, (TRACK_Chan5 + 17 + TRACK_Flags)
    ld d, a  ;'
    ld a, (TRACK_Chan5 + 17 + TRACK_Note)
    ld ix, TRACK_Chan5 + 17
    ld bc, (TRACK_pointer5)
    call decode_data_chan
    ld (TRACK_pointer5), bc
    ld a, d  ;'
    ld (TRACK_Chan5 + 17 + TRACK_Flags), a

decode_data.decode6:
    ld hl, TRACK_Chan6 + 17 + TRACK_Delay
    dec (hl)
    jp nz, decode_data.decode7

    ld a, (TRACK_Chan6 + 17 + TRACK_Flags)
    ld d, a  ;'
    ld a, (TRACK_Chan6 + 17 + TRACK_Note)
    ld ix, TRACK_Chan6 + 17
    ld bc, (TRACK_pointer6)
    call decode_data_chan
    ld (TRACK_pointer6), bc
    ld a, d  ;'
    ld (TRACK_Chan6 + 17 + TRACK_Flags), a

decode_data.decode7:
    ld hl, TRACK_Chan7 + 17 + TRACK_Delay
    dec (hl)
    jp nz, decode_data.decode8

    ld a, (TRACK_Chan7 + 17 + TRACK_Flags)
    ld d, a  ;'
    ld a, (TRACK_Chan7 + 17 + TRACK_Note)
    ld ix, TRACK_Chan7 + 17
    ld bc, (TRACK_pointer7)
    call decode_data_chan
    ld (TRACK_pointer7), bc
    ld a, d  ;'
    ld (TRACK_Chan7 + 17 + TRACK_Flags), a

decode_data.decode8:
    ld hl, TRACK_Chan8 + 17 + TRACK_Delay
    dec (hl)
    jp nz, decode_data.decode_end

    ld a, (TRACK_Chan8 + 17 + TRACK_Flags)
    ld d, a  ;'
    ld a, (TRACK_Chan8 + 17 + TRACK_Note)
    ld ix, TRACK_Chan8 + 17
    ld bc, (TRACK_pointer8)
    call decode_data_chan
    ld (TRACK_pointer8), bc
    ld a, d  ;'
    ld (TRACK_Chan8 + 17 + TRACK_Flags), a

decode_data.decode_end:
; continue to process data
;===========================================================
; ---	process_data
; Process changes.
; 
; 
;===========================================================
process_data:
;---- morph routine here
    ld a, (replay_morph_active)
    and a
    call nz, replay_process_morph

;--- Initialize PSG Mixer and volume
    ld a, 11100000b
;xor	a
    ld (SCC_regMIXER), a

;--- PSG balance
    ld hl, (replay_mainPSGvol)
    ld (replay_mainvol), hl

;--------------------
;--- Process track 1
;--------------------
    ld ix, TRACK_Chan1 + 17
    ld a, (TRACK_Chan1 + 17 + TRACK_Flags)
    ld d, a
;	ld	hl,PSG_regToneA
    call process_data_chan
    jp nc, _sjasm_reusable_99_4
    ld (PSG_regToneA), hl
_sjasm_reusable_99_4:
    ld a, (SCC_regVOLE)
    ld (PSG_regVOLA), a

;--------------------
;--- Process track 2
;--------------------
    ld ix, TRACK_Chan2 + 17
    ld a, (TRACK_Chan2 + 17 + TRACK_Flags)
    ld d, a
;	ld	hl,PSG_regToneB
    call process_data_chan
    jp nc, _sjasm_reusable_99_5
    ld (PSG_regToneB), hl
_sjasm_reusable_99_5:
    ld a, (SCC_regVOLE)
    ld (PSG_regVOLB), a

;--------------------
;--- Process track 3	
;--------------------
    ld ix, TRACK_Chan3 + 17
    ld a, (TRACK_Chan3 + 17 + TRACK_Flags)
    ld d, a
;	ld	hl,PSG_regToneC
    call process_data_chan
    jp nc, _sjasm_reusable_99_6
    ld (PSG_regToneC), hl
_sjasm_reusable_99_6:
    ld a, (SCC_regVOLE)
    ld (PSG_regVOLC), a

;--- To disable track 3 just comment above lines (9 lines) and enable below 2 lines.
;    This can be done for all tracks.
;	ld	hl,SCC_regMIXER   
;	srl	(hl)

;-- Convert mixer to AY
    ld a, (SCC_regMIXER)
    srl a
    srl a
    xor #3f
    ld (PSG_regMIXER), a
;xor	a
    ld a, 11100011b
    ld (SCC_regMIXER), a

;--- set SCC balance
    ld hl, (replay_mainSCCvol)
    ld (replay_mainvol), hl


    ld iyh, 0  ; iyh stores the SCC chan#
; used for waveform updates
;--------------------
;--- Process track 4
;--------------------
    ld ix, TRACK_Chan4 + 17
    ld a, (TRACK_Chan4 + 17 + TRACK_Flags)
    ld d, a
;	ld	hl,SCC_regToneA
    call process_data_chan
    jp nc, _sjasm_reusable_99_7
    ld (SCC_regToneA), hl
_sjasm_reusable_99_7:
    ld a, (SCC_regVOLE)
    ld (SCC_regVOLA), a

;--------------------
;--- Process track 5
;--------------------
    ld iyh, #20
    ld ix, TRACK_Chan5 + 17
    ld a, (TRACK_Chan5 + 17 + TRACK_Flags)
    ld d, a
;	ld	hl,SCC_regToneB
    call process_data_chan
    jp nc, _sjasm_reusable_99_8
    ld (SCC_regToneB), hl
_sjasm_reusable_99_8:
    ld a, (SCC_regVOLE)
    ld (SCC_regVOLB), a


;--------------------
;--- Process track 6
;--------------------
    ld iyh, #40
    ld ix, TRACK_Chan6 + 17
    ld a, (TRACK_Chan6 + 17 + TRACK_Flags)
    ld d, a
;	ld	hl,SCC_regToneC
    call process_data_chan
    jp nc, _sjasm_reusable_99_9
    ld (SCC_regToneC), hl
_sjasm_reusable_99_9:
    ld a, (SCC_regVOLE)
    ld (SCC_regVOLC), a

;--------------------
;--- Process track 7
;--------------------
    ld iyh, #60
    ld ix, TRACK_Chan7 + 17
    ld a, (TRACK_Chan7 + 17 + TRACK_Flags)
    ld d, a
;	ld	hl,SCC_regToneD
    call process_data_chan
    jp nc, _sjasm_reusable_99_10
    ld (SCC_regToneD), hl
_sjasm_reusable_99_10:
    ld a, (SCC_regVOLE)
    ld (SCC_regVOLD), a

;--------------------
;--- Process track 8
;--------------------
; no waveform for SCC channel 5

    ld ix, TRACK_Chan8 + 17
    ld a, (TRACK_Chan8 + 17 + TRACK_Flags)
    ld d, a
;	ld	hl,SCC_regToneE
    call process_data_chan
    jp nc, _sjasm_reusable_99_11
    ld (SCC_regToneE), hl
_sjasm_reusable_99_11:


;--------------------
; Fade out processing
;--------------------
    ld a, (replay_fade)
    and a
    ret z  ; if replay fade = 0 then no fade active

; decrease fade timer
    ld a, (replay_fade_timer)
    dec a
    jp nz, process_data.no_new_step

    ld a, (replay_fade_vol)
    inc a
    cp 16
    jp c, process_data.cont_fadeing
    xor a
    ld (replay_fade), a
; 	jp	replay_pause  ; -mdl

;===========================================================
; ---	replay_pause
; Stop/Restart music playback
; 
; Input: none
;===========================================================
replay_pause:
    ld a, (replay_mode)
    and a
    jp nz, _r_pause_disable
_r_pause_enable:
;-- re-enable music decoding and processing
    ld a, 1
    ld (replay_mode), a
    ret
process_data.cont_fadeing:
    ld (replay_fade_vol), a
    ld a, (replay_fade)
process_data.no_new_step:
    ld (replay_fade_timer), a

    ld a, (replay_fade_vol)
    ld c, a
    ld b, 3
    ld hl, PSG_regVOLA
    call process_data.calc_vol
    ld b, 5
    ld hl, SCC_regVOLA

process_data.calc_vol:
    ld a, (hl)
    sub c
    jp nc, process_data.no_carry
    xor a
process_data.no_carry:
    ld (hl), a
    inc hl
    djnz process_data.calc_vol
    ret


;--------------------


;--------------------	
_replay_check_patternend:
    ld a, (TRACK_Chan1 + 17 + TRACK_Delay)
    dec a
    jp nz, process_data

    ld hl, (TRACK_pointer1)
    ld a, (hl)

;--- check for end of pattern
    cp 191
    jp nz, process_data

;--- Set track pointers to start
    ld hl, (replay_orderpointer)
    xor a
    cp (hl)
    jp nz, _replay_check_patternend.no_restart
    inc hl
    cp (hl)
    dec hl
    jp nz, _replay_check_patternend.no_restart
;--- next is restart order
    inc hl
    inc hl
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
_replay_check_patternend.no_restart:
    ld de, TRACK_pointer1
    ld bc, 16
    ldir
    ld (replay_orderpointer), hl  ; store pointer for next set
; of strack pointers

    jp process_data


_replay_decode_note:
    ld (ix + TRACK_Note), a
    set B_TRGNOT, d
    res B_ACTMOR, d

    inc bc
    ld a, (bc)
; 	jp	_rdn  ; -mdl

_rdn:
    cp _SUS + 1
    jp c, _rd_delay
    jp _rdn2



_replay_decode_ins:
    res B_ACTMOR, d  ; reset morph slave mode
    sub _INS
    cp (ix + TRACK_Instrument)
    jp z, _replay_decode_ins.skip_ins

;--- instrument change found	
    ld (ix + TRACK_Instrument), a

;--- set instrument pointer
    add a, a
    ld hl, (replay_insbase)
    add a, l
    ld l, a
    jp nc, _replay_decode_ins.skip
    inc h
_replay_decode_ins.skip:
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a

;-- get waveform
    ld a, (hl)
    inc hl

    cp (ix + TRACK_Waveform)
    jp z, _replay_decode_ins.skip_wav_trig
    set B_TRGWAV, d
    ld (ix + TRACK_Waveform), a

_replay_decode_ins.skip_wav_trig:
;--- Store the macro start
    ld (ix + TRACK_MacroPointer), l
    ld (ix + TRACK_MacroPointer + 1), h
;--- Store the macro re-start
    ld (ix + TRACK_MacroStart), l
    ld (ix + TRACK_MacroStart + 1), h

_replay_decode_ins.skip_ins:
    inc bc
    ld a, (bc)
; 	jp	_rdi  ; -mdl

_rdi:
    cp _CMD
    jp c, _rd_delay
    jp _rdi2



_replay_decode_vol:
    sub _VOL - 1  ; Add 1 here as volume 10 becomes 9
    add a, a
    add a, a
    add a, a
    add a, a

;--- Set new base	volume (high byte) but keep relative offset (low byte)
    ld e, a
    ld a, (ix + TRACK_Volume)
    and #0f
    or e
    ld (ix + TRACK_Volume), a

    inc bc
    ld a, (bc)
; 	jp	_rdv  ; -mdl

_rdv:
    cp _INS
    jp c, _rd_delay
    jp _rdv2
_rdc:
    inc bc
_rdc_noinc:
    ld a, (bc)
    cp _EOT
    jp c, _rd_delay
    jp _replay_decode_delay

;--- re-init previous delay	
_rd_delay:
    ld a, (ix + TRACK_prevDelay)
    ld (ix + TRACK_Delay), a
    jp _replay_decode_trigger_porttone_check

_rd_eot:
    inc a
    ld (ix + TRACK_Delay), a
    jp _replay_decode_trigger_porttone_check






;===========================================================
; ---	decode_data_chan
; Process the channel data
; 
; in BC is the pointer to the	data
;    D contains flags.
;===========================================================
decode_data_chan:

;--- initialize data
;	ld	a,(ix+TRACK_Note)
    ld (replay_previous_note), a

;=============
; Note 
;=============
    ld a, (bc)
    cp _REL
    jp c, _replay_decode_note
    cp _SUS
    jp c, _replay_decode_release
    jp z, _replay_decode_sustain
_rdn2:
    cp _INS
    jp c, _replay_decode_vol
_rdv2:
    cp _CMD
    jp c, _replay_decode_ins
_rdi2:
    cp _EOT
    jp c, _replaydecode_cmd
; 	jp	_replay_decode_delay  ; -mdl

_replay_decode_delay:
    sub _WAIT - 1
    jp z, _rd_eot  ; EOT found  
    ld (ix + TRACK_Delay), a
    ld (ix + TRACK_prevDelay), a
    inc bc

_replay_decode_trigger_porttone_check:
;--- Check cmd active and note trigger?
    bit B_TRGNOT, d
    ret z
    bit B_TRGCMD, d
    ret z
;--- Check for cmd3 or cmd5 (value 0 or 1) to continue
    ld a, (ix + TRACK_Command)
    cp 2
    ret nc
;-- trigger CMD
    res B_TRGNOT, d
    set B_ACTNOT, d
;	ld	a,(ix+TRACK_cmd_3)
    jp decode_cmd3_port_tone_new_note



_replay_decode_release:
_replay_decode_sustain:
    res B_ACTNOT, d  ; reset note bit to	0

    inc bc
    ld a, (bc)
    jp _rdn



_replaydecode_cmd:
    sub _CMD

;[Debug]
    cp 31
    jp c, _sjasm_reusable_99_12
    di
    halt
_sjasm_reusable_99_12:
;[Debug end]

    ld e, a  ; store command for later
    ld hl, DECODE_CMDLIST
    add a, a
    add a, l
    ld l, a
    jp nc, _replaydecode_cmd.skip
    inc h
_replaydecode_cmd.skip:
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a

    inc bc
    ld a, (bc)
    jp (hl)


DECODE_CMDLIST:
; Primary
    dw decode_cmd3_port_tone
    dw decode_cmd5_vibrato_port_tone
    dw decode_cmd2_port_down
    dw decode_cmd0_arpeggio
    dw decode_cmd4_vibrato
    dw decode_cmd1_port_up
    dw decode_cmd6_vibrato_vol
    dw decode_cmd7_vol_slide
    dw decode_cmd8_tremelo
    dw decode_cmd9_note_cut
    dw decode_cmd10_note_delay
; Secondary
    dw decode_cmd11_command_end
    dw decode_cmd12_SCC_morph
    dw decode_cmd13_arp_speed
    dw decode_cmd14_fine_up
    dw decode_cmd15_fine_down
    dw decode_cmd16_notelink
    dw decode_cmd17_track_detune
    dw decode_cmd18_trigger
    dw decode_cmd19_speed
; SoundChip Specific
    dw decode_cmd20_envelope_high
    dw decode_cmd21_envelope_low

    dw decode_cmd22_SCC_reset
    dw decode_cmd23_SCC_duty
    dw decode_cmd24_SCC_soften
    dw decode_cmd25_SCC_waveform
    dw decode_cmd26_SCC_morph_copy
    dw decode_cmd27_SCC_morph_type
    dw decode_cmd28_SCC_morph_speed

    dw decode_cmd29_SCC_sample


decode_cmd0_arpeggio:
; in:	[A] contains the paramvalue
; 
; ! do not change	[BC] this is the data pointer
;--------------------------------------------------
    ld (ix + TRACK_cmd_0), a
    ld (ix + TRACK_Command), e
    set B_TRGCMD, d
    ld (ix + TRACK_Timer), 0
    ld (ix + TRACK_Step), 2
    jp _rdc



decode_cmd1_port_up:
; in:	[A] contains the paramvalue
; 
; ! do not change	[BC] this is the data pointer
;--------------------------------------------------
    ld (ix + TRACK_Command), e
    ld (ix + TRACK_cmd_1), a
    set B_TRGCMD, d
    jp _rdc



decode_cmd2_port_down:
; in:	[A] contains the paramvalue
; 
; ! do not change	[BC] this is the data pointer
;--------------------------------------------------
    ld (ix + TRACK_Command), e
    ld (ix + TRACK_cmd_2), a
    set B_TRGCMD, d
    jp _rdc


decode_cmd3_port_tone:
; in:	[A] contains the param value
; 
; ! do not change	[BC] this is the data pointer
;--------------------------------------------------
    ld (ix + TRACK_Command), e
    set B_TRGCMD, d
    set B_ACTNOT, d

    ld (ix + TRACK_cmd_3), a
    ld (ix + TRACK_Timer), 2

;decode_cmd3_port_tone_cont:
;--- Check if we have a	note on the	same event
    bit B_TRGNOT, d
    jp z, _rdc

    res B_TRGNOT, d

    call decode_cmd3_port_tone_new_note
    jp _rdc


decode_cmd5_vibrato_port_tone:
; in:	[A] contains the paramvalue
; 
; ! do not change	[BC] this is the data pointer
;--------------------------------------------------
; portTone	+ volumeslide
;--- Init values
    ld (ix + TRACK_Command), e
    ld (ix + TRACK_cmd_A), a
    set B_TRGCMD, d

;-- Check if new note
    bit B_TRGNOT, d
    jp z, _rdc

;-- Set new port tone value
    res B_TRGNOT, d
    ld a, (ix + TRACK_cmd_3)
; 	jp	decode_cmd3_port_tone_new_note  ; -mdl

decode_cmd3_port_tone_new_note:
;-- remove deviation from parameter
    and #7f
    ex af, af'  ;'
    exx

;-- get the	previous note freq
    ld a, (replay_previous_note)
    add a, a
    ld hl, (replay_tonetable)  ;TRACK_ToneTable
    add a, l
    ld l, a
    jp nc, decode_cmd3_port_tone_new_note.skip
    inc h
decode_cmd3_port_tone_new_note.skip:
    ld e, (hl)
    inc hl
    ld d, (hl)

; add	the toneadd
    ld l, (ix + TRACK_cmd_ToneSlideAdd)
    ld h, (ix + TRACK_cmd_ToneSlideAdd + 1)

    add hl, de
    ex de, hl  ; store current freq in	[de]
;--- get the current note freq
    ld a, (ix + TRACK_Note)
    add a, a
    ld hl, (replay_tonetable)  ;TRACK_ToneTable
    add a, l
    ld l, a
    jp nc, decode_cmd3_port_tone_new_note.skip2
    inc h
decode_cmd3_port_tone_new_note.skip2:
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a  ; destination freq in [hl]

;--- Calculate the delta
    xor a
    ex de, hl
    sbc hl, de  ; results in pos/neg delta

    ld (ix + TRACK_cmd_ToneSlideAdd), l
    ld (ix + TRACK_cmd_ToneSlideAdd + 1), h

;--- re-apply deviation
    ex af, af'  ;'
    bit 7, h
    jp nz, _sjasm_reusable_99_13
    or 128
_sjasm_reusable_99_13:
    ld (ix + TRACK_cmd_3), a

    exx  ; restore flags in D
    ret

decode_cmd8_tremelo:
; in:	[A] contains the paramvalue
; 
; ! do not change	[BC] this is the data pointer
;--------------------------------------------------	
decode_cmd4_vibrato:
; in:	[A] contains the paramvalue
; 
; ! do not change	[BC] this is the data pointer
;--------------------------------------------------
; Vibrato with speed x and depth y.	This command 
; will oscillate the frequency of the current note
; with a sine wave. 
;
; high 3 bits is depth (0-7) (direct offset in sinetable)
; low 5 bits is the speed. 1-16
;--- Init values
    ld (ix + TRACK_Command), e
    ld e, a

;--- Set the speed
    and #0f
    jp z, decode_cmd4_vibrato.depth
    ld (ix + TRACK_cmd_4_step), a
    neg
    ld (ix + TRACK_Step), a

decode_cmd4_vibrato.depth:
;-- set the depth
    ld a, e
    and #f0
    jp z, decode_cmd4_vibrato.end  ; set depth when 0 only when command was not active.

;	sub	16
    ld hl, TRACK_Vibrato_sine - 16
    add a, a
    jp nc, _sjasm_reusable_99_14
    inc h
_sjasm_reusable_99_14:
    add a, l
    ld l, a
    jp nc, _sjasm_reusable_99_15
    inc h
_sjasm_reusable_99_15:
    ld (ix + TRACK_cmd_4_depth), l
    ld (ix + TRACK_cmd_4_depth + 1), h

decode_cmd4_vibrato.end:
    set B_TRGCMD, d
    jp _rdc



decode_cmd6_vibrato_vol:
; in:	[A] contains the paramvalue
; 
; ! do not change	[BC] this is the data pointer
;--------------------------------------------------
decode_cmd7_vol_slide:
; in:	[A] contains the paramvalue
; 
; ! do not change	[BC] this is the data pointer
;--------------------------------------------------
    ld (ix + TRACK_Command), e
    ld (ix + TRACK_cmd_A), a
    and #7f
    ld (ix + TRACK_Timer), a
    set B_TRGCMD, d
    jp _rdc


decode_cmd9_note_cut:
    set B_TRGCMD, d
    ld (ix + TRACK_Command), e
    ld (ix + TRACK_Timer), a  ; set	the timer to param y
    jp _rdc


decode_cmd10_note_delay:
    bit B_TRGNOT, d  ; is there a note	in this eventstep?
    jp z, _rdc

    set B_TRGCMD, d  ; command active
    res B_TRGNOT, d  ; reset any	trigger note
    ld (ix + TRACK_Command), e

    ld (ix + TRACK_Timer), a  ; set	the timer to param y
    ld a, (ix + TRACK_Note)
    ld (ix + TRACK_cmd_E), a  ; store the	new note
    ld a, (replay_previous_note)
    ld (ix + TRACK_Note), a  ; restore the old	note
    jp _rdc



decode_cmd11_command_end:
; in:	[A] contains the paramvalue
; 
; ! do not change	[BC] this is the data pointer
;--------------------------------------------------
    res B_TRGCMD, d
    jp _rdc_noinc



;_CHIPcmd10_morph_slave:
;	set	B_ACTMOR,d
;	
;	dec 	bc
;	jp	_rdc	
;	
;_CHIPcmd11_morph_start:
;	and	0x0f
;	ld	(replay_morph_speed),a
;	
;	exx
;	;--- load the waveformbuffer
;	ld	a,(ix+TRACK_Waveform)
;;	add	a,a
;;	add	a,a
;;	add	a,a	
;
;	ld	l,a
;	ld	h,0
;	add	hl,hl
;	add	hl,hl
;		
;	ld	de,(replay_wavebase)
;	add	hl,de
;
;	ld	de,replay_morph_buffer
;	ld	a,32
;.loop:
;	ex	af,af'	;'
;	ld	a,(hl)
;	ld	(de),a		; copy value to both wave and delta pos
;	inc	de
;	ld	(de),a
;	inc	hl
;	inc	de
;	ex	af,af'	;'
;	dec	a
;	jp	nz,.loop
;	exx
;	
;	ld	a,(bc)
;
;_CHIPcmd12_morph_cont:
;	;---- init new morph
;	and	0xf0	
;	ld	(replay_morph_waveform),a	; store dest form offset
;	
;	xor	a
;	ld	(replay_morph_counter),a
;	inc	a
;	ld	(replay_morph_timer),a
;
;	;--- calculate the delta's	
;	ld	a,255				; 255 triggers calc init
;	ld	(replay_morph_active),a	
;
;	set	B_ACTMOR,d
;	jp	_rdc		
;	
;



decode_cmd13_arp_speed:
    ld (replay_arp_speed), a  ; store the halve not to add
    jp _rdc



decode_cmd14_fine_up:
    ld (ix + TRACK_cmd_ToneSlideAdd), a
; //xor	a
    ld (ix + TRACK_cmd_ToneSlideAdd + 1), 0
    jp _rdc

decode_cmd15_fine_down:
    ld (ix + TRACK_cmd_ToneSlideAdd), a
; //ld	a,$ff
    ld (ix + TRACK_cmd_ToneSlideAdd + 1), #ff
    jp _rdc



decode_cmd16_notelink:
    res B_TRGNOT, d
    jp _rdc_noinc

decode_cmd17_track_detune:
; This command sets the	detune of the track.
    ld e, a
    and #07  ; low	4 bits is value
    bit 3, e  ; Center around 8
    jp z, decode_cmd17_track_detune.pos
;	inc	a
;	neg			; make correct value
    cpl
    ld (ix + TRACK_cmd_detune), a
    ld (ix + TRACK_cmd_detune + 1), #ff

    jp _rdc

decode_cmd17_track_detune.pos:
    ld (ix + TRACK_cmd_detune), a
    ld (ix + TRACK_cmd_detune + 1), #00

    jp _rdc



decode_cmd18_trigger:
    ld (replay_trigger), a
    jp _rdc


decode_cmd19_speed:
    ld (replay_speed), a
;--- Reset Timer == 0
    srl a  ; divide speed with 2
    ld e, a
    ld a, 0
    adc a, a  ; store carry of shift as subtimer
    ld (replay_speed_subtimer), a
    add a, e
    ld (replay_speed_timer), a

    jp _rdc



; in:	[A] contains the paramvalue
; 
; ! do not change	[BC] this is the data pointer
;--------------------------------------------------
; This command set the envelope frequency using a
; multiplier value (00-ff)
decode_cmd20_envelope_high:
    ld (PSG_regEnvH), a
    jp _rdc

; in:	[A] contains the paramvalue
; 
; ! do not change	[BC] this is the data pointer
;--------------------------------------------------
; This command set the envelope frequency using a
; multiplier value (00-ff)
decode_cmd21_envelope_low:
    ld (PSG_regEnvL), a
    jp _rdc



decode_cmd22_SCC_reset:
    set B_TRGWAV, d
    res B_ACTMOR, d

;--- Look up the waveform form the instrument.
    ld l, (ix + TRACK_MacroPointer)
    ld h, (ix + TRACK_MacroPointer + 1)
    inc hl
    inc hl
    ld a, (hl)
    ld (ix + TRACK_Waveform), a
    ret
;	dec 	bc
    jp _rdc_noinc


decode_cmd23_SCC_duty:
;=================
; Waveform PWM / Duty Cycle
; Do not overwrite [BC] and [D](flags)
;=================
    res B_ACTMOR, d  ;(ix+TRACK_Flags)	; reset morph
    res B_TRGWAV, d  ;(ix+TRACK_Flags)	; reset normal wave update

    ld e, a  ; store in length in E for later		
    ex af, af'
;get the waveform	start	in [DE]
    ld hl, _0x9800
    ld a, iyh  ;ixh contains chan#
;	rrca			; a mac value is 4 so
;	rrca			; 3 times rrca is	X32
;	rrca			; max	result is 128.
    add a, l
    ld l, a
    jp nc, decode_cmd23_SCC_duty.skip
    inc h
decode_cmd23_SCC_duty.skip:
    ld a, e
    ex af, af'  ; store for later
    inc a
    ld e, #77  ; store for the other loop
decode_cmd23_SCC_duty.wspw_loop_h:
    ld (hl), e
    inc hl
    dec a
    jp nz, decode_cmd23_SCC_duty.wspw_loop_h

    ex af, af'  ; restore the initial length
;	ld	e,a
    sub 31

    ld e, #87
decode_cmd23_SCC_duty.wspw_loop_l:
    ld (hl), e
    inc hl
    dec a
    jp nz, decode_cmd23_SCC_duty.wspw_loop_l

    jp _rdc


decode_cmd24_SCC_soften:
;=================
; Waveform Soften
; Do not overwrite [BC] and [D](flags)
;=================
    res B_ACTMOR, d  ;(ix+TRACK_Flags)	; reset morph
    res B_TRGWAV, d  ;(ix+TRACK_Flags)	; reset normal wave update

;get the waveform	start	in [hl]
    ld a, (ix + TRACK_Waveform)
    ld l, a
    ld h, 0
    add hl, hl
    add hl, hl

    ld a, d  ; Preserve flags
    ex af, af'

    ld de, (replay_wavebase)
    add hl, de

;get the waveform destination address in [DE]
    ld de, _0x9800
    ld a, iyh  ;ixh contains chan#
    add a, e
    ld e, a
    jp nc, _sjasm_reusable_99_16
    inc d
_sjasm_reusable_99_16:
    ld iyl, 32
decode_cmd24_SCC_soften.softloop:
    ld a, (hl)
    sra a
    ld (de), a
    dec iyl
    jp z, decode_cmd24_SCC_soften.end
    inc hl
    inc de
    jp decode_cmd24_SCC_soften.softloop
decode_cmd24_SCC_soften.end:
    ex af, af'
    ld d, a  ; restore flags
    jp _rdc_noinc

;=================
; Waveform Set
; Do not overwrite [BC] and [D](flags)
;=================
decode_cmd25_SCC_waveform:
    ld (ix + TRACK_Waveform), a
    set B_TRGWAV, d
    res B_ACTMOR, d
    jp _rdc


;=================
; Waveform Morph
; Do not overwrite [BC] and [D](flags)
;=================
decode_cmd12_SCC_morph:
    push bc  ; Preserve pointer

    ld (replay_morph_waveform), a
    xor a
    ld (replay_morph_counter), a
    inc a
    ld (replay_morph_timer), a
    ld a, (replay_morph_type)
    and a
    jp z, decode_cmd12_SCC_morph.morph_continue
decode_cmd12_SCC_morph.morph_start:  ; Set start in buffer
    ld hl, _0x9800
    ld a, iyh
    add a, l
    ld l, a
    jp nc, decode_cmd12_SCC_morph.morph_copy
    inc h
    jr decode_cmd12_SCC_morph.morph_copy

decode_cmd12_SCC_morph.morph_continue:
;--- Set the the waveform address
    ld l, (ix + TRACK_Waveform)
    ld h, 0
    add hl, hl
    add hl, hl

    ld bc, (replay_wavebase)
    add hl, bc

decode_cmd12_SCC_morph.morph_copy:
    ld bc, replay_morph_buffer
    ld a, 32
_sjasm_reusable_44_1:
    ex af, af'  ;'
    ld a, (hl)
    inc bc  ; copy to value (skip delta value byte)
    ld (bc), a
    inc hl
    inc bc
    ex af, af'  ;'
    dec a
    jp nz, _sjasm_reusable_44_1

;--- calculate the delta's	
    ld a, 255  ; 255 triggers calc init
    ld (replay_morph_active), a
    set B_ACTMOR, d
    pop bc  ; Restore the pointer
    jp _rdc


;================= 
; Waveform Morph copy /follow
; Do not overwrite [BC] and [D](flags)
;=================
decode_cmd26_SCC_morph_copy:
    set B_ACTMOR, d
    jp _rdc_noinc


;=================
; Waveform Morph type
; Do not overwrite [BC] and [D](flags)
;=================
decode_cmd27_SCC_morph_type:
    ld (replay_morph_type), a
    jp _rdc


;=================
; Waveform Morph speed
; Do not overwrite [BC] and [D](flags)
;=================
decode_cmd28_SCC_morph_speed:
    ld (replay_morph_speed), a
    jp _rdc

;=================
; Waveform Morph
; Do not overwrite [BC] and [D](flags)
;=================
decode_cmd29_SCC_sample:
    jp _rdc






;===========================================================
; ---process_data_chan
; Process the cmd/instrument/note and vol data 
; 
; in HL is the current tone freq
; in D is TRACK_FLAGS  
;===========================================================
process_data_chan:
;-- set the	mixer	right
    ld hl, SCC_regMIXER
    rrc (hl)

;=====
; COMMAND
;=====
    ld (ix + TRACK_cmd_NoteAdd), 0  ; Always reset note add

    bit B_TRGCMD, d  ;(ix+TRACK_Flags)
    jr z, process_note

    ld hl, PROCESS_CMDLIST
    ld a, (ix + TRACK_Command)

    add a, a
    add a, l
    ld l, a
    jp nc, process_data_chan.skip
    inc h
process_data_chan.skip:
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    jp (hl)

process_note:
process_commandEND:

;=====
; NOTE
;=====
;--- Check if we need to trigger a new note
    bit B_TRGNOT, d  ;(ix+TRACK_Flags)
    jp z, process_noNoteTrigger


process_triggerNote:
;--- get new Note
    res B_TRGNOT, d  ;(ix+TRACK_Flags)		; reset trigger note flag
    set B_ACTNOT, d  ;(ix+TRACK_Flags)		; set	note active	flag

    ld l, (ix + TRACK_MacroStart)
    ld h, (ix + TRACK_MacroStart + 1)
;	;--- Store the macro start	
    ld (ix + TRACK_MacroPointer), l
    ld (ix + TRACK_MacroPointer + 1), h

;ld	hl,0
    ld (_SP_Storage), sp
    ld sp, ix
; reset the macro pointer 
    pop af  ; Move just after TRACK_cmd_ToneAdd			
    pop af

    ld hl, 0
    push hl  ; clear TRACK_cmd_ToneAdd	
    push hl  ; clear TRACK_cmd_ToneSlideAdd
    push hl  ; clear TRACK_cmd_VolumeAdd + TRACK_Noise	
    push hl  ; clear TRACK_VolumeAdd +TRACK_ToneAdd (high)
    push hl  ; clear RACK_ToneAdd(low)+ TRACK_empty
    ld sp, (_SP_Storage)

process_noNoteTrigger:
;==============
; Macro instrument
;==============
    bit B_ACTNOT, d  ;(ix+TRACK_Flags)
    ld (ix + TRACK_Flags), d
    jp z, process_noNoteActive

;--- Get the macro len and loop
    ld e, (ix + TRACK_MacroPointer)
    ld d, (ix + TRACK_MacroPointer + 1)

process_macro:
    ld a, (de)
    inc de
    and a
    jp z, macro_volume_same

;--- Get macro action address
    ld hl, MACROACTIONLIST - 2
    add a, l
    ld l, a
    jp nc, _sjasm_reusable_99_17
    inc h
_sjasm_reusable_99_17:
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    jp (hl)

MACROACTIONLIST:
    dw macro_mixer  ; 2
    dw macro_tone_add  ; 4
    dw macro_tone_sub  ; 6
    dw macro_vol_base  ; 8
    dw macro_vol_add  ; a
    dw macro_vol_sub  ; c
    dw macro_noise_base  ; e
    dw macro_noise_add  ; 10
    dw macro_noise_sub  ; 12
    dw macro_noise_vol  ; 14
    dw macro_voice  ; 16
    dw macro_loop  ; 18
    dw macro_envelope  ; 1a
    dw macro_envelope_shape  ; 1c


macro_mixer:
    ld a, (de)
    inc de
    ld b, a
    ld a, (SCC_regMIXER)
    and 11101111b
    or b
    ld (SCC_regMIXER), a
    jp process_macro


macro_tone_add:
    ld a, (de)
    inc de
    add a, (ix + TRACK_ToneAdd)
    ld (ix + TRACK_ToneAdd), a
    ld a, (de)
    adc a, (ix + TRACK_ToneAdd + 1)
    ld (ix + TRACK_ToneAdd + 1), a
    inc de
    jp process_macro


macro_tone_sub:
    ld a, (de)
    ld c, a
    inc de
    ld a, (de)
    ld b, a
    inc de
    ld l, (ix + TRACK_ToneAdd)
    ld h, (ix + TRACK_ToneAdd + 1)
    add hl, bc
    ld (ix + TRACK_ToneAdd), l
    ld (ix + TRACK_ToneAdd + 1), h
    jp process_macro


macro_noise_base:
    ld a, (de)
    inc de
    ld (ix + TRACK_Noise), a
    jp process_macro

macro_noise_sub:
macro_noise_add:
    ld a, (de)
    inc de
    add a, (ix + TRACK_Noise)
    ld (ix + TRACK_Noise), a
    jp process_macro

macro_noise_vol:
    inc de
    jp process_macro


macro_voice:
    ld a, (de)
    inc de
    ld (ix + TRACK_Waveform), a
;---- check this code perhaps this needs more checks.
    set B_TRGWAV, (ix + TRACK_Flags)
    res B_ACTMOR, (ix + TRACK_Flags)
    jp process_macro


macro_envelope_shape:
    ld a, (de)
    inc de
    ld (PSG_regEnvShape), a

macro_envelope:
    ld a, 16  ; set volume to 16 == envelope
    ld (SCC_regVOLE), a
    jp _macro_end


macro_loop:
    ex de, hl
    ld e, (hl)
;	inc	hl
;	ld	d,(hl)
    ld d, #ff
    add hl, de
    ex de, hl
    jp process_macro


macro_volume_same:
    ld a, (ix + TRACK_VolumeAdd)
    jp _macro_set_volume


macro_vol_base:
    ld a, (de)
    inc de
    ld (ix + TRACK_VolumeAdd), a
    jp _macro_set_volume


macro_vol_add:
    ld a, (de)
    inc de
    add a, (ix + TRACK_VolumeAdd)
    cp 16
    jp c, macro_vol_add.nolimit
    ld a, #0f
macro_vol_add.nolimit:
    ld (ix + TRACK_VolumeAdd), a
    jp _macro_set_volume


macro_vol_sub:
    ld a, (de)
    ld h, a
    inc de
    ld a, (ix + TRACK_VolumeAdd)
    sub h
    jp nc, macro_vol_sub.nolimit
    xor a
macro_vol_sub.nolimit:
    ld (ix + TRACK_VolumeAdd), a

;-- Set the output volume directly after any update
_macro_set_volume:
    or (ix + TRACK_Volume)
;	ld	c,a			; store volume add
    ld b, (ix + TRACK_cmd_VolumeAdd)
    sub b
    jp nc, _macro_set_volume.skip2
    add a, b
    and #0f
_macro_set_volume.skip2:
;--- apply main volume balance
    ld bc, (replay_mainvol)
    add a, c
    ld c, a
    jp nc, _macro_set_volume.skip
    inc b
_macro_set_volume.skip:
    ld a, (bc)
; Test which CHIP.
    bit B_PSGSCC, (ix + TRACK_Flags)
    jp nz, _macro_set_volume.skip3
    rra
    rra
    rra
    rra
_macro_set_volume.skip3:
    and #0f
    ld (SCC_regVOLE), a
;     jp    process_macro

_macro_end:
;--- Store macro pointer
    ld (ix + TRACK_MacroPointer), e  ;--- store pointer for next time
    ld (ix + TRACK_MacroPointer + 1), d

;-- Get the current note
    ld a, (ix + TRACK_Note)
    add a, (ix + TRACK_cmd_NoteAdd)
    add a, a

    ld hl, (replay_tonetable)
    add a, l
    ld l, a
    jp nc, _macro_end.skip
    inc h
_macro_end.skip:
    ld a, (hl)  ;--- Store the note tone value in hl
    inc hl
    ld h, (hl)
    ld l, a

; ----- Check deze BC nog eens goed na.	
    ld c, (ix + TRACK_ToneAdd)
    ld b, (ix + TRACK_ToneAdd + 1)
    add hl, bc  ;--- Store tone deviation		

;-- set	the detune.
    ld (_SP_Storage), sp
    ld sp, ix
    pop bc  ; cmd_ToneSlideAdd
    add hl, bc
    pop bc  ; cmd_ToneAdd
    add hl, bc
    pop bc  ; cmd_detune
    add hl, bc
    ld sp, (_SP_Storage)

;--- Return the tone register value
    scf  ; no cary is update the register value
    ret


process_noNoteActive:
;-- Silence
    xor a  ; also clears the carry flag.
    ld (SCC_regVOLE), a
;	ld	(ix+TRACK_Flags),d
    ret


PROCESS_CMDLIST:
; This list only contains the primary commands.
    dw process_cmd3_port_tone
    dw process_cmd5_vibrato_port_tone
    dw process_cmd2_port_down
    dw process_cmd0_arpeggio
    dw process_cmd4_vibrato
    dw process_cmd1_port_up
    dw process_cmd6_vibrato_vol
    dw process_cmd7_vol_slide
    dw process_cmd8_tremelo
    dw process_cmd9_note_cut
    dw process_cmd10_note_delay



process_cmd0_arpeggio:
    ld a, (ix + TRACK_Timer)
    and a
    jp z, process_cmd0_arpeggio.nextNote

    dec a
    ld (ix + TRACK_Timer), a
    ld a, (ix + TRACK_Step)
    and a
    jp z, _sjasm_reusable_99_18
    ld a, (ix + TRACK_cmd_0)
    and #0f
    ld (ix + TRACK_cmd_NoteAdd), a
    jp process_commandEND
_sjasm_reusable_99_18:
    ld (ix + TRACK_cmd_NoteAdd), 0
    jp process_commandEND

process_cmd0_arpeggio.nextNote:
; re-init the speed.
    ld a, (replay_arp_speed)
    ld (ix + TRACK_Timer), a

    ld a, (ix + TRACK_Step)
    and a
    jr nz, _sjasm_reusable_99_19
;--- set x
    ld (ix + TRACK_Step), 1
    ld a, (ix + TRACK_cmd_0)
    rlca
    rlca
    rlca
    rlca
    ld (ix + TRACK_cmd_0), a
    and #0f
    ld (ix + TRACK_cmd_NoteAdd), a
    jp process_commandEND

_sjasm_reusable_99_19:
    dec a
    jr nz, _sjasm_reusable_99_20
;--- set y
    ld (ix + TRACK_Step), 2
    ld a, (ix + TRACK_cmd_0)
    rlca
    rlca
    rlca
    rlca
    ld (ix + TRACK_cmd_0), a
    and #0f
    jp nz, _sjasm_reusable_0_17
;--- if zero then skip this note and set step to start
    ld (ix + TRACK_Step), 0
_sjasm_reusable_0_17:
    ld (ix + TRACK_cmd_NoteAdd), a
    jp process_commandEND

_sjasm_reusable_99_20:
;--- set none
    ld (ix + TRACK_Step), 0
    ld (ix + TRACK_cmd_NoteAdd), 0
    jp process_commandEND



process_cmd1_port_up:
    ld a, (ix + TRACK_cmd_1)
    ld b, a
    ld a, (ix + TRACK_cmd_ToneSlideAdd)
    sub b
    ld (ix + TRACK_cmd_ToneSlideAdd), a
    jp nc, process_commandEND
    dec (ix + TRACK_cmd_ToneSlideAdd + 1)
    jp process_commandEND

process_cmd2_port_down:
    ld a, (ix + TRACK_cmd_2)
    ld b, a
    ld a, (ix + TRACK_cmd_ToneSlideAdd)
    add a, b
    ld (ix + TRACK_cmd_ToneSlideAdd), a
    jp nc, process_commandEND
    inc (ix + TRACK_cmd_ToneSlideAdd + 1)
    jp process_commandEND



process_cmd5_vibrato_port_tone:
    call process_cmdasub
; 	jp	process_cmd3_port_tone  ; -mdl


process_cmd3_port_tone:
    ld a, (ix + TRACK_cmd_3)
    ld l, (ix + TRACK_cmd_ToneSlideAdd)
    ld h, (ix + TRACK_cmd_ToneSlideAdd + 1)
    bit 7, h
    jp z, process_cmd3_sub
process_cmd3_add:
;pos slide
    add a, l
    ld (ix + TRACK_cmd_ToneSlideAdd), a
    jp nc, process_cmd3_add.skip
    inc h
process_cmd3_add.skip:
    bit 7, h
    jp z, process_cmd3_stop  ; delta turned pos ?
    ld (ix + TRACK_cmd_ToneSlideAdd + 1), h
    jp process_commandEND
process_cmd3_sub:
;negative slide	
    and #7f
    ld c, a
    xor a
    ld b, a
    sbc hl, bc
    bit 7, h
    jp nz, process_cmd3_stop  ; delta turned neg ?
    ld (ix + TRACK_cmd_ToneSlideAdd), l
    ld (ix + TRACK_cmd_ToneSlideAdd + 1), h
    jp process_commandEND
process_cmd3_stop:
;	res	B_TRGCMD,d		;(ix+TRACK_Flags)
    ld (ix + TRACK_cmd_ToneSlideAdd), 0
    ld (ix + TRACK_cmd_ToneSlideAdd + 1), 0
    jp process_commandEND



process_cmd8_tremelo:
;=================================
;
; Tremelo	
;
;=================================	
    ld l, (ix + TRACK_cmd_4_depth)
    ld h, (ix + TRACK_cmd_4_depth + 1)

;--- Get next step
    ld a, (ix + TRACK_Step)
    add a, (ix + TRACK_cmd_4_step)
    and #1f  ; max	32
    ld (ix + TRACK_Step), a

    add a, l
    ld l, a
    jp nc, _sjasm_reusable_99_21
    inc h
_sjasm_reusable_99_21:
    ld a, (hl)
;	sla	a
;	sla	a	
;	sla	a	
;	sla	a
    add a, a
    add a, a
    add a, a
    add a, a
    ld (ix + TRACK_cmd_VolumeAdd), a
    jp process_commandEND

process_cmd6_vibrato_vol:
    call process_cmdasub
; 	jp	process_cmd4_vibrato	  ; -mdl



;=================================
;
; Vibrato	
;
;=================================
process_cmd4_vibrato:
    ld l, (ix + TRACK_cmd_4_depth)
    ld h, (ix + TRACK_cmd_4_depth + 1)

;--- Get next step
    ld a, (ix + TRACK_Step)
    add a, (ix + TRACK_cmd_4_step)
    and #3f  ; max	64
    ld (ix + TRACK_Step), a

    bit 5, a  ; step 32-63 the neg	
    jp z, process_cmd4_vibrato.pos

process_cmd4_vibrato.neg:
    and #1f  ; make it 32 steps again
    add a, l
    ld l, a
    jp nc, _sjasm_reusable_99_22
    inc h
_sjasm_reusable_99_22:
    ld a, (hl)
    neg
    jp z, process_cmd4_vibrato.zero  ; $ff00 gives strange result ;)	
    ld (ix + TRACK_cmd_ToneAdd), a
    ld (ix + TRACK_cmd_ToneAdd + 1), #ff
    jp process_commandEND

process_cmd4_vibrato.pos:
    add a, l
    ld l, a
    jp nc, _sjasm_reusable_99_23
    inc h
_sjasm_reusable_99_23:
    ld a, (hl)
process_cmd4_vibrato.zero:
    ld (ix + TRACK_cmd_ToneAdd), a
    ld (ix + TRACK_cmd_ToneAdd + 1), 0
    jp process_commandEND

process_cmd7_vol_slide:
    call process_cmdasub
    jp process_commandEND

process_cmdasub:
    dec (ix + TRACK_Timer)
    ret nz

; vol	slide
    ld a, (ix + TRACK_cmd_A)
    ld c, a
    and #7f
    ld (ix + TRACK_Timer), a

    ld a, (ix + TRACK_cmd_VolumeAdd)
    bit 7, c
    jp z, process_cmda_inc
process_cmda_dec:
    and a
    ret z
    sub #10
    ld (ix + TRACK_Volume), a
    ret
process_cmda_inc:
    cp #f0
    ret nc
    add a, #10
    ld (ix + TRACK_Volume), a
    ret


process_cmd9_note_cut:
    dec (ix + TRACK_Timer)
    jp nz, process_commandEND

; stop note
    res B_TRGCMD, d  ; set	note bit to	0
    res B_ACTNOT, d
    jp process_commandEND

process_cmd10_note_delay:
; note delay
    dec (ix + TRACK_Timer)
    jp nz, process_commandEND  ; no delay yet

; trigger note
    ld a, (ix + TRACK_cmd_E)
    ld (ix + TRACK_Note), a  ; set	the note val
    set B_TRGNOT, d  ;(ix+TRACK_Flags)		; set	trigger note flag
    res B_TRGCMD, d  ;(ix+TRACK_Flags)		; reset trigger cmd flag

    jp process_commandEND





process_cmdc_wave_duty:
;=================
; Waveform PWM / Duty Cycle
;=================
    res B_TRGCMD, d  ;(ix+TRACK_Flags)	; reset command
    set B_TRGWAV, d  ;(ix+TRACK_Flags)	; reset normal wave update

;get the waveform	start	in [DE]
    ld hl, _0x9800
    ld a, iyh  ;ixh contains chan#
;	rrca			; a mac value is 4 so
;	rrca			; 3 times rrca is	X32
;	rrca			; max	result is 128.
    add a, l
    ld l, a
    jp nc, process_cmdc_wave_duty.skip
    inc h
process_cmdc_wave_duty.skip:
    ld b, (ix + TRACK_cmd_B)
    inc b

    ld c, 77
    ld a, 32
    sub b
_wspw_loop_h:
    ld (hl), c
    inc hl
    djnz _wspw_loop_h

    and a
    jp z, process_commandEND

    ld c, -87
    ld b, a
_wspw_loop_l:
    ld (hl), c
    inc hl
    djnz _wspw_loop_l

    jp process_commandEND



process_cmdd_wave_cut:
;=================
; Waveform Cut
;=================
    res B_TRGCMD, d  ;(ix+TRACK_Flags)	; reset command
    set B_TRGWAV, d  ;(ix+TRACK_Flags)	; reset normal wave update
    ld a, d
    ex af, af'  ;'

;get the waveform	start	in [DE]
    ld de, _0x9800
    ld a, iyh  ;ixh contains chan#
;	rrca			; a mac value is 4 so
;	rrca			; 3 times rrca is	X32
;	rrca			; max	result is 128.
    add a, e
    ld e, a
    jp nc, process_cmdd_wave_cut.skip
    inc d
process_cmdd_wave_cut.skip:
    ld a, (ix + TRACK_Waveform)

    inc a
    ld (ix + TRACK_Waveform), a
    dec a

;	add	a,a
;	add	a,a
;	add	a,a	

    ld l, a
    ld h, 0
    add hl, hl
    add hl, hl

    ld bc, (replay_wavebase)
    add hl, bc

    ld a, (ix + TRACK_cmd_B)
;	inc	a
;	add	a
    ld c, a
    ld b, 0
    ldir

    ex de, hl


    sub 32
    neg
    ld b, a
    ex af, af'  ;'
    ld d, a
    jp z, process_commandEND

    xor a
_wsc_l:
    ld (hl), a
    inc hl
    djnz _wsc_l

    jp process_commandEND



process_cmde_wave_compr:
;=================
; Waveform Compress
;=================
    res B_TRGCMD, d  ;(ix+TRACK_Flags)	; reset command
    set B_TRGWAV, d  ;(ix+TRACK_Flags)	; reset normal wave update
    ld a, d
    ex af, af'  ;'

;get the waveform	start	in [DE]
    ld de, _0x9800
    ld a, iyh  ;ixh contains chan#
;	rrca			; a mac value is 4 so
;	rrca			; 3 times rrca is	X32
;	rrca			; max	result is 128.
    add a, e
    ld e, a
    jp nc, process_cmde_wave_compr.skip
    inc d
process_cmde_wave_compr.skip:
    ld a, (ix + TRACK_Waveform)
    inc a
    ld (ix + TRACK_Waveform), a
    dec a

;	add	a,a
;	add	a,a
;	add	a,a	
    ld l, a
    ld h, 0
    add hl, hl
    add hl, hl

    ld bc, (replay_wavebase)
    add hl, bc

    ld a, (ix + TRACK_cmd_B)
    ld bc, #0040
    rrca  ; x32
    rrca
    rrca
    add a, 31
    ld iyl, a  ; fraction
    xor a
_wcomp_loop:
    ldi
    dec c
    jp z, _wcomp_loop.skip
    add a, iyl
    jp nc, _wcomp_loop
    inc hl
    inc b
    dec c
    dec c
    jp nz, _wcomp_loop

;--- remaining data
_wcomp_loop.skip:
    dec hl
    ld a, (hl)
_wcomp_loop.loop:
    ld (de), a
    inc de
    djnz _wcomp_loop.loop

    ex af, af'  ;'
    ld d, a
    jp process_commandEND





;===========================================================
; ---replay_route
; Output the data	to the CHIP	registers
; 
; 
;===========================================================
replay_route:
;---------------
; P S	G 
;---------------
;--- Push values to AY HW
;	ld	b,0
;	ld	c,0xa0
    ld bc, #00a0
    ld hl, PSG_registers
_comp_loop:
    out (c), b
    ld a, (hl)
    add a, 1
    out (#a1), a
    inc hl
    ld a, (hl)
    adc a, 0
    inc b
    out (c), b
    inc hl
    out (#a1), a
    inc b
    ld a, 6
    cp b
    jp nz, _comp_loop

    ld a, b


_ptAY_loop:
    out (c), a
    inc c
    outi
    dec c
    inc a
    cp 13
    jr nz, _ptAY_loop

    ld b, a
    ld a, (hl)
    and a
    jp z, _ptAY_noEnv
    out (c), b
    inc c
    out (c), a
    ld (hl), 0  ;reset the envwrite


_ptAY_noEnv:
;--------------
; S C	C 
;--------------
    ld a, #003f  ; enable SCC
    ld (#9000), a


;--- This for the ttsfxplayer!!!
;	ld	a,(sfx_SCC_WAVE)
;	cp	255
;	jp	z,.nosfx		; if a == 255 there is no waveform
;
;	ld	de,0x9800
;	call	_write_SFX_wave	
;	jp	.skip	

_ptAY_noEnv.nosfx:
;--- Set the waveforms
    ld hl, TRACK_Chan4 + 17 + TRACK_Flags
    bit B_TRGWAV, (hl)
    jp z, _ptAY_noEnv.skip
;--- set wave form
    res B_TRGWAV, (hl)
    ld a, (TRACK_Chan4 + 17 + TRACK_Waveform)
    ld de, #9800
    call _write_SCC_wave
_ptAY_noEnv.skip:
    ld hl, TRACK_Chan5 + 17 + TRACK_Flags
    bit B_TRGWAV, (hl)
    jp z, _ptAY_noEnv.skip2
;--- set wave form
    res B_TRGWAV, (hl)
    ld a, (TRACK_Chan5 + 17 + TRACK_Waveform)
    ld de, #9820
    call _write_SCC_wave
_ptAY_noEnv.skip2:
    ld hl, TRACK_Chan6 + 17 + TRACK_Flags
    bit B_TRGWAV, (hl)
    jp z, _ptAY_noEnv.skip3
;--- set wave form
    res B_TRGWAV, (hl)
    ld a, (TRACK_Chan6 + 17 + TRACK_Waveform)
    ld de, #9840
    call _write_SCC_wave
_ptAY_noEnv.skip3:
    ld hl, TRACK_Chan7 + 17 + TRACK_Flags
    bit B_TRGWAV, (hl)
    jp z, _ptAY_noEnv.skip4
;--- set wave form
    res B_TRGWAV, (hl)
    ld a, (TRACK_Chan7 + 17 + TRACK_Waveform)
    ld de, #9860
    call _write_SCC_wave
_ptAY_noEnv.skip4:

scc_reg_update:
    ld a, #003f  ; enable SCC
    ld (#9000), a

;--- Update changed SCC registers.
    ld hl, oldregs
    ld de, SCC_registers
    ld bc, #9880
    ld a, 3 * 5 + 1
scc_reg_update.loop:
    ex af, af'  ;'
    ld a, (de)
;	cp (hl)
;	jr z,.skip
;	ld (hl),a	     ; update old	registers in ram
    ld (bc), a  ; update scc	registers
scc_reg_update.skip:
;	inc hl
    inc de
    inc bc
    ex af, af'  ;'
    dec a
    jr nz, scc_reg_update.loop
    ret



;==================
; _write_SCC_wave
;
; Writes waveform	data.	[DE] contains location for data
; [A]	contains waveform	number + flags for special actions
; Data is not written to SCC but into RAM	shadow registers.
;==================
_write_SCC_wave:
    bit B_ACTMOR, (hl)
    jp nz, _write_SCC_special

    bit 0, a
    jp nz, _write_SCC_wave.ramwave
;	add	a,a
;	add	a,a
;	add	a,a

_write_SCC_wave.normalwave:
    ld l, a
    ld h, 0
    add hl, hl
    add hl, hl

    ld bc, (replay_wavebase)
    add hl, bc
    ld bc, 32
    ldir
    ret


_write_SCC_wave.ramwave:
    dec hl  ; reset the special flag in the wave form number
    and #fe
    ld (hl), a

    ld hl, _0x9800
    ld a, e
    add a, l
    ld l, a
    jp nc, _write_SCC_wave.skip
    inc h
_write_SCC_wave.skip:
    ld bc, 32
    ldir
    ret





_write_SCC_special:
    ld hl, replay_morph_buffer + 1
    ld b, 32
_wss_l:
    ld a, (hl)
    ld (de), a
    inc hl
    inc hl
    inc de
    djnz _wss_l


    ret


;=============
; in [A] the morph active status	
replay_process_morph:
    ld hl, replay_morph_timer
    dec (hl)
    ret nz

;---- not sure what to do with this.
; trigger any waveform updates
    ld b, 4
    ld de, TRACK_REC_SIZE
    ld hl, TRACK_Chan4 + 17 + TRACK_Flags
replay_process_morph.loop:
    bit B_ACTMOR, (hl)
    jp z, replay_process_morph.skip
    set B_TRGWAV, (hl)
replay_process_morph.skip:
    add hl, de
    djnz replay_process_morph.loop


;---- timer ended.
    inc a
    jp nz, _rpm_next_step  ; if status was !=255 then skip init

;---- calculate offset
    inc a
    ld (replay_morph_active), a  ; set status to 1
;	ld	(replay_morph_update),a		; after this update the waveforms of the SCC

    ld a, (replay_morph_speed)
    inc a
    ld (replay_morph_timer), a


;--- calculate the delta's
    ld a, (replay_morph_waveform)
    ld l, a
    ld h, 0
    add hl, hl
    add hl, hl
    ld de, (replay_wavebase)
    add hl, de
    ld de, replay_morph_buffer


;---- start calculating
    ld b, 32  ; 32 values
_rpm_loop:
    inc de
    ld a, (de)
    dec de
    add a, 128
    ld c, a
    ld a, (hl)
    add a, 128
    cp c
    jp c, _rpm_smaller  ; dest is smaller


_rpm_larger:
    sub c
    rrca
    rrca
    rrca
    rrca
    and #ef  ; reset bit 5
    ld (de), a

    inc de
    inc de
    inc hl
    djnz _rpm_loop
    ret

_rpm_smaller:
    sub c
    neg
    rrca
    rrca
    rrca
    rrca
    or #10  ; set bit 5
    ld (de), a

    inc de
    inc de
    inc hl
    djnz _rpm_loop
    ret

;============================
_rpm_next_step:
    ld a, (replay_morph_speed)
    inc a
    ld (replay_morph_timer), a

;-- apply the delta's
    ld a, (replay_morph_counter)
    ld c, a
    add a, 16
    ld (replay_morph_counter), a
    jp nz, _rpm_next_step.skip
;--- end morph
    ld (replay_morph_active), a

_rpm_next_step.skip:
    dec c
    ld hl, replay_morph_buffer
    ld b, 32
_rpm_ns_loop:
    ld a, (hl)
    bit 4, a
    jp z, _rmp_ns_add
_rmp_ns_sub:
;--- handle corection
    and #ef
    cp c  ; correction < counteR?
    jp c, _rmp_ns_sub.skip
    inc a  ; if smaller C was set
_rmp_ns_sub.skip:
    and 00011111b  ; keep lower 5 bits
    inc hl
    ld d, a
    ld a, (hl)
    sub d
    ld (hl), a  ; load new value
    inc hl
    djnz _rpm_ns_loop
    ret
_rmp_ns_add:
;--- handle corection
    cp c  ; correction < counter?
    jp c, _rmp_ns_add.skip
    inc a  ; if smaller C was set
_rmp_ns_add.skip:
    and 00011111b  ; keep lower 5 bits
    inc hl
    add a, (hl)  ; subtract waveform value
    ld (hl), a  ; load new value
    inc hl
    djnz _rpm_ns_loop
    ret




    ds 8 * 16, 1
_VOLUME_TABLE:
; No tail
;	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;	db $00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$10,$11
;	db $00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$10,$20,$20,$21,$22
;	db $00,$00,$00,$10,$10,$10,$10,$10,$20,$20,$20,$20,$20,$31,$32,$33
;	db $00,$00,$10,$10,$10,$10,$20,$20,$20,$20,$30,$30,$31,$32,$43,$44
;	db $00,$00,$10,$10,$10,$20,$20,$20,$30,$30,$30,$41,$42,$43,$54,$55
;	db $00,$00,$10,$10,$20,$20,$20,$30,$30,$40,$41,$42,$53,$54,$65,$66
;	db $00,$00,$10,$10,$20,$20,$30,$30,$40,$41,$52,$53,$64,$65,$76,$77
;	db $00,$10,$10,$20,$20,$30,$30,$40,$41,$52,$53,$64,$65,$76,$77,$88
;	db $00,$10,$10,$20,$20,$30,$40,$41,$52,$53,$64,$75,$76,$87,$88,$99
;	db $00,$10,$10,$20,$30,$30,$41,$52,$53,$64,$75,$76,$87,$98,$99,$AA
;	db $00,$10,$10,$20,$30,$41,$42,$53,$64,$75,$76,$87,$98,$A9,$AA,$BB
;	db $00,$10,$20,$20,$31,$42,$53,$64,$65,$76,$87,$98,$A9,$AA,$BB,$CC
;	db $00,$10,$20,$31,$32,$43,$54,$65,$76,$87,$98,$A9,$AA,$BB,$CC,$DD
;	db $00,$10,$21,$32,$43,$54,$65,$76,$77,$88,$99,$AA,$BB,$CC,$DD,$EE
;	db $00,$11,$22,$33,$44,$55,$66,$77,$88,$99,$AA,$BB,$CC,$DD,$EE,$FF

;  tail PSG 1 / SCC 1
    db #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11
    db #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11
    db #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #11, #21, #21, #21, #22
    db #11, #11, #11, #11, #11, #11, #11, #11, #21, #21, #21, #21, #21, #31, #32, #33
    db #11, #11, #11, #11, #11, #11, #21, #21, #21, #21, #31, #31, #31, #32, #43, #44
    db #11, #11, #11, #11, #11, #21, #21, #21, #31, #31, #31, #41, #42, #43, #54, #55
    db #11, #11, #11, #11, #21, #21, #21, #31, #31, #41, #41, #42, #53, #54, #65, #66
    db #11, #11, #11, #11, #21, #21, #31, #31, #41, #41, #52, #53, #64, #65, #76, #77
    db #11, #11, #11, #21, #21, #31, #31, #41, #41, #52, #53, #64, #65, #76, #77, #88
    db #11, #11, #11, #21, #21, #31, #41, #41, #52, #53, #64, #75, #76, #87, #88, #99
    db #11, #11, #11, #21, #31, #31, #41, #52, #53, #64, #75, #76, #87, #98, #99, #aa
    db #11, #11, #11, #21, #31, #41, #42, #53, #64, #75, #76, #87, #98, #a9, #aa, #bb
    db #11, #11, #21, #21, #31, #42, #53, #64, #65, #76, #87, #98, #a9, #aa, #bb, #cc
    db #11, #11, #21, #31, #32, #43, #54, #65, #76, #87, #98, #a9, #aa, #bb, #cc, #dd
    db #11, #11, #21, #32, #43, #54, #65, #76, #77, #88, #99, #aa, #bb, #cc, #dd, #ee
    db #11, #11, #22, #33, #44, #55, #66, #77, #88, #99, #aa, #bb, #cc, #dd, #ee, #ff

;  tail PSG 2 / SCC 1
;	db $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
;	db $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21
;	db $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$22
;	db $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$31,$32,$33
;	db $21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$31,$31,$31,$32,$43,$44
;	db $21,$21,$21,$21,$21,$21,$21,$21,$31,$31,$31,$41,$42,$43,$54,$55
;	db $21,$21,$21,$21,$21,$21,$21,$31,$31,$41,$41,$42,$53,$54,$65,$66
;	db $21,$21,$21,$21,$21,$21,$31,$31,$41,$41,$52,$53,$64,$65,$76,$77
;	db $21,$21,$21,$21,$21,$31,$31,$41,$41,$52,$53,$64,$65,$76,$77,$88
;	db $21,$21,$21,$21,$21,$31,$41,$41,$52,$53,$64,$75,$76,$87,$88,$99
;	db $21,$21,$21,$21,$31,$31,$41,$52,$53,$64,$75,$76,$87,$98,$99,$AA
;	db $21,$21,$21,$21,$31,$41,$42,$53,$64,$75,$76,$87,$98,$A9,$AA,$BB
;	db $21,$21,$21,$21,$31,$42,$53,$64,$65,$76,$87,$98,$A9,$AA,$BB,$CC
;	db $21,$21,$21,$31,$32,$43,$54,$65,$76,$87,$98,$A9,$AA,$BB,$CC,$DD
;	db $21,$21,$21,$32,$43,$54,$65,$76,$77,$88,$99,$AA,$BB,$CC,$DD,$EE
;	db $21,$21,$22,$33,$44,$55,$66,$77,$88,$99,$AA,$BB,$CC,$DD,$EE,$FF





;Konami values found in	Nemesis 2 replayer.
C_PER: equ #6a * 32
C1_PER: equ #64 * 32
D_PER: equ #5e * 32
D1_PER: equ #59 * 32
E_PER: equ #54 * 32
F_PER: equ #4f * 32
F1_PER: equ #4a * 32
G_PER: equ #46 * 32
G1_PER: equ #42 * 32
A_PER: equ #3f * 32
A1_PER: equ #3b * 32
B_PER: equ #38 * 32

TRACK_ToneTable_PSG:
    dw C_PER / 1, C1_PER / 1, D_PER / 1, D1_PER / 1, E_PER / 1, F_PER / 1, F1_PER / 1, G_PER / 1, G1_PER / 1, A_PER / 1, A1_PER / 1, B_PER / 1
    dw C_PER / 2, C1_PER / 2, D_PER / 2, D1_PER / 2, E_PER / 2, F_PER / 2, F1_PER / 2, G_PER / 2, G1_PER / 2, A_PER / 2, A1_PER / 2, B_PER / 2
    dw C_PER / 4, C1_PER / 4, D_PER / 4, D1_PER / 4, E_PER / 4, F_PER / 4, F1_PER / 4, G_PER / 4, G1_PER / 4, A_PER / 4, A1_PER / 4, B_PER / 4
    dw C_PER / 8, C1_PER / 8, D_PER / 8, D1_PER / 8, E_PER / 8, F_PER / 8, F1_PER / 8, G_PER / 8, G1_PER / 8, A_PER / 8, A1_PER / 8, B_PER / 8
    dw C_PER / 16, C1_PER / 16, D_PER / 16, D1_PER / 16, E_PER / 16, F_PER / 16, F1_PER / 16, G_PER / 16, G1_PER / 16, A_PER / 16, A1_PER / 16, B_PER / 16
    dw C_PER / 32, C1_PER / 32, D_PER / 32, D1_PER / 32, E_PER / 32, F_PER / 32, F1_PER / 32, G_PER / 32, G1_PER / 32, A_PER / 32, A1_PER / 32, B_PER / 32
    dw C_PER / 64, C1_PER / 64, D_PER / 64, D1_PER / 64, E_PER / 64, F_PER / 64, F1_PER / 64, G_PER / 64, G1_PER / 64, A_PER / 64, A1_PER / 64, B_PER / 64
    dw C_PER / 128, C1_PER / 128, D_PER / 128, D1_PER / 128, E_PER / 128, F_PER / 128, F1_PER / 128, G_PER / 128, G1_PER / 128, A_PER / 128, A1_PER / 128, B_PER / 128


TRACK_Vibrato_sine:  ; Sine table used for tremelo and vibrato
    db #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #01, #01, #01, #01, #01, #01, #01, #01, #01, #01, #01, #01, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00  ; depth 	1
    db #00, #00, #00, #00, #00, #00, #00, #01, #01, #01, #01, #01, #01, #02, #02, #02, #02, #02, #02, #01, #01, #01, #01, #01, #01, #00, #00, #00, #00, #00, #00, #00  ; depth 	2
    db #00, #00, #00, #00, #00, #01, #01, #01, #01, #01, #02, #02, #02, #02, #03, #03, #03, #03, #02, #02, #02, #02, #01, #01, #01, #01, #01, #00, #00, #00, #00, #00  ; depth 	3
    db #00, #00, #00, #00, #00, #01, #01, #01, #01, #02, #02, #02, #03, #03, #04, #04, #04, #04, #03, #03, #02, #02, #02, #01, #01, #01, #01, #00, #00, #00, #00, #00  ; depth 	4
    db #00, #00, #00, #00, #01, #01, #01, #01, #02, #02, #03, #03, #04, #04, #05, #05, #05, #05, #04, #04, #03, #03, #02, #02, #01, #01, #01, #01, #00, #00, #00, #00  ; depth 	5
    db #00, #00, #00, #00, #01, #01, #01, #02, #02, #03, #03, #04, #04, #05, #05, #06, #06, #05, #05, #04, #04, #03, #03, #02, #02, #01, #01, #01, #00, #00, #00, #00  ; depth 	6
    db #00, #00, #00, #01, #01, #01, #02, #02, #03, #04, #04, #05, #06, #06, #07, #08, #08, #07, #06, #06, #05, #04, #04, #03, #02, #02, #01, #01, #01, #00, #00, #00  ; depth 	7
    db #00, #00, #01, #01, #01, #02, #03, #04, #05, #06, #07, #08, #09, #0a, #0c, #0d, #0d, #0c, #0a, #09, #08, #07, #06, #05, #04, #03, #02, #01, #01, #01, #00, #00  ; depth 	8
    db #00, #00, #01, #02, #02, #04, #05, #06, #08, #09, #0b, #0d, #0f, #11, #13, #15, #15, #13, #11, #0f, #0d, #0b, #09, #08, #06, #05, #04, #02, #02, #01, #00, #00  ; depth 	9
    db #00, #01, #01, #02, #04, #05, #07, #09, #0b, #0e, #10, #13, #16, #19, #1c, #1f, #1f, #1c, #19, #16, #13, #10, #0e, #0b, #09, #07, #05, #04, #02, #01, #01, #00  ; depth 	A
    db #00, #01, #02, #03, #05, #08, #0b, #0e, #11, #15, #19, #1d, #21, #26, #2b, #2f, #2f, #2b, #26, #21, #1d, #19, #15, #11, #0e, #0b, #08, #05, #03, #02, #01, #00  ; depth 	B
    db #01, #01, #03, #05, #07, #0b, #0e, #12, #17, #1c, #21, #27, #2d, #33, #39, #3f, #3f, #39, #33, #2d, #27, #21, #1c, #17, #12, #0e, #0b, #07, #05, #03, #01, #01  ; depth 	C

;	include	"..\ttsfxplay\ttsfxplay.asm"


demo_song:
; Song: v0.10.0b                        
; By:                                   

; [ Song start data ]
    db #0c  ; Initial song speed.
    dw demo_song.waveform_start  ; Start of the waveform data.
    dw demo_song.instrument_start  ; Start of the instrument data.

; [ Song order pointer list ]
demo_song.restart:
    dw demo_song.track_000, demo_song.track_001, demo_song.track_002, demo_song.track_002, demo_song.track_002, demo_song.track_002, demo_song.track_002, demo_song.track_002  ; Step:001 Pattern:000
    dw #0000, demo_song.restart  ; End of sequence delimiter + restart address.

; [ Custom FM voices ]
demo_song.customvoice_start:

; [ SCC Waveforms ]
demo_song.waveform_start:
    db #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00, #00  ; Waveform:0

; [ FM Drum macros]
demo_song.drummacro_start:

; [ Instruments]
demo_song.instrument_start:
    dw demo_song.instrument_00  ; bass            

demo_song.instrument_00:  ; bass            
    db #00  ; Waveform 0
    db #1c, #0c  ; Envelope shape
    db #1a  ; Envelope
    db #1a  ; Envelope
    db #1a  ; Envelope
    db #1a  ; Envelope
    db #1a  ; Envelope
    db #1a  ; Envelope
; --- Macro loop
    db #1a  ; Envelope
    db #18, #fe  ; Loop (-3)


; [ Song track data ]
demo_song.track_000:
    db #0c  ;Note C-2
    db #71  ;Instrument 0
    db #c1  ;Wait 2
    db #18  ;Note C-3
;Wait Repeat 2
    db #0c  ;Note C-2
;Wait Repeat 2
    db #18  ;Note C-3
;Wait Repeat 2
    db #0c  ;Note C-2
;Wait Repeat 2
    db #18  ;Note C-3
;Wait Repeat 2
    db #0c  ;Note C-2
;Wait Repeat 2
    db #18  ;Note C-3
;Wait Repeat 2
    db #10  ;Note E-2
;Wait Repeat 2
    db #1c  ;Note E-3
;Wait Repeat 2
    db #10  ;Note E-2
;Wait Repeat 2
    db #1c  ;Note E-3
;Wait Repeat 2
    db #0c  ;Note C-2
;Wait Repeat 2
    db #18  ;Note C-3
;Wait Repeat 2
    db #0c  ;Note C-2
;Wait Repeat 2
    db #18  ;Note C-3
;Wait Repeat 2
    db #0c  ;Note C-2
;Wait Repeat 2
    db #18  ;Note C-3
;Wait Repeat 2
    db #0c  ;Note C-2
;Wait Repeat 2
    db #18  ;Note C-3
;Wait Repeat 2
    db #0e  ;Note D-2
;Wait Repeat 2
    db #1a  ;Note D-3
;Wait Repeat 2
    db #07  ;Note G-1
;Wait Repeat 2
    db #13  ;Note G-2
    db #c1  ;Wait 2
    db #95, #08  ;CMD Portamento up
    db #cf  ;Wait 16
    db #bf  ;[End-Of-Track]
demo_song.track_001:
    db #a5, #6b  ;CMD Envelope multiplier low
    db #c1  ;Wait 2
    db #a5, #35  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #6b  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #35  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #6b  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #35  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #6b  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #35  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #55  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #2a  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #55  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #2a  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #6b  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #35  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #6b  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #35  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #6b  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #35  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #6b  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #35  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #5f  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #30  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #8f  ;CMD Envelope multiplier low
;Wait Repeat 2
    db #a5, #47  ;CMD Envelope multiplier low
    db #d1  ;Wait 18
    db #bf  ;[End-Of-Track]
demo_song.track_002:
    db #ff  ;Wait 64
    db #bf  ;[End-Of-Track]

;	include	".\scctest.asm"

TEXT_Title:
    db "TriloTracker SCC Re-player Debug info", 0
TEXT_Step:
    db "Step:", 0
TEXT_Header_Data:
    db "C# Nt In Wv Vl Cm Flags", 0
TEXT_Register_Header:
    db "Tone Vl  Tone Vl  Nois Mx  Env  Sh", 0
;TEXT_Register_Drum:
;	db 	"Macr Drm Tone Vl",0	
TEXT_Legend_Data:
    db "Legend: Psg, Scc, Wavefor, Env, xxxx, Command, Active(note)", 0


font_data:
    incbin "fontpat.bin"

;	include ".\sfx.asm"

;sfx_PSG_STREAMS:
;sfx_SCC_STREAMS:
;	dw	sfx1
;	dw	sfx2
;	dw	sfx3
;	dw	sfx4
;	dw	sfx5
;
;
;
;sfx1:
;	db	1,4*8
;	incbin	"..\ttsfxplay\sfx\menu1.afx"
;sfx2:
;	db	1,2*8
;	incbin	"..\ttsfxplay\sfx\menu2.afx"	
;sfx3:
;	db	1,3*8
;	incbin	"..\ttsfxplay\sfx\menu3.afx"
;sfx4:
;	db	1,5*8
;	incbin	"..\ttsfxplay\sfx\menu4.afx"
;sfx5:
;	db	1,6*8
;	incbin	"..\ttsfxplay\sfx\menu5.afx"
;



;================================
; The new replayer.
;
; Persistent RAM unswappable
;
;================================

TRACK_Instrument: equ 0 - 17
TRACK_Command: equ 1 - 17
TRACK_MacroPointer: equ 2 - 17
TRACK_MacroStart: equ 4 - 17
TRACK_MacroRestart: equ 6 - 17  ; no longer needed
TRACK_Note: equ 7 - 17
TRACK_Volume: equ 8 - 17
TRACK_Waveform: equ 9 - 17
TRACK_Flags: equ 10 - 17
; 0 = note trigger
; 1 = note active
; 4 = morph active		;-< for SCC when 1 then waveform is following morph buffer
; 3 = command trigger
; 2 = envelope trigger
; 5 = instrument trigger
; 6 = waveform trigger
; 7 = PSG/SCC
TRACK_empty: equ 11 - 17  ; needed for pushing 0 at note start
TRACK_ToneAdd: equ 12 - 17  ; reset after note set
TRACK_VolumeAdd: equ 14 - 17  ; reset after note set
TRACK_Noise: equ 15 - 17  ; reset after note set
TRACK_cmd_VolumeAdd: equ 16 - 17  ; reset after note set
TRACK_cmd_ToneSlideAdd: equ 17 - 17  ; reset after note set
TRACK_cmd_ToneAdd: equ 19 - 17  ; reset after note set

TRACK_cmd_detune: equ 21 - 17
TRACK_cmd_0: equ 23 - 17
TRACK_cmd_1: equ 24 - 17
TRACK_cmd_2: equ 25 - 17
TRACK_cmd_3: equ 26 - 17
TRACK_cmd_4_depth: equ 27 - 17
TRACK_cmd_4_step: equ 29 - 17
TRACK_cmd_NoteAdd: equ 30 - 17  ;x reset after note set
TRACK_cmd_A: equ 31 - 17
TRACK_cmd_B: equ 32 - 17
TRACK_cmd_E: equ 33 - 17
TRACK_Timer: equ 34 - 17  ; used for timing by all cmd's
TRACK_Step: equ 35 - 17  ; only for VIBRATO???
TRACK_Delay: equ 36 - 17  ; rows to wait till next data
;TRACK_Retrig		equ 35-17		; rows to retrigger command
TRACK_prevDelay: equ 37 - 17
TRACK_cmd_A_add: equ 38 - 17  ;<< Still in use???

TRACK_REC_SIZE: equ 39


B_TRGNOT: equ 0  ; note trigger
B_ACTNOT: equ 1  ; note active
B_TRGENV: equ 2  ; envelope trigger
B_TRGCMD: equ 3  ; command active
B_ACTMOR: equ 4  ; morph active
B_TRGINS: equ 5  ; instrument trigger
B_TRGWAV: equ 6  ; waveform trigger
B_PSGSCC: equ 7  ; chip type (PSG or SCC)


_SP_Storage: equ #c000  ; to store the SP

replay_trigger: equ #c002  ; trigger byte.
replay_mainPSGvol: equ #c003  ; volume mixer for PSG SCC balance
replay_mainSCCvol: equ #c005  ; volume mixer for PSG SCC balance
;replay_songbase:		#2			; pointer to song data


; Do not move/reorder these
replay_wavebase: equ #c007  ; pointer to waveform data
replay_insbase: equ #c009  ; pointer to instrument data
TRACK_pointer1: equ #c00b
TRACK_pointer2: equ #c00d
TRACK_pointer3: equ #c00f
TRACK_pointer4: equ #c011
TRACK_pointer5: equ #c013
TRACK_pointer6: equ #c015
TRACK_pointer7: equ #c017
TRACK_pointer8: equ #c019
; / Do not move/reorder above


replay_orderpointer: equ #c01b  ; pointer to the order track list pointers

replay_speed: equ #c01d  ; speed to replay (get from song)
replay_speed_subtimer: equ #c01e  ; counter for finer speed
replay_speed_timer: equ #c01f  ; counter for speed
replay_mode: equ #c020  ; Replayer status
; mode 0  = no sound output
; mode 1  = replay song 
replay_arp_speed: equ #c021  ; arpeggio speed ( 0 = fast, $f = slowest)
replay_fade: equ #c022  ; Fade active (value = fade speed)
replay_fade_timer: equ #c023  ; Timer for fade
replay_fade_vol: equ #c024  ; fade volume to lower the channel volume.

replay_previous_note: equ #c025  ; previous note played
replay_mainvol: equ #c026  ; the volume correction.

replay_vib_table: equ #c028  ; pointer to the vibrato table
replay_tonetable: equ #c02a  ; ToneTable (affected by transpose);

replay_morph_active: equ #c02c  ; flag to indicate morphing is active
;replay_morph_update	#1			; flag to indicate a new waveform is ready
replay_morph_timer: equ #c02d  ; step timer between morphs
replay_morph_type: equ #c02e  ; Type of morph from set (0) or from buffer (1)
replay_morph_speed: equ #c02f  ; tics to wait between steps.
replay_morph_counter: equ #c030  ; counter till end morph
replay_morph_buffer: equ #c031  ; interleaved buffer with morphed waveform and morph delta values
replay_morph_waveform: equ #c071  ; waveform we are morphing to.
;replay_envelope_shape	#1			; current envelope shape

equalization_freq: equ #c072  ; vdp type for correct playback on 60hz 0=50Hx, >0=60Hz
equalization_cnt: equ #c073  ; counter for correct playback on 60hz
equalization_flag: equ #c074  ; flag indicating if only instruments need to be processed.

TRACK_Chan1: equ #c075
TRACK_Chan2: equ #c09c
TRACK_Chan3: equ #c0c3
TRACK_Chan4: equ #c0ea
TRACK_Chan5: equ #c111
TRACK_Chan6: equ #c138
TRACK_Chan7: equ #c15f
TRACK_Chan8: equ #c186

;--- AY SPECIFIC
PSG_registers: equ #c1ad
PSG_regToneA: equ #c1ad  ; Tone A freq low (8bit)
; Tone A freq high (4bit)
PSG_regToneB: equ #c1af  ; Tone B freq low
; Tone B freq high
PSG_regToneC: equ #c1b1  ; Tone C freq low
; Tone C freq high
PSG_regNOISE: equ #c1b3  ; Noise freq (5bit)
PSG_regMIXER: equ #c1b4  ;0x38	;x3f	; Mixer control (1 = off, 0 = on)
PSG_regVOLA: equ #c1b5  ; Chan A volume
PSG_regVOLB: equ #c1b6  ; Chan B volume
PSG_regVOLC: equ #c1b7  ; Chan C volume
PSG_regEnvL: equ #c1b8  ; Volume Env Freq low (8bit)	
PSG_regEnvH: equ #c1b9  ; Volume Env Freq high (4bit)
PSG_regEnvShape: equ #c1ba  ; Volume Env Shape (4bit)

;--- SCC SPECIFIC

_0x9800: equ #c1bb  ; Waveform data
_0x9820: equ #c1db
_0x9840: equ #c1fb
_0x9860: equ #c21b
SCC_registers: equ #c23b
SCC_regToneA: equ #c23b  ; Tone A freq low (8bit)
; Tone A freq high (4bit)
SCC_regToneB: equ #c23d  ; Tone B freq low
; Tone B freq high
SCC_regToneC: equ #c23f  ; Tone C freq low
; Tone C freq high
SCC_regToneD: equ #c241  ; Tone D freq low
; Tone D freq high
SCC_regToneE: equ #c243  ; Tone E freq low
; Tone E freq high
SCC_regVOLA: equ #c245  ; Chan A volume
SCC_regVOLB: equ #c246  ; Chan B volume
SCC_regVOLC: equ #c247  ; Chan C volume
SCC_regVOLD: equ #c248  ; Chan D volume
SCC_regVOLE: equ #c249  ; Chan E volume
SCC_regMIXER: equ #c24a  ; x3f	; Mixer control (1 = off, 0 = on)


;/// see to remove this.
;-- SCC registers
oldregs: equ #c24b  ; a way to int the SCC




debug_pointer1: equ #c2db
debug_pointer2: equ #c2dd
debug_pnt: equ #c2df
TEXT_Chan: equ #c55f


;	include	"..\ttsfxplay\ttsfxplay_RAM.asm"
pattern: equ #c587
__sjasm_page_0_end:
    ds 24802, 0
    org #4000
__sjasm_page_1_start:
__sjasm_page_1_end:
    ds 32768, 0
