	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w0, #1
	b.lt	LBB0_6
; %bb.1:
	mov	w9, #0                          ; =0x0
	mov	w8, #0                          ; =0x0
	mov	w10, #35747                     ; =0x8ba3
	movk	w10, #47662, lsl #16
	mov	w11, #20165                     ; =0x4ec5
	movk	w11, #50412, lsl #16
	mov	w12, #15123                     ; =0x3b13
	movk	w12, #5041, lsl #16
	mov	w13, #53620                     ; =0xd174
	movk	w13, #5957, lsl #16
	mov	w14, #52429                     ; =0xcccd
	movk	w14, #52428, lsl #16
	mov	w15, #10                        ; =0xa
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	w9, w9, #1
	cmp	w9, w0
	b.eq	LBB0_7
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	mul	w16, w9, w10
	mul	w17, w9, w11
	cmp	w17, w12
	ccmp	w16, w13, #0, hi
	ccmp	w9, #0, #4, ls
	b.eq	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x16, x9
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	umull	x17, w16, w14
	lsr	x17, x17, #35
	msub	w1, w17, w15, w16
	cmp	w1, #7
	cinc	w8, w8, eq
	cmp	w16, #9
	mov	x16, x17
	b.hi	LBB0_5
	b	LBB0_2
LBB0_6:
	mov	w8, #0                          ; =0x0
LBB0_7:
	mov	x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
