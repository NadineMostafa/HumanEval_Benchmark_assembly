	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB0_3
; %bb.1:
	mov	w9, w1
	cmp	w1, #15
	b.hi	LBB0_4
; %bb.2:
	mov	x10, #0                         ; =0x0
	mov	w8, #0                          ; =0x0
	b	LBB0_7
LBB0_3:
	mov	w8, #0                          ; =0x0
	b	LBB0_9
LBB0_4:
	and	x10, x9, #0x7ffffff0
	add	x8, x0, #32
	movi.2d	v0, #0000000000000000
	movi.4s	v1, #1
	mov	x11, x10
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q5, q6, [x8, #-32]
	ldp	q7, q16, [x8], #64
	bic.16b	v5, v1, v5
	bic.16b	v6, v1, v6
	bic.16b	v7, v1, v7
	bic.16b	v16, v1, v16
	add.4s	v0, v5, v0
	add.4s	v2, v6, v2
	add.4s	v3, v7, v3
	add.4s	v4, v16, v4
	subs	x11, x11, #16
	b.ne	LBB0_5
; %bb.6:
	add.4s	v0, v2, v0
	add.4s	v0, v3, v0
	add.4s	v0, v4, v0
	addv.4s	s0, v0
	fmov	w8, s0
	cmp	x10, x9
	b.eq	LBB0_9
LBB0_7:
	add	x11, x0, x10, lsl #2
	sub	x9, x9, x10
	mov	w10, #1                         ; =0x1
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w12, [x11], #4
	bic	w12, w10, w12
	add	w8, w12, w8
	subs	x9, x9, #1
	b.ne	LBB0_8
LBB0_9:
	cmp	w3, #1
	b.lt	LBB0_17
; %bb.10:
	mov	w9, w3
	cmp	w3, #15
	b.hi	LBB0_12
; %bb.11:
	mov	x10, #0                         ; =0x0
	b	LBB0_15
LBB0_12:
	and	x10, x9, #0x7ffffff0
	movi.2d	v0, #0000000000000000
	mov.s	v0[0], w8
	movi.2d	v1, #0000000000000000
	add	x8, x2, #32
	movi.4s	v2, #1
	mov	x11, x10
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
LBB0_13:                                ; =>This Inner Loop Header: Depth=1
	ldp	q5, q6, [x8, #-32]
	ldp	q7, q16, [x8], #64
	bic.16b	v5, v2, v5
	bic.16b	v6, v2, v6
	bic.16b	v7, v2, v7
	bic.16b	v16, v2, v16
	add.4s	v0, v5, v0
	add.4s	v1, v6, v1
	add.4s	v3, v7, v3
	add.4s	v4, v16, v4
	subs	x11, x11, #16
	b.ne	LBB0_13
; %bb.14:
	add.4s	v0, v1, v0
	add.4s	v0, v3, v0
	add.4s	v0, v4, v0
	addv.4s	s0, v0
	fmov	w8, s0
	cmp	x10, x9
	b.eq	LBB0_17
LBB0_15:
	add	x11, x2, x10, lsl #2
	sub	x9, x9, x10
	mov	w10, #1                         ; =0x1
LBB0_16:                                ; =>This Inner Loop Header: Depth=1
	ldr	w12, [x11], #4
	bic	w12, w10, w12
	add	w8, w12, w8
	subs	x9, x9, #1
	b.ne	LBB0_16
LBB0_17:
Lloh0:
	adrp	x9, l_.str@PAGE
Lloh1:
	add	x9, x9, l_.str@PAGEOFF
Lloh2:
	adrp	x10, l_.str.1@PAGE
Lloh3:
	add	x10, x10, l_.str.1@PAGEOFF
	cmp	w8, w1
	csel	x0, x10, x9, lt
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"YES"

l_.str.1:                               ; @.str.1
	.asciz	"NO"

.subsections_via_symbols
