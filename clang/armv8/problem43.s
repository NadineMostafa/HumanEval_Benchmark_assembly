	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB0_8
; %bb.1:
	mov	w8, w1
	cmp	w1, #15
	b.hi	LBB0_3
; %bb.2:
	mov	x9, #0                          ; =0x0
	b	LBB0_6
LBB0_3:
	and	x9, x8, #0x7ffffff0
	add	x10, x0, #32
	movi.4s	v0, #1
	mov	x11, x9
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q1, q2, [x10, #-32]
	ldp	q3, q4, [x10]
	add.4s	v1, v1, v0
	add.4s	v2, v2, v0
	add.4s	v3, v3, v0
	add.4s	v4, v4, v0
	stp	q1, q2, [x10, #-32]
	stp	q3, q4, [x10], #64
	subs	x11, x11, #16
	b.ne	LBB0_4
; %bb.5:
	cmp	x9, x8
	b.eq	LBB0_8
LBB0_6:
	add	x10, x0, x9, lsl #2
	sub	x8, x8, x9
LBB0_7:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w9, [x10]
	add	w9, w9, #1
	str	w9, [x10], #4
	subs	x8, x8, #1
	b.ne	LBB0_7
LBB0_8:
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
