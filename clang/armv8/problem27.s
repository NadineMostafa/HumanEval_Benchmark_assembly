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
	mov	x19, x2
	mov	x24, x1
	mov	x21, x0
	sxtw	x23, w24
	sbfiz	x0, x24, #2, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, x23
	mov	w1, #4                          ; =0x4
	bl	_calloc
	mov	x22, x0
	mov	x0, x23
	mov	w1, #4                          ; =0x4
	bl	_calloc
	mov	x23, x0
	cmp	w24, #1
	b.lt	LBB0_20
; %bb.1:
	mov	x10, #0                         ; =0x0
	mov	w11, #0                         ; =0x0
	mov	w9, #0                          ; =0x0
	mov	w8, w24
	b	LBB0_5
LBB0_2:                                 ;   in Loop: Header=BB0_5 Depth=1
	mov	x13, x11
	add	w11, w11, #1
	mov	x14, x22
LBB0_3:                                 ;   in Loop: Header=BB0_5 Depth=1
	str	w12, [x14, w13, sxtw #2]
LBB0_4:                                 ;   in Loop: Header=BB0_5 Depth=1
	add	x10, x10, #1
	cmp	x10, x8
	b.eq	LBB0_14
LBB0_5:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
                                        ;     Child Loop BB0_11 Depth 2
	ldr	w12, [x21, x10, lsl #2]
	cmp	w9, #1
	b.lt	LBB0_9
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=1
	mov	w13, w9
	mov	x14, x23
LBB0_7:                                 ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w15, [x14], #4
	cmp	w15, w12
	b.eq	LBB0_4
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=2
	subs	x13, x13, #1
	b.ne	LBB0_7
LBB0_9:                                 ;   in Loop: Header=BB0_5 Depth=1
	cmp	w11, #1
	b.lt	LBB0_2
; %bb.10:                               ;   in Loop: Header=BB0_5 Depth=1
	mov	w13, w11
	mov	x14, x22
LBB0_11:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w15, [x14], #4
	cmp	w15, w12
	b.eq	LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_11 Depth=2
	subs	x13, x13, #1
	b.ne	LBB0_11
	b	LBB0_2
LBB0_13:                                ;   in Loop: Header=BB0_5 Depth=1
	mov	x13, x9
	add	w9, w9, #1
	mov	x14, x23
	b	LBB0_3
LBB0_14:
	mov	x11, #0                         ; =0x0
	mov	w10, #0                         ; =0x0
	mov	w12, w9
	b	LBB0_17
LBB0_15:                                ;   in Loop: Header=BB0_17 Depth=1
	str	w13, [x20, w10, sxtw #2]
	add	w10, w10, #1
LBB0_16:                                ;   in Loop: Header=BB0_17 Depth=1
	add	x11, x11, #1
	cmp	x11, x8
	b.eq	LBB0_21
LBB0_17:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_18 Depth 2
	ldr	w13, [x21, x11, lsl #2]
	mov	x14, x12
	mov	x15, x23
	cmp	w9, #1
	b.lt	LBB0_15
LBB0_18:                                ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w16, [x15], #4
	cmp	w16, w13
	b.eq	LBB0_16
; %bb.19:                               ;   in Loop: Header=BB0_18 Depth=2
	subs	x14, x14, #1
	b.ne	LBB0_18
	b	LBB0_15
LBB0_20:
	mov	w10, #0                         ; =0x0
LBB0_21:
	str	w10, [x19]
	mov	x0, x22
	bl	_free
	mov	x0, x23
	bl	_free
	mov	x0, x20
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
