	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #1040
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	mov	x20, x0
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	add	x21, sp, #8
	add	x0, sp, #8
	mov	w1, #1024                       ; =0x400
	bl	_bzero
	ldrb	w0, [x20]
	cbz	w0, LBB0_8
; %bb.1:
	mov	w19, #0                         ; =0x0
	add	x20, x20, #1
Lloh3:
	adrp	x22, __DefaultRuneLocale@GOTPAGE
Lloh4:
	ldr	x22, [x22, __DefaultRuneLocale@GOTPAGEOFF]
	mov	w23, #1                         ; =0x1
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldrb	w0, [x20], #1
	cbz	w0, LBB0_9
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	bl	___tolower
                                        ; kill: def $w0 killed $w0 def $x0
	sxtb	x24, w0
	ldr	w8, [x21, x24, lsl #2]
	cbnz	w8, LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	and	w0, w0, #0xff
	cmp	w0, #127
	b.hi	LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	add	x8, x22, w0, uxtw #2
	ldr	w8, [x8, #60]
	and	w0, w8, #0x100
	cbnz	w0, LBB0_7
	b	LBB0_2
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w1, #256                        ; =0x100
	bl	___maskrune
	cbz	w0, LBB0_2
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	str	w23, [x21, x24, lsl #2]
	add	w19, w19, #1
	b	LBB0_2
LBB0_8:
	mov	w19, #0                         ; =0x0
LBB0_9:
	ldur	x8, [x29, #-72]
Lloh5:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh6:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh7:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_11
; %bb.10:
	mov	x0, x19
	add	sp, sp, #1040
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB0_11:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGot	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh5, Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
