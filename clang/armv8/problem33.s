	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	ldr	d1, [x0]
	mov	w8, w1
	fmov	d2, d1
	cmp	w1, #2
	b.lt	LBB0_5
; %bb.1:
	mov	w9, #1                          ; =0x1
	movi	d0, #0000000000000000
	fmov	d2, d1
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	fmov	d3, #1.00000000
	mov	x10, x9
LBB0_3:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	fmul	d3, d3, d0
	subs	x10, x10, #1
	b.ne	LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	d4, [x0, x9, lsl #3]
	fmadd	d2, d4, d3, d2
	add	x9, x9, #1
	cmp	x9, x8
	b.ne	LBB0_2
LBB0_5:
	fabs	d3, d2
	movi	d0, #0000000000000000
	mov	x9, #60813                      ; =0xed8d
	movk	x9, #41141, lsl #16
	movk	x9, #50935, lsl #32
	movk	x9, #16048, lsl #48
	fmov	d4, x9
	fcmp	d3, d4
	b.le	LBB0_21
; %bb.6:
	fmov	d3, x9
	mov	x9, #-9223372036854775808       ; =0x8000000000000000
	b	LBB0_10
LBB0_7:                                 ;   in Loop: Header=BB0_10 Depth=1
	fmov	d4, x9
	fdiv	d2, d2, d4
	fadd	d0, d0, d2
LBB0_8:                                 ;   in Loop: Header=BB0_10 Depth=1
	fmov	d2, d1
LBB0_9:                                 ;   in Loop: Header=BB0_10 Depth=1
	fabs	d4, d2
	fcmp	d4, d3
	b.le	LBB0_21
LBB0_10:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_13 Depth 2
                                        ;       Child Loop BB0_15 Depth 3
                                        ;     Child Loop BB0_18 Depth 2
                                        ;       Child Loop BB0_19 Depth 3
	cmp	w1, #2
	b.lt	LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	mov	x10, #0                         ; =0x0
	movi	d4, #0000000000000000
	mov	w11, #1                         ; =0x1
	b	LBB0_13
LBB0_12:                                ;   in Loop: Header=BB0_13 Depth=2
	ucvtf	d6, w11
	ldr	d7, [x0, x11, lsl #3]
	fmul	d6, d7, d6
	fmadd	d4, d6, d5, d4
	add	x11, x11, #1
	add	x10, x10, #1
	cmp	x11, x8
	b.eq	LBB0_16
LBB0_13:                                ;   Parent Loop BB0_10 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_15 Depth 3
	fmov	d5, #1.00000000
	cmp	x11, #2
	b.lo	LBB0_12
; %bb.14:                               ;   in Loop: Header=BB0_13 Depth=2
	mov	x12, x10
LBB0_15:                                ;   Parent Loop BB0_10 Depth=1
                                        ;     Parent Loop BB0_13 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	fmul	d5, d0, d5
	subs	x12, x12, #1
	b.ne	LBB0_15
	b	LBB0_12
LBB0_16:                                ;   in Loop: Header=BB0_10 Depth=1
	fdiv	d2, d2, d4
	fsub	d0, d0, d2
	cmp	w1, #2
	b.lt	LBB0_8
; %bb.17:                               ;   in Loop: Header=BB0_10 Depth=1
	mov	w10, #1                         ; =0x1
	fmov	d2, d1
LBB0_18:                                ;   Parent Loop BB0_10 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_19 Depth 3
	fmov	d4, #1.00000000
	mov	x11, x10
LBB0_19:                                ;   Parent Loop BB0_10 Depth=1
                                        ;     Parent Loop BB0_18 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	fmul	d4, d0, d4
	subs	x11, x11, #1
	b.ne	LBB0_19
; %bb.20:                               ;   in Loop: Header=BB0_18 Depth=2
	ldr	d5, [x0, x10, lsl #3]
	fmadd	d2, d5, d4, d2
	add	x10, x10, #1
	cmp	x10, x8
	b.ne	LBB0_18
	b	LBB0_9
LBB0_21:
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
