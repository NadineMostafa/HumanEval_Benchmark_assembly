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
	mov	x19, x1
	mov	x20, x0
	mov	w0, #256                        ; =0x100
	bl	_malloc
	str	wzr, [x19]
	cmp	w20, #4
	b.ge	LBB0_5
; %bb.1:
	mov	w8, #0                          ; =0x0
LBB0_2:
	cmp	w20, #1
	b.le	LBB0_4
; %bb.3:
	add	w9, w8, #1
	str	w9, [x19]
	str	w20, [x0, w8, sxtw #2]
LBB0_4:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_5:
	mov	w8, #0                          ; =0x0
	mov	w9, #2                          ; =0x2
	b	LBB0_8
LBB0_6:                                 ;   in Loop: Header=BB0_8 Depth=1
	str	w8, [x19]
LBB0_7:                                 ;   in Loop: Header=BB0_8 Depth=1
	add	w9, w9, #1
	mul	w10, w9, w9
	cmp	w10, w20
	b.gt	LBB0_2
LBB0_8:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_10 Depth 2
	sdiv	w10, w20, w9
	msub	w10, w10, w9, w20
	cbnz	w10, LBB0_7
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=1
	add	x10, x0, w8, sxtw #2
LBB0_10:                                ;   Parent Loop BB0_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sdiv	w20, w20, w9
	str	w9, [x10], #4
	sdiv	w11, w20, w9
	msub	w11, w11, w9, w20
	add	w8, w8, #1
	cbz	w11, LBB0_10
	b	LBB0_6
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
