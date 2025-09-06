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
	mov	w8, w1
	cmp	w1, #16
	b.hi	LBB0_4
; %bb.2:
	mov	w12, #0                         ; =0x0
	mov	w13, #0                         ; =0x0
	mov	w9, #1                          ; =0x1
	b	LBB0_7
LBB0_3:
	mov	w0, #1                          ; =0x1
	ret
LBB0_4:
	movi.2d	v0, #0000000000000000
	sub	x10, x8, #1
	movi.2d	v5, #0000000000000000
	and	x11, x10, #0xfffffffffffffff0
	orr	x9, x11, #0x1
	add	x12, x0, #32
	mov	x13, x11
	movi.2d	v6, #0000000000000000
	movi.2d	v7, #0000000000000000
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldur	q16, [x12, #-28]
	ldur	q17, [x12, #-12]
	ldur	q18, [x12, #4]
	ldur	q19, [x12, #20]
	ldp	q20, q21, [x12, #-32]
	ldp	q22, q25, [x12], #64
	fcmgt.4s	v23, v16, v20
	xtn.4h	v23, v23
	fcmgt.4s	v24, v17, v21
	xtn.4h	v24, v24
	fcmgt.4s	v26, v18, v22
	xtn.4h	v26, v26
	fcmgt.4s	v27, v19, v25
	xtn.4h	v27, v27
	orr.8b	v1, v1, v23
	orr.8b	v2, v2, v24
	orr.8b	v3, v3, v26
	orr.8b	v4, v4, v27
	fcmgt.4s	v16, v20, v16
	xtn.4h	v16, v16
	fcmgt.4s	v17, v21, v17
	xtn.4h	v17, v17
	fcmgt.4s	v18, v22, v18
	xtn.4h	v18, v18
	fcmgt.4s	v19, v25, v19
	xtn.4h	v19, v19
	orr.8b	v0, v0, v16
	orr.8b	v5, v5, v17
	orr.8b	v6, v6, v18
	orr.8b	v7, v7, v19
	subs	x13, x13, #16
	b.ne	LBB0_5
; %bb.6:
	orr.8b	v0, v5, v0
	orr.8b	v0, v6, v0
	orr.8b	v0, v7, v0
	shl.4h	v0, v0, #15
	cmlt.4h	v0, v0, #0
	umaxv.4h	h0, v0
	fmov	w12, s0
	and	w12, w12, #0x1
	orr.8b	v0, v2, v1
	orr.8b	v0, v3, v0
	orr.8b	v0, v4, v0
	shl.4h	v0, v0, #15
	cmlt.4h	v0, v0, #0
	umaxv.4h	h0, v0
	fmov	w13, s0
	and	w13, w13, #0x1
	cmp	x10, x11
	b.eq	LBB0_9
LBB0_7:
	add	x10, x0, x9, lsl #2
	sub	x8, x8, x9
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	ldp	s1, s0, [x10, #-4]
	fcmp	s0, s1
	csinc	w13, w13, wzr, le
	csinc	w12, w12, wzr, pl
	add	x10, x10, #4
	subs	x8, x8, #1
	b.ne	LBB0_8
LBB0_9:
	add	w8, w12, w13
	cmp	w8, #2
	cset	w0, ne
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
