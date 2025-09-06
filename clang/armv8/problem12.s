	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x20, x1
	mov	x19, x0
	bl	_strlen
	mov	x21, x0
	mov	x0, x20
	bl	_strlen
	cmp	w21, w0
	csel	w21, w21, w0, lt
	add	w8, w21, #1
	sxtw	x0, w8
	bl	_malloc
	cbz	x0, LBB0_16
; %bb.1:
	cmp	w21, #1
	b.lt	LBB0_15
; %bb.2:
	cmp	w21, #8
	b.hs	LBB0_4
; %bb.3:
	mov	x8, #0                          ; =0x0
	b	LBB0_13
LBB0_4:
	cmp	w21, #64
	b.hs	LBB0_6
; %bb.5:
	mov	x8, #0                          ; =0x0
	b	LBB0_10
LBB0_6:
	and	x8, x21, #0x7fffffc0
	add	x9, x0, #32
	add	x10, x19, #32
	add	x11, x20, #32
	movi.16b	v0, #49
	movi.16b	v1, #48
	mov	x12, x8
LBB0_7:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q2, q3, [x10, #-32]
	ldp	q4, q5, [x10], #64
	ldp	q6, q7, [x11, #-32]
	ldp	q16, q17, [x11], #64
	cmeq.16b	v2, v2, v6
	cmeq.16b	v3, v3, v7
	cmeq.16b	v4, v4, v16
	cmeq.16b	v5, v5, v17
	bsl.16b	v2, v1, v0
	bsl.16b	v3, v1, v0
	bsl.16b	v4, v1, v0
	bsl.16b	v5, v1, v0
	stp	q2, q3, [x9, #-32]
	stp	q4, q5, [x9], #64
	subs	x12, x12, #64
	b.ne	LBB0_7
; %bb.8:
	cmp	x8, x21
	b.eq	LBB0_15
; %bb.9:
	tst	x21, #0x38
	b.eq	LBB0_13
LBB0_10:
	mov	x12, x8
	and	x8, x21, #0x7ffffff8
	add	x9, x19, x12
	add	x10, x20, x12
	add	x11, x0, x12
	sub	x12, x12, x8
	movi.8b	v0, #49
	movi.8b	v1, #48
LBB0_11:                                ; =>This Inner Loop Header: Depth=1
	ldr	d2, [x9], #8
	ldr	d3, [x10], #8
	cmeq.8b	v2, v2, v3
	bsl.8b	v2, v1, v0
	str	d2, [x11], #8
	adds	x12, x12, #8
	b.ne	LBB0_11
; %bb.12:
	cmp	x8, x21
	b.eq	LBB0_15
LBB0_13:
	add	x9, x0, x8
	add	x10, x20, x8
	add	x11, x19, x8
	sub	x8, x21, x8
	mov	w12, #48                        ; =0x30
LBB0_14:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w13, [x11], #1
	ldrb	w14, [x10], #1
	cmp	w13, w14
	cinc	w13, w12, ne
	strb	w13, [x9], #1
	subs	x8, x8, #1
	b.ne	LBB0_14
LBB0_15:
	strb	wzr, [x0, w21, sxtw]
LBB0_16:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
