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
	lsl	w8, w1, #1
	sub	w8, w8, #1
	cmp	w1, #0
	csel	w8, w8, wzr, gt
	str	w8, [x3]
	sbfiz	x0, x8, #2, #32
	bl	_malloc
	cmp	w21, #1
	b.lt	LBB0_9
; %bb.1:
	ldr	w8, [x20]
	str	w8, [x0]
	b.eq	LBB0_9
; %bb.2:
	mov	w8, w21
	cmp	w21, #16
	b.hi	LBB0_4
; %bb.3:
	mov	w9, #1                          ; =0x1
	mov	w10, #1                         ; =0x1
	b	LBB0_7
LBB0_4:
	sub	x11, x8, #1
	and	x12, x11, #0xfffffffffffffff0
	lsr	x13, x12, #4
	orr	x9, x12, #0x1
	mov	w10, #1                         ; =0x1
	bfi	x10, x13, #5, #59
	dup.4s	v0, w19
	add	x15, x0, #68
	add	x13, x20, #36
	mov	x14, x12
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q3, q5, [x13, #-32]
	ldp	q7, q1, [x13], #64
	sub	x16, x15, #64
	sub	x17, x15, #32
	mov.16b	v2, v0
	st2.4s	{ v2, v3 }, [x16]
	mov.16b	v6, v0
	mov.16b	v4, v0
	st2.4s	{ v4, v5 }, [x17]
	add	x16, x15, #128
	st2.4s	{ v6, v7 }, [x15], #32
	st2.4s	{ v0, v1 }, [x15]
	mov	x15, x16
	subs	x14, x14, #16
	b.ne	LBB0_5
; %bb.6:
	cmp	x11, x12
	b.eq	LBB0_9
LBB0_7:
	add	x11, x20, x9, lsl #2
	sub	x8, x8, x9
	add	x9, x0, x10, lsl #2
	add	x9, x9, #4
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w10, [x11], #4
	stp	w19, w10, [x9, #-4]
	add	x9, x9, #8
	subs	x8, x8, #1
	b.ne	LBB0_8
LBB0_9:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
