	.arch armv8.5-a
	.build_version macos,  15, 0
; GNU C11 (Homebrew GCC 15.1.0) version 15.1.0 (aarch64-apple-darwin24)
;	compiled by GNU C version 15.1.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed: -fPIC -mmacosx-version-min=15.0.0 -mcpu=apple-m1 -mlittle-endian -mabi=lp64 -O2 -std=c11
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB4:
	stp	x29, x30, [sp, -288]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
LCFI2:
	mov	x21, x1	; n, n
	stp	x23, x24, [sp, 48]	;,,
LCFI3:
	mov	x23, x0	; x, x
	str	x25, [sp, 64]	;,
LCFI4:
; GuessSketchFlow/eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	ldrsb	w2, [x0]	; _3, *x_28(D)
; GuessSketchFlow/eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	cmp	w2, 47	; _3,
	beq	L10		;,
	mov	x0, 1	; ivtmp.35,
	add	x20, x29, 80	; tmp204,,
	sub	x3, x23, #1	; _118, x,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem145/code.c:9:         num[i] = x[i];
	add	x1, x20, x0	; tmp147, tmp204, ivtmp.35
	strb	w2, [x1, -1]	; _3, MEM[(char *)&num + -1B + ivtmp.35_112 * 1]
	mov	x1, x0	; ivtmp.35, ivtmp.35
; GuessSketchFlow/eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	add	x0, x0, 1	; ivtmp.35, ivtmp.35,
; GuessSketchFlow/eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	ldrsb	w2, [x3, x0]	; _3, MEM[(const char *)_118 + ivtmp.35_113 * 1]
; GuessSketchFlow/eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	cmp	w2, 47	; _3,
	bne	L3		;,
; GuessSketchFlow/eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	mov	w0, w1	; i, ivtmp.35
; GuessSketchFlow/eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	add	w19, w1, 1	; _101, ivtmp.35,
; GuessSketchFlow/eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	sxtw	x24, w19	; _103, _101
; GuessSketchFlow/eval/problem145/code.c:11:     num[i] = '\0';
	strb	wzr, [x20, w0, sxtw]	;, num[i_84]
; GuessSketchFlow/eval/problem145/code.c:12:     a = atoi(num);
	mov	x0, x20	;, tmp204
	bl	_atoi		;
; GuessSketchFlow/eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldrsb	w3, [x23, x24]	; _6, *_72
; GuessSketchFlow/eval/problem145/code.c:12:     a = atoi(num);
	mov	w22, w0	; a,
; GuessSketchFlow/eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	cbz	w3, L11	; _6,
L20:
	sxtw	x1, w19	; _109, _101
	mov	x2, 1	; ivtmp.27,
; GuessSketchFlow/eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	sub	x1, x1, #1	; _75, _109,
	add	x19, x29, 184	; tmp199,,
	add	x0, x23, x1	; _111, x, _75
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem145/code.c:15:         den[j] = x[i];
	add	x1, x19, x2	; tmp154, tmp199, ivtmp.27
	strb	w3, [x1, -1]	; _6, MEM[(char *)&den + -1B + ivtmp.27_32 * 1]
	mov	x1, x2	; ivtmp.27, ivtmp.27
; GuessSketchFlow/eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	add	x2, x2, 1	; ivtmp.27, ivtmp.27,
; GuessSketchFlow/eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldrsb	w3, [x0, x2]	; _6, MEM[(const char *)_111 + ivtmp.27_71 * 1]
; GuessSketchFlow/eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	cbnz	w3, L5	; _6,
; GuessSketchFlow/eval/problem145/code.c:18:     b = atoi(den);
	mov	x0, x19	;, tmp199
; GuessSketchFlow/eval/problem145/code.c:17:     den[j] = '\0';
	strb	wzr, [x19, w1, sxtw]	;, den[j_90]
; GuessSketchFlow/eval/problem145/code.c:18:     b = atoi(den);
	bl	_atoi		;
