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
	mov	x19, x0
	bl	_strlen
	cmp	x0, #10
	b.ne	LBB0_11
; %bb.1:
	ldrb	w8, [x19]
	sub	w9, w8, #58
	cmn	w9, #10
	b.lo	LBB0_11
; %bb.2:
	ldrb	w9, [x19, #1]
	sub	w10, w9, #58
	cmn	w10, #10
	b.lo	LBB0_11
; %bb.3:
	ldrb	w10, [x19, #2]
	cmp	w10, #45
	b.ne	LBB0_11
; %bb.4:
	ldrb	w10, [x19, #3]
	sub	w11, w10, #58
	cmn	w11, #10
	b.lo	LBB0_11
; %bb.5:
	ldrb	w11, [x19, #4]
	sub	w12, w11, #58
	cmn	w12, #10
	b.lo	LBB0_11
; %bb.6:
	ldrb	w12, [x19, #5]
	cmp	w12, #45
	b.ne	LBB0_11
; %bb.7:
	ldrb	w12, [x19, #6]
	sub	w12, w12, #58
	cmn	w12, #10
	b.lo	LBB0_11
; %bb.8:
	ldrb	w12, [x19, #7]
	sub	w12, w12, #58
	cmn	w12, #10
	b.lo	LBB0_11
; %bb.9:
	ldrb	w12, [x19, #8]
	sub	w12, w12, #58
	cmn	w12, #10
	b.lo	LBB0_11
; %bb.10:
	ldrb	w12, [x19, #9]
	sub	w12, w12, #58
	cmn	w12, #10
	b.hs	LBB0_13
LBB0_11:
	mov	w0, #0                          ; =0x0
LBB0_12:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB0_13:
	strb	w8, [sp, #13]
	strb	w9, [sp, #14]
	strb	wzr, [sp, #15]
	strb	w10, [sp, #10]
	strb	w11, [sp, #11]
	strb	wzr, [sp, #12]
	add	x0, sp, #13
	bl	_atoi
	mov	x19, x0
	add	x0, sp, #10
	bl	_atoi
	mov	x8, x0
	mov	w0, #0                          ; =0x0
	sub	w9, w19, #13
	cmn	w9, #12
	b.lo	LBB0_12
; %bb.14:
	sub	w9, w8, #32
	cmn	w9, #31
	b.lo	LBB0_12
; %bb.15:
	mov	w9, #13                         ; =0xd
	and	w9, w19, w9
	cmp	w9, #9
	ccmp	w9, #4, #4, ne
	b.ne	LBB0_17
; %bb.16:
	cmp	w8, #31
	b.eq	LBB0_11
LBB0_17:
	cmp	w19, #2
	ccmp	w8, #30, #0, eq
	cset	w0, lo
	b	LBB0_12
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
