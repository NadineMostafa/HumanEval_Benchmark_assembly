	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	str	wzr, [x3]
	cmp	w1, w0
	csel	w9, w1, w0, gt
	csel	w8, w1, w0, lt
	add	w9, w9, #1
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	add	w8, w8, #1
	cmp	w9, w8
	b.eq	LBB0_5
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w8, #9
	b.gt	LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	tbnz	w8, #0, LBB0_1
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	ldrsw	x10, [x3]
	add	w11, w10, #1
	str	w11, [x3]
	str	w8, [x2, x10, lsl #2]
	b	LBB0_1
LBB0_5:
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
