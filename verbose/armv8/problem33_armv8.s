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
LFB20:
; GuessSketchFlow/eval/problem33/code.c:9:     value = xs[0];
	ldr	d31, [x0]	;, *xs_35(D)
; GuessSketchFlow/eval/problem33/code.c:13:             x_pow *= ans;
	movi	d18, #0	;
; GuessSketchFlow/eval/problem33/code.c:10:     for (i = 1; i < size; i++) {
	mov	x3, 1	; ivtmp.40,
; GuessSketchFlow/eval/problem33/code.c:9:     value = xs[0];
	fmov	d30, d31	;,
; GuessSketchFlow/eval/problem33/code.c:10:     for (i = 1; i < size; i++) {
	cmp	w1, 1	; size,
	ble	L3		;,
	.p2align 5,,15
L2:
; GuessSketchFlow/eval/problem33/code.c:11:         x_pow = 1.0;
	fmov	d17, 1.0e+0	;,
; GuessSketchFlow/eval/problem33/code.c:12:         for (int j = 0; j < i; j++) {
	mov	w2, 0	; j,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem33/code.c:12:         for (int j = 0; j < i; j++) {
	add	w2, w2, 1	; j, j,
; GuessSketchFlow/eval/problem33/code.c:13:             x_pow *= ans;
	fmul	d17, d17, d18	;,,
; GuessSketchFlow/eval/problem33/code.c:12:         for (int j = 0; j < i; j++) {
	cmp	w2, w3	; j, ivtmp.40
	bne	L4		;,
; GuessSketchFlow/eval/problem33/code.c:15:         value += xs[i] * x_pow;
	ldr	d16, [x0, x3, lsl 3]	;, MEM[(const double *)xs_35(D) + ivtmp.40_63 * 8]
; GuessSketchFlow/eval/problem33/code.c:10:     for (i = 1; i < size; i++) {
	add	x3, x3, 1	; ivtmp.40, ivtmp.40,
; GuessSketchFlow/eval/problem33/code.c:15:         value += xs[i] * x_pow;
	fmul	d16, d17, d16	;,,
; GuessSketchFlow/eval/problem33/code.c:15:         value += xs[i] * x_pow;
	fadd	d30, d30, d16	;,,
; GuessSketchFlow/eval/problem33/code.c:10:     for (i = 1; i < size; i++) {
	cmp	w1, w3	; size, ivtmp.40
	bgt	L2		;,
L3:
; GuessSketchFlow/eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	adrp	x2, lC0@PAGE	; tmp160,
; GuessSketchFlow/eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	fabs	d7, d30	;,
; GuessSketchFlow/eval/problem33/code.c:20:         for (i = 1; i < size; i++) {
	movi	d0, #0	;
; GuessSketchFlow/eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	ldr	d25, [x2, #lC0@PAGEOFF]	;,
	fcmpe	d7, d25	;,
	bgt	L5		;,
; GuessSketchFlow/eval/problem33/code.c:40: }
	ret	
L5:
; GuessSketchFlow/eval/problem33/code.c:20:         for (i = 1; i < size; i++) {
	cmp	w1, 1	; size,
	ble	L19		;,
	.p2align 5,,15
L15:
; GuessSketchFlow/eval/problem33/code.c:19:         driv = 0.0;
	movi	d4, #0	;
; GuessSketchFlow/eval/problem33/code.c:21:             x_pow = 1.0;
	mov	x4, 1	; ivtmp.29,
	.p2align 5,,15
L16:
	fmov	d28, 1.0e+0	;,
	mov	w5, w4	; i, ivtmp.29
; GuessSketchFlow/eval/problem33/code.c:22:             for (int j = 1; j < i; j++) {
	cmp	x4, 1	; ivtmp.29,
	beq	L10		;,
; GuessSketchFlow/eval/problem33/code.c:21:             x_pow = 1.0;
	fmov	d28, 1.0e+0	;,
	mov	w3, w4	; i, ivtmp.29
; GuessSketchFlow/eval/problem33/code.c:22:             for (int j = 1; j < i; j++) {
	mov	w2, 1	; j,
	.p2align 5,,15
L7:
; GuessSketchFlow/eval/problem33/code.c:22:             for (int j = 1; j < i; j++) {
	add	w2, w2, 1	; j, j,
; GuessSketchFlow/eval/problem33/code.c:23:                 x_pow *= ans;
	fmul	d28, d28, d0	;,,
; GuessSketchFlow/eval/problem33/code.c:22:             for (int j = 1; j < i; j++) {
	cmp	w3, w2	; i, j
	bne	L7		;,
L10:
; GuessSketchFlow/eval/problem33/code.c:25:             driv += i * xs[i] * x_pow;
	ldr	d5, [x0, x4, lsl 3]	;, MEM[(const double *)xs_35(D) + ivtmp.29_26 * 8]
	scvtf	d6, w5	;, i
; GuessSketchFlow/eval/problem33/code.c:20:         for (i = 1; i < size; i++) {
	add	x4, x4, 1	; ivtmp.29, ivtmp.29,
; GuessSketchFlow/eval/problem33/code.c:25:             driv += i * xs[i] * x_pow;
	fmul	d5, d6, d5	;,,
; GuessSketchFlow/eval/problem33/code.c:25:             driv += i * xs[i] * x_pow;
	fmul	d5, d5, d28	;,,
; GuessSketchFlow/eval/problem33/code.c:25:             driv += i * xs[i] * x_pow;
	fadd	d4, d4, d5	;,,
; GuessSketchFlow/eval/problem33/code.c:20:         for (i = 1; i < size; i++) {
	cmp	w1, w4	; size, ivtmp.29
	bgt	L16		;,
; GuessSketchFlow/eval/problem33/code.c:27:         ans = ans - value / driv;
	fdiv	d4, d30, d4	;,,
; GuessSketchFlow/eval/problem33/code.c:29:         value = xs[0];
	fmov	d30, d31	;,
; GuessSketchFlow/eval/problem33/code.c:27:         ans = ans - value / driv;
	mov	x3, 1	; ivtmp.17,
	fsub	d0, d0, d4	;,,
	.p2align 5,,15
L12:
; GuessSketchFlow/eval/problem33/code.c:31:             x_pow = 1.0;
	fmov	d3, 1.0e+0	;,
; GuessSketchFlow/eval/problem33/code.c:32:             for (int j = 0; j < i; j++) {
	mov	w2, 0	; j,
	.p2align 5,,15
L13:
; GuessSketchFlow/eval/problem33/code.c:32:             for (int j = 0; j < i; j++) {
	add	w2, w2, 1	; j, j,
; GuessSketchFlow/eval/problem33/code.c:33:                 x_pow *= ans;
	fmul	d3, d3, d0	;,,
; GuessSketchFlow/eval/problem33/code.c:32:             for (int j = 0; j < i; j++) {
	cmp	w2, w3	; j, ivtmp.17
	bne	L13		;,
; GuessSketchFlow/eval/problem33/code.c:35:             value += xs[i] * x_pow;
	ldr	d2, [x0, x3, lsl 3]	;, MEM[(const double *)xs_35(D) + ivtmp.17_31 * 8]
; GuessSketchFlow/eval/problem33/code.c:30:         for (i = 1; i < size; i++) {
	add	x3, x3, 1	; ivtmp.17, ivtmp.17,
; GuessSketchFlow/eval/problem33/code.c:35:             value += xs[i] * x_pow;
	fmul	d2, d3, d2	;,,
; GuessSketchFlow/eval/problem33/code.c:35:             value += xs[i] * x_pow;
	fadd	d30, d30, d2	;,,
; GuessSketchFlow/eval/problem33/code.c:30:         for (i = 1; i < size; i++) {
	cmp	w1, w3	; size, ivtmp.17
	bgt	L12		;,
; GuessSketchFlow/eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	fabs	d1, d30	;,
; GuessSketchFlow/eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	fcmpe	d1, d25	;,
	bgt	L15		;,
; GuessSketchFlow/eval/problem33/code.c:40: }
	ret	
L19:
	fabs	d27, d31	;,
; GuessSketchFlow/eval/problem33/code.c:27:         ans = ans - value / driv;
	fmov	d26, d0	;,
L11:
	fdiv	d29, d30, d26	;,,
; GuessSketchFlow/eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	fcmpe	d27, d25	;,
; GuessSketchFlow/eval/problem33/code.c:27:         ans = ans - value / driv;
	fsub	d0, d0, d29	;,,
; GuessSketchFlow/eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	bgt	L18		;,
; GuessSketchFlow/eval/problem33/code.c:40: }
	ret	
L18:
; GuessSketchFlow/eval/problem33/code.c:29:         value = xs[0];
	fmov	d30, d31	;,
	b	L11		;
LFE20:
	.literal8
	.align	3
lC0:
	.word	-1598689907
	.word	1051772663
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
	.quad	LFB20-.
	.set L$set$2,LFE20-LFB20
	.quad L$set$2
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
