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
	sbfiz	x0, x19, #2, #32
	bl	_malloc
	str	w19, [x0]
	cmp	w19, #2
	b.lt	LBB0_3
; %bb.1:
	mov	w10, w19
	mov	x8, x0
	ldr	w9, [x8], #4
	add	w9, w9, #2
	sub	x10, x10, #1
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	str	w9, [x8], #4
	add	w9, w9, #2
	subs	x10, x10, #1
	b.ne	LBB0_2
LBB0_3:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
