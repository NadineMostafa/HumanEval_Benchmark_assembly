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
	bl	_strlen
	mov	x23, x0
	mov	x0, x19
	bl	_strlen
	mov	w21, #0                         ; =0x0
	cbz	w23, LBB0_4
; %bb.1:
	cmp	w23, w0
	b.lt	LBB0_4
; %bb.2:
	mov	w21, #0                         ; =0x0
	sxtw	x22, w0
	sub	w8, w23, w0
	add	w23, w8, #1
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x20
	mov	x1, x19
	mov	x2, x22
	bl	_strncmp
	cmp	w0, #0
	cinc	w21, w21, eq
	add	x20, x20, #1
	subs	x23, x23, #1
	b.ne	LBB0_3
LBB0_4:
	mov	x0, x21
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
