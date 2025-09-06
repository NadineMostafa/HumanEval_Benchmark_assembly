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
	mov	x20, x0
	mov	x0, x1
	bl	_strlen
	mov	x23, x0
	mov	w8, #1                          ; =0x1
	orr	w8, w8, w23, lsl #1
	sxtw	x0, w8
	bl	_malloc
	mov	x21, x0
	cmp	w23, #1
	b.lt	LBB0_4
; %bb.1:
	mov	x22, #0                         ; =0x0
	and	x25, x23, #0x7fffffff
	mov	w24, #1                         ; =0x1
	mov	x23, x25
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	add	x1, x19, x22
	mov	x0, x21
	mov	x2, x23
	bl	_strncpy
	add	x0, x21, x23
	mov	x1, x19
	mov	x2, x22
	bl	_strncpy
	strb	wzr, [x21, x25]
	mov	x0, x20
	mov	x1, x21
	bl	_strstr
	cbnz	x0, LBB0_5
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	add	x22, x22, #1
	cmp	x22, x25
	cset	w24, lo
	subs	x23, x23, #1
	b.ne	LBB0_2
	b	LBB0_5
LBB0_4:
	mov	w24, #0                         ; =0x0
LBB0_5:
	mov	x0, x21
	bl	_free
	and	w0, w24, #0x1
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
