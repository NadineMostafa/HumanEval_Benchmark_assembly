	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	mov	w8, #0                          ; =0x0
	cmp	w0, #0
	cneg	w9, w0, mi
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	mul	w10, w8, w8
	mul	w10, w10, w8
	add	w8, w8, #1
	cmp	w10, w9
	b.lo	LBB0_1
; %bb.2:
	cset	w0, ls
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
