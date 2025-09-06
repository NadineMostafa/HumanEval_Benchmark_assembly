	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
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
	mov	x19, x1
	ldrb	w8, [x0]
	cbz	w8, LBB0_14
; %bb.1:
	mov	x20, x0
	mov	w21, #0                         ; =0x0
Lloh0:
	adrp	x22, _func0.out@PAGE
Lloh1:
	add	x22, x22, _func0.out@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	str	x9, [sp, #8]
	mov	x20, x9
	cbz	w8, LBB0_15
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
	sxtb	w9, w8
	sub	w9, w9, #48
	cmp	w9, #10
	b.lo	LBB0_8
LBB0_4:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ands	w8, w8, #0xff
	b.eq	LBB0_15
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=2
	cmp	w8, #45
	b.eq	LBB0_8
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=2
	ldrb	w8, [x20, #1]!
	sxtb	w9, w8
	sub	w9, w9, #48
	cmp	w9, #9
	b.hi	LBB0_4
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	tst	w8, #0xff
	b.eq	LBB0_15
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x1, sp, #8
	mov	x0, x20
	mov	w2, #10                         ; =0xa
	bl	_strtol
	ldr	x9, [sp, #8]
	cmp	x20, x9
	b.eq	LBB0_12
; %bb.9:                                ;   in Loop: Header=BB0_3 Depth=1
	ldrb	w8, [x9]
	cmp	w8, #44
	ccmp	w8, #0, #4, ne
	b.ne	LBB0_12
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	str	w0, [x22, w21, sxtw #2]
	add	w21, w21, #1
	ldrb	w8, [x9]
	mov	x20, x9
	cbnz	w8, LBB0_3
	b	LBB0_15
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=2
	add	x9, x9, #1
LBB0_12:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w8, [x9]
	cbz	w8, LBB0_2
; %bb.13:                               ;   in Loop: Header=BB0_12 Depth=2
	cmp	w8, #44
	b.ne	LBB0_11
	b	LBB0_2
LBB0_14:
	mov	w21, #0                         ; =0x0
LBB0_15:
	str	w21, [x19]
Lloh2:
	adrp	x0, _func0.out@PAGE
Lloh3:
	add	x0, x0, _func0.out@PAGEOFF
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_func0.out,1024,2 ; @func0.out
.subsections_via_symbols
