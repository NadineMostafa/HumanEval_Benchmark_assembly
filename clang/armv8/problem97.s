	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
	mov	x20, x0
	sbfiz	x0, x20, #2, #32
	bl	_malloc
	str	wzr, [x19]
	cmp	w20, #3
	b.lt	LBB0_9
; %bb.1:
	mov	w8, #0                          ; =0x0
	mov	w9, #2                          ; =0x2
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	w9, [x0, w8, sxtw #2]
	add	w8, w8, #1
	str	w8, [x19]
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	w9, w9, #1
	cmp	w9, w20
	b.eq	LBB0_9
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	cmp	w8, #1
	b.lt	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w10, w8
	mov	x11, x0
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w12, [x11], #4
	mul	w13, w12, w12
	cmp	w13, w9
	b.hi	LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	sdiv	w13, w9, w12
	msub	w12, w13, w12, w9
	cbz	w12, LBB0_3
; %bb.8:                                ;   in Loop: Header=BB0_6 Depth=2
	subs	x10, x10, #1
	b.ne	LBB0_6
	b	LBB0_2
LBB0_9:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
