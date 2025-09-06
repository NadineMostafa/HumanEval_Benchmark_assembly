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
	mov	w8, #21846                      ; =0x5556
	movk	w8, #21845, lsl #16
	smull	x8, w1, w8
	lsr	x9, x8, #63
	lsr	x8, x8, #32
	add	w8, w8, w9
	sbfiz	x8, x8, #2, #32
	add	x0, x8, #4
	bl	_malloc
	subs	w9, w21, #1
	b.lt	LBB0_10
; %bb.1:
	mov	w8, #43691                      ; =0xaaab
	movk	w8, #43690, lsl #16
	umull	x8, w9, w8
	lsr	x8, x8, #33
	cmp	w21, #48
	b.hi	LBB0_3
; %bb.2:
	mov	x10, #0                         ; =0x0
	mov	x11, #0                         ; =0x0
	b	LBB0_5
LBB0_3:
	add	w10, w8, #1
	ands	x11, x10, #0xf
	mov	w12, #16                        ; =0x10
	csel	x11, x12, x11, eq
	sub	x10, x10, x11
	add	x11, x10, x10, lsl #1
	add	x14, x20, #96
	add	x12, x0, #32
	mov	x13, x10
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	sub	x15, x14, #96
	sub	x16, x14, #48
	ld3.4s	{ v0, v1, v2 }, [x15]
	ld3.4s	{ v3, v4, v5 }, [x16]
	add	x15, x14, #192
	ld3.4s	{ v16, v17, v18 }, [x14], #48
	ld3.4s	{ v19, v20, v21 }, [x14]
	stp	q0, q3, [x12, #-32]
	stp	q16, q19, [x12], #64
	mov	x14, x15
	subs	x13, x13, #16
	b.ne	LBB0_4
LBB0_5:
	add	x12, x0, x10, lsl #2
	mov	x13, #6148914691236517205       ; =0x5555555555555555
	movk	x13, #21846
	umulh	x9, x9, x13
	sub	x9, x9, x10
	add	x9, x9, #1
	add	x10, x20, x11, lsl #2
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x10], #12
	str	w11, [x12], #4
	subs	x9, x9, #1
	b.ne	LBB0_6
; %bb.7:
	cmp	w21, #4
	b.hs	LBB0_11
LBB0_8:
	mov	x8, #0                          ; =0x0
	mov	w9, w21
	mov	w10, #43691                     ; =0xaaab
	movk	w10, #43690, lsl #16
LBB0_9:                                 ; =>This Inner Loop Header: Depth=1
	mov	w11, w8
	umull	x11, w11, w10
	lsr	x11, x11, #33
	add	w12, w11, w11, lsl #1
	cmp	w8, w12
	add	x11, x0, x11, lsl #2
	csel	x11, x11, x20, eq
	ldr	w11, [x11]
	str	w11, [x19, x8, lsl #2]
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
	mov	x9, #0                          ; =0x0
	mov	w8, w8
	neg	x10, x8
	mov	w11, #1                         ; =0x1
	b	LBB0_13
LBB0_12:                                ;   in Loop: Header=BB0_13 Depth=1
	add	x11, x11, #1
	cmp	x9, x8
	b.eq	LBB0_8
LBB0_13:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_14 Depth 2
	mov	x12, x9
	add	x9, x9, #1
	mov	x14, x11
	mov	x13, x12
LBB0_14:                                ;   Parent Loop BB0_13 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w15, [x0, x14, lsl #2]
	ldr	w16, [x0, w13, sxtw #2]
	cmp	w15, w16
	csel	w13, w14, w13, lt
	add	x14, x14, #1
	add	x15, x10, x14
	cmp	x15, #1
	b.ne	LBB0_14
; %bb.15:                               ;   in Loop: Header=BB0_13 Depth=1
	cmp	x12, w13, uxtw
	b.eq	LBB0_12
; %bb.16:                               ;   in Loop: Header=BB0_13 Depth=1
	ldr	w14, [x0, x12, lsl #2]
	ldr	w15, [x0, w13, sxtw #2]
	str	w15, [x0, x12, lsl #2]
	str	w14, [x0, w13, sxtw #2]
	b	LBB0_12
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
