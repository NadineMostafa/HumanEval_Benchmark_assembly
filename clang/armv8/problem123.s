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
	mov	w9, w1
	cmp	w1, #15
	b.hi	LBB0_4
; %bb.2:
	mov	x10, #0                         ; =0x0
	mov	w8, #0                          ; =0x0
	b	LBB0_7
LBB0_3:
	mov	w8, #0                          ; =0x0
	mov	x0, x8
	ret
LBB0_4:
	and	x10, x9, #0x7ffffff0
	add	x8, x0, #32
	movi.2d	v0, #0000000000000000
	movi.4s	v1, #99
	movi.4s	v2, #199
	mov	x11, x10
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v5, #0000000000000000
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q6, q7, [x8, #-32]
	ldp	q16, q17, [x8], #64
	add.4s	v18, v6, v1
	add.4s	v19, v7, v1
	add.4s	v20, v16, v1
	add.4s	v21, v17, v1
	cmhi.4s	v18, v2, v18
	cmhi.4s	v19, v2, v19
	cmhi.4s	v20, v2, v20
	cmhi.4s	v21, v2, v21
	and.16b	v6, v6, v18
	and.16b	v7, v7, v19
	and.16b	v16, v16, v20
	and.16b	v17, v17, v21
	add.4s	v0, v6, v0
	add.4s	v3, v7, v3
	add.4s	v4, v16, v4
	add.4s	v5, v17, v5
	subs	x11, x11, #16
	b.ne	LBB0_5
; %bb.6:
	add.4s	v0, v3, v0
	add.4s	v0, v4, v0
	add.4s	v0, v5, v0
	addv.4s	s0, v0
	fmov	w8, s0
	cmp	x10, x9
	b.eq	LBB0_9
LBB0_7:
	add	x11, x0, x10, lsl #2
	sub	x9, x9, x10
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w10, [x11], #4
	add	w12, w10, #99
	cmp	w12, #199
	csel	w10, w10, wzr, lo
	add	w8, w10, w8
	subs	x9, x9, #1
	b.ne	LBB0_8
LBB0_9:
	mov	x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
