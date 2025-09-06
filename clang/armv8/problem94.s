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
	ldrb	w20, [x0]
	cbz	w20, LBB0_11
; %bb.1:
	mov	x23, #0                         ; =0x0
	add	x22, x0, #1
Lloh0:
	adrp	x24, __DefaultRuneLocale@GOTPAGE
Lloh1:
	ldr	x24, [x24, __DefaultRuneLocale@GOTPAGEOFF]
	mov	w25, #1                         ; =0x1
	mov	x26, #4503668347895824          ; =0x10001000100010
	movk	x26, #16657
	movk	x26, #16657, lsl #32
	b	LBB0_6
LBB0_2:                                 ;   in Loop: Header=BB0_6 Depth=1
	mov	x0, x21
	mov	w1, #4096                       ; =0x1000
	bl	___maskrune
	cbz	w0, LBB0_9
LBB0_3:                                 ;   in Loop: Header=BB0_6 Depth=1
	mov	x0, x21
	bl	___toupper
LBB0_4:                                 ;   in Loop: Header=BB0_6 Depth=1
	mov	x20, x0
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=1
	and	w8, w20, #0xff
	sub	w8, w8, #65
	lsl	x9, x25, x8
	tst	x9, x26
	add	w9, w20, #2
	csel	w9, w9, w20, ne
	cmp	w8, #52
	csel	w8, w20, w9, hi
	strb	w8, [x19, x23]
	add	x8, x23, #1
	ldrb	w20, [x22, x23]
	mov	x23, x8
	cbz	w20, LBB0_12
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	sxtb	w21, w20
	tbnz	w20, #7, LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	add	x8, x24, w21, uxtw #2
	ldr	w8, [x8, #60]
	tbnz	w8, #12, LBB0_3
; %bb.8:                                ;   in Loop: Header=BB0_6 Depth=1
	and	w0, w8, #0x8000
	cbnz	w0, LBB0_10
	b	LBB0_5
LBB0_9:                                 ;   in Loop: Header=BB0_6 Depth=1
	mov	x0, x21
	mov	w1, #32768                      ; =0x8000
	bl	___maskrune
	cbz	w0, LBB0_5
LBB0_10:                                ;   in Loop: Header=BB0_6 Depth=1
	mov	x0, x21
	bl	___tolower
	b	LBB0_4
LBB0_11:
	mov	x8, #0                          ; =0x0
LBB0_12:
	strb	wzr, [x19, x8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
