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
	mov	x21, x1
	mov	x20, x0
	sbfiz	x0, x21, #2, #32
	bl	_malloc
	str	wzr, [x19]
	cmp	w21, #1
	b.lt	LBB0_5
; %bb.1:
	mov	w9, #0                          ; =0x0
	mov	w8, w21
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x20, x20, #4
	subs	x8, x8, #1
	b.eq	LBB0_5
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	s0, [x20]
	fcmp	s0, #0.0
	b.le	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	str	s0, [x0, w9, sxtw #2]
	add	w9, w9, #1
	str	w9, [x19]
	b	LBB0_2
LBB0_5:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
