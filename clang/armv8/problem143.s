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
	mov	x9, #0                          ; =0x0
	mov	w8, #0                          ; =0x0
	mov	x10, #-6148914691236517206      ; =0xaaaaaaaaaaaaaaaa
	movk	x10, #43691
	mov	w11, w1
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	w12, [x0, x9, lsl #2]
	mul	w12, w12, w12
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	w8, w12, w8
	add	x9, x9, #1
	cmp	x11, x9
	b.eq	LBB0_8
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	umulh	x12, x9, x10
	lsr	x12, x12, #1
	add	w12, w12, w12, lsl #1
	cmp	w12, w9
	b.eq	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	ldr	w12, [x0, x9, lsl #2]
	tst	w9, #0x3
	b.ne	LBB0_3
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	mul	w13, w12, w12
	mul	w12, w13, w12
	b	LBB0_3
LBB0_7:
	mov	w8, #0                          ; =0x0
LBB0_8:
	mov	x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
