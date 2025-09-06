	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	strb	wzr, [x1]
	cmp	w0, #1
	b.lt	LBB0_7
; %bb.1:
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
	mov	x20, x0
	mov	w8, #0                          ; =0x0
Lloh0:
	adrp	x22, l___const.func0.num@PAGE
Lloh1:
	add	x22, x22, l___const.func0.num@PAGEOFF
Lloh2:
	adrp	x23, l___const.func0.rep@PAGE
Lloh3:
	add	x23, x23, l___const.func0.rep@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	cmp	w20, #0
	cinc	w8, w24, gt
	b.le	LBB0_6
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	mov	w24, w8
	ldr	w25, [x22, w8, uxtw #2]
	cmp	w20, w25
	b.lt	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	ldr	x21, [x23, x24, lsl #3]
LBB0_5:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x0, x19
	mov	x1, x21
	bl	_strcat
	sub	w20, w20, w25
	cmp	w20, w25
	b.ge	LBB0_5
	b	LBB0_2
LBB0_6:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
LBB0_7:
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"m"

l_.str.1:                               ; @.str.1
	.asciz	"cm"

l_.str.2:                               ; @.str.2
	.asciz	"d"

l_.str.3:                               ; @.str.3
	.asciz	"cd"

l_.str.4:                               ; @.str.4
	.asciz	"c"

l_.str.5:                               ; @.str.5
	.asciz	"xc"

l_.str.6:                               ; @.str.6
	.asciz	"l"

l_.str.7:                               ; @.str.7
	.asciz	"xl"

l_.str.8:                               ; @.str.8
	.asciz	"x"

l_.str.9:                               ; @.str.9
	.asciz	"ix"

l_.str.10:                              ; @.str.10
	.asciz	"v"

l_.str.11:                              ; @.str.11
	.asciz	"iv"

l_.str.12:                              ; @.str.12
	.asciz	"i"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @__const.func0.rep
l___const.func0.rep:
	.quad	l_.str
	.quad	l_.str.1
	.quad	l_.str.2
	.quad	l_.str.3
	.quad	l_.str.4
	.quad	l_.str.5
	.quad	l_.str.6
	.quad	l_.str.7
	.quad	l_.str.8
	.quad	l_.str.9
	.quad	l_.str.10
	.quad	l_.str.11
	.quad	l_.str.12

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.func0.num
l___const.func0.num:
	.long	1000                            ; 0x3e8
	.long	900                             ; 0x384
	.long	500                             ; 0x1f4
	.long	400                             ; 0x190
	.long	100                             ; 0x64
	.long	90                              ; 0x5a
	.long	50                              ; 0x32
	.long	40                              ; 0x28
	.long	10                              ; 0xa
	.long	9                               ; 0x9
	.long	5                               ; 0x5
	.long	4                               ; 0x4
	.long	1                               ; 0x1

.subsections_via_symbols
