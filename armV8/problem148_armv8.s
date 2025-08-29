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
	stp	x29, x30, [sp, -80]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	sxtw	x20, w0	;, n
; GuessSketchFlow/eval/problem148/code.c:5:     int *a = (int *)malloc(n * sizeof(int));
	sbfiz	x0, x20, 2, 32	;, n,,
; GuessSketchFlow/eval/problem148/code.c:4: int func0(int n) {
	stp	x21, x22, [sp, 32]	;,,
LCFI3:
; GuessSketchFlow/eval/problem148/code.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	add	w21, w20, 1	; _3, n,
; GuessSketchFlow/eval/problem148/code.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	sbfiz	x21, x21, 3, 32	; _5, _3,,
; GuessSketchFlow/eval/problem148/code.c:4: int func0(int n) {
	stp	x23, x24, [sp, 48]	;,,
LCFI4:
	mov	x24, x20	;,
; GuessSketchFlow/eval/problem148/code.c:5:     int *a = (int *)malloc(n * sizeof(int));
	bl	_malloc		;
	mov	x19, x0	; a, a
; GuessSketchFlow/eval/problem148/code.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	mov	x0, x21	;, _5
	bl	_malloc		;
	mov	x22, x0	; sum, sum
; GuessSketchFlow/eval/problem148/code.c:7:     int **sum2 = (int **)malloc((n + 1) * sizeof(int *));
	mov	x0, x21	;, _5
	bl	_malloc		;
	mov	x23, x0	; sum2, sum2
; GuessSketchFlow/eval/problem148/code.c:8:     for (int i = 0; i <= n; i++) {
	tbnz	w20, #31, L2	; n,
	stp	x25, x26, [x29, 64]	;,,
LCFI5:
; GuessSketchFlow/eval/problem148/code.c:8:     for (int i = 0; i <= n; i++) {
	mov	x25, 0	; ivtmp.83,
	add	x26, x20, 1	; _126, _167,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem148/code.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	mov	x1, 4	;,
	mov	x0, 3	;,
	bl	_calloc		;
; GuessSketchFlow/eval/problem148/code.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	mov	x1, 4	;,
; GuessSketchFlow/eval/problem148/code.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	str	x0, [x22, x25, lsl 3]	; tmp258, MEM[(int * *)sum_117 + ivtmp.83_169 * 8]
; GuessSketchFlow/eval/problem148/code.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	mov	x0, 3	;,
	bl	_calloc		;
; GuessSketchFlow/eval/problem148/code.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	str	x0, [x23, x25, lsl 3]	; tmp259, MEM[(int * *)sum2_119 + ivtmp.83_169 * 8]
; GuessSketchFlow/eval/problem148/code.c:8:     for (int i = 0; i <= n; i++) {
	add	x25, x25, 1	; ivtmp.83, ivtmp.83,
	cmp	x25, x26	; ivtmp.83, _126
	bne	L3		;,
; GuessSketchFlow/eval/problem148/code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	ldr	x0, [x22]	; _12, *sum_117
; GuessSketchFlow/eval/problem148/code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movi	v31.2s, 0	; tmp189
	str	d31, [x0]	; tmp189, MEM <vector(2) int> [(int *)_12]
; GuessSketchFlow/eval/problem148/code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	str	wzr, [x0, 8]	;, MEM[(int *)_12 + 8B]
; GuessSketchFlow/eval/problem148/code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	ldr	x0, [x23]	; _13, *sum2_119
; GuessSketchFlow/eval/problem148/code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	str	d31, [x0]	; tmp189, MEM <vector(2) int> [(int *)_13]
; GuessSketchFlow/eval/problem148/code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	str	wzr, [x0, 8]	;, MEM[(int *)_13 + 8B]
; GuessSketchFlow/eval/problem148/code.c:14:     for (int i = 1; i <= n; i++) {
	cbz	w24, L31	; n,
; GuessSketchFlow/eval/problem148/code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	mov	w6, 43691	; tmp194,
; GuessSketchFlow/eval/problem148/code.c:14:     for (int i = 1; i <= n; i++) {
	mov	x3, 1	; ivtmp.75,
	mov	x2, 0	; ivtmp.73,
; GuessSketchFlow/eval/problem148/code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	movk	w6, 0xaaaa, lsl 16	; tmp194,,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem148/code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	mul	w0, w2, w3	; _15, ivtmp.73, ivtmp.75
; GuessSketchFlow/eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	ldr	x4, [x22, x2, lsl 3]	; _23, MEM[(int * *)sum_117 + ivtmp.73_165 * 8]
; GuessSketchFlow/eval/problem148/code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	add	w0, w0, 1	; _16, _15,
; GuessSketchFlow/eval/problem148/code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	umull	x1, w0, w6	; tmp193, _16, tmp194
; GuessSketchFlow/eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	ldr	w5, [x4]	;, *_23
; GuessSketchFlow/eval/problem148/code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	lsr	x1, x1, 33	; _20, tmp193,
	add	w1, w1, w1, lsl 1	; tmp198, _20, _20,
	sub	w1, w0, w1	; _20, _16, tmp198
; GuessSketchFlow/eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	ldr	x0, [x22, x3, lsl 3]	; _29, MEM[(int * *)sum_117 + ivtmp.75_133 * 8]
; GuessSketchFlow/eval/problem148/code.c:14:     for (int i = 1; i <= n; i++) {
	add	x3, x3, 1	; ivtmp.75, ivtmp.75,
; GuessSketchFlow/eval/problem148/code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	str	w1, [x19, x2, lsl 2]	; _20, MEM[(int *)a_115 + ivtmp.73_165 * 4]
; GuessSketchFlow/eval/problem148/code.c:19:         sum[i][a[i - 1]] += 1;
	ubfiz	x1, x1, 2, 32	; _36, _20,,
; GuessSketchFlow/eval/problem148/code.c:14:     for (int i = 1; i <= n; i++) {
	add	x2, x2, 1	; ivtmp.73, ivtmp.73,
; GuessSketchFlow/eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	str	w5, [x0]	; _104, *_29
; GuessSketchFlow/eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	ldr	w5, [x4, 4]	;, MEM[(int *)_23 + 4B]
; GuessSketchFlow/eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	str	w5, [x0, 4]	; _236, MEM[(int *)_29 + 4B]
; GuessSketchFlow/eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	ldr	w4, [x4, 8]	;, MEM[(int *)_23 + 8B]
; GuessSketchFlow/eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	str	w4, [x0, 8]	; _31, MEM[(int *)_29 + 8B]
; GuessSketchFlow/eval/problem148/code.c:19:         sum[i][a[i - 1]] += 1;
	ldr	w4, [x0, x1]	;, *_37
	add	w4, w4, 1	; _39, *_37,
	str	w4, [x0, x1]	; _39, *_37
; GuessSketchFlow/eval/problem148/code.c:14:     for (int i = 1; i <= n; i++) {
	cmp	w24, w3	; n, ivtmp.75
	bge	L5		;,
L31:
	ldp	x25, x26, [x29, 64]	;,,
LCFI6:
L17:
; GuessSketchFlow/eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	mov	w8, 21846	; tmp249,
; GuessSketchFlow/eval/problem148/code.c:35:                 sum2[i][j] = 0;
	movi	v30.2s, 0	; tmp251
	mov	w12, 2	; ivtmp_213,
	uxtw	x11, w24	; _110, n
	add	x10, x23, 8	; _159, sum2,
; GuessSketchFlow/eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	movk	w8, 0x5555, lsl 16	; tmp249,,
	add	x9, x20, 1	; _1, _167,
; GuessSketchFlow/eval/problem148/code.c:22:         for (int i = 1; i <= n; i++) {
	cmp	w24, 0	; n,
	ble	L15		;,
L33:
	mov	x5, 0	; ivtmp.58,
	.p2align 5,,15
L8:
; GuessSketchFlow/eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	ldr	x0, [x23, x5, lsl 3]	; _43, MEM[(int * *)sum2_119 + ivtmp.58_194 * 8]
; GuessSketchFlow/eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	mov	x3, 0	; ivtmp.50,
; GuessSketchFlow/eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	ldr	x4, [x10, x5, lsl 3]	; _49, MEM[(int * *)_159 + ivtmp.58_194 * 8]
; GuessSketchFlow/eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	ldr	w7, [x19, x5, lsl 2]	;, MEM[(int *)a_115 + ivtmp.58_194 * 4]
; GuessSketchFlow/eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	ldr	w1, [x0]	;, *_43
; GuessSketchFlow/eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	str	w1, [x4]	; _81, *_49
; GuessSketchFlow/eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	ldr	w1, [x0, 4]	;, MEM[(int *)_43 + 4B]
; GuessSketchFlow/eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	str	w1, [x4, 4]	; _92, MEM[(int *)_49 + 4B]
; GuessSketchFlow/eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	ldr	w0, [x0, 8]	;, MEM[(int *)_43 + 8B]
; GuessSketchFlow/eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	str	w0, [x4, 8]	; _51, MEM[(int *)_49 + 8B]
; GuessSketchFlow/eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	ldr	x0, [x22, x5, lsl 3]	; _66, MEM[(int * *)sum_117 + ivtmp.58_194 * 8]
L7:
; GuessSketchFlow/eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	add	w1, w7, w3	; _190, _58, ivtmp.50
; GuessSketchFlow/eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	ldr	w6, [x0, x3, lsl 2]	;, MEM[(int *)_66 + ivtmp.50_219 * 4]
; GuessSketchFlow/eval/problem148/code.c:27:                 for (int j = 0; j <= 2; j++) {
	add	x3, x3, 1	; ivtmp.50, ivtmp.50,
; GuessSketchFlow/eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	smull	x2, w1, w8	; tmp214, _190, tmp249
	lsr	x2, x2, 32	; tmp216, tmp214,
	sub	w2, w2, w1, asr 31	; tmp213, tmp216, _190,
	add	w2, w2, w2, lsl 1	; tmp220, tmp213, tmp213,
	sub	w1, w1, w2	; _140, _190, tmp220
; GuessSketchFlow/eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	sbfiz	x1, x1, 2, 32	; _61, _140,,
; GuessSketchFlow/eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	ldr	w2, [x4, x1]	;, *_62
	add	w2, w2, w6	; _71, *_62, MEM[(int *)_66 + ivtmp.50_219 * 4]
	str	w2, [x4, x1]	; _71, *_62
; GuessSketchFlow/eval/problem148/code.c:27:                 for (int j = 0; j <= 2; j++) {
	cmp	x3, 3	; ivtmp.50,
	bne	L7		;,
; GuessSketchFlow/eval/problem148/code.c:22:         for (int i = 1; i <= n; i++) {
	add	x5, x5, 1	; ivtmp.58, ivtmp.58,
	cmp	x11, x5	; _110, ivtmp.58
	bne	L8		;,
L9:
	mov	x1, 0	; ivtmp.43,
	.p2align 5,,15
L11:
; GuessSketchFlow/eval/problem148/code.c:34:                 sum[i][j] = sum2[i][j];
	ldr	x0, [x23, x1, lsl 3]	; _75, MEM[(int * *)sum2_119 + ivtmp.43_138 * 8]
; GuessSketchFlow/eval/problem148/code.c:34:                 sum[i][j] = sum2[i][j];
	ldr	x2, [x22, x1, lsl 3]	; _80, MEM[(int * *)sum_117 + ivtmp.43_138 * 8]
; GuessSketchFlow/eval/problem148/code.c:32:         for (int i = 0; i <= n; i++) {
	add	x1, x1, 1	; ivtmp.43, ivtmp.43,
; GuessSketchFlow/eval/problem148/code.c:34:                 sum[i][j] = sum2[i][j];
	ldr	d31, [x0]	; vect__82.17_160, MEM <vector(2) int> [(int *)_75]
; GuessSketchFlow/eval/problem148/code.c:35:                 sum2[i][j] = 0;
	str	d30, [x0]	; tmp251, MEM <vector(2) int> [(int *)_75]
; GuessSketchFlow/eval/problem148/code.c:34:                 sum[i][j] = sum2[i][j];
	ldr	w3, [x0, 8]	;, MEM[(int *)_75 + 8B]
; GuessSketchFlow/eval/problem148/code.c:35:                 sum2[i][j] = 0;
	str	wzr, [x0, 8]	;, MEM[(int *)_75 + 8B]
; GuessSketchFlow/eval/problem148/code.c:34:                 sum[i][j] = sum2[i][j];
	str	d31, [x2]	; vect__82.17_160, MEM <vector(2) int> [(int *)_80]
	str	w3, [x2, 8]	; MEM[(int *)_75 + 8B], MEM[(int *)_80 + 8B]
; GuessSketchFlow/eval/problem148/code.c:32:         for (int i = 0; i <= n; i++) {
	cmp	x9, x1	; _1, ivtmp.43
	bne	L11		;,
; GuessSketchFlow/eval/problem148/code.c:21:     for (int times = 1; times < 3; times++) {
	cmp	w12, 1	; ivtmp_213,
	beq	L14		;,
	mov	w12, 1	; ivtmp_213,
; GuessSketchFlow/eval/problem148/code.c:22:         for (int i = 1; i <= n; i++) {
	cmp	w24, 0	; n,
	bgt	L33		;,
L15:
; GuessSketchFlow/eval/problem148/code.c:32:         for (int i = 0; i <= n; i++) {
	beq	L9		;,
; GuessSketchFlow/eval/problem148/code.c:40:     int result = sum[n][0];
	add	x21, x22, x21	; tmp232, sum, _5
; GuessSketchFlow/eval/problem148/code.c:40:     int result = sum[n][0];
	ldr	x0, [x21, -8]	; *_139, *_139
	ldr	w24, [x0]	;, *_177
L13:
; GuessSketchFlow/eval/problem148/code.c:45:     free(sum);
	mov	x0, x22	;, sum
	bl	_free		;
; GuessSketchFlow/eval/problem148/code.c:46:     free(sum2);
	mov	x0, x23	;, sum2
	bl	_free		;
; GuessSketchFlow/eval/problem148/code.c:47:     free(a);
	mov	x0, x19	;, a
	bl	_free		;
; GuessSketchFlow/eval/problem148/code.c:49: }
	mov	w0, w24	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI7:
	ret	
	.p2align 2,,3
L14:
LCFI8:
; GuessSketchFlow/eval/problem148/code.c:40:     int result = sum[n][0];
	add	x21, x22, x21	; tmp240, sum, _5
	add	x20, x20, 1	; _60, _167,
; GuessSketchFlow/eval/problem148/code.c:40:     int result = sum[n][0];
	ldr	x0, [x21, -8]	; *_223, *_223
	mov	x21, 0	; ivtmp.35,
	ldr	w24, [x0]	;, *_181
	.p2align 5,,15
L16:
; GuessSketchFlow/eval/problem148/code.c:42:         free(sum[i]);
	ldr	x0, [x22, x21, lsl 3]	;, MEM[(int * *)sum_117 + ivtmp.35_54 * 8]
	bl	_free		;
; GuessSketchFlow/eval/problem148/code.c:43:         free(sum2[i]);
	ldr	x0, [x23, x21, lsl 3]	;, MEM[(int * *)sum2_119 + ivtmp.35_54 * 8]
; GuessSketchFlow/eval/problem148/code.c:41:     for (int i = 0; i <= n; ++i) {
	add	x21, x21, 1	; ivtmp.35, ivtmp.35,
; GuessSketchFlow/eval/problem148/code.c:43:         free(sum2[i]);
	bl	_free		;
; GuessSketchFlow/eval/problem148/code.c:41:     for (int i = 0; i <= n; ++i) {
	cmp	x21, x20	; ivtmp.35, _60
	bne	L16		;,
	b	L13		;
L2:
; GuessSketchFlow/eval/problem148/code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	ldr	x0, [x22]	; _168, *sum_117
; GuessSketchFlow/eval/problem148/code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movi	v31.2s, 0	; tmp238
	str	d31, [x0]	; tmp238, MEM <vector(2) int> [(int *)_168]
; GuessSketchFlow/eval/problem148/code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	str	wzr, [x0, 8]	;, MEM[(int *)_168 + 8B]
; GuessSketchFlow/eval/problem148/code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	ldr	x0, [x23]	; _166, *sum2_119
; GuessSketchFlow/eval/problem148/code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	str	d31, [x0]	; tmp238, MEM <vector(2) int> [(int *)_166]
; GuessSketchFlow/eval/problem148/code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	str	wzr, [x0, 8]	;, MEM[(int *)_166 + 8B]
	b	L17		;
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
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0x8
	.byte	0x94
	.uleb128 0x7
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0x6
	.byte	0x96
	.uleb128 0x5
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x97
	.uleb128 0x4
	.byte	0x98
	.uleb128 0x3
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x9a
	.uleb128 0x1
	.byte	0x99
	.uleb128 0x2
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xda
	.byte	0xd9
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xa
	.byte	0xde
	.byte	0xdd
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
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
