	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	mov	w8, #1                          ; =0x1
	cmp	w0, #1
	b.lt	LBB0_2
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	lsl	w8, w8, #1
	sdiv	w9, w8, w1
	msub	w8, w9, w1, w8
	subs	w0, w0, #1
	b.ne	LBB0_1
LBB0_2:
	mov	x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
