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
	add	w8, w0, #1
	mov	w9, #1                          ; =0x1
	mov	w0, #1                          ; =0x1
	mov	w10, #1                         ; =0x1
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	mul	x10, x10, x9
	mul	x0, x10, x0
	add	x9, x9, #1
	cmp	x8, x9
	b.ne	LBB0_2
; %bb.3:
	ret
LBB0_4:
	mov	w0, #1                          ; =0x1
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
