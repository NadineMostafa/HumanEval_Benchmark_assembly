	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w0, #0
	cneg	w8, w0, mi
	mov	w9, #52429                      ; =0xcccd
	movk	w9, #52428, lsl #16
	umull	x10, w8, w9
	lsr	x10, x10, #35
	mov	w11, #10                        ; =0xa
	msub	w8, w10, w11, w8
	cmp	w1, #0
	cneg	w10, w1, mi
	umull	x9, w10, w9
	lsr	x9, x9, #35
	msub	w9, w9, w11, w10
	mul	w0, w9, w8
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
