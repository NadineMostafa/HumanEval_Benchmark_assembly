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
	mov	x23, #0                         ; =0x0
	mov	w22, #0                         ; =0x0
	mov	w21, #0                         ; =0x0
	mov	w24, #32                        ; =0x20
	b	LBB0_3
LBB0_1:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x0, x19, w21, sxtw
	mov	w2, w22
	sub	x1, x8, x2
	bl	_memcpy
	add	w21, w21, w22
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w22, #0                         ; =0x0
	add	x23, x23, #1
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_9 Depth 2
	add	x8, x20, x23
	ldrb	w9, [x8]
	cmp	w9, #32
	b.eq	LBB0_6
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	cbz	w9, LBB0_13
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	add	w22, w22, #1
	add	x23, x23, #1
	b	LBB0_3
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	cmp	w22, #2
	b.lt	LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	cmp	w22, #4
	b.lo	LBB0_11
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w9, #3                          ; =0x3
LBB0_9:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w10, w9, #1
	udiv	w11, w22, w10
	msub	w10, w11, w10, w22
	cbz	w10, LBB0_2
; %bb.10:                               ;   in Loop: Header=BB0_9 Depth=2
	mul	w10, w9, w9
	add	w9, w9, #1
	cmp	w10, w22
	b.le	LBB0_9
LBB0_11:                                ;   in Loop: Header=BB0_3 Depth=1
	cmp	w21, #1
	b.lt	LBB0_1
; %bb.12:                               ;   in Loop: Header=BB0_3 Depth=1
	strb	w24, [x19, w21, uxtw]
	add	w21, w21, #1
	b	LBB0_1
LBB0_13:
	cmp	w22, #2
	b.lt	LBB0_21
; %bb.14:
	cmp	w22, #4
	b.lo	LBB0_18
; %bb.15:
	mov	w9, #3                          ; =0x3
LBB0_16:                                ; =>This Inner Loop Header: Depth=1
	sub	w10, w9, #1
	udiv	w11, w22, w10
	msub	w10, w11, w10, w22
	cbz	w10, LBB0_21
; %bb.17:                               ;   in Loop: Header=BB0_16 Depth=1
	mul	w10, w9, w9
	add	w9, w9, #1
	cmp	w10, w22
	b.le	LBB0_16
LBB0_18:
	cmp	w21, #1
	b.lt	LBB0_20
; %bb.19:
	mov	w9, #32                         ; =0x20
	strb	w9, [x19, w21, uxtw]
	add	w21, w21, #1
LBB0_20:
	add	x0, x19, w21, sxtw
	mov	w2, w22
	sub	x1, x8, x2
	bl	_memcpy
	add	w21, w21, w22
LBB0_21:
	strb	wzr, [x19, w21, sxtw]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
