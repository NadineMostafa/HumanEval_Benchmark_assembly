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
	mov	w10, #52429                     ; =0xcccd
	movk	w10, #52428, lsl #16
	mov	w11, w1
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x9, x9, #1
	cmp	x9, x11
	b.eq	LBB0_8
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	ldr	w12, [x0, x9, lsl #2]
	cmp	w12, #11
	b.lt	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x13, x12
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x14, x13
	umull	x13, w13, w10
	lsr	x13, x13, #35
	cmp	w14, #99
	b.hi	LBB0_5
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	and	w12, w12, w13
	and	w12, w12, #0x1
	add	w8, w12, w8
	b	LBB0_2
LBB0_7:
	mov	w8, #0                          ; =0x0
LBB0_8:
	mov	x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
