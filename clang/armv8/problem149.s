	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
Lloh0:
	adrp	x22, l_.str@PAGE
Lloh1:
	add	x22, x22, l_.str@PAGEOFF
	mov	x0, x22
	mov	x1, x21
	bl	_strcmp
	cmp	w0, #0
	csetm	w23, ne
	mov	x0, x22
	mov	x1, x20
	bl	_strcmp
	cmp	w0, #0
	csetm	w24, ne
Lloh2:
	adrp	x22, l_.str.1@PAGE
Lloh3:
	add	x22, x22, l_.str.1@PAGEOFF
	mov	x0, x22
	mov	x1, x21
	bl	_strcmp
	cmp	w0, #0
	csinc	w23, w23, wzr, ne
	mov	x0, x22
	mov	x1, x20
	bl	_strcmp
	cmp	w0, #0
	csinc	w24, w24, wzr, ne
Lloh4:
	adrp	x22, l_.str.2@PAGE
Lloh5:
	add	x22, x22, l_.str.2@PAGEOFF
	mov	x0, x22
	mov	x1, x21
	bl	_strcmp
	mov	w25, #2                         ; =0x2
	cmp	w0, #0
	csel	w23, w25, w23, eq
	mov	x0, x22
	mov	x1, x20
	bl	_strcmp
	cmp	w0, #0
	csel	w24, w25, w24, eq
Lloh6:
	adrp	x22, l_.str.3@PAGE
Lloh7:
	add	x22, x22, l_.str.3@PAGEOFF
	mov	x0, x22
	mov	x1, x21
	bl	_strcmp
	mov	w25, #3                         ; =0x3
	cmp	w0, #0
	csel	w23, w25, w23, eq
	mov	x0, x22
	mov	x1, x20
	bl	_strcmp
	cmp	w0, #0
	csel	w24, w25, w24, eq
Lloh8:
	adrp	x22, l_.str.4@PAGE
Lloh9:
	add	x22, x22, l_.str.4@PAGEOFF
	mov	x0, x22
	mov	x1, x21
	bl	_strcmp
	mov	w25, #4                         ; =0x4
	cmp	w0, #0
	csel	w23, w25, w23, eq
	mov	x0, x22
	mov	x1, x20
	bl	_strcmp
	cmp	w0, #0
	csel	w24, w25, w24, eq
Lloh10:
	adrp	x22, l_.str.5@PAGE
Lloh11:
	add	x22, x22, l_.str.5@PAGEOFF
	mov	x0, x22
	mov	x1, x21
	bl	_strcmp
	mov	w25, #5                         ; =0x5
	cmp	w0, #0
	csel	w23, w25, w23, eq
	mov	x0, x22
	mov	x1, x20
	bl	_strcmp
	cmp	w0, #0
	csel	w24, w25, w24, eq
Lloh12:
	adrp	x22, l_.str.6@PAGE
Lloh13:
	add	x22, x22, l_.str.6@PAGEOFF
	mov	x0, x22
	mov	x1, x21
	bl	_strcmp
	mov	w25, #6                         ; =0x6
	cmp	w0, #0
	csel	w23, w25, w23, eq
	mov	x0, x22
	mov	x1, x20
	bl	_strcmp
	cmp	w0, #0
	csel	w24, w25, w24, eq
Lloh14:
	adrp	x22, l_.str.7@PAGE
Lloh15:
	add	x22, x22, l_.str.7@PAGEOFF
	mov	x0, x22
	mov	x1, x21
	bl	_strcmp
	mov	w21, #7                         ; =0x7
	cmp	w0, #0
	csel	w23, w21, w23, eq
	mov	x0, x22
	mov	x1, x20
	bl	_strcmp
	cmp	w0, #0
	csel	w8, w21, w24, eq
	cmn	w23, #1
	b.eq	LBB0_10
; %bb.1:
	cmn	w8, #1
	b.eq	LBB0_10
; %bb.2:
	cmp	w23, w8
	b.eq	LBB0_10
; %bb.3:
	csel	w21, w23, w8, hi
	csel	w20, w23, w8, lo
	mvn	w8, w20
	add	w8, w21, w8
	str	w8, [x19]
	cmp	w8, #1
	b.lt	LBB0_10
; %bb.4:
	ubfiz	x0, x8, #3, #32
	bl	_malloc
	add	w14, w20, #1
	cmp	w14, w21
	b.hs	LBB0_11
; %bb.5:
	sub	w10, w21, w20
	sub	w9, w10, #2
Lloh16:
	adrp	x8, l___const.func0.planets@PAGE
Lloh17:
	add	x8, x8, l___const.func0.planets@PAGEOFF
	cmp	w9, #7
	b.lo	LBB0_12
; %bb.6:
	cmp	w10, #2
	b.mi	LBB0_12
; %bb.7:
	mov	x11, #0                         ; =0x0
	add	x12, x9, #1
	and	x13, x12, #0x1fffffff8
	add	x9, x13, x14
	add	w10, w20, w13
	add	x14, x8, x14, lsl #3
	add	x14, x14, #32
	mov	x15, #34359738368               ; =0x800000000
	mov	x16, x13
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x14, #-32]
	ldp	q2, q3, [x14], #64
	add	x17, x0, x11, asr #29
	stp	q0, q1, [x17]
	stp	q2, q3, [x17, #32]
	add	x11, x11, x15
	subs	x16, x16, #8
	b.ne	LBB0_8
; %bb.9:
	cmp	x12, x13
	b.eq	LBB0_11
	b	LBB0_13
LBB0_10:
	mov	x0, #0                          ; =0x0
	str	wzr, [x19]
LBB0_11:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB0_12:
	mov	x9, x14
	mov	x10, x20
LBB0_13:
	sub	w11, w21, w9
LBB0_14:                                ; =>This Inner Loop Header: Depth=1
	ldr	x12, [x8, x9, lsl #3]
	sub	w10, w10, w20
	str	x12, [x0, w10, sxtw #3]
	mov	x10, x9
	add	x9, x9, #1
	subs	w11, w11, #1
	b.ne	LBB0_14
	b	LBB0_11
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Mercury"

l_.str.1:                               ; @.str.1
	.asciz	"Venus"

l_.str.2:                               ; @.str.2
	.asciz	"Earth"

l_.str.3:                               ; @.str.3
	.asciz	"Mars"

l_.str.4:                               ; @.str.4
	.asciz	"Jupiter"

l_.str.5:                               ; @.str.5
	.asciz	"Saturn"

l_.str.6:                               ; @.str.6
	.asciz	"Uranus"

l_.str.7:                               ; @.str.7
	.asciz	"Neptune"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @__const.func0.planets
l___const.func0.planets:
	.quad	l_.str
	.quad	l_.str.1
	.quad	l_.str.2
	.quad	l_.str.3
	.quad	l_.str.4
	.quad	l_.str.5
	.quad	l_.str.6
	.quad	l_.str.7

.subsections_via_symbols
