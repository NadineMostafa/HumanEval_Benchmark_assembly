	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	strh	wzr, [sp, #32]
	str	xzr, [sp, #24]
	strh	wzr, [sp, #16]
	str	xzr, [sp, #8]
	ldrb	w12, [x0]
	cbz	w12, LBB0_8
; %bb.1:
	mov	w13, #0                         ; =0x0
	mov	w10, #0                         ; =0x0
	add	x8, x0, #1
	add	x9, sp, #24
	add	x11, sp, #8
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	cmp	w10, #0
	cset	w12, eq
	cmp	w13, #0
	cset	w14, gt
	tst	w12, w14
	csinc	w10, w10, wzr, eq
	csel	w14, wzr, w13, ne
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldrb	w12, [x8], #1
	mov	x13, x14
	cbz	w12, LBB0_8
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	sxtb	w14, w12
	sub	w14, w14, #48
	cmp	w14, #9
	b.hi	LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	add	w14, w13, #1
	cbz	w10, LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	strb	w12, [x11, w13, sxtw]
	mov	w10, #1                         ; =0x1
	b	LBB0_3
LBB0_7:                                 ;   in Loop: Header=BB0_4 Depth=1
	strb	w12, [x9, w13, sxtw]
	b	LBB0_3
LBB0_8:
	add	x0, sp, #24
	bl	_atoi
	mov	x20, x0
	add	x0, sp, #8
	bl	_atoi
	ldur	x8, [x29, #-24]
Lloh3:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh4:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh5:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_10
; %bb.9:
	add	w8, w20, w0
	sub	w0, w19, w8
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB0_10:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh3, Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
