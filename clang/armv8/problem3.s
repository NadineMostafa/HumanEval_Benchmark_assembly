	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	fcvtzs	s1, s0
	scvtf	s1, s1
	fsub	s0, s0, s1
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
