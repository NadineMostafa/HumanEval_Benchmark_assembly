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
	cbz	x0, LBB0_6
; %bb.1:
	ldrb	w8, [x19]
	cmp	w8, #40
	cset	w9, eq
	cmp	w8, #41
	cset	w8, eq
	subs	w9, w9, w8
	b.mi	LBB0_7
; %bb.2:
	mov	x8, #0                          ; =0x0
	add	x10, x19, #1
	sub	x11, x0, #1
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	cmp	x11, x8
	b.eq	LBB0_8
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	ldrb	w12, [x10, x8]
	cmp	w12, #40
	cinc	w9, w9, eq
	cmp	w12, #41
	cset	w12, eq
	add	x8, x8, #1
	subs	w9, w9, w12
	b.pl	LBB0_3
; %bb.5:
	mov	w9, #0                          ; =0x0
	cmp	x0, x8
	cset	w8, ls
	b	LBB0_9
LBB0_6:
	mov	w8, #1                          ; =0x1
	mov	w9, #1                          ; =0x1
	b	LBB0_9
LBB0_7:
	mov	w8, #0                          ; =0x0
	mov	w9, #0                          ; =0x0
	b	LBB0_9
LBB0_8:
	cmp	w9, #0
	cset	w9, eq
	mov	w8, #1                          ; =0x1
LBB0_9:
	and	w0, w8, w9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
