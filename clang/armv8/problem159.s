	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #368
	stp	x28, x27, [sp, #272]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #288]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #304]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #320]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #336]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #352]            ; 16-byte Folded Spill
	add	x29, sp, #352
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
	.cfi_offset w27, -88
	.cfi_offset w28, -96
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	cmp	w1, #1
	b.lt	LBB0_13
; %bb.1:
	mov	x19, x0
	mov	x22, #0                         ; =0x0
	mov	w24, #0                         ; =0x0
	mov	w23, w1
	mov	x25, sp
Lloh3:
	adrp	x20, l_.str@PAGE
Lloh4:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	x24, x26
	mov	x20, x21
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	x22, x22, #1
	cmp	x22, x23
	b.eq	LBB0_14
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #224]
	stp	q0, q0, [sp, #192]
	stp	q0, q0, [sp, #160]
	stp	q0, q0, [sp, #128]
	stp	q0, q0, [sp, #96]
	stp	q0, q0, [sp, #64]
	stp	q0, q0, [sp, #32]
	stp	q0, q0, [sp]
	ldr	x21, [x19, x22, lsl #3]
	ldrb	w28, [x21]
	cbz	w28, LBB0_9
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w26, #0                         ; =0x0
	add	x27, x21, #1
	b	LBB0_7
LBB0_6:                                 ;   in Loop: Header=BB0_7 Depth=2
	ldrb	w28, [x27], #1
	cbz	w28, LBB0_10
LBB0_7:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sxtb	w1, w28
	mov	x0, sp
	bl	_strchr
	cbnz	x0, LBB0_6
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=2
	mov	x0, sp
	bl	_strlen
	strb	w28, [x25, w0, sxtw]
	add	w8, w0, #1
	strb	wzr, [x25, w8, sxtw]
	add	w26, w26, #1
	b	LBB0_6
LBB0_9:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w26, #0                         ; =0x0
LBB0_10:                                ;   in Loop: Header=BB0_4 Depth=1
	cmp	w26, w24
	b.gt	LBB0_2
; %bb.11:                               ;   in Loop: Header=BB0_4 Depth=1
	b.ne	LBB0_3
; %bb.12:                               ;   in Loop: Header=BB0_4 Depth=1
	mov	x0, x21
	mov	x1, x20
	bl	_strcmp
	tbnz	w0, #31, LBB0_2
	b	LBB0_3
LBB0_13:
Lloh5:
	adrp	x20, l_.str@PAGE
Lloh6:
	add	x20, x20, l_.str@PAGEOFF
LBB0_14:
	ldur	x8, [x29, #-96]
Lloh7:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh8:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh9:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_16
; %bb.15:
	mov	x0, x20
	ldp	x29, x30, [sp, #352]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #336]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #320]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #304]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #288]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #272]            ; 16-byte Folded Reload
	add	sp, sp, #368
	ret
LBB0_16:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh7, Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.space	1

.subsections_via_symbols
