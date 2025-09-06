	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
	mov	x20, x0
	bl	_strlen
	cmp	w0, #1
	b.lt	LBB0_14
; %bb.1:
	mov	x9, #0                          ; =0x0
	and	x8, x0, #0x7fffffff
	cmp	x8, #8
	b.lo	LBB0_12
; %bb.2:
	sub	x10, x19, x20
	cmp	x10, #16
	b.lo	LBB0_12
; %bb.3:
	cmp	x8, #16
	b.hs	LBB0_5
; %bb.4:
	mov	x9, #0                          ; =0x0
	b	LBB0_9
LBB0_5:
	and	x10, x0, #0xf
	sub	x9, x8, x10
	movi.16b	v0, #133
	movi.16b	v1, #230
	movi.16b	v2, #191
	movi.16b	v3, #26
	movi.16b	v4, #32
	movi.16b	v5, #224
	mov	x11, x9
	mov	x12, x19
	mov	x13, x20
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	q6, [x13], #16
	add.16b	v7, v6, v0
	cmhi.16b	v7, v1, v7
	add.16b	v16, v6, v2
	cmhi.16b	v16, v3, v16
	orr.16b	v17, v6, v4
	bsl.16b	v16, v17, v6
	add.16b	v6, v6, v5
	bit.16b	v6, v16, v7
	str	q6, [x12], #16
	subs	x11, x11, #16
	b.ne	LBB0_6
; %bb.7:
	cbz	x10, LBB0_14
; %bb.8:
	cmp	x10, #7
	b.ls	LBB0_12
LBB0_9:
	mov	x13, x9
	and	x10, x0, #0x7
	add	x11, x20, x9
	add	x12, x19, x9
	sub	x9, x8, x10
	add	x13, x13, x10
	sub	x13, x13, x8
	movi.8b	v0, #133
	movi.8b	v1, #230
	movi.8b	v2, #191
	movi.8b	v3, #26
	movi.8b	v4, #32
	movi.8b	v5, #224
LBB0_10:                                ; =>This Inner Loop Header: Depth=1
	ldr	d6, [x11], #8
	add.8b	v7, v6, v0
	cmhi.8b	v7, v1, v7
	add.8b	v16, v6, v2
	cmhi.8b	v16, v3, v16
	orr.8b	v17, v6, v4
	bsl.8b	v16, v17, v6
	add.8b	v6, v6, v5
	bit.8b	v6, v16, v7
	str	d6, [x12], #8
	adds	x13, x13, #8
	b.ne	LBB0_10
; %bb.11:
	cbz	x10, LBB0_14
LBB0_12:
	add	x10, x19, x9
	add	x11, x20, x9
	sub	x8, x8, x9
LBB0_13:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w9, [x11], #1
	sub	w12, w9, #97
	sub	w13, w9, #65
	orr	w14, w9, #0x20
	cmp	w13, #26
	csel	w13, w14, w9, lo
	sub	w9, w9, #32
	cmp	w12, #25
	csel	w9, w13, w9, hi
	strb	w9, [x10], #1
	subs	x8, x8, #1
	b.ne	LBB0_13
LBB0_14:
	strb	wzr, [x19, w0, sxtw]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
