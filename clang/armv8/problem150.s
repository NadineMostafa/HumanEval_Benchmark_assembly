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
                                        ; kill: def $w1 killed $w1 def $x1
	str	wzr, [x2]
	cmp	w1, #0
	b.le	LBB0_18
; %bb.1:
	mov	x20, x2
	mov	x19, x0
	mov	x22, #0                         ; =0x0
	mov	w23, #0                         ; =0x0
	ubfiz	x24, x1, #3, #32
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	add	x22, x22, #8
	cmp	x24, x22
	b.eq	LBB0_5
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x21, [x19, x22]
	mov	x0, x21
	bl	_strlen
	tbnz	w0, #0, LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	str	x21, [x19, w23, sxtw #3]
	add	w23, w23, #1
	str	w23, [x20]
	b	LBB0_2
LBB0_5:
	subs	w24, w23, #1
	b.le	LBB0_16
; %bb.6:
	mov	w25, #0                         ; =0x0
	add	x8, x19, #8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x24
	b	LBB0_8
LBB0_7:                                 ;   in Loop: Header=BB0_8 Depth=1
	add	w25, w25, #1
	sub	w8, w27, #1
	cmp	w25, w24
	b.eq	LBB0_16
LBB0_8:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_12 Depth 2
	mov	w27, w8
	sub	w8, w25, w23
	cmn	w8, #2
	b.gt	LBB0_7
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=1
	ldr	x20, [x19]
	mov	x28, x27
	ldr	x26, [sp, #8]                   ; 8-byte Folded Reload
	b	LBB0_12
LBB0_10:                                ;   in Loop: Header=BB0_12 Depth=2
	stp	x21, x20, [x26, #-8]
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=2
	add	x26, x26, #8
	subs	x28, x28, #1
	b.eq	LBB0_7
LBB0_12:                                ;   Parent Loop BB0_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x0, x20
	bl	_strlen
	mov	x22, x0
	ldr	x21, [x26]
	mov	x0, x21
	bl	_strlen
	cmp	x22, x0
	b.hi	LBB0_10
; %bb.13:                               ;   in Loop: Header=BB0_12 Depth=2
	b.ne	LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_12 Depth=2
	mov	x0, x20
	mov	x1, x21
	bl	_strcmp
	cmp	w0, #1
	b.ge	LBB0_10
LBB0_15:                                ;   in Loop: Header=BB0_12 Depth=2
	mov	x20, x21
	b	LBB0_11
LBB0_16:
	sbfiz	x0, x23, #3, #32
	bl	_malloc
	cmp	w23, #1
	b.lt	LBB0_19
; %bb.17:
                                        ; kill: def $w23 killed $w23 killed $x23 def $x23
	ubfiz	x2, x23, #3, #32
	mov	x1, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	b	_memcpy
LBB0_18:
	mov	x0, #0                          ; =0x0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	b	_malloc
LBB0_19:
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
.subsections_via_symbols
