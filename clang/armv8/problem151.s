	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w0, #1
	cset	w8, gt
	cmp	w0, #4
	b.lt	LBB0_3
; %bb.1:
	mov	w9, #2                          ; =0x2
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	udiv	w10, w0, w9
	msub	w10, w10, w9, w0
	cmp	w10, #0
	csel	w8, wzr, w8, eq
	add	w9, w9, #1
	mul	w10, w9, w9
	cmp	w10, w0
	b.le	LBB0_2
LBB0_3:
	cmp	w8, #0
	csel	w0, w2, w1, eq
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
