	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x3
	mov	x20, x2
	mov	x22, x1
	mov	x23, x0
	bl	_strlen
	add	w8, w0, #1
	sxtw	x0, w8
	bl	_malloc
	mov	x21, x0
	ldrb	w11, [x23]
	cbz	w11, LBB0_8
; %bb.1:
	mov	x9, #0                          ; =0x0
	mov	w8, #0                          ; =0x0
	ldrb	w10, [x22], #1
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	strb	w11, [x21, w8, sxtw]
	add	w8, w8, #1
                                        ; kill: def $w8 killed $w8 def $x8
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	x9, x9, #1
	ldrb	w11, [x23, x9]
	cbz	w11, LBB0_7
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	mov	x12, x22
	mov	x13, x10
	cbz	w10, LBB0_2
LBB0_5:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w11, w13
	b.eq	LBB0_3
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=2
	ldrb	w13, [x12], #1
	cbnz	w13, LBB0_5
	b	LBB0_2
LBB0_7:
	sxtw	x8, w8
	b	LBB0_9
LBB0_8:
	mov	x8, #0                          ; =0x0
LBB0_9:
	strb	wzr, [x21, x8]
	mov	x0, x21
	bl	_strlen
	cmp	w0, #2
	b.lt	LBB0_13
; %bb.10:
	ubfx	x8, x0, #1, #30
	mov	x9, #-4294967296                ; =0xffffffff00000000
	add	x11, x9, x0, lsl #32
Lloh0:
	adrp	x10, l_.str.1@PAGE
Lloh1:
	add	x10, x10, l_.str.1@PAGEOFF
	mov	x12, x21
Lloh2:
	adrp	x22, l_.str@PAGE
Lloh3:
	add	x22, x22, l_.str@PAGEOFF
LBB0_11:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w13, [x12], #1
	asr	x14, x11, #32
	ldrb	w14, [x21, x14]
	cmp	w13, w14
	b.ne	LBB0_14
; %bb.12:                               ;   in Loop: Header=BB0_11 Depth=1
	add	x11, x11, x9
	subs	x8, x8, #1
	b.ne	LBB0_11
	b	LBB0_15
LBB0_13:
Lloh4:
	adrp	x22, l_.str@PAGE
Lloh5:
	add	x22, x22, l_.str@PAGEOFF
	b	LBB0_15
LBB0_14:
	mov	x22, x10
LBB0_15:
	mov	x0, x20
	mov	x1, x21
	bl	_strcpy
	mov	x0, x19
	mov	x1, x22
	bl	_strcpy
	mov	x0, x21
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	b	_free
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"True"

l_.str.1:                               ; @.str.1
	.asciz	"False"

.subsections_via_symbols
