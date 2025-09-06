	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function func0
lCPI0_0:
	.long	0                               ; 0x0
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x23, x3
	mov	x22, x2
	mov	x24, x1
	mov	x19, x0
	mov	x8, x3
	sbfiz	x21, x8, #2, #32
	mov	x0, x21
	bl	_malloc
	mov	x20, x0
	mov	x0, x21
	bl	_malloc
	mov	x21, x0
	cmp	w23, #1
	b.lt	LBB0_7
; %bb.1:
	ubfiz	x2, x23, #2, #32
	mov	w25, w23
	mov	x0, x20
	mov	x1, x24
	bl	_memcpy
	cmp	w23, #15
	b.hi	LBB0_3
; %bb.2:
	mov	x8, #0                          ; =0x0
	b	LBB0_6
LBB0_3:
	and	x8, x25, #0x7ffffff0
Lloh0:
	adrp	x9, lCPI0_0@PAGE
Lloh1:
	ldr	q0, [x9, lCPI0_0@PAGEOFF]
	add	x9, x21, #32
	movi.4s	v1, #4
	movi.4s	v2, #8
	movi.4s	v3, #12
	movi.4s	v4, #16
	mov	x10, x8
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	add.4s	v5, v0, v1
	add.4s	v6, v0, v2
	add.4s	v7, v0, v3
	stp	q0, q5, [x9, #-32]
	stp	q6, q7, [x9], #64
	add.4s	v0, v0, v4
	subs	x10, x10, #16
	b.ne	LBB0_4
; %bb.5:
	cmp	x8, x25
	b.eq	LBB0_7
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	str	w8, [x21, x8, lsl #2]
	add	x8, x8, #1
	cmp	x25, x8
	b.ne	LBB0_6
LBB0_7:
	cmp	w22, #1
	b.lt	LBB0_49
; %bb.8:
	mov	x23, #0                         ; =0x0
	mov	w22, w22
	b	LBB0_11
LBB0_9:                                 ;   in Loop: Header=BB0_11 Depth=1
	ldr	s0, [x20, w25, sxtw #2]
	sshll.2d	v0, v0, #0
	scvtf	d0, d0
	ldr	s1, [x20, x8, lsl #2]
	sshll.2d	v1, v1, #0
	scvtf	d1, d1
	bl	_pow
	fcvtzs	w8, d0
	str	w8, [x20, w25, sxtw #2]
	str	w25, [x24, #4]
LBB0_10:                                ;   in Loop: Header=BB0_11 Depth=1
	add	x23, x23, #1
	cmp	x23, x22
	b.eq	LBB0_20
LBB0_11:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_15 Depth 2
                                        ;     Child Loop BB0_17 Depth 2
	ldr	x9, [x19, x23, lsl #3]
	ldrb	w8, [x9]
	subs	w8, w8, #42
	b.ne	LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_11 Depth=1
	ldrb	w8, [x9, #1]
	subs	w8, w8, #42
	b.eq	LBB0_19
LBB0_13:                                ;   in Loop: Header=BB0_11 Depth=1
	cbnz	w8, LBB0_10
LBB0_14:                                ;   in Loop: Header=BB0_11 Depth=1
	add	x24, x21, x23, lsl #2
	ldrsw	x25, [x24]
	ldr	w8, [x21, x25, lsl #2]
	cmp	w8, w25
	b.eq	LBB0_16
LBB0_15:                                ;   Parent Loop BB0_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	w8, [x24]
	ldr	w9, [x21, w8, sxtw #2]
	mov	x25, x8
	cmp	w9, w8
	mov	x8, x9
	b.ne	LBB0_15
LBB0_16:                                ;   in Loop: Header=BB0_11 Depth=1
	ldrsw	x8, [x24, #4]
	ldr	w9, [x21, x8, lsl #2]
	cmp	w9, w8
	b.eq	LBB0_9
LBB0_17:                                ;   Parent Loop BB0_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x8, x9
	str	w9, [x24, #4]
	ldr	w9, [x21, w9, sxtw #2]
	cmp	w9, w8
	b.ne	LBB0_17
; %bb.18:                               ;   in Loop: Header=BB0_11 Depth=1
	sxtw	x8, w8
	b	LBB0_9
LBB0_19:                                ;   in Loop: Header=BB0_11 Depth=1
	ldrb	w8, [x9, #2]
	cbnz	w8, LBB0_10
	b	LBB0_14
LBB0_20:
	mov	x8, #0                          ; =0x0
	b	LBB0_23
LBB0_21:                                ;   in Loop: Header=BB0_23 Depth=1
	ldr	w12, [x20, x12, lsl #2]
	mov	x13, x11
	ldr	w14, [x20, w11, sxtw #2]
	sdiv	w15, w14, w12
	mul	w12, w14, w12
	cmp	w9, #0
	csel	w9, w15, w12, ne
	str	w9, [x20, w13, sxtw #2]
	str	w11, [x10, #4]
LBB0_22:                                ;   in Loop: Header=BB0_23 Depth=1
	add	x8, x8, #1
	cmp	x8, x22
	b.eq	LBB0_35
LBB0_23:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_30 Depth 2
                                        ;     Child Loop BB0_32 Depth 2
	ldr	x10, [x19, x8, lsl #3]
	ldrb	w11, [x10]
	subs	w9, w11, #42
	b.eq	LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_23 Depth=1
	cbnz	w9, LBB0_26
	b	LBB0_29
LBB0_25:                                ;   in Loop: Header=BB0_23 Depth=1
	ldrb	w9, [x10, #1]
	cbz	w9, LBB0_29
LBB0_26:                                ;   in Loop: Header=BB0_23 Depth=1
	subs	w11, w11, #47
	b.ne	LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_23 Depth=1
	ldrb	w11, [x10, #1]
	subs	w11, w11, #47
	b.eq	LBB0_34
LBB0_28:                                ;   in Loop: Header=BB0_23 Depth=1
	cbnz	w11, LBB0_22
LBB0_29:                                ;   in Loop: Header=BB0_23 Depth=1
	add	x10, x21, x8, lsl #2
	ldrsw	x11, [x10]
	ldr	w12, [x21, x11, lsl #2]
	cmp	w12, w11
	b.eq	LBB0_31
LBB0_30:                                ;   Parent Loop BB0_23 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	w12, [x10]
	ldr	w13, [x21, w12, sxtw #2]
	mov	x11, x12
	cmp	w13, w12
	mov	x12, x13
	b.ne	LBB0_30
LBB0_31:                                ;   in Loop: Header=BB0_23 Depth=1
	ldrsw	x12, [x10, #4]
	ldr	w13, [x21, x12, lsl #2]
	cmp	w13, w12
	b.eq	LBB0_21
LBB0_32:                                ;   Parent Loop BB0_23 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x12, x13
	str	w13, [x10, #4]
	ldr	w13, [x21, w13, sxtw #2]
	cmp	w13, w12
	b.ne	LBB0_32
; %bb.33:                               ;   in Loop: Header=BB0_23 Depth=1
	sxtw	x12, w12
	b	LBB0_21
LBB0_34:                                ;   in Loop: Header=BB0_23 Depth=1
	ldrb	w11, [x10, #2]
	cbnz	w11, LBB0_22
	b	LBB0_29
LBB0_35:
	mov	x8, #0                          ; =0x0
	b	LBB0_38
LBB0_36:                                ;   in Loop: Header=BB0_38 Depth=1
	ldr	w12, [x20, x12, lsl #2]
	ldr	w13, [x20, w11, sxtw #2]
	cmp	w9, #0
	cneg	w9, w12, ne
	add	w9, w13, w9
	str	w9, [x20, w11, sxtw #2]
	str	w11, [x10, #4]
LBB0_37:                                ;   in Loop: Header=BB0_38 Depth=1
	add	x8, x8, #1
	cmp	x8, x22
	b.eq	LBB0_49
LBB0_38:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_45 Depth 2
                                        ;     Child Loop BB0_47 Depth 2
	ldr	x10, [x19, x8, lsl #3]
	ldrb	w11, [x10]
	subs	w9, w11, #43
	b.eq	LBB0_40
; %bb.39:                               ;   in Loop: Header=BB0_38 Depth=1
	cbnz	w9, LBB0_41
	b	LBB0_44
LBB0_40:                                ;   in Loop: Header=BB0_38 Depth=1
	ldrb	w9, [x10, #1]
	cbz	w9, LBB0_44
LBB0_41:                                ;   in Loop: Header=BB0_38 Depth=1
	subs	w11, w11, #45
	b.eq	LBB0_43
; %bb.42:                               ;   in Loop: Header=BB0_38 Depth=1
	cbnz	w11, LBB0_37
	b	LBB0_44
LBB0_43:                                ;   in Loop: Header=BB0_38 Depth=1
	ldrb	w11, [x10, #1]
	cbnz	w11, LBB0_37
LBB0_44:                                ;   in Loop: Header=BB0_38 Depth=1
	add	x10, x21, x8, lsl #2
	ldrsw	x11, [x10]
	ldr	w12, [x21, x11, lsl #2]
	cmp	w12, w11
	b.eq	LBB0_46
LBB0_45:                                ;   Parent Loop BB0_38 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	w12, [x10]
	ldr	w13, [x21, w12, sxtw #2]
	mov	x11, x12
	cmp	w13, w12
	mov	x12, x13
	b.ne	LBB0_45
LBB0_46:                                ;   in Loop: Header=BB0_38 Depth=1
	ldrsw	x12, [x10, #4]
	ldr	w13, [x21, x12, lsl #2]
	cmp	w13, w12
	b.eq	LBB0_36
LBB0_47:                                ;   Parent Loop BB0_38 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x12, x13
	str	w13, [x10, #4]
	ldr	w13, [x21, w13, sxtw #2]
	cmp	w13, w12
	b.ne	LBB0_47
; %bb.48:                               ;   in Loop: Header=BB0_38 Depth=1
	sxtw	x12, w12
	b	LBB0_36
LBB0_49:
	ldr	w19, [x20]
	mov	x0, x20
	bl	_free
	mov	x0, x21
	bl	_free
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpLdr	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
