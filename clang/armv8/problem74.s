	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w1, #2
	b.lt	LBB0_3
; %bb.1:
	lsr	w9, w1, #1
	mov	w10, w1
	cmp	w1, #31
	b.hi	LBB0_4
; %bb.2:
	mov	x11, #0                         ; =0x0
	mov	w8, #0                          ; =0x0
	b	LBB0_7
LBB0_3:
	mov	w8, #0                          ; =0x0
	mov	x0, x8
	ret
LBB0_4:
	and	x11, x9, #0x3ffffff0
	add	x8, x0, x10, lsl #2
	sub	x8, x8, #32
	add	x12, x0, #32
	movi.2d	v0, #0000000000000000
	mov	x13, x11
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q4, q5, [x12, #-32]
	ldp	q6, q7, [x12], #64
	ldp	q17, q16, [x8]
	rev64.4s	v16, v16
	ext.16b	v16, v16, v16, #8
	rev64.4s	v17, v17
	ext.16b	v17, v17, v17, #8
	ldp	q19, q18, [x8, #-32]
	rev64.4s	v18, v18
	ext.16b	v18, v18, v18, #8
	rev64.4s	v19, v19
	ext.16b	v19, v19, v19, #8
	cmeq.4s	v4, v4, v16
	mvn.16b	v4, v4
	cmeq.4s	v5, v5, v17
	mvn.16b	v5, v5
	cmeq.4s	v6, v6, v18
	mvn.16b	v6, v6
	cmeq.4s	v7, v7, v19
	mvn.16b	v7, v7
	sub.4s	v0, v0, v4
	sub.4s	v1, v1, v5
	sub.4s	v2, v2, v6
	sub.4s	v3, v3, v7
	sub	x8, x8, #64
	sub	x13, x13, #16
	cbnz	x13, LBB0_5
; %bb.6:
	add.4s	v0, v1, v0
	add.4s	v1, v3, v2
	add.4s	v0, v1, v0
	addv.4s	s0, v0
	fmov	w8, s0
	cmp	x11, x9
	b.eq	LBB0_9
LBB0_7:
	lsl	x13, x11, #2
	add	x12, x0, x13
	sub	x13, x0, x13
	add	x10, x13, x10, lsl #2
	sub	x10, x10, #4
	sub	x9, x9, x11
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x12], #4
	ldr	w13, [x10], #-4
	cmp	w11, w13
	cinc	w8, w8, ne
	subs	x9, x9, #1
	b.ne	LBB0_8
LBB0_9:
	mov	x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
