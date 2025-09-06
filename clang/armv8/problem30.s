	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
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
	mov	x19, x3
	mov	x20, x2
	mov	x24, x1
	mov	x21, x0
	mov	x0, x2
	bl	_strlen
	mov	x23, x0
	sbfiz	x0, x24, #3, #32
	bl	_malloc
	str	x0, [x19]
	cmp	w24, #1
	b.lt	LBB0_5
; %bb.1:
	mov	w22, #0                         ; =0x0
	sxtw	x23, w23
	mov	w25, w24
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x21, x21, #8
	subs	x25, x25, #1
	b.eq	LBB0_6
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x24, [x21]
	mov	x0, x24
	mov	x1, x20
	mov	x2, x23
	bl	_strncmp
	cbnz	w0, LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [x19]
	str	x24, [x8, w22, sxtw #3]
	add	w22, w22, #1
	b	LBB0_2
LBB0_5:
	mov	w22, #0                         ; =0x0
LBB0_6:
	mov	x0, x22
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
