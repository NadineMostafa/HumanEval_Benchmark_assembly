	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	cmp	w2, #1
	b.lt	LBB0_7
; %bb.1:
	mov	x9, #0                          ; =0x0
	mov	x8, #0                          ; =0x0
	mov	w10, #-1000                     ; =0xfffffc18
	mov	w11, w2
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	mov	w13, #0                         ; =0x0
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	cmp	w13, w10
	csel	w10, w13, w10, gt
	csel	x8, x12, x8, gt
	add	x9, x9, #1
	cmp	x9, x11
	b.eq	LBB0_8
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	ldr	x12, [x1, x9, lsl #3]
	ldrb	w15, [x12]
	cbz	w15, LBB0_2
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	mov	w13, #0                         ; =0x0
	add	x14, x12, #1
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	w16, w15, #65
	cmp	w16, #26
	cinc	w13, w13, lo
	sub	w15, w15, #97
	cmp	w15, #26
	cset	w15, lo
	sub	w13, w13, w15
	ldrb	w15, [x14], #1
	cbnz	w15, LBB0_6
	b	LBB0_3
LBB0_7:
	mov	x8, #0                          ; =0x0
LBB0_8:
	stp	x0, x8, [sp]
Lloh0:
	adrp	x1, l_.str@PAGE
Lloh1:
	add	x1, x1, l_.str@PAGEOFF
	mov	x0, x3
	bl	_sprintf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s.%s"

.subsections_via_symbols
