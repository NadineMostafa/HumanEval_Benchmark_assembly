	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x2
	mov	x21, x1
	mov	x20, x0
	add	w8, w1, w1, lsr #31
	asr	w8, w8, #1
	sbfiz	x8, x8, #2, #32
	add	x0, x8, #4
	bl	_malloc
	subs	w8, w21, #1
	b.lt	LBB0_10
; %bb.1:
	lsr	w8, w8, #1
	add	w9, w8, #1
	cmp	w21, #32
	b.hi	LBB0_3
; %bb.2:
	mov	x10, #0                         ; =0x0
	mov	x11, #0                         ; =0x0
	b	LBB0_5
LBB0_3:
	ands	x10, x9, #0xf
	mov	w11, #16                        ; =0x10
	csel	x10, x11, x10, eq
	sub	x10, x9, x10
	lsl	x11, x10, #1
	add	x12, x0, #32
	add	x13, x20, #64
	mov	x14, x10
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	sub	x15, x13, #64
	ld2.4s	{ v0, v1 }, [x15]
	sub	x15, x13, #32
	ld2.4s	{ v2, v3 }, [x15]
	mov	x15, x13
	ld2.4s	{ v4, v5 }, [x15], #32
	ld2.4s	{ v6, v7 }, [x15]
	stp	q0, q2, [x12, #-32]
	stp	q4, q6, [x12], #64
	add	x13, x13, #128
	subs	x14, x14, #16
	b.ne	LBB0_4
LBB0_5:
	add	x11, x20, x11, lsl #2
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	s0, [x11], #8
	str	s0, [x0, x10, lsl #2]
	add	x12, x10, #1
	mov	x10, x12
	cmp	x9, x12
	b.ne	LBB0_6
; %bb.7:
	cmp	w21, #3
	b.hs	LBB0_11
LBB0_8:
	mov	x8, #0                          ; =0x0
	mov	w9, w21
LBB0_9:                                 ; =>This Inner Loop Header: Depth=1
	ubfx	x10, x8, #1, #31
	add	x10, x0, x10, lsl #2
	tst	x8, #0x1
	csel	x10, x10, x20, eq
	ldr	s0, [x10]
	str	s0, [x19, x8, lsl #2]
	add	x8, x8, #1
	add	x20, x20, #4
	cmp	x9, x8
	b.ne	LBB0_9
LBB0_10:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	b	_free
LBB0_11:
	mov	w9, #0                          ; =0x0
	add	x10, x0, #4
	mov	x11, x8
	b	LBB0_13
LBB0_12:                                ;   in Loop: Header=BB0_13 Depth=1
	add	w9, w9, #1
	sub	w11, w11, #1
	cmp	w9, w8
	b.eq	LBB0_8
LBB0_13:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_17 Depth 2
	mov	w11, w11
	cmp	w9, w8
	b.hs	LBB0_12
; %bb.14:                               ;   in Loop: Header=BB0_13 Depth=1
	ldr	s0, [x0]
	mov	x12, x11
	mov	x13, x10
	b	LBB0_17
LBB0_15:                                ;   in Loop: Header=BB0_17 Depth=2
	stp	s1, s0, [x13, #-4]
LBB0_16:                                ;   in Loop: Header=BB0_17 Depth=2
	add	x13, x13, #4
	subs	x12, x12, #1
	b.eq	LBB0_12
LBB0_17:                                ;   Parent Loop BB0_13 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	s1, [x13]
	fcmp	s0, s1
	b.gt	LBB0_15
; %bb.18:                               ;   in Loop: Header=BB0_17 Depth=2
	fmov	s0, s1
	b	LBB0_16
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
