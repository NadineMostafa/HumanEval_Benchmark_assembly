	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w1, #0
	b.le	LBB0_3
; %bb.1:
	mov	w8, w1
	cmp	w1, #16
	b.hs	LBB0_4
; %bb.2:
	mov	x9, #0                          ; =0x0
	movi	d1, #0000000000000000
	b	LBB0_7
LBB0_3:
	scvtf	s0, w1
	movi	d2, #0000000000000000
	fdiv	s0, s2, s0
	ret
LBB0_4:
	and	x9, x8, #0x7ffffff0
	add	x10, x0, #32
	movi	d1, #0000000000000000
	mov	x11, x9
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q0, q2, [x10, #-32]
	mov	s3, v0[3]
	mov	s4, v0[2]
	mov	s5, v0[1]
	mov	s6, v2[3]
	mov	s7, v2[2]
	mov	s16, v2[1]
	ldp	q17, q18, [x10], #64
	mov	s19, v17[3]
	mov	s20, v17[2]
	mov	s21, v17[1]
	mov	s22, v18[3]
	mov	s23, v18[2]
	mov	s24, v18[1]
	fadd	s0, s1, s0
	fadd	s0, s0, s5
	fadd	s0, s0, s4
	fadd	s0, s0, s3
	fadd	s0, s0, s2
	fadd	s0, s0, s16
	fadd	s0, s0, s7
	fadd	s0, s0, s6
	fadd	s0, s0, s17
	fadd	s0, s0, s21
	fadd	s0, s0, s20
	fadd	s0, s0, s19
	fadd	s0, s0, s18
	fadd	s0, s0, s24
	fadd	s0, s0, s23
	fadd	s1, s0, s22
	subs	x11, x11, #16
	b.ne	LBB0_5
; %bb.6:
	cmp	x9, x8
	b.eq	LBB0_9
LBB0_7:
	add	x10, x0, x9, lsl #2
	sub	x9, x8, x9
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	ldr	s0, [x10], #4
	fadd	s1, s1, s0
	subs	x9, x9, #1
	b.ne	LBB0_8
LBB0_9:
	scvtf	s0, w1
	fdiv	s1, s1, s0
	cmp	w1, #16
	b.hs	LBB0_11
; %bb.10:
	mov	x9, #0                          ; =0x0
	movi	d2, #0000000000000000
	b	LBB0_14
LBB0_11:
	and	x9, x8, #0x7ffffff0
	dup.4s	v3, v1[0]
	add	x10, x0, #32
	movi	d2, #0000000000000000
	mov	x11, x9
LBB0_12:                                ; =>This Inner Loop Header: Depth=1
	ldp	q4, q5, [x10, #-32]
	ldp	q6, q7, [x10], #64
	fabd.4s	v4, v4, v3
	mov	s16, v4[3]
	mov	s17, v4[2]
	mov	s18, v4[1]
	fabd.4s	v5, v5, v3
	mov	s19, v5[3]
	mov	s20, v5[2]
	mov	s21, v5[1]
	fabd.4s	v6, v6, v3
	mov	s22, v6[3]
	mov	s23, v6[2]
	mov	s24, v6[1]
	fabd.4s	v7, v7, v3
	mov	s25, v7[3]
	mov	s26, v7[2]
	mov	s27, v7[1]
	fadd	s2, s2, s4
	fadd	s2, s2, s18
	fadd	s2, s2, s17
	fadd	s2, s2, s16
	fadd	s2, s2, s5
	fadd	s2, s2, s21
	fadd	s2, s2, s20
	fadd	s2, s2, s19
	fadd	s2, s2, s6
	fadd	s2, s2, s24
	fadd	s2, s2, s23
	fadd	s2, s2, s22
	fadd	s2, s2, s7
	fadd	s2, s2, s27
	fadd	s2, s2, s26
	fadd	s2, s2, s25
	subs	x11, x11, #16
	b.ne	LBB0_12
; %bb.13:
	cmp	x9, x8
	b.eq	LBB0_16
LBB0_14:
	add	x10, x0, x9, lsl #2
	sub	x8, x8, x9
LBB0_15:                                ; =>This Inner Loop Header: Depth=1
	ldr	s3, [x10], #4
	fabd	s3, s3, s1
	fadd	s2, s2, s3
	subs	x8, x8, #1
	b.ne	LBB0_15
LBB0_16:
	fdiv	s0, s2, s0
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
