	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	cmp	w0, #4
	b.ge	LBB0_2
LBB0_1:
	ret
LBB0_2:
	mov	w8, #2                          ; =0x2
	cmp	w0, w8
	b.gt	LBB0_5
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	add	w8, w8, #1
	mul	w9, w8, w8
	cmp	w9, w0
	b.gt	LBB0_1
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	cmp	w0, w8
	b.le	LBB0_3
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	sdiv	w9, w0, w8
	msub	w9, w9, w8, w0
	cbnz	w9, LBB0_3
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=1
	sdiv	w0, w0, w8
	cmp	w0, w8
	b.gt	LBB0_5
	b	LBB0_3
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
