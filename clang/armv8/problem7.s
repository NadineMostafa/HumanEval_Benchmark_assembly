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
	mov	x19, x1
	mov	x20, x0
	mov	w8, #0                          ; =0x0
	mov	w22, #0                         ; =0x0
	mov	w21, #0                         ; =0x0
	mov	x0, #0                          ; =0x0
	b	LBB0_2
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	cbz	w9, LBB0_7
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w9, [x20], #1
	cmp	w9, #40
	b.eq	LBB0_6
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	cmp	w9, #41
	b.ne	LBB0_1
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	subs	w8, w8, #1
	b.ne	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	add	w23, w21, #1
	sbfiz	x1, x23, #2, #32
	bl	_realloc
	mov	w8, #0                          ; =0x0
	str	w22, [x0, w21, sxtw #2]
	mov	x21, x23
	mov	w22, #0                         ; =0x0
	b	LBB0_2
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	cmp	w8, w22
	csinc	w22, w22, w8, lt
	add	w8, w8, #1
	b	LBB0_2
LBB0_7:
	str	w21, [x19]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
