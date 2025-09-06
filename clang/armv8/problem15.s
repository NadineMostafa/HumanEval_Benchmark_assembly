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
	mov	x19, x1
	mov	x21, x0
	bl	_strlen
	mov	x20, x0
	sbfiz	x0, x0, #3, #32
	bl	_malloc
	mov	x22, x0
	mov	x8, #4294967296                 ; =0x100000000
	add	x8, x8, x20, lsl #32
	asr	x0, x8, #32
	bl	_malloc
	mov	x23, x0
	strb	wzr, [x0]
	cmp	w20, #1
	b.lt	LBB0_3
; %bb.1:
	and	x25, x20, #0x7fffffff
	mov	x26, x22
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x23
	bl	_strlen
	mov	x24, x0
	add	x1, x0, #2
	mov	x0, x23
	bl	_realloc
	mov	x23, x0
	ldrb	w8, [x21], #1
	add	x9, x0, x24
	strb	w8, [x9]
	strb	wzr, [x9, #1]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	str	x0, [x26], #8
	mov	x1, x23
	bl	_strcpy
	subs	x25, x25, #1
	b.ne	LBB0_2
LBB0_3:
	mov	x0, x23
	bl	_free
	str	w20, [x19]
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
