	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	fmul	s3, s1, s1
	fmadd	s3, s0, s0, s3
	fmsub	s3, s2, s2, s3
	fabs	s3, s3
	fcvt	d3, s3
	mov	x8, #17197                      ; =0x432d
	movk	x8, #60188, lsl #16
	movk	x8, #14050, lsl #32
	movk	x8, #16154, lsl #48
	fmov	d4, x8
	fcmp	d3, d4
	b.pl	LBB0_2
; %bb.1:
	mov	w0, #1                          ; =0x1
	ret
LBB0_2:
	fmul	s2, s2, s2
	fmadd	s3, s0, s0, s2
	fmsub	s3, s1, s1, s3
	fabs	s3, s3
	fcvt	d3, s3
	fmov	d4, x8
	fcmp	d3, d4
	b.pl	LBB0_4
; %bb.3:
	mov	w0, #1                          ; =0x1
	ret
LBB0_4:
	fmadd	s1, s1, s1, s2
	fmsub	s0, s0, s0, s1
	fabs	s0, s0
	fcvt	d0, s0
	fmov	d1, x8
	fcmp	d0, d1
	b.pl	LBB0_6
; %bb.5:
	mov	w0, #1                          ; =0x1
	ret
LBB0_6:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
