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
	cmp	w1, #1
	b.lt	LBB0_6
; %bb.1:
	mov	x19, x0
	mov	w21, #0                         ; =0x0
	mov	w20, w1
	mov	x22, x20
	mov	x23, x0
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x0, [x23], #8
	bl	_strlen
	add	w21, w21, w0
	subs	x22, x22, #1
	b.ne	LBB0_2
; %bb.3:
	add	w8, w21, #1
	sxtw	x0, w8
	bl	_malloc
	cbz	x0, LBB0_8
; %bb.4:
	strb	wzr, [x0]
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x1, [x19], #8
	bl	_strcat
	subs	x20, x20, #1
	b.ne	LBB0_5
	b	LBB0_8
LBB0_6:
	mov	w0, #1                          ; =0x1
	bl	_malloc
	cbz	x0, LBB0_8
; %bb.7:
	strb	wzr, [x0]
LBB0_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
