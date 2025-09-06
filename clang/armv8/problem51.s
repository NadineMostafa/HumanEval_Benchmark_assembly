	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function func0
lCPI0_0:
	.byte	0                               ; 0x0
	.byte	4                               ; 0x4
	.byte	8                               ; 0x8
	.byte	12                              ; 0xc
	.byte	16                              ; 0x10
	.byte	20                              ; 0x14
	.byte	24                              ; 0x18
	.byte	28                              ; 0x1c
	.byte	32                              ; 0x20
	.byte	36                              ; 0x24
	.byte	40                              ; 0x28
	.byte	44                              ; 0x2c
	.byte	48                              ; 0x30
	.byte	52                              ; 0x34
	.byte	56                              ; 0x38
	.byte	60                              ; 0x3c
lCPI0_1:
	.byte	0                               ; 0x0
	.byte	4                               ; 0x4
	.byte	8                               ; 0x8
	.byte	12                              ; 0xc
	.byte	16                              ; 0x10
	.byte	20                              ; 0x14
	.byte	24                              ; 0x18
	.byte	28                              ; 0x1c
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.byte	255                             ; 0xff
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x1
	mov	x19, x0
	bl	_strlen
	cbz	x0, LBB0_14
; %bb.1:
	mov	w8, #-92                        ; =0xffffffa4
	mov	w9, #-76                        ; =0xffffffb4
	cmp	w20, #0
	csel	w8, w9, w8, eq
	cmp	x0, #8
	b.hs	LBB0_3
; %bb.2:
	mov	x9, #0                          ; =0x0
	b	LBB0_12
LBB0_3:
	dup.4s	v0, w8
	cmp	x0, #16
	b.hs	LBB0_8
; %bb.4:
	mov	x9, #0                          ; =0x0
LBB0_5:
	mov	x11, x9
	and	x9, x0, #0xfffffffffffffff8
	add	x10, x19, x11
	sub	x11, x11, x9
	mov	w12, #60495                     ; =0xec4f
	movk	w12, #20164, lsl #16
	dup.4s	v1, w12
	movi.4s	v2, #26
Lloh0:
	adrp	x12, lCPI0_1@PAGE
Lloh1:
	ldr	q3, [x12, lCPI0_1@PAGEOFF]
	movi.8b	v4, #97
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	d5, [x10]
	sshll.8h	v5, v5, #0
	saddw.4s	v6, v0, v5
	saddw2.4s	v7, v0, v5
	smull2.2d	v5, v7, v1
	smull.2d	v16, v7, v1
	uzp2.4s	v5, v16, v5
	sshr.4s	v16, v5, #3
	usra.4s	v16, v5, #31
	mls.4s	v7, v16, v2
	smull2.2d	v5, v6, v1
	smull.2d	v16, v6, v1
	uzp2.4s	v5, v16, v5
	sshr.4s	v16, v5, #3
	usra.4s	v16, v5, #31
	mls.4s	v6, v16, v2
	tbl.16b	v5, { v6, v7 }, v3
	add.8b	v5, v5, v4
	str	d5, [x10], #8
	adds	x11, x11, #8
	b.ne	LBB0_6
; %bb.7:
	cmp	x0, x9
	b.ne	LBB0_12
	b	LBB0_14
LBB0_8:
	and	x9, x0, #0xfffffffffffffff0
	mov	w10, #60495                     ; =0xec4f
	movk	w10, #20164, lsl #16
	dup.4s	v1, w10
	movi.4s	v2, #26
Lloh2:
	adrp	x10, lCPI0_0@PAGE
Lloh3:
	ldr	q3, [x10, lCPI0_0@PAGEOFF]
	movi.16b	v4, #97
	mov	x10, x9
	mov	x11, x19
LBB0_9:                                 ; =>This Inner Loop Header: Depth=1
	ldr	q5, [x11]
	sshll2.8h	v6, v5, #0
	sshll.8h	v5, v5, #0
	saddw.4s	v16, v0, v5
	saddw2.4s	v17, v0, v5
	saddw.4s	v18, v0, v6
	saddw2.4s	v19, v0, v6
	smull2.2d	v5, v19, v1
	smull.2d	v6, v19, v1
	uzp2.4s	v5, v6, v5
	sshr.4s	v6, v5, #3
	usra.4s	v6, v5, #31
	mls.4s	v19, v6, v2
	smull2.2d	v5, v18, v1
	smull.2d	v6, v18, v1
	uzp2.4s	v5, v6, v5
	sshr.4s	v6, v5, #3
	usra.4s	v6, v5, #31
	mls.4s	v18, v6, v2
	smull2.2d	v5, v17, v1
	smull.2d	v6, v17, v1
	uzp2.4s	v5, v6, v5
	sshr.4s	v6, v5, #3
	usra.4s	v6, v5, #31
	mls.4s	v17, v6, v2
	smull2.2d	v5, v16, v1
	smull.2d	v6, v16, v1
	uzp2.4s	v5, v6, v5
	sshr.4s	v6, v5, #3
	usra.4s	v6, v5, #31
	mls.4s	v16, v6, v2
	tbl.16b	v5, { v16, v17, v18, v19 }, v3
	add.16b	v5, v5, v4
	str	q5, [x11], #16
	subs	x10, x10, #16
	b.ne	LBB0_9
; %bb.10:
	cmp	x0, x9
	b.eq	LBB0_14
; %bb.11:
	tbnz	w0, #3, LBB0_5
LBB0_12:
	sub	x10, x0, x9
	add	x9, x19, x9
	mov	w11, #60495                     ; =0xec4f
	movk	w11, #20164, lsl #16
	mov	w12, #26                        ; =0x1a
LBB0_13:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	w13, [x9]
	add	w13, w8, w13
	smull	x14, w13, w11
	lsr	x15, x14, #63
	lsr	x14, x14, #35
	add	w14, w14, w15
	msub	w13, w14, w12, w13
	add	w13, w13, #97
	strb	w13, [x9], #1
	subs	x10, x10, #1
	b.ne	LBB0_13
LBB0_14:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdr	Lloh0, Lloh1
	.loh AdrpLdr	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
