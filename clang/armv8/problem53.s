	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB0_6
; %bb.1:
	ldr	w8, [x0]
	cmp	w8, w2
	b.ge	LBB0_7
; %bb.2:
	mov	w8, w1
	mov	w10, #1                         ; =0x1
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	mov	x9, x10
	cmp	x8, x10
	b.eq	LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	ldr	w11, [x0, x9, lsl #2]
	add	x10, x9, #1
	cmp	w11, w2
	b.lt	LBB0_3
LBB0_5:
	cmp	x9, x8
	cset	w0, hs
	ret
LBB0_6:
	mov	w0, #1                          ; =0x1
	ret
LBB0_7:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
