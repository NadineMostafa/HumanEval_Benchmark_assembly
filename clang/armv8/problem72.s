	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	fadd	s4, s0, s1
	fadd	s5, s0, s2
	fadd	s6, s1, s2
	fmov	s3, #-1.00000000
	fcmp	s6, s0
	fccmp	s4, s2, #0, hi
	fccmp	s5, s1, #0, hi
	b.ls	LBB0_2
; %bb.1:
	fadd	s3, s4, s2
	fmov	s4, #0.50000000
	fmul	s3, s3, s4
	fsub	s0, s3, s0
	fmul	s0, s3, s0
	fsub	s1, s3, s1
	fmul	s0, s1, s0
	fsub	s1, s3, s2
	fmul	s0, s1, s0
	fsqrt	s0, s0
	mov	w8, #1120403456                 ; =0x42c80000
	fmov	s1, w8
	fmul	s0, s0, s1
	frinta	s0, s0
	fdiv	s3, s0, s1
LBB0_2:
	fmov	s0, s3
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
