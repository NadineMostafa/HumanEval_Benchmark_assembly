	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function func0
lCPI0_0:
	.long	18                              ; 0x12
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.long	1                               ; 0x1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w0, #1
	b.lt	LBB0_3
; %bb.1:
	b.ne	LBB0_4
; %bb.2:
	mov	w0, #1                          ; =0x1
	ret
LBB0_3:
	mov	w8, #0                          ; =0x0
	mov	x0, x8
	ret
LBB0_4:
	cmp	w0, #3
	b.lo	LBB0_7
; %bb.5:
	sub	w10, w0, #2
	cmp	w10, #16
	b.hs	LBB0_8
; %bb.6:
	mov	w8, #18                         ; =0x12
	mov	w9, #2                          ; =0x2
	b	LBB0_11
LBB0_7:
	mov	w0, #18                         ; =0x12
	ret
LBB0_8:
	and	w11, w10, #0xfffffff0
	orr	w9, w11, #0x2
Lloh0:
	adrp	x8, lCPI0_0@PAGE
Lloh1:
	ldr	q0, [x8, lCPI0_0@PAGEOFF]
	movi.4s	v1, #1
	movi.4s	v2, #10
	mov	x8, x11
	movi.4s	v3, #1
	movi.4s	v4, #1
LBB0_9:                                 ; =>This Inner Loop Header: Depth=1
	mul.4s	v0, v0, v2
	mul.4s	v1, v1, v2
	mul.4s	v3, v3, v2
	mul.4s	v4, v4, v2
	subs	w8, w8, #16
	b.ne	LBB0_9
; %bb.10:
	uzp2.4s	v2, v3, v4
	uzp1.4s	v3, v3, v4
	uzp1.4s	v4, v0, v1
	uzp2.4s	v0, v0, v1
	mul.4s	v0, v0, v4
	mul.4s	v1, v2, v3
	mul.4s	v0, v1, v0
	ext.16b	v1, v0, v0, #8
	mul.2s	v0, v0, v1
	mov.s	w8, v0[1]
	fmov	w12, s0
	mul	w8, w12, w8
	cmp	w10, w11
	b.eq	LBB0_13
LBB0_11:
	sub	w9, w0, w9
LBB0_12:                                ; =>This Inner Loop Header: Depth=1
	add	w8, w8, w8, lsl #2
	lsl	w8, w8, #1
	subs	w9, w9, #1
	b.ne	LBB0_12
LBB0_13:
	mov	x0, x8
	ret
	.loh AdrpLdr	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
