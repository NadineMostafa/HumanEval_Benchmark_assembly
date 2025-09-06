	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
                                        ; kill: def $w0 killed $w0 def $x0
Lloh0:
	adrp	x3, l_.str@PAGE
Lloh1:
	add	x3, x3, l_.str@PAGEOFF
	str	x0, [sp]
	add	x20, sp, #10
	add	x0, sp, #10
	mov	w1, #0                          ; =0x0
	mov	w2, #6                          ; =0x6
	bl	___sprintf_chk
	ldrb	w8, [sp, #10]
	cbz	w8, LBB0_10
; %bb.1:
	mov	w19, #0                         ; =0x0
	add	x9, x20, #1
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	add	w8, w19, w8, sxtb
	sub	w19, w8, #48
	ldrb	w8, [x9], #1
	cbnz	w8, LBB0_2
; %bb.3:
	mov	w0, #33                         ; =0x21
	bl	_malloc
	cbz	w19, LBB0_11
; %bb.4:
	cmp	w19, #1
	b.lt	LBB0_14
; %bb.5:
	mov	x10, #0                         ; =0x0
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	mov	w8, #48                         ; =0x30
	bfxil	w8, w19, #0, #1
	strb	w8, [x0, x10]
	add	x10, x10, #1
	lsr	w8, w19, #1
	cmp	w19, #2
	mov	x19, x8
	b.hs	LBB0_6
; %bb.7:
	strb	wzr, [x0, x10]
	subs	x8, x10, #1
	b.eq	LBB0_13
; %bb.8:
	mov	x9, #0                          ; =0x0
	lsr	x10, x10, #1
LBB0_9:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w11, [x0, x9]
	ldrb	w12, [x0, x8]
	strb	w12, [x0, x9]
	strb	w11, [x0, x8]
	add	x9, x9, #1
	sub	x8, x8, #1
	cmp	x10, x9
	b.ne	LBB0_9
	b	LBB0_13
LBB0_10:
	mov	w0, #33                         ; =0x21
	bl	_malloc
LBB0_11:
	mov	w8, #48                         ; =0x30
	strb	w8, [x0]
	mov	w8, #1                          ; =0x1
LBB0_12:
	strb	wzr, [x0, x8]
LBB0_13:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB0_14:
	mov	x8, #0                          ; =0x0
	b	LBB0_12
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

.subsections_via_symbols