; GuessSketchFlow/eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	ldrsb	w2, [x21]	; _9, *n_36(D)
; GuessSketchFlow/eval/problem145/code.c:18:     b = atoi(den);
	mov	w23, w0	; b,
; GuessSketchFlow/eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	cmp	w2, 47	; _9,
	beq	L12		;,
L21:
	mov	x0, 1	; ivtmp.19,
	sub	x3, x21, #1	; _16, n,
	.p2align 5,,15
L7:
; GuessSketchFlow/eval/problem145/code.c:21:         num[i] = n[i];
	add	x1, x20, x0	; tmp163, tmp204, ivtmp.19
	strb	w2, [x1, -1]	; _9, MEM[(char *)&num + -1B + ivtmp.19_22 * 1]
	mov	x1, x0	; ivtmp.19, ivtmp.19
; GuessSketchFlow/eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	add	x0, x0, 1	; ivtmp.19, ivtmp.19,
; GuessSketchFlow/eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	ldrsb	w2, [x3, x0]	; _9, MEM[(const char *)_16 + ivtmp.19_21 * 1]
; GuessSketchFlow/eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	cmp	w2, 47	; _9,
	bne	L7		;,
; GuessSketchFlow/eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	mov	w0, w1	; i, ivtmp.19
; GuessSketchFlow/eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	add	w24, w1, 1	; _105, ivtmp.19,
; GuessSketchFlow/eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	sxtw	x25, w24	; _107, _105
; GuessSketchFlow/eval/problem145/code.c:23:     num[i] = '\0';
	strb	wzr, [x20, w0, sxtw]	;, num[i_87]
; GuessSketchFlow/eval/problem145/code.c:24:     c = atoi(num);
	mov	x0, x20	;, tmp204
	bl	_atoi		;
; GuessSketchFlow/eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldrsb	w2, [x21, x25]	; _12, *_59
; GuessSketchFlow/eval/problem145/code.c:24:     c = atoi(num);
	mov	w20, w0	; c,
; GuessSketchFlow/eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	cbz	w2, L13	; _12,
L22:
	sxtw	x1, w24	; _25, _105
	mov	x0, 1	; ivtmp.10,
; GuessSketchFlow/eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	sub	x1, x1, #1	; _76, _25,
	add	x21, x21, x1	; _23, n, _76
	.p2align 5,,15
L9:
; GuessSketchFlow/eval/problem145/code.c:27:         den[j] = n[i];
	add	x1, x19, x0	; tmp170, tmp199, ivtmp.10
	strb	w2, [x1, -1]	; _12, MEM[(char *)&den + -1B + ivtmp.10_63 * 1]
	mov	x1, x0	; ivtmp.10, ivtmp.10
; GuessSketchFlow/eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	add	x0, x0, 1	; ivtmp.10, ivtmp.10,
; GuessSketchFlow/eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldrsb	w2, [x21, x0]	; _12, MEM[(const char *)_23 + ivtmp.10_58 * 1]
; GuessSketchFlow/eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	cbnz	w2, L9	; _12,
L8:
; GuessSketchFlow/eval/problem145/code.c:30:     d = atoi(den);
	mov	x0, x19	;, tmp199
; GuessSketchFlow/eval/problem145/code.c:29:     den[j] = '\0';
	strb	wzr, [x19, w1, sxtw]	;, den[j_92]
; GuessSketchFlow/eval/problem145/code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	mul	w22, w22, w20	; _13, a, c
; GuessSketchFlow/eval/problem145/code.c:30:     d = atoi(den);
	bl	_atoi		;
; GuessSketchFlow/eval/problem145/code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	mul	w23, w23, w0	; _14, b, d
; GuessSketchFlow/eval/problem145/code.c:34: }
	ldr	x25, [sp, 64]	;,
	ldp	x19, x20, [sp, 16]	;,,
