	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	mov	w8, #0                          ; =0x0
	b	LBB0_3
LBB0_1:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	w8, w8, #1
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	cmp	w9, #62
	cset	w9, eq
	subs	w8, w8, w9
	b.mi	LBB0_6
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w9, [x0], #1
	cmp	w9, #60
	b.eq	LBB0_1
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	cbnz	w9, LBB0_2
; %bb.5:
	cmp	w8, #0
	cset	w0, eq
	ret
LBB0_6:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
