	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	ldrb	w12, [x0]
	cbz	w12, LBB0_4
; %bb.1:
	mov	x9, #0                          ; =0x0
	add	x8, x0, #1
	mov	w10, #20165                     ; =0x4ec5
	mov	w11, #26                        ; =0x1a
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	sxtb	w12, w12
	sub	w12, w12, #93
	mul	w13, w12, w10
	lsr	w14, w13, #19
	add	w13, w14, w13, lsr #31
	msub	w12, w13, w11, w12
	add	w12, w12, #97
	strb	w12, [x1, x9]
	add	x13, x9, #1
	ldrb	w12, [x8, x9]
	mov	x9, x13
	cbnz	w12, LBB0_2
; %bb.3:
	strb	wzr, [x1, x13]
	ret
LBB0_4:
	strb	wzr, [x1, xzr]
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
