	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cbz	w1, LBB0_5
; %bb.1:
	cmp	w1, #1
	b.lt	LBB0_6
; %bb.2:
	mov	w8, #0                          ; =0x0
	mov	w9, w1
	mov	w10, #1                         ; =0x1
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x0], #4
	cmp	w11, #0
	csel	w10, wzr, w10, eq
	cneg	w11, w11, mi
	add	w8, w11, w8
	cneg	w10, w10, lt
	subs	x9, x9, #1
	b.ne	LBB0_3
; %bb.4:
	mul	w0, w10, w8
	ret
LBB0_5:
	mov	w0, #-32768                     ; =0xffff8000
	ret
LBB0_6:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
