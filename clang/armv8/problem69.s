	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB0_7
; %bb.1:
	mov	x10, #0                         ; =0x0
	mov	w8, #2147483647                 ; =0x7fffffff
	mov	w9, #-1                         ; =0xffffffff
	mov	w11, w1
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x10, x10, #1
	cmp	x11, x10
	b.eq	LBB0_5
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w12, [x0, x10, lsl #2]
	tbnz	w12, #0, LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	cmp	w12, w8
	ccmn	w9, #1, #4, ge
	csel	w8, w12, w8, eq
	csel	w9, w10, w9, eq
	b	LBB0_2
LBB0_5:
	cmn	w9, #1
	b.eq	LBB0_7
; %bb.6:
	stp	w8, w9, [x2]
	mov	x0, x2
	ret
LBB0_7:
	mov	x0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
