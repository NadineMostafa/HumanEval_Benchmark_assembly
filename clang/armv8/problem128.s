	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w0, w2
	csel	w8, w0, w2, gt
	cmp	w1, w3
	csel	w9, w1, w3, lt
	sub	w8, w9, w8
	cmp	w8, #2
	b.ge	LBB0_2
; %bb.1:
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	ret
LBB0_2:
	cmp	w8, #4
	b.hs	LBB0_4
; %bb.3:
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	ret
LBB0_4:
	mov	w10, #3                         ; =0x3
Lloh4:
	adrp	x9, l_.str@PAGE
Lloh5:
	add	x9, x9, l_.str@PAGEOFF
Lloh6:
	adrp	x0, l_.str.1@PAGE
Lloh7:
	add	x0, x0, l_.str.1@PAGEOFF
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	sub	w11, w10, #1
	udiv	w12, w8, w11
	msub	w11, w12, w11, w8
	cbz	w11, LBB0_8
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=1
	mul	w11, w10, w10
	add	w10, w10, #1
	cmp	w11, w8
	b.le	LBB0_5
; %bb.7:
	ret
LBB0_8:
	mov	x0, x9
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"NO"

l_.str.1:                               ; @.str.1
	.asciz	"YES"

.subsections_via_symbols
