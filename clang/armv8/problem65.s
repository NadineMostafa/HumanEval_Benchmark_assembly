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
	mov	x20, x0
	bl	_strlen
	mov	x21, x0
	cmp	w21, #1
	b.lt	LBB0_5
; %bb.1:
	mov	w19, #0                         ; =0x0
	and	x23, x21, #0x7fffffff
	mov	x24, x20
Lloh0:
	adrp	x22, l_.str@PAGE
Lloh1:
	add	x22, x22, l_.str@PAGEOFF
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldrsb	w1, [x24], #1
	mov	x0, x22
	mov	w2, #11                         ; =0xb
	bl	_memchr
	cmp	x0, #0
	cinc	w19, w19, ne
	subs	x23, x23, #1
	b.ne	LBB0_2
; %bb.3:
	sub	w8, w21, #1
	ldrb	w8, [x20, w8, uxtw]
	orr	w8, w8, #0x20
	cmp	w8, #121
	b.ne	LBB0_6
; %bb.4:
	add	w19, w19, #1
	b	LBB0_6
LBB0_5:
	mov	w19, #0                         ; =0x0
LBB0_6:
	mov	x0, x19
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"aeiouAEIOU"

.subsections_via_symbols
