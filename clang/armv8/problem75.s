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
	mov	x21, x3
	mov	x19, x2
	mov	x20, x0
	cmp	w1, #1
	b.lt	LBB0_6
; %bb.1:
	mov	w22, #0                         ; =0x0
	mov	w23, w1
	mov	x24, x20
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x0, [x24], #8
	bl	_strlen
	add	w22, w22, w0
	subs	x23, x23, #1
	b.ne	LBB0_2
; %bb.3:
	cmp	w21, #1
	b.lt	LBB0_7
LBB0_4:
	mov	w23, #0                         ; =0x0
	mov	w21, w21
	mov	x24, x19
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x0, [x24], #8
	bl	_strlen
	add	w23, w23, w0
	subs	x21, x21, #1
	b.ne	LBB0_5
	b	LBB0_8
LBB0_6:
	mov	w22, #0                         ; =0x0
	cmp	w21, #1
	b.ge	LBB0_4
LBB0_7:
	mov	w23, #0                         ; =0x0
LBB0_8:
	cmp	w22, w23
	csel	x8, x19, x20, gt
	csel	x0, x20, x8, lt
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
