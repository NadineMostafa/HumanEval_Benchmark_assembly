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
	sbfiz	x0, x21, #2, #32
	bl	_malloc
	cmp	w21, #1
	b.lt	LBB0_15
; %bb.1:
	mov	x9, #0                          ; =0x0
	mov	w8, #0                          ; =0x0
	mov	w10, w21
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	w11, [x0, w8, sxtw #2]
	add	w8, w8, #1
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	x9, x9, #1
	cmp	x9, x10
	b.eq	LBB0_8
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	ldr	w11, [x20, x9, lsl #2]
	cmp	w8, #1
	b.lt	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w12, w8
	mov	x13, x0
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w14, [x13], #4
	cmp	w11, w14
	b.eq	LBB0_3
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	subs	x12, x12, #1
	b.ne	LBB0_6
	b	LBB0_2
LBB0_8:
	cmp	w8, #2
	b.lt	LBB0_16
; %bb.9:
	mov	x10, #0                         ; =0x0
	sub	w9, w8, #1
	mov	w12, w8
	add	x11, x0, #4
	sub	x12, x12, #1
	b	LBB0_11
LBB0_10:                                ;   in Loop: Header=BB0_11 Depth=1
	add	x11, x11, #4
	sub	x12, x12, #1
	cmp	x10, x9
	b.eq	LBB0_16
LBB0_11:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_13 Depth 2
	mov	x13, x10
	add	x10, x10, #1
	mov	x14, x12
	mov	x15, x11
	b	LBB0_13
LBB0_12:                                ;   in Loop: Header=BB0_13 Depth=2
	add	x15, x15, #4
	subs	x14, x14, #1
	b.eq	LBB0_10
LBB0_13:                                ;   Parent Loop BB0_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w16, [x0, x13, lsl #2]
	ldr	w17, [x15]
	cmp	w16, w17
	b.le	LBB0_12
; %bb.14:                               ;   in Loop: Header=BB0_13 Depth=2
	str	w17, [x0, x13, lsl #2]
	str	w16, [x15]
	b	LBB0_12
LBB0_15:
	mov	w8, #0                          ; =0x0
LBB0_16:
	str	w8, [x19]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
