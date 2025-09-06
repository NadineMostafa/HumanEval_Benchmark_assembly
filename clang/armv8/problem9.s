	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB0_3
; %bb.1:
	mov	w8, w1
	cmp	w1, #15
	b.hi	LBB0_4
; %bb.2:
	mov	x9, #0                          ; =0x0
	mov	w11, #0                         ; =0x0
	mov	w10, #1                         ; =0x1
	b	LBB0_7
LBB0_3:
	mov	w11, #0                         ; =0x0
	mov	w10, #1                         ; =0x1
	stp	w11, w10, [x2]
	ret
LBB0_4:
	movi.2d	v0, #0000000000000000
	and	x9, x8, #0x7ffffff0
	movi.4s	v4, #1
	add	x10, x0, #32
	mov	x11, x9
	movi.4s	v5, #1
	movi.4s	v6, #1
	movi.4s	v7, #1
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q16, q17, [x10, #-32]
	ldp	q18, q19, [x10], #64
	add.4s	v0, v16, v0
	add.4s	v1, v17, v1
	add.4s	v2, v18, v2
	add.4s	v3, v19, v3
	mul.4s	v4, v16, v4
	mul.4s	v5, v17, v5
	mul.4s	v6, v18, v6
	mul.4s	v7, v19, v7
	subs	x11, x11, #16
	b.ne	LBB0_5
; %bb.6:
	mul.4s	v4, v5, v4
	mul.4s	v4, v6, v4
	mul.4s	v4, v7, v4
	ext.16b	v5, v4, v4, #8
	mul.2s	v4, v4, v5
	fmov	w10, s4
	mov.s	w11, v4[1]
	mul	w10, w10, w11
	add.4s	v0, v1, v0
	add.4s	v0, v2, v0
	add.4s	v0, v3, v0
	addv.4s	s0, v0
	fmov	w11, s0
	cmp	x9, x8
	b.eq	LBB0_9
LBB0_7:
	add	x12, x0, x9, lsl #2
	sub	x8, x8, x9
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w9, [x12], #4
	add	w11, w9, w11
	mul	w10, w9, w10
	subs	x8, x8, #1
	b.ne	LBB0_8
LBB0_9:
	stp	w11, w10, [x2]
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
