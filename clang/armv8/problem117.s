	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB0_18
; %bb.1:
	mov	x10, #0                         ; =0x0
	mov	w8, w1
	mov	w9, #1                          ; =0x1
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x9, x9, #1
	mov	x10, x11
	cmp	x11, x8
	b.eq	LBB0_18
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
                                        ;       Child Loop BB0_9 Depth 3
                                        ;       Child Loop BB0_13 Depth 3
	add	x11, x10, #1
	cmp	x11, x8
	b.hs	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x12, x9
	b	LBB0_7
LBB0_5:                                 ;   in Loop: Header=BB0_7 Depth=2
	str	w15, [x0, x10, lsl #2]
	str	w13, [x0, x12, lsl #2]
LBB0_6:                                 ;   in Loop: Header=BB0_7 Depth=2
	add	x12, x12, #1
	cmp	x12, x8
	b.eq	LBB0_2
LBB0_7:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_9 Depth 3
                                        ;       Child Loop BB0_13 Depth 3
	ldr	w13, [x0, x10, lsl #2]
	cmp	w13, #1
	b.lt	LBB0_10
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=2
	mov	w14, #0                         ; =0x0
	mov	x15, x13
LBB0_9:                                 ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	and	w16, w15, #0x1
	add	w14, w14, w16
	lsr	w16, w15, #1
	cmp	w15, #2
	mov	x15, x16
	b.hs	LBB0_9
	b	LBB0_11
LBB0_10:                                ;   in Loop: Header=BB0_7 Depth=2
	mov	w14, #0                         ; =0x0
LBB0_11:                                ;   in Loop: Header=BB0_7 Depth=2
	ldr	w15, [x0, x12, lsl #2]
	cmp	w15, #1
	b.lt	LBB0_15
; %bb.12:                               ;   in Loop: Header=BB0_7 Depth=2
	mov	w16, #0                         ; =0x0
	mov	x17, x15
LBB0_13:                                ;   Parent Loop BB0_3 Depth=1
                                        ;     Parent Loop BB0_7 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	and	w1, w17, #0x1
	add	w16, w16, w1
	lsr	w1, w17, #1
	cmp	w17, #1
	mov	x17, x1
	b.hi	LBB0_13
; %bb.14:                               ;   in Loop: Header=BB0_7 Depth=2
	cmp	w16, w14
	b.lo	LBB0_5
	b	LBB0_16
LBB0_15:                                ;   in Loop: Header=BB0_7 Depth=2
	mov	w16, #0                         ; =0x0
	cmp	w16, w14
	b.lo	LBB0_5
LBB0_16:                                ;   in Loop: Header=BB0_7 Depth=2
	b.ne	LBB0_6
; %bb.17:                               ;   in Loop: Header=BB0_7 Depth=2
	cmp	w15, w13
	b.lt	LBB0_5
	b	LBB0_6
LBB0_18:
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
