	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	ldr	s1, [x0]
	str	s1, [x2]
	ldr	s0, [x0, #4]
	str	s0, [x2, #4]
	cmp	w1, #1
	b.lt	LBB0_8
; %bb.1:
	mov	x11, #0                         ; =0x0
	mov	w8, w1
	add	x9, x0, #4
	sub	x10, x8, #1
	mov	w12, #2139095039                ; =0x7f7fffff
	fmov	s2, w12
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x9, x9, #4
	sub	x10, x10, #1
	mov	x11, x12
	cmp	x12, x8
	b.eq	LBB0_8
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	add	x12, x11, #1
	cmp	x12, x8
	b.hs	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x13, x10
	mov	x14, x9
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=2
	add	x14, x14, #4
	subs	x13, x13, #1
	b.eq	LBB0_2
LBB0_6:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	s3, [x0, x11, lsl #2]
	ldr	s4, [x14]
	fabd	s4, s3, s4
	fcmp	s4, s2
	b.pl	LBB0_5
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	str	s3, [x2]
	ldr	s0, [x14]
	str	s0, [x2, #4]
	fmov	s1, s3
	fmov	s2, s4
	b	LBB0_5
LBB0_8:
	fcmp	s1, s0
	b.le	LBB0_10
; %bb.9:
	stp	s0, s1, [x2]
LBB0_10:
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
