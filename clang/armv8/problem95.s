	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB0_13
; %bb.1:
	mov	x9, #0                          ; =0x0
	mov	w8, #0                          ; =0x0
	mov	w10, w1
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	cmp	w11, w8
	csel	w8, w11, w8, gt
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	x9, x9, #1
	cmp	x9, x10
	b.eq	LBB0_9
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
	ldr	w11, [x0, x9, lsl #2]
	cmp	w11, #2
	b.lt	LBB0_3
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	cmp	w11, #4
	b.lo	LBB0_2
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w12, #3                         ; =0x3
LBB0_7:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w13, w12, #1
	udiv	w14, w11, w13
	msub	w13, w14, w13, w11
	cbz	w13, LBB0_3
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=2
	mul	w13, w12, w12
	add	w12, w12, #1
	cmp	w13, w11
	b.le	LBB0_7
	b	LBB0_2
LBB0_9:
	cmp	w8, #1
	b.lt	LBB0_13
; %bb.10:
	mov	w0, #0                          ; =0x0
	mov	w9, #52429                      ; =0xcccd
	movk	w9, #52428, lsl #16
	mov	w10, #10                        ; =0xa
LBB0_11:                                ; =>This Inner Loop Header: Depth=1
	umull	x11, w8, w9
	lsr	x11, x11, #35
	msub	w12, w11, w10, w8
	add	w0, w12, w0
	cmp	w8, #9
	mov	x8, x11
	b.hi	LBB0_11
; %bb.12:
	ret
LBB0_13:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
