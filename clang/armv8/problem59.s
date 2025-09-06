	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x4
	mov	x20, x3
	mov	x21, x2
	mov	x23, x1
	mov	x22, x0
	sbfiz	x0, x23, #2, #32
	bl	_malloc
	cmp	w23, #1
	b.lt	LBB0_21
; %bb.1:
	mov	x9, #0                          ; =0x0
	mov	w8, #0                          ; =0x0
	mov	w10, w23
	mov	w11, w20
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	w12, [x0, w8, sxtw #2]
	add	w8, w8, #1
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	x9, x9, #1
	cmp	x9, x10
	b.eq	LBB0_12
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
	cmp	w8, #1
	b.lt	LBB0_8
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	ldr	w12, [x22, x9, lsl #2]
	mov	x13, x0
	mov	w14, w8
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w15, [x13], #4
	cmp	w15, w12
	b.eq	LBB0_3
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	subs	x14, x14, #1
	b.ne	LBB0_6
LBB0_8:                                 ;   in Loop: Header=BB0_4 Depth=1
	cmp	w20, #1
	b.lt	LBB0_3
; %bb.9:                                ;   in Loop: Header=BB0_4 Depth=1
	ldr	w12, [x22, x9, lsl #2]
	mov	x13, x11
	mov	x14, x21
LBB0_10:                                ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w15, [x14], #4
	cmp	w12, w15
	b.eq	LBB0_2
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=2
	subs	x13, x13, #1
	b.ne	LBB0_10
	b	LBB0_3
LBB0_12:
	cmp	w8, #2
	b.lt	LBB0_22
; %bb.13:
	mov	w9, #0                          ; =0x0
	sub	w10, w8, #1
	add	x11, x0, #4
	mov	x12, x10
	b	LBB0_15
LBB0_14:                                ;   in Loop: Header=BB0_15 Depth=1
	add	w9, w9, #1
	sub	w12, w12, #1
	cmp	w9, w10
	b.eq	LBB0_22
LBB0_15:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_19 Depth 2
	mov	w12, w12
	sub	w13, w9, w8
	cmn	w13, #2
	b.gt	LBB0_14
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=1
	ldr	w13, [x0]
	mov	x14, x12
	mov	x15, x11
	b	LBB0_19
LBB0_17:                                ;   in Loop: Header=BB0_19 Depth=2
	stp	w16, w13, [x15, #-4]
LBB0_18:                                ;   in Loop: Header=BB0_19 Depth=2
	add	x15, x15, #4
	subs	x14, x14, #1
	b.eq	LBB0_14
LBB0_19:                                ;   Parent Loop BB0_15 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w16, [x15]
	cmp	w13, w16
	b.gt	LBB0_17
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=2
	mov	x13, x16
	b	LBB0_18
LBB0_21:
	mov	w8, #0                          ; =0x0
LBB0_22:
	str	w8, [x19]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
