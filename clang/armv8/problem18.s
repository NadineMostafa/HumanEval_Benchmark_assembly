	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
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
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	str	x1, [sp]                        ; 8-byte Folded Spill
	mov	x21, x0
	strb	wzr, [sp, #14]
	strh	wzr, [sp, #12]
	bl	_strlen
	mov	x22, x0
	add	w8, w22, #2
	sxtw	x0, w8
	bl	_malloc
	mov	x26, x0
	mov	x1, x21
	bl	_strcpy
	bl	_strlen
	mov	w8, #32                         ; =0x20
	strh	w8, [x26, x0]
	mov	w8, #2147483646                 ; =0x7ffffffe
	cmp	w22, w8
	b.hi	LBB0_19
; %bb.1:
	mov	x21, #0                         ; =0x0
	mov	w23, #0                         ; =0x0
	mov	w28, #0                         ; =0x0
	add	w22, w22, #1
	mov	w24, #4                         ; =0x4
	mov	w25, #31855                     ; =0x7c6f
	mov	w27, #31790                     ; =0x7c2e
	mov	x20, x26
	b	LBB0_5
LBB0_2:                                 ;   in Loop: Header=BB0_5 Depth=1
	mov	w8, #1                          ; =0x1
	str	w8, [x21, w23, sxtw #2]
	add	w23, w23, #1
LBB0_3:                                 ;   in Loop: Header=BB0_5 Depth=1
	strb	wzr, [sp, #12]
LBB0_4:                                 ;   in Loop: Header=BB0_5 Depth=1
	subs	x22, x22, #1
	b.eq	LBB0_20
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w19, [x20], #1
	cmp	w19, #32
	b.ne	LBB0_17
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=1
	ldrh	w8, [sp, #12]
	cmp	w8, #111
	b.ne	LBB0_10
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	cmp	w23, w28
	b.ne	LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_5 Depth=1
	lsl	w8, w23, #1
	cmp	w23, #0
	csel	w28, w8, w24, gt
	sbfiz	x1, x28, #2, #32
	mov	x0, x21
	bl	_realloc
	mov	x21, x0
LBB0_9:                                 ;   in Loop: Header=BB0_5 Depth=1
	str	w24, [x21, w23, sxtw #2]
	add	w23, w23, #1
LBB0_10:                                ;   in Loop: Header=BB0_5 Depth=1
	ldrh	w8, [sp, #12]
	eor	w8, w8, w25
	ldrb	w9, [sp, #14]
	orr	w8, w8, w9
	cbnz	w8, LBB0_14
; %bb.11:                               ;   in Loop: Header=BB0_5 Depth=1
	cmp	w23, w28
	b.ne	LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_5 Depth=1
	lsl	w8, w28, #1
	cmp	w28, #0
	csel	w28, w8, w24, gt
	sbfiz	x1, x28, #2, #32
	mov	x0, x21
	bl	_realloc
	mov	x21, x0
                                        ; kill: def $w28 killed $w28 killed $x28 def $x28
LBB0_13:                                ;   in Loop: Header=BB0_5 Depth=1
	mov	w8, #2                          ; =0x2
	str	w8, [x21, w23, sxtw #2]
	add	w23, w23, #1
LBB0_14:                                ;   in Loop: Header=BB0_5 Depth=1
	ldrh	w8, [sp, #12]
	eor	w8, w8, w27
	ldrb	w9, [sp, #14]
	orr	w8, w8, w9
	cbnz	w8, LBB0_3
; %bb.15:                               ;   in Loop: Header=BB0_5 Depth=1
	cmp	w23, w28
	b.ne	LBB0_2
; %bb.16:                               ;   in Loop: Header=BB0_5 Depth=1
	lsl	w8, w28, #1
	cmp	w28, #0
	csel	w28, w8, w24, gt
	sbfiz	x1, x28, #2, #32
	mov	x0, x21
	bl	_realloc
	mov	x21, x0
                                        ; kill: def $w28 killed $w28 killed $x28 def $x28
	b	LBB0_2
LBB0_17:                                ;   in Loop: Header=BB0_5 Depth=1
	add	x0, sp, #12
	bl	_strlen
	cmp	x0, #1
	b.hi	LBB0_4
; %bb.18:                               ;   in Loop: Header=BB0_5 Depth=1
	add	x8, sp, #12
	add	x8, x8, x0
	strb	w19, [x8]
	strb	wzr, [x8, #1]
	b	LBB0_4
LBB0_19:
	mov	w23, #0                         ; =0x0
	mov	x21, #0                         ; =0x0
LBB0_20:
	mov	x0, x26
	bl	_free
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	w23, [x8]
	mov	x0, x21
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"o"

l_.str.2:                               ; @.str.2
	.asciz	"o|"

l_.str.3:                               ; @.str.3
	.asciz	".|"

.subsections_via_symbols
