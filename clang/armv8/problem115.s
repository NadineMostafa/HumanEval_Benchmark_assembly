	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	mov	x8, x0
	ldr	x0, [x0]
	cmp	w1, #2
	b.lt	LBB0_3
; %bb.1:
	mov	w9, w1
	add	x8, x8, #8
	sub	x9, x9, #1
	mov	x10, x0
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x11, [x8], #8
	and	x10, x10, x10, asr #63
	add	x10, x11, x10
	cmp	x10, x0
	csel	x0, x10, x0, lt
	subs	x9, x9, #1
	b.ne	LBB0_2
LBB0_3:
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
