	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	tst	w0, #0x1
	ccmp	w0, #7, #4, eq
	cset	w0, gt
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
