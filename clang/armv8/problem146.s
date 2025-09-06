	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
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
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	mov	x20, x1
	mov	x19, x0
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	str	x8, [sp, #24]
	sbfiz	x0, x20, #2, #32
	bl	_malloc
	mov	x21, x0
	cmp	w20, #1
	b.lt	LBB0_26
; %bb.1:
	mov	x24, #0                         ; =0x0
	mov	w23, w20
	add	x25, sp, #12
	add	x26, x25, #33
	add	x27, x25, #1
Lloh3:
	adrp	x22, l_.str@PAGE
Lloh4:
	add	x22, x22, l_.str@PAGEOFF
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [x19, x24, lsl #2]
	ldrsb	w9, [sp, #12]
	add	w10, w11, w9
	sub	w10, w10, #48
	sub	w9, w11, w9
	add	w9, w9, #48
	cmp	w8, #0
	csel	w8, w10, w9, gt
	str	w8, [x21, x24, lsl #2]
	add	x24, x24, #1
	cmp	x24, x23
	b.eq	LBB0_18
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_9 Depth 2
                                        ;     Child Loop BB0_13 Depth 2
                                        ;     Child Loop BB0_17 Depth 2
	ldr	w8, [x19, x24, lsl #2]
	cmp	w8, #0
	cneg	w8, w8, mi
	str	x8, [sp]
	add	x0, sp, #12
	mov	w1, #0                          ; =0x0
	mov	w2, #12                         ; =0xc
	mov	x3, x22
	bl	___sprintf_chk
	add	x0, sp, #12
	bl	_strlen
	mvni.4s	v8, #47
	mov	w11, #0                         ; =0x0
	cmp	w0, #2
	b.lt	LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	and	x8, x0, #0x7fffffff
	sub	x9, x8, #1
	cmp	x9, #8
	b.hs	LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w11, #0                         ; =0x0
	mov	w12, #1                         ; =0x1
	b	LBB0_16
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	cmp	x9, #64
	b.hs	LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	w11, #0                         ; =0x0
	mov	x10, #0                         ; =0x0
	b	LBB0_12
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=1
	movi.2d	v0, #0000000000000000
	and	x10, x9, #0xffffffffffffffc0
	movi.2d	v3, #0000000000000000
	mov	x11, x10
	movi.2d	v1, #0000000000000000
	mov	x12, x26
	movi.2d	v2, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v20, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v7, #0000000000000000
	movi.2d	v21, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v19, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v23, #0000000000000000
	movi.2d	v22, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v17, #0000000000000000
LBB0_9:                                 ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q24, q25, [x12, #-32]
	sshll2.8h	v26, v24, #0
	sshll.8h	v24, v24, #0
	sshll2.8h	v27, v25, #0
	sshll.8h	v25, v25, #0
	ldp	q28, q29, [x12], #64
	sshll2.8h	v30, v28, #0
	sshll.8h	v28, v28, #0
	sshll2.8h	v31, v29, #0
	sshll.8h	v29, v29, #0
	saddw.4s	v0, v0, v24
	saddw2.4s	v3, v3, v24
	saddw.4s	v1, v1, v26
	saddw2.4s	v2, v2, v26
	saddw.4s	v18, v18, v25
	saddw2.4s	v20, v20, v25
	saddw.4s	v4, v4, v27
	saddw2.4s	v7, v7, v27
	saddw.4s	v21, v21, v28
	saddw2.4s	v16, v16, v28
	saddw.4s	v19, v19, v30
	saddw2.4s	v5, v5, v30
	saddw.4s	v23, v23, v29
	saddw2.4s	v22, v22, v29
	saddw.4s	v6, v6, v31
	saddw2.4s	v17, v17, v31
	add.4s	v2, v2, v8
	add.4s	v1, v1, v8
	add.4s	v3, v3, v8
	add.4s	v0, v0, v8
	add.4s	v7, v7, v8
	add.4s	v4, v4, v8
	add.4s	v20, v20, v8
	add.4s	v18, v18, v8
	add.4s	v5, v5, v8
	add.4s	v19, v19, v8
	add.4s	v16, v16, v8
	add.4s	v21, v21, v8
	add.4s	v17, v17, v8
	add.4s	v6, v6, v8
	add.4s	v22, v22, v8
	add.4s	v23, v23, v8
	subs	x11, x11, #64
	b.ne	LBB0_9
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	add.4s	v3, v20, v3
	add.4s	v2, v7, v2
	add.4s	v0, v18, v0
	add.4s	v1, v4, v1
	add.4s	v1, v19, v1
	add.4s	v0, v21, v0
	add.4s	v2, v5, v2
	add.4s	v3, v16, v3
	add.4s	v3, v22, v3
	add.4s	v2, v17, v2
	add.4s	v0, v23, v0
	add.4s	v1, v6, v1
	add.4s	v0, v0, v1
	add.4s	v1, v3, v2
	add.4s	v0, v0, v1
	addv.4s	s0, v0
	fmov	w11, s0
	cmp	x9, x10
	b.eq	LBB0_2
; %bb.11:                               ;   in Loop: Header=BB0_3 Depth=1
	tst	x9, #0x38
	b.eq	LBB0_15
LBB0_12:                                ;   in Loop: Header=BB0_3 Depth=1
	and	x13, x9, #0xfffffffffffffff8
	orr	x12, x13, #0x1
	movi.2d	v0, #0000000000000000
	movi.2d	v1, #0000000000000000
	mov.s	v1[0], w11
	add	x11, x27, x10
	sub	x10, x10, x13
LBB0_13:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	d2, [x11], #8
	sshll.8h	v2, v2, #0
	saddw.4s	v1, v1, v2
	saddw2.4s	v0, v0, v2
	add.4s	v0, v0, v8
	add.4s	v1, v1, v8
	adds	x10, x10, #8
	b.ne	LBB0_13
; %bb.14:                               ;   in Loop: Header=BB0_3 Depth=1
	add.4s	v0, v1, v0
	addv.4s	s0, v0
	fmov	w11, s0
	cmp	x9, x13
	b.eq	LBB0_2
	b	LBB0_16
LBB0_15:                                ;   in Loop: Header=BB0_3 Depth=1
	orr	x12, x10, #0x1
LBB0_16:                                ;   in Loop: Header=BB0_3 Depth=1
	add	x9, x25, x12
	sub	x8, x8, x12
LBB0_17:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	w10, [x9], #1
	add	w10, w11, w10
	sub	w11, w10, #48
	subs	x8, x8, #1
	b.ne	LBB0_17
	b	LBB0_2
LBB0_18:
	mov	w8, #0                          ; =0x0
	add	x9, x21, #4
	sub	x10, x23, #1
	b	LBB0_20
LBB0_19:                                ;   in Loop: Header=BB0_20 Depth=1
	add	w8, w8, #1
	cmp	w8, w20
	b.eq	LBB0_26
LBB0_20:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_24 Depth 2
	cmp	w20, #1
	b.eq	LBB0_19
; %bb.21:                               ;   in Loop: Header=BB0_20 Depth=1
	ldr	w11, [x21]
	mov	x12, x10
	mov	x13, x19
	mov	x14, x9
	b	LBB0_24
LBB0_22:                                ;   in Loop: Header=BB0_24 Depth=2
	stp	w15, w11, [x14, #-4]
	ldr	d0, [x13]
	rev64.2s	v0, v0
	str	d0, [x13]
LBB0_23:                                ;   in Loop: Header=BB0_24 Depth=2
	add	x14, x14, #4
	add	x13, x13, #4
	subs	x12, x12, #1
	b.eq	LBB0_19
LBB0_24:                                ;   Parent Loop BB0_20 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w15, [x14]
	cmp	w11, w15
	b.gt	LBB0_22
; %bb.25:                               ;   in Loop: Header=BB0_24 Depth=2
	mov	x11, x15
	b	LBB0_23
LBB0_26:
	mov	x0, x21
	bl	_free
	ldr	x8, [sp, #24]
Lloh5:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh6:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh7:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_28
; %bb.27:
	mov	x0, x19
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB0_28:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh5, Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

.subsections_via_symbols
