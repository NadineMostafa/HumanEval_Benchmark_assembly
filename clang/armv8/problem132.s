	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w0, #1
	b.lt	LBB0_4
; %bb.1:
	mov	w9, #0                          ; =0x0
	mov	w8, #1                          ; =0x1
	mov	w10, #52429                     ; =0xcccd
	movk	w10, #52428, lsl #16
	mov	w11, #10                        ; =0xa
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	umull	x12, w0, w10
	lsr	x12, x12, #35
	msub	w13, w12, w11, w0
	tst	w13, #0x1
	csinc	w13, w13, wzr, ne
	mul	w8, w13, w8
	csinc	w9, w9, wzr, eq
	cmp	w0, #9
	mov	x0, x12
	b.hi	LBB0_2
; %bb.3:
	cmp	w9, #0
	csel	w0, wzr, w8, eq
	ret
LBB0_4:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
