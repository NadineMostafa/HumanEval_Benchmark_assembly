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
	mov	x19, x0
	bl	_strlen
	cbz	x0, LBB0_5
; %bb.1:
	ldrb	w8, [x19]
	cmp	w8, #91
	cset	w9, eq
	cmp	w8, #93
	cset	w8, eq
	sub	w8, w9, w8
	bic	w8, w8, w8, asr #31
	mov	w11, #1                         ; =0x1
	mov	x10, x8
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x9, x11
	cmp	x0, x11
	b.eq	LBB0_4
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	ldrb	w11, [x19, x9]
	cmp	w11, #91
	cinc	w10, w10, eq
	cmp	w11, #93
	cset	w11, eq
	sub	w10, w10, w11
	bic	w10, w10, w10, asr #31
	cmp	w10, w8
	csel	w8, w10, w8, gt
	sub	w12, w8, #2
	add	x11, x9, #1
	cmp	w10, w12
	b.gt	LBB0_2
LBB0_4:
	cmp	x0, x9
	cset	w0, hi
LBB0_5:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
