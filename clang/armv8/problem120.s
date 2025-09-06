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
	mov	x21, x1
	mov	x19, x0
	bl	_strlen
	mov	x20, x0
	mov	x0, x21
	bl	_strlen
	cmp	w20, #1
	b.lt	LBB0_9
; %bb.1:
	mov	w11, #0                         ; =0x0
	and	x8, x20, #0x7fffffff
	mov	w9, #1                          ; =0x1
	mov	x10, x19
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w12, [x10], #1
	cmp	w12, #40
	cinc	w11, w11, eq
	cmp	w12, #41
	cset	w12, eq
	sub	w11, w11, w12
	cmp	w11, #0
	csel	w9, wzr, w9, lt
	subs	x8, x8, #1
	b.ne	LBB0_2
; %bb.3:
	cmp	w0, #1
	b.lt	LBB0_10
LBB0_4:
	and	x12, x0, #0x7fffffff
	mov	x8, x12
	mov	x10, x21
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w13, [x10], #1
	cmp	w13, #40
	cinc	w11, w11, eq
	cmp	w13, #41
	cset	w13, eq
	sub	w11, w11, w13
	cmp	w11, #0
	csel	w9, wzr, w9, lt
	subs	x8, x8, #1
	b.ne	LBB0_5
; %bb.6:
	cmp	w11, #0
	ccmp	w9, #0, #4, eq
	b.ne	LBB0_12
; %bb.7:
	mov	w10, #0                         ; =0x0
	mov	w8, #1                          ; =0x1
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w9, [x21], #1
	cmp	w9, #40
	cinc	w10, w10, eq
	cmp	w9, #41
	cset	w9, eq
	sub	w10, w10, w9
	cmp	w10, #0
	csel	w8, wzr, w8, lt
	subs	x12, x12, #1
	b.ne	LBB0_8
	b	LBB0_13
LBB0_9:
	mov	w11, #0                         ; =0x0
	mov	w9, #1                          ; =0x1
	cmp	w0, #1
	b.ge	LBB0_4
LBB0_10:
	mov	w10, #0                         ; =0x0
	mov	w8, #1                          ; =0x1
	cbnz	w11, LBB0_13
; %bb.11:
	cbz	w9, LBB0_13
LBB0_12:
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	b	LBB0_17
LBB0_13:
	cmp	w20, #1
	b.lt	LBB0_16
; %bb.14:
	and	x9, x20, #0x7fffffff
LBB0_15:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w11, [x19], #1
	cmp	w11, #40
	cinc	w10, w10, eq
	cmp	w11, #41
	cset	w11, eq
	sub	w10, w10, w11
	cmp	w10, #0
	csel	w8, wzr, w8, lt
	subs	x9, x9, #1
	b.ne	LBB0_15
LBB0_16:
	cmp	w8, #0
	ccmp	w10, #0, #0, ne
Lloh2:
	adrp	x8, l_.str.1@PAGE
Lloh3:
	add	x8, x8, l_.str.1@PAGEOFF
Lloh4:
	adrp	x9, l_.str@PAGE
Lloh5:
	add	x9, x9, l_.str@PAGEOFF
	csel	x0, x9, x8, eq
LBB0_17:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Yes"

l_.str.1:                               ; @.str.1
	.asciz	"No"

.subsections_via_symbols
