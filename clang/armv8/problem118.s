	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
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
	str	x2, [sp, #8]                    ; 8-byte Folded Spill
	mov	x20, x1
	mov	x21, x0
	bl	_strlen
	add	x22, x0, #1
	mov	x0, x22
	bl	_malloc
	mov	x23, x0
	mov	x27, #0                         ; =0x0
	mov	x24, #0                         ; =0x0
	mov	w25, #0                         ; =0x0
	mov	w19, #0                         ; =0x0
	mov	w28, #0                         ; =0x0
	b	LBB0_3
LBB0_1:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w25, #0                         ; =0x0
	add	w19, w27, #1
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x27, x27, #1
	cmp	x22, x27
	b.eq	LBB0_14
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldrsb	w26, [x21, x27]
	tbnz	w26, #31, LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
Lloh0:
	adrp	x8, __DefaultRuneLocale@GOTPAGE
Lloh1:
	ldr	x8, [x8, __DefaultRuneLocale@GOTPAGEOFF]
	add	x8, x8, w26, uxtw #2
	ldr	w8, [x8, #60]
	and	w0, w8, #0x4000
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	x0, x26
	mov	w1, #16384                      ; =0x4000
	bl	___maskrune
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	cmp	w26, #0
	ccmp	w0, #0, #0, ne
	b.eq	LBB0_9
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	cmp	w25, w20
	b.ne	LBB0_1
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	sub	w8, w27, w19
	strb	wzr, [x23, w8, sxtw]
	add	w19, w28, #1
	sbfiz	x1, x19, #3, #32
	mov	x0, x24
	bl	_realloc
	mov	x24, x0
	mov	x0, x23
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	str	x0, [x24, w28, sxtw #3]
	mov	x1, x23
	bl	_strcpy
	mov	x28, x19
	b	LBB0_1
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=1
	sub	w8, w27, w19
	strb	w26, [x23, w8, sxtw]
	ldrsb	w26, [x21, x27]
Lloh2:
	adrp	x0, l_.str@PAGE
Lloh3:
	add	x0, x0, l_.str@PAGEOFF
	mov	x1, x26
	mov	w2, #11                         ; =0xb
	bl	_memchr
	cbnz	x0, LBB0_2
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	sxtw	x8, w26
	tbnz	w8, #31, LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_3 Depth=1
Lloh4:
	adrp	x9, __DefaultRuneLocale@GOTPAGE
Lloh5:
	ldr	x9, [x9, __DefaultRuneLocale@GOTPAGEOFF]
	add	x8, x9, x8, lsl #2
	ldr	w8, [x8, #60]
	and	w0, w8, #0x100
	b	LBB0_13
LBB0_12:                                ;   in Loop: Header=BB0_3 Depth=1
	and	w0, w26, #0xff
	mov	w1, #256                        ; =0x100
	bl	___maskrune
LBB0_13:                                ;   in Loop: Header=BB0_3 Depth=1
	cmp	w0, #0
	cinc	w25, w25, ne
	b	LBB0_2
LBB0_14:
	mov	x0, x23
	bl	_free
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	w28, [x8]
	mov	x0, x24
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"aeiouAEIOU"

.subsections_via_symbols
