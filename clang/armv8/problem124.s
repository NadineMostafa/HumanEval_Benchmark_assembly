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
	mov	x20, x0
	mov	x0, x1
	mov	w8, #1                          ; =0x1
	str	w8, [x2]
	str	w8, [x1]
	cmp	w20, #1
	b.ne	LBB0_9
LBB0_1:
	ldr	w8, [x19]
	cmp	w8, #2
	b.lt	LBB0_8
; %bb.2:
	mov	w8, #1                          ; =0x1
	b	LBB0_5
LBB0_3:                                 ;   in Loop: Header=BB0_5 Depth=1
	mov	x10, #0                         ; =0x0
LBB0_4:                                 ;   in Loop: Header=BB0_5 Depth=1
	str	w9, [x0, w10, sxtw #2]
	add	x8, x8, #1
	ldrsw	x9, [x19]
	cmp	x8, x9
	b.ge	LBB0_8
LBB0_5:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	ldr	w9, [x0, x8, lsl #2]
	mov	x10, x8
LBB0_6:                                 ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x11, x10, #1
	ldr	w12, [x0, w11, uxtw #2]
	cmp	w12, w9
	b.le	LBB0_4
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	str	w12, [x0, x10, lsl #2]
	add	x12, x11, #1
	mov	x10, x11
	cmp	x12, #1
	b.gt	LBB0_6
	b	LBB0_3
LBB0_8:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB0_9:
	mov	w21, #10                        ; =0xa
	b	LBB0_12
LBB0_10:                                ;   in Loop: Header=BB0_12 Depth=1
	add	w8, w20, w20, lsr #31
	asr	w20, w8, #1
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=1
	cmp	w20, #1
	b.eq	LBB0_1
LBB0_12:                                ; =>This Inner Loop Header: Depth=1
	and	w8, w20, #0x80000001
	cmp	w8, #1
	b.ne	LBB0_10
; %bb.13:                               ;   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [x19]
	cmp	w8, w21
	b.lt	LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_12 Depth=1
	lsl	w21, w21, #1
	sbfiz	x1, x21, #2, #32
	bl	_realloc
	ldr	w8, [x19]
LBB0_15:                                ;   in Loop: Header=BB0_12 Depth=1
	add	w9, w8, #1
	str	w9, [x19]
	str	w20, [x0, w8, sxtw #2]
	add	w8, w20, w20, lsl #1
	add	w20, w8, #1
	b	LBB0_11
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
