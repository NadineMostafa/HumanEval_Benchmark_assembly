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
LFB23:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
; GuessSketchFlow/eval/problem38/code.c:5: void func0(float *l, int size, float *out) {
	mov	x19, x0	; l, l
; GuessSketchFlow/eval/problem38/code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	add	w0, w1, w1, lsr 31	; tmp144, size, size,
; GuessSketchFlow/eval/problem38/code.c:5: void func0(float *l, int size, float *out) {
	mov	x20, x2	; out, out
; GuessSketchFlow/eval/problem38/code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	asr	w0, w0, 1	; _1, tmp144,
; GuessSketchFlow/eval/problem38/code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	add	w0, w0, 1	; _2, _1,
; GuessSketchFlow/eval/problem38/code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	str	w1, [x29, 44]	; size, %sfp
; GuessSketchFlow/eval/problem38/code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	sbfiz	x0, x0, 2, 32	;, _2,,
	bl	_malloc		;
; GuessSketchFlow/eval/problem38/code.c:9:     for (i = 0; i < size; i += 2) {
	ldr	w1, [x29, 44]	;, %sfp
	mov	x3, 0	; ivtmp.35,
	cmp	w1, 0	; size,
	ble	L13		;,
	.p2align 5,,15
L2:
; GuessSketchFlow/eval/problem38/code.c:10:         even[even_count++] = l[i];
	ldr	s31, [x19, x3, lsl 2]	; MEM[(float *)l_52(D) + ivtmp.35_32 * 4], MEM[(float *)l_52(D) + ivtmp.35_32 * 4]
	ubfiz	x4, x3, 1, 32	; _37, ivtmp.35,,
; GuessSketchFlow/eval/problem38/code.c:9:     for (i = 0; i < size; i += 2) {
	add	x3, x3, 2	; ivtmp.35, ivtmp.35,
; GuessSketchFlow/eval/problem38/code.c:10:         even[even_count++] = l[i];
	str	s31, [x0, x4]	; MEM[(float *)l_52(D) + ivtmp.35_32 * 4], MEM[(float *)even_50 + _37 * 1]
; GuessSketchFlow/eval/problem38/code.c:9:     for (i = 0; i < size; i += 2) {
	cmp	w1, w3	; size, ivtmp.35
	bgt	L2		;,
	sub	w7, w1, #1	; _44, size,
	lsr	w7, w7, 1	; _43, _44,
	add	w2, w7, 1	; _66, _43,
; GuessSketchFlow/eval/problem38/code.c:13:     for (i = 0; i < even_count - 1; i++) {
	cbz	w7, L3	; _43,
; GuessSketchFlow/eval/problem38/code.c:13:     for (i = 0; i < even_count - 1; i++) {
	mov	w5, 0	; i,
	sub	w9, w7, #1	; _82, _43,
	add	x8, x0, 4	; _84, even,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem38/code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	sub	w6, w2, w5	; _70, _66, i
	sub	w4, w9, w5	; _98, _82, i
	add	x4, x8, w4, uxtw 2	; _93, _84, _98,
	mov	x3, x0	; ivtmp.20, even
	cmp	w6, 1	; _70,
	ble	L9		;,
	.p2align 5,,15
L7:
; GuessSketchFlow/eval/problem38/code.c:15:             if (even[j] > even[j + 1]) {
	ldp	s31, s30, [x3]	;,,* ivtmp.20
; GuessSketchFlow/eval/problem38/code.c:15:             if (even[j] > even[j + 1]) {
	fcmpe	s31, s30	;,
	bgt	L15		;,
L5:
; GuessSketchFlow/eval/problem38/code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	add	x3, x3, 4	; ivtmp.20, ivtmp.20,
	cmp	x4, x3	; _93, ivtmp.20
	bne	L7		;,
L9:
; GuessSketchFlow/eval/problem38/code.c:13:     for (i = 0; i < even_count - 1; i++) {
	add	w5, w5, 1	; i, i,
; GuessSketchFlow/eval/problem38/code.c:13:     for (i = 0; i < even_count - 1; i++) {
	cmp	w7, w5	; _43, i
	bgt	L4		;,
L3:
	sxtw	x3, w1	; _105, size
; GuessSketchFlow/eval/problem38/code.c:13:     for (i = 0; i < even_count - 1; i++) {
	mov	x1, 0	; ivtmp.10,
	.p2align 5,,15
L12:
; GuessSketchFlow/eval/problem38/code.c:25:         if (i % 2 == 0) {
	tbnz	x1, 0, L10	; ivtmp.10,,
; GuessSketchFlow/eval/problem38/code.c:26:             out[i] = even[i / 2];
	asr	w2, w1, 1	; _24, ivtmp.10,
	ldr	s31, [x0, x2, lsl 2]	; _30, *_26
L11:
; GuessSketchFlow/eval/problem38/code.c:26:             out[i] = even[i / 2];
	str	s31, [x20, x1, lsl 2]	; _30, MEM[(float *)out_53(D) + ivtmp.10_108 * 4]
; GuessSketchFlow/eval/problem38/code.c:24:     for (i = 0; i < size; i++) {
	add	x1, x1, 1	; ivtmp.10, ivtmp.10,
	cmp	x3, x1	; _105, ivtmp.10
	bne	L12		;,
L13:
; GuessSketchFlow/eval/problem38/code.c:33: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI3:
; GuessSketchFlow/eval/problem38/code.c:32:     free(even);
	b	_free		;
	.p2align 2,,3
L15:
LCFI4:
; GuessSketchFlow/eval/problem38/code.c:17:                 even[j] = even[j + 1];
	stp	s30, s31, [x3]	;,,* ivtmp.20
	b	L5		;
	.p2align 2,,3
L10:
; GuessSketchFlow/eval/problem38/code.c:28:             out[i] = l[i];
	ldr	s31, [x19, x1, lsl 2]	; _30, MEM[(float *)l_52(D) + ivtmp.10_108 * 4]
	b	L11		;
LFE23:
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
	.quad	LFB23-.
	.set L$set$2,LFE23-LFB23
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB23
	.long L$set$3
	.byte	0xe
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