; GuessSketchFlow/eval/problem145/code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	sdiv	w0, w22, w23	; tmp194, _13, _14
	msub	w0, w0, w23, w22	; _15, tmp194, _14, _13
; GuessSketchFlow/eval/problem145/code.c:34: }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
; GuessSketchFlow/eval/problem145/code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	cmp	w0, 0	; _15,
; GuessSketchFlow/eval/problem145/code.c:34: }
	cset	w0, eq	;,
	ldp	x29, x30, [sp], 288	;,,,
LCFI5:
	ret	
	.p2align 2,,3
L10:
LCFI6:
; GuessSketchFlow/eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	mov	w0, 0	; i,
	add	x20, x29, 80	; tmp204,,
; GuessSketchFlow/eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	mov	x24, 1	; _103,
; GuessSketchFlow/eval/problem145/code.c:11:     num[i] = '\0';
	strb	wzr, [x20, w0, sxtw]	;, num[i_84]
; GuessSketchFlow/eval/problem145/code.c:12:     a = atoi(num);
	mov	x0, x20	;, tmp204
; GuessSketchFlow/eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	mov	w19, w24	; _101, _103
; GuessSketchFlow/eval/problem145/code.c:12:     a = atoi(num);
	bl	_atoi		;
; GuessSketchFlow/eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldrsb	w3, [x23, x24]	; _6, *_72
; GuessSketchFlow/eval/problem145/code.c:12:     a = atoi(num);
	mov	w22, w0	; a,
; GuessSketchFlow/eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	cbnz	w3, L20	; _6,
	.p2align 5,,15
L11:
; GuessSketchFlow/eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	mov	w1, 0	; j,
	add	x19, x29, 184	; tmp199,,
; GuessSketchFlow/eval/problem145/code.c:18:     b = atoi(den);
	mov	x0, x19	;, tmp199
; GuessSketchFlow/eval/problem145/code.c:17:     den[j] = '\0';
	strb	wzr, [x19, w1, sxtw]	;, den[j_90]
; GuessSketchFlow/eval/problem145/code.c:18:     b = atoi(den);
	bl	_atoi		;
; GuessSketchFlow/eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	ldrsb	w2, [x21]	; _9, *n_36(D)
; GuessSketchFlow/eval/problem145/code.c:18:     b = atoi(den);
	mov	w23, w0	; b,
; GuessSketchFlow/eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	cmp	w2, 47	; _9,
	bne	L21		;,
	.p2align 5,,15
L12:
; GuessSketchFlow/eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	mov	w0, 0	; i,
; GuessSketchFlow/eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	mov	x25, 1	; _107,
	mov	w24, w25	; _105, _107
; GuessSketchFlow/eval/problem145/code.c:23:     num[i] = '\0';
	strb	wzr, [x20, w0, sxtw]	;, num[i_87]
; GuessSketchFlow/eval/problem145/code.c:24:     c = atoi(num);
	mov	x0, x20	;, tmp204
	bl	_atoi		;
; GuessSketchFlow/eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldrsb	w2, [x21, x25]	; _12, *_59
; GuessSketchFlow/eval/problem145/code.c:24:     c = atoi(num);
	mov	w20, w0	; c,
; GuessSketchFlow/eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	cbnz	w2, L22	; _12,
	.p2align 5,,15
L13:
; GuessSketchFlow/eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	mov	w1, 0	; j,
	b	L8		;
LFE4:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB4-.
	.set L$set$2,LFE4-LFB4
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB4
	.long L$set$3
	.byte	0xe
	.uleb128 0x120
	.byte	0x9d
	.uleb128 0x24
	.byte	0x9e
	.uleb128 0x23
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0x22
	.byte	0x94
	.uleb128 0x21
	.byte	0x95
	.uleb128 0x20
	.byte	0x96
	.uleb128 0x1f
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x97
	.uleb128 0x1e
	.byte	0x98
	.uleb128 0x1d
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x99
	.uleb128 0x1c
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
