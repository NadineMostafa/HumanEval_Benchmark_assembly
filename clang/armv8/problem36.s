	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB0_4
; %bb.1:
	mov	w8, w1
	mov	w9, #16384                      ; =0x4000
	movk	w9, #50716, lsl #16
	fmov	s0, w9
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	s1, [x0], #4
	fcmp	s0, s1
	fcsel	s0, s1, s0, mi
	subs	x8, x8, #1
	b.ne	LBB0_2
; %bb.3:
	ret
LBB0_4:
	mov	w8, #16384                      ; =0x4000
	movk	w8, #50716, lsl #16
	fmov	s0, w8
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
