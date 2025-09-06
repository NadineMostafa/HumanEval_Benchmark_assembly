	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cbz	w1, LBB0_4
; %bb.1:
	cmp	w1, #2
	b.lt	LBB0_5
; %bb.2:
	mov	w8, w1
	cmp	w1, #16
	b.hi	LBB0_6
; %bb.3:
	mov	w12, #0                         ; =0x0
	mov	w9, #1                          ; =0x1
	b	LBB0_9
LBB0_4:
	mov	w0, #1                          ; =0x1
	ret
LBB0_5:
	mov	w12, #0                         ; =0x0
	b	LBB0_11
LBB0_6:
	sub	x10, x8, #1
	and	x11, x10, #0xfffffffffffffff0
	orr	x9, x11, #0x1
	add	x12, x0, #32
	movi.2d	v0, #0000000000000000
	mov	x13, x11
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
LBB0_7:                                 ; =>This Inner Loop Header: Depth=1
	ldur	q4, [x12, #-28]
	ldur	q5, [x12, #-12]
	ldur	q6, [x12, #4]
	ldur	q7, [x12, #20]
	ldp	q16, q17, [x12, #-32]
	ldp	q18, q19, [x12], #64
	cmgt.4s	v4, v16, v4
	cmgt.4s	v5, v17, v5
	cmgt.4s	v6, v18, v6
	cmgt.4s	v7, v19, v7
	sub.4s	v0, v0, v4
	sub.4s	v1, v1, v5
	sub.4s	v2, v2, v6
	sub.4s	v3, v3, v7
	subs	x13, x13, #16
	b.ne	LBB0_7
; %bb.8:
	add.4s	v0, v1, v0
	add.4s	v1, v3, v2
	add.4s	v0, v1, v0
	addv.4s	s0, v0
	fmov	w12, s0
	cmp	x10, x11
	b.eq	LBB0_11
LBB0_9:
	add	x10, x0, x9, lsl #2
	sub	x8, x8, x9
LBB0_10:                                ; =>This Inner Loop Header: Depth=1
	ldp	w11, w9, [x10, #-4]
	cmp	w9, w11
	cinc	w12, w12, lt
	add	x10, x10, #4
	subs	x8, x8, #1
	b.ne	LBB0_10
LBB0_11:
	add	x8, x0, w1, sxtw #2
	ldur	w8, [x8, #-4]
	ldr	w9, [x0]
	cmp	w8, w9
	cinc	w8, w12, gt
	cmp	w8, #2
	cset	w0, lt
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
