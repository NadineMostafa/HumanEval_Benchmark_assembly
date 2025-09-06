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
	sub	w10, w3, #1
	mov	w11, w1
	mov	w12, w2
	and	x13, x12, #0x7ffffff0
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x9, x9, #1
	cmp	x9, x11
	b.eq	LBB0_14
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
	cmp	w2, #1
	b.lt	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	ldr	x14, [x0, x9, lsl #3]
	cmp	w2, #16
	b.hs	LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x16, #0                         ; =0x0
	mov	w15, #0                         ; =0x0
	b	LBB0_9
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x15, x14, #32
	movi.2d	v0, #0000000000000000
	mov	x16, x13
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
LBB0_7:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q4, q5, [x15, #-32]
	ldp	q6, q7, [x15], #64
	add.4s	v0, v4, v0
	add.4s	v1, v5, v1
	add.4s	v2, v6, v2
	add.4s	v3, v7, v3
	subs	x16, x16, #16
	b.ne	LBB0_7
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	add.4s	v0, v1, v0
	add.4s	v0, v2, v0
	add.4s	v0, v3, v0
	addv.4s	s0, v0
	fmov	w15, s0
	mov	x16, x13
	cmp	x13, x12
	b.eq	LBB0_11
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x14, x14, x16, lsl #2
	sub	x16, x12, x16
LBB0_10:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w17, [x14], #4
	add	w15, w17, w15
	subs	x16, x16, #1
	b.ne	LBB0_10
LBB0_11:                                ;   in Loop: Header=BB0_3 Depth=1
	cmp	w15, #0
	b.le	LBB0_2
; %bb.12:                               ;   in Loop: Header=BB0_3 Depth=1
	add	w14, w10, w15
	sdiv	w14, w14, w3
	add	w8, w14, w8
	b	LBB0_2
LBB0_13:
	mov	w8, #0                          ; =0x0
LBB0_14:
	mov	x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
