	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x0
	ldrb	w22, [x0]
	cbz	w22, LBB0_5
; %bb.1:
	add	x21, x19, #1
Lloh0:
	adrp	x20, l_.str@PAGE
Lloh1:
	add	x20, x20, l_.str@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldrb	w22, [x21], #1
	cbz	w22, LBB0_5
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	sxtb	w1, w22
	mov	x0, x20
	mov	w2, #11                         ; =0xb
	bl	_memchr
	cbnz	x0, LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	strb	w22, [x19], #1
	b	LBB0_2
LBB0_5:
	strb	wzr, [x19]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"AEIOUaeiou"

.subsections_via_symbols
