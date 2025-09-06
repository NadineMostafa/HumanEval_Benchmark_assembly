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
	stp	x29, x30, [sp, -48]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
; GuessSketchFlow/eval/problem34/code.c:4: void func0(int *l, int size, int *out) {
	mov	x19, x0	; l, l
; GuessSketchFlow/eval/problem34/code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	mov	w0, 21846	; tmp155,
	movk	w0, 0x5555, lsl 16	; tmp155,,
; GuessSketchFlow/eval/problem34/code.c:4: void func0(int *l, int size, int *out) {
	mov	x20, x2	; out, out
; GuessSketchFlow/eval/problem34/code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	smull	x0, w1, w0	; tmp154, size, tmp155
	str	w1, [x29, 44]	; size, %sfp
	lsr	x0, x0, 32	; tmp156, tmp154,
	sub	w0, w0, w1, asr 31	; _1, tmp156, size,
; GuessSketchFlow/eval/problem34/code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	add	w0, w0, 1	; _2, _1,
; GuessSketchFlow/eval/problem34/code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	sbfiz	x0, x0, 2, 32	;, _2,,
	bl	_malloc		;
; GuessSketchFlow/eval/problem34/code.c:8:     for (i = 0; i * 3 < size; i++) {
	ldr	w1, [x29, 44]	;, %sfp
	mov	x4, 0	; ivtmp.39,
	mov	x3, 0	; ivtmp.34,
	cmp	w1, 0	; size,
	ble	L12		;,
	.p2align 5,,15
L2:
; GuessSketchFlow/eval/problem34/code.c:9:         third[i] = l[i * 3];
	ldr	w2, [x19, x4, lsl 2]	;, MEM[(int *)l_59(D) + ivtmp.39_120 * 4]
; GuessSketchFlow/eval/problem34/code.c:8:     for (i = 0; i * 3 < size; i++) {
	add	x4, x4, 3	; ivtmp.39, ivtmp.39,
	mov	x12, x3	; ivtmp.34, ivtmp.34
; GuessSketchFlow/eval/problem34/code.c:9:         third[i] = l[i * 3];
	str	w2, [x0, x3, lsl 2]	; MEM[(int *)l_59(D) + ivtmp.39_120 * 4], MEM[(int *)third_57 + ivtmp.34_118 * 4]
; GuessSketchFlow/eval/problem34/code.c:8:     for (i = 0; i * 3 < size; i++) {
	add	x3, x3, 1	; ivtmp.34, ivtmp.34,
	cmp	w1, w4	; size, ivtmp.39
	bgt	L2		;,
; GuessSketchFlow/eval/problem34/code.c:13:     for (i = 0; i < third_size - 1; i++) {
	cbz	w12, L9	; ivtmp.34,
	mov	w9, 0	; ivtmp.24,
	mov	x10, 0	; ivtmp.31,
	mov	x13, -4	; ivtmp.29,
	mov	x11, 1	; ivtmp.26,
; GuessSketchFlow/eval/problem34/code.c:15:         for (k = i + 1; k < third_size; k++) {
	cmp	w12, w9	; ivtmp.34, ivtmp.24
	bgt	L19		;,
L5:
; GuessSketchFlow/eval/problem34/code.c:13:     for (i = 0; i < third_size - 1; i++) {
	add	w9, w9, 1	; ivtmp.24, ivtmp.24,
	add	x11, x11, 1	; ivtmp.26, ivtmp.26,
	sub	x13, x13, #4	; ivtmp.29, ivtmp.29,
	add	x10, x10, 4	; ivtmp.31, ivtmp.31,
	cmp	w12, w9	; ivtmp.34, ivtmp.24
	ble	L9		;,
L19:
	add	x7, x13, x10	; _35, ivtmp.29, ivtmp.31
	sub	w8, w12, w9	; _103, ivtmp.34, ivtmp.24
; GuessSketchFlow/eval/problem34/code.c:16:             if (third[k] < third[min_idx])
	add	x7, x7, 4	; _116, _35,
	add	x8, x8, x11	; _104, _103, ivtmp.26
; GuessSketchFlow/eval/problem34/code.c:15:         for (k = i + 1; k < third_size; k++) {
	mov	x3, x11	; ivtmp.19, ivtmp.26
; GuessSketchFlow/eval/problem34/code.c:14:         int min_idx = i;
	mov	w4, w9	; min_idx, ivtmp.24
; GuessSketchFlow/eval/problem34/code.c:16:             if (third[k] < third[min_idx])
	add	x7, x0, x7	; _42, third, _116
	.p2align 5,,15
L7:
; GuessSketchFlow/eval/problem34/code.c:16:             if (third[k] < third[min_idx])
	ldr	w6, [x0, w4, uxtw 2]	;, *_44
	ldr	w5, [x7, x3, lsl 2]	;, MEM[(int *)_42 + ivtmp.19_14 * 4]
	cmp	w6, w5	; *_44, MEM[(int *)_42 + ivtmp.19_14 * 4]
	csel	w4, w4, w3, le	; min_idx, min_idx, ivtmp.19,
; GuessSketchFlow/eval/problem34/code.c:15:         for (k = i + 1; k < third_size; k++) {
	add	x3, x3, 1	; ivtmp.19, ivtmp.19,
	cmp	x3, x8	; ivtmp.19, _104
	bne	L7		;,
; GuessSketchFlow/eval/problem34/code.c:19:         if (min_idx != i) {
	cmp	w4, w9	; min_idx, ivtmp.24
	beq	L5		;,
; GuessSketchFlow/eval/problem34/code.c:21:             third[i] = third[min_idx];
	ubfiz	x4, x4, 2, 32	; _25, min_idx,,
; GuessSketchFlow/eval/problem34/code.c:20:             int temp = third[i];
	ldr	w2, [x0, x10]	;, MEM[(int *)third_57 + ivtmp.31_111 * 1]
; GuessSketchFlow/eval/problem34/code.c:13:     for (i = 0; i < third_size - 1; i++) {
	add	w9, w9, 1	; ivtmp.24, ivtmp.24,
	add	x11, x11, 1	; ivtmp.26, ivtmp.26,
	sub	x13, x13, #4	; ivtmp.29, ivtmp.29,
; GuessSketchFlow/eval/problem34/code.c:21:             third[i] = third[min_idx];
	ldr	w3, [x0, x4]	;, *_26
; GuessSketchFlow/eval/problem34/code.c:21:             third[i] = third[min_idx];
	str	w3, [x0, x10]	; _27, MEM[(int *)third_57 + ivtmp.31_111 * 1]
; GuessSketchFlow/eval/problem34/code.c:13:     for (i = 0; i < third_size - 1; i++) {
	add	x10, x10, 4	; ivtmp.31, ivtmp.31,
; GuessSketchFlow/eval/problem34/code.c:22:             third[min_idx] = temp;
	str	w2, [x0, x4]	; temp, *_26
; GuessSketchFlow/eval/problem34/code.c:13:     for (i = 0; i < third_size - 1; i++) {
	cmp	w12, w9	; ivtmp.34, ivtmp.24
	bgt	L19		;,
L9:
	mov	w4, 43691	; tmp187,
	sxtw	x6, w1	; _13, size
	movk	w4, 0xaaaa, lsl 16	; tmp187,,
; GuessSketchFlow/eval/problem34/code.c:14:         int min_idx = i;
	mov	x1, 0	; ivtmp.9,
; GuessSketchFlow/eval/problem34/code.c:27:         if (i % 3 == 0) {
	mov	w5, 1431655765	; tmp188,
	b	L4		;
	.p2align 2,,3
L23:
; GuessSketchFlow/eval/problem34/code.c:28:             out[i] = third[i / 3];
	umull	x3, w1, w4	; tmp190, ivtmp.9, tmp187
; GuessSketchFlow/eval/problem34/code.c:28:             out[i] = third[i / 3];
	lsr	x3, x3, 33	; _31, tmp190,
	ldr	w3, [x0, x3, lsl 2]	;, *_33
; GuessSketchFlow/eval/problem34/code.c:28:             out[i] = third[i / 3];
	str	w3, [x20, x1, lsl 2]	; _37, MEM[(int *)out_60(D) + ivtmp.9_74 * 4]
; GuessSketchFlow/eval/problem34/code.c:26:     for (i = 0; i < size; i++) {
	add	x1, x1, 1	; ivtmp.9, ivtmp.9,
	cmp	x6, x1	; _13, ivtmp.9
	beq	L12		;,
L4:
	mul	w2, w4, w1	; tmp186, tmp187, ivtmp.9
; GuessSketchFlow/eval/problem34/code.c:27:         if (i % 3 == 0) {
	cmp	w2, w5	; tmp186, tmp188
	bls	L23		;,
; GuessSketchFlow/eval/problem34/code.c:30:             out[i] = l[i];
	ldr	w3, [x19, x1, lsl 2]	;, MEM[(int *)l_59(D) + ivtmp.9_74 * 4]
; GuessSketchFlow/eval/problem34/code.c:28:             out[i] = third[i / 3];
	str	w3, [x20, x1, lsl 2]	; _37, MEM[(int *)out_60(D) + ivtmp.9_74 * 4]
; GuessSketchFlow/eval/problem34/code.c:26:     for (i = 0; i < size; i++) {
	add	x1, x1, 1	; ivtmp.9, ivtmp.9,
	cmp	x6, x1	; _13, ivtmp.9
	bne	L4		;,
L12:
; GuessSketchFlow/eval/problem34/code.c:35: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI3:
; GuessSketchFlow/eval/problem34/code.c:34:     free(third);
	b	_free		;
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
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
