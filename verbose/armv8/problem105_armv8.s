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
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x21, x22, [sp, 32]	;,,
LCFI2:
	mov	x21, x2	; out, out
	mov	w22, w1	; size, size
	str	x23, [sp, 48]	;,
LCFI3:
	mov	x23, x0	; x, x
; GuessSketchFlow/eval/problem105/code.c:6:     *out = malloc(size * sizeof(int));
	sbfiz	x0, x1, 2, 32	;, size,,
; GuessSketchFlow/eval/problem105/code.c:5: void func0(int *x, int size, int **out, int *out_size) {
	stp	x19, x20, [sp, 16]	;,,
LCFI4:
; GuessSketchFlow/eval/problem105/code.c:5: void func0(int *x, int size, int **out, int *out_size) {
	mov	x20, x3	; out_size, out_size
; GuessSketchFlow/eval/problem105/code.c:6:     *out = malloc(size * sizeof(int));
	bl	_malloc		;
; GuessSketchFlow/eval/problem105/code.c:6:     *out = malloc(size * sizeof(int));
	str	x0, [x21]	; _3, *out_44(D)
; GuessSketchFlow/eval/problem105/code.c:7:     *out_size = 0;
	str	wzr, [x20]	;, *out_size_46(D)
; GuessSketchFlow/eval/problem105/code.c:9:     for (int i = 0; i < size; i++) {
	cmp	w22, 0	; size,
	ble	L1		;,
; GuessSketchFlow/eval/problem105/code.c:16:             num = num / 10;
	mov	w6, 52429	; tmp165,
	mov	x8, x23	; ivtmp.24, x
	add	x10, x23, w22, sxtw 2	; _85, ivtmp.24, size,
	mov	w7, 0	; _14,
	movk	w6, 0xcccc, lsl 16	; tmp165,,
	.p2align 5,,15
L6:
; GuessSketchFlow/eval/problem105/code.c:10:         int num = x[i];
	ldr	w9, [x8]	;, MEM[(int *)_65]
; GuessSketchFlow/eval/problem105/code.c:14:         while (num > 0 && !has_even_digit) {
	cmp	w9, 0	; num,
	ble	L3		;,
	mov	w2, w9	; num, num
	.p2align 5,,15
L4:
	mov	w1, w2	; num, num
; GuessSketchFlow/eval/problem105/code.c:16:             num = num / 10;
	umull	x2, w2, w6	; tmp136, num, tmp165
; GuessSketchFlow/eval/problem105/code.c:14:         while (num > 0 && !has_even_digit) {
	cmp	w1, 9	; num,
; GuessSketchFlow/eval/problem105/code.c:14:         while (num > 0 && !has_even_digit) {
	and	w5, w1, 1	; _57, num,
; GuessSketchFlow/eval/problem105/code.c:14:         while (num > 0 && !has_even_digit) {
	cset	w4, gt	; tmp146,
; GuessSketchFlow/eval/problem105/code.c:16:             num = num / 10;
	lsr	x2, x2, 35	; num, tmp136,
; GuessSketchFlow/eval/problem105/code.c:14:         while (num > 0 && !has_even_digit) {
	tst	w1, w4	; num, tmp146
	bne	L4		;,
; GuessSketchFlow/eval/problem105/code.c:19:         if (!has_even_digit) {
	cbz	w5, L5	; _57,
L14:
; GuessSketchFlow/eval/problem105/code.c:20:             (*out)[*out_size] = x[i];
	str	w9, [x0, w7, sxtw 2]	; num, *_13
; GuessSketchFlow/eval/problem105/code.c:21:             (*out_size)++;
	add	w7, w7, 1	; _14, _14,
	str	w7, [x20]	; _14, *out_size_46(D)
L5:
; GuessSketchFlow/eval/problem105/code.c:9:     for (int i = 0; i < size; i++) {
	add	x8, x8, 4	; ivtmp.24, ivtmp.24,
	cmp	x8, x10	; ivtmp.24, _85
	bne	L6		;,
; GuessSketchFlow/eval/problem105/code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	cmp	w7, 1	; _14,
	ble	L1		;,
	mov	w5, w7	; ivtmp.19, _14
	add	x6, x0, 4	; _81, _3,
	.p2align 5,,15
L7:
	sub	w4, w5, #2	; _30, ivtmp.19,
	mov	x1, x0	; ivtmp.11, _3
	add	x4, x6, w4, uxtw 2	; _39, _81, _30,
; GuessSketchFlow/eval/problem105/code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	cmp	w5, 1	; ivtmp.19,
	ble	L29		;,
	.p2align 5,,15
L9:
; GuessSketchFlow/eval/problem105/code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ldp	w3, w2, [x1]	; _20, _24,* ivtmp.11
; GuessSketchFlow/eval/problem105/code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	cmp	w3, w2	; _20, _24
	ble	L8		;,
; GuessSketchFlow/eval/problem105/code.c:29:                 (*out)[j] = (*out)[j + 1];
	stp	w2, w3, [x1]	; _24, _20,* ivtmp.11
L8:
; GuessSketchFlow/eval/problem105/code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	add	x1, x1, 4	; ivtmp.11, ivtmp.11,
	cmp	x1, x4	; ivtmp.11, _39
	bne	L9		;,
; GuessSketchFlow/eval/problem105/code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	sub	w5, w5, #1	; ivtmp.19, ivtmp.19,
	cmp	w5, 1	; ivtmp.19,
	bne	L7		;,
L1:
; GuessSketchFlow/eval/problem105/code.c:34: }
	ldr	x23, [sp, 48]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI5:
	ret	
	.p2align 2,,3
L29:
LCFI6:
; GuessSketchFlow/eval/problem105/code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	sub	w5, w5, #1	; ivtmp.19, ivtmp.19,
	b	L7		;
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem105/code.c:19:         if (!has_even_digit) {
	beq	L5		;,
	b	L14		;
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
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x97
	.uleb128 0x2
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
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
