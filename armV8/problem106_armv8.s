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
	stp	x29, x30, [sp, -144]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	str	x23, [sp, 48]	;,
LCFI2:
	mov	x23, x2	; out, out
; GuessSketchFlow/eval/problem106/code.c:6:     char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
	adrp	x2, lC11@PAGE	; tmp153,
	add	x2, x2, lC11@PAGEOFF;	; tmp152, tmp153,
; GuessSketchFlow/eval/problem106/code.c:5: void func0(int *arr, int size, char ***out, int *out_size) {
	stp	x21, x22, [sp, 32]	;,,
LCFI3:
; GuessSketchFlow/eval/problem106/code.c:6:     char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
	add	x22, x29, 64	; tmp188,,
; GuessSketchFlow/eval/problem106/code.c:5: void func0(int *arr, int size, char ***out, int *out_size) {
	mov	x21, x3	; out_size, out_size
; GuessSketchFlow/eval/problem106/code.c:6:     char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
	ldp	q28, q27, [x2]	; tmp156, tmp157,
	ldp	q30, q29, [x2, 32]	; tmp158, tmp159,
	ldr	q31, [x2, 64]	; tmp160,
; GuessSketchFlow/eval/problem106/code.c:9:     for (i = 0; i < size - 1; i++) {
	sub	w2, w1, #1	; _106, size,
; GuessSketchFlow/eval/problem106/code.c:6:     char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
	stp	q28, q27, [x22]	; tmp156, tmp157,
	stp	q30, q29, [x22, 32]	; tmp158, tmp159,
	str	q31, [x22, 64]	; tmp160, names
; GuessSketchFlow/eval/problem106/code.c:9:     for (i = 0; i < size - 1; i++) {
	cmp	w2, 0	; _106,
	ble	L2		;,
	mov	w8, w1	; ivtmp.37, size
	add	x3, x0, 4	; _87, arr,
	stp	x19, x20, [x29, 16]	;,,
LCFI4:
	.p2align 5,,15
L3:
	sub	w7, w8, #2	; _117, ivtmp.37,
	mov	x4, x0	; ivtmp.30, arr
	add	x7, x3, w7, uxtw 2	; _122, _87, _117,
; GuessSketchFlow/eval/problem106/code.c:10:         for (j = 0; j < size - i - 1; j++) {
	cmp	w8, 1	; ivtmp.37,
	ble	L31		;,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem106/code.c:11:             if (arr[j] > arr[j + 1]) {
	ldp	w6, w5, [x4]	; _4, _8,* ivtmp.30
; GuessSketchFlow/eval/problem106/code.c:11:             if (arr[j] > arr[j + 1]) {
	cmp	w6, w5	; _4, _8
	ble	L4		;,
; GuessSketchFlow/eval/problem106/code.c:13:                 arr[j] = arr[j + 1];
	stp	w5, w6, [x4]	; _8, _4,* ivtmp.30
L4:
; GuessSketchFlow/eval/problem106/code.c:10:         for (j = 0; j < size - i - 1; j++) {
	add	x4, x4, 4	; ivtmp.30, ivtmp.30,
	cmp	x4, x7	; ivtmp.30, _122
	bne	L5		;,
; GuessSketchFlow/eval/problem106/code.c:9:     for (i = 0; i < size - 1; i++) {
	sub	w8, w8, #1	; ivtmp.37, ivtmp.37,
	cmp	w8, 1	; ivtmp.37,
	bne	L3		;,
; GuessSketchFlow/eval/problem106/code.c:19:     *out_size = 0;
	str	wzr, [x21]	;, *out_size_51(D)
L20:
	ubfiz	x1, x1, 2, 32	; _98, size,,
	add	x19, x0, x1	; ivtmp.16, arr, _98
	sub	x0, x0, #4	; _82, arr,
	sub	x1, x1, w2, uxtw 2	; _83, _98, _106,
	add	x20, x1, x0	; _110, _83, _82
; GuessSketchFlow/eval/problem106/code.c:5: void func0(int *arr, int size, char ***out, int *out_size) {
	mov	x0, x19	; ivtmp.24, ivtmp.16
	.p2align 5,,15
L13:
; GuessSketchFlow/eval/problem106/code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldr	w1, [x0, -4]	;, MEM[(int *)_100 + -4B]
	sub	w1, w1, #1	; _17, MEM[(int *)_100 + -4B],
; GuessSketchFlow/eval/problem106/code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w1, 8	; _17,
	bhi	L12		;,
; GuessSketchFlow/eval/problem106/code.c:22:             (*out_size)++;
	ldr	w1, [x21]	;, *out_size_51(D)
	add	w1, w1, 1	; _19, *out_size_51(D),
	str	w1, [x21]	; _19, *out_size_51(D)
L12:
; GuessSketchFlow/eval/problem106/code.c:20:     for (i = size - 1; i >= 0; i--) {
	sub	x0, x0, #4	; ivtmp.24, ivtmp.24,
	cmp	x0, x20	; ivtmp.24, _110
	bne	L13		;,
; GuessSketchFlow/eval/problem106/code.c:26:     *out = malloc(*out_size * sizeof(char *));
	ldrsw	x0, [x21]	; *out_size_51(D), *out_size_51(D)
; GuessSketchFlow/eval/problem106/code.c:26:     *out = malloc(*out_size * sizeof(char *));
	lsl	x0, x0, 3	;, *out_size_51(D),
	bl	_malloc		;
; GuessSketchFlow/eval/problem106/code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	w4, [x21]	;, *out_size_51(D)
; GuessSketchFlow/eval/problem106/code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	mov	w1, 0	; j,
; GuessSketchFlow/eval/problem106/code.c:26:     *out = malloc(*out_size * sizeof(char *));
	str	x0, [x23]	; _23, *out_54(D)
	b	L16		;
	.p2align 2,,3
L18:
; GuessSketchFlow/eval/problem106/code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldr	w2, [x19, -4]	;, MEM[(int *)_75 + -4B]
; GuessSketchFlow/eval/problem106/code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	sub	w3, w2, #1	; _29, _27,
; GuessSketchFlow/eval/problem106/code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w3, 8	; _29,
	bhi	L17		;,
; GuessSketchFlow/eval/problem106/code.c:30:             (*out)[j++] = names[arr[i]];
	ldr	x2, [x22, w2, sxtw 3]	; names[_27], names[_27]
	str	x2, [x0, w1, uxtw 3]	; names[_27], *_32
; GuessSketchFlow/eval/problem106/code.c:30:             (*out)[j++] = names[arr[i]];
	add	w1, w1, 1	; j, j,
L17:
; GuessSketchFlow/eval/problem106/code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	sub	x19, x19, #4	; ivtmp.16, ivtmp.16,
	cmp	x19, x20	; ivtmp.16, _110
	beq	L29		;,
L16:
; GuessSketchFlow/eval/problem106/code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	cmp	w4, w1	; _34, j
	bgt	L18		;,
L29:
; GuessSketchFlow/eval/problem106/code.c:33: }
	ldr	x23, [sp, 48]	;,
	ldp	x19, x20, [x29, 16]	;,,
LCFI5:
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 144	;,,,
LCFI6:
	ret	
	.p2align 2,,3
L31:
LCFI7:
; GuessSketchFlow/eval/problem106/code.c:9:     for (i = 0; i < size - 1; i++) {
	sub	w8, w8, #1	; ivtmp.37, ivtmp.37,
	b	L3		;
L2:
LCFI8:
; GuessSketchFlow/eval/problem106/code.c:19:     *out_size = 0;
	str	wzr, [x3]	;, *out_size_51(D)
; GuessSketchFlow/eval/problem106/code.c:20:     for (i = size - 1; i >= 0; i--) {
	beq	L32		;,
; GuessSketchFlow/eval/problem106/code.c:26:     *out = malloc(*out_size * sizeof(char *));
	mov	x0, 0	;,
	bl	_malloc		;
; GuessSketchFlow/eval/problem106/code.c:26:     *out = malloc(*out_size * sizeof(char *));
	str	x0, [x23]	; tmp195, *out_54(D)
; GuessSketchFlow/eval/problem106/code.c:33: }
	ldr	x23, [sp, 48]	;,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 144	;,,,
LCFI9:
	ret	
L32:
LCFI10:
	stp	x19, x20, [x29, 16]	;,,
LCFI11:
	b	L20		;
LFE4:
	.cstring
	.align	3
lC0:
	.ascii "\0"
	.align	3
lC1:
	.ascii "One\0"
	.align	3
lC2:
	.ascii "Two\0"
	.align	3
lC3:
	.ascii "Three\0"
	.align	3
lC4:
	.ascii "Four\0"
	.align	3
lC5:
	.ascii "Five\0"
	.align	3
lC6:
	.ascii "Six\0"
	.align	3
lC7:
	.ascii "Seven\0"
	.align	3
lC8:
	.ascii "Eight\0"
	.align	3
lC9:
	.ascii "Nine\0"
	.const_data
	.align	3
lC11:
	.xword	lC0
	.xword	lC1
	.xword	lC2
	.xword	lC3
	.xword	lC4
	.xword	lC5
	.xword	lC6
	.xword	lC7
	.xword	lC8
	.xword	lC9
	.text
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
	.uleb128 0x90
	.byte	0x9d
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x11
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x97
	.uleb128 0xc
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0xe
	.byte	0x96
	.uleb128 0xd
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x94
	.uleb128 0xf
	.byte	0x93
	.uleb128 0x10
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xa
	.byte	0xd4
	.byte	0xd3
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xb
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xd3
	.byte	0xd4
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$13,LCFI10-LCFI9
	.long L$set$13
	.byte	0xb
	.byte	0x4
	.set L$set$14,LCFI11-LCFI10
	.long L$set$14
	.byte	0x94
	.uleb128 0xf
	.byte	0x93
	.uleb128 0x10
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
