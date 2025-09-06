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
	mov	w19, w0	; n, n
	mov	x0, x1	; out, out
; GuessSketchFlow/eval/problem124/code.c:6:     *size = 1;
	mov	w1, 1	; tmp131,
; GuessSketchFlow/eval/problem124/code.c:4: void func0(int n, int *out, int *size) {
	mov	x20, x2	; size, size
; GuessSketchFlow/eval/problem124/code.c:6:     *size = 1;
	str	w1, [x2]	; tmp131, *size_42(D)
; GuessSketchFlow/eval/problem124/code.c:7:     out[0] = 1;
	str	w1, [x0]	; tmp131, *out_44(D)
; GuessSketchFlow/eval/problem124/code.c:9:     while (n != 1) {
	cmp	w19, w1	; n,
	beq	L2		;,
	str	x21, [x29, 32]	;,
LCFI3:
; GuessSketchFlow/eval/problem124/code.c:5:     int capacity = 10;
	mov	w21, 10	; capacity,
	.p2align 5,,15
L7:
; GuessSketchFlow/eval/problem124/code.c:10:         if (n % 2 == 1) {
	cmp	w19, 0	; n,
	and	w3, w19, 1	; tmp135, n,
	csneg	w3, w3, w3, ge	; _1, tmp135, tmp135,
; GuessSketchFlow/eval/problem124/code.c:10:         if (n % 2 == 1) {
	cmp	w3, 1	; _1,
	beq	L5		;,
; GuessSketchFlow/eval/problem124/code.c:18:             n = n / 2;
	add	w19, w19, w19, lsr 31	; tmp147, n, n,
	asr	w19, w19, 1	; n, tmp147,
; GuessSketchFlow/eval/problem124/code.c:9:     while (n != 1) {
	cmp	w19, 1	; n,
	bne	L7		;,
	ldr	x21, [x29, 32]	;,
LCFI4:
L2:
; GuessSketchFlow/eval/problem124/code.c:22:     for (int i = 1; i < *size; i++) {
	mov	w7, 1	; i,
	add	x8, x0, 4	; ivtmp.22, out,
; GuessSketchFlow/eval/problem124/code.c:22:     for (int i = 1; i < *size; i++) {
	ldr	w1, [x20]	;, *size_42(D)
	cmp	w1, w7	; *size_42(D),
	ble	L1		;,
	.p2align 5,,15
L12:
; GuessSketchFlow/eval/problem124/code.c:23:         int key = out[i];
	ldr	w6, [x8]	;, MEM[(int *)_39]
; GuessSketchFlow/eval/problem124/code.c:24:         int j = i - 1;
	sub	w3, w7, #1	; j, i,
	mov	x4, x8	; ivtmp.13, ivtmp.22
	.p2align 5,,15
L9:
; GuessSketchFlow/eval/problem124/code.c:26:         while (j >= 0 && out[j] > key) {
	ldr	w5, [x4, -4]	;, MEM[(int *)_32 + -4B]
; GuessSketchFlow/eval/problem124/code.c:26:         while (j >= 0 && out[j] > key) {
	cmp	w5, w6	; _24, key
	ble	L26		;,
; GuessSketchFlow/eval/problem124/code.c:28:             j = j - 1;
	sub	w3, w3, #1	; j, j,
; GuessSketchFlow/eval/problem124/code.c:27:             out[j + 1] = out[j];
	str	w5, [x4], -4	; _24, MEM[(int *)_32]
; GuessSketchFlow/eval/problem124/code.c:26:         while (j >= 0 && out[j] > key) {
	cmn	w3, #1	; j,
	bne	L9		;,
	mov	x3, x0	; _97, out
L10:
; GuessSketchFlow/eval/problem124/code.c:30:         out[j + 1] = key;
	str	w6, [x3]	; key, *prephitmp_98
; GuessSketchFlow/eval/problem124/code.c:22:     for (int i = 1; i < *size; i++) {
	add	w7, w7, 1	; i, i,
; GuessSketchFlow/eval/problem124/code.c:22:     for (int i = 1; i < *size; i++) {
	add	x8, x8, 4	; ivtmp.22, ivtmp.22,
	ldr	w1, [x20]	;, *size_42(D)
	cmp	w1, w7	; *size_42(D), i
	bgt	L12		;,
L1:
; GuessSketchFlow/eval/problem124/code.c:32: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI5:
	ret	
	.p2align 2,,3
L5:
LCFI6:
; GuessSketchFlow/eval/problem124/code.c:11:             if (*size >= capacity) {
	ldr	w1, [x20]	;, *size_42(D)
; GuessSketchFlow/eval/problem124/code.c:11:             if (*size >= capacity) {
	cmp	w1, w21	; _2, capacity
	bge	L27		;,
L4:
; GuessSketchFlow/eval/problem124/code.c:15:             out[(*size)++] = n;
	add	w2, w1, 1	; _7, _2,
	str	w2, [x20]	; _7, *size_42(D)
; GuessSketchFlow/eval/problem124/code.c:15:             out[(*size)++] = n;
	str	w19, [x0, w1, sxtw 2]	; n, *_10
; GuessSketchFlow/eval/problem124/code.c:16:             n = n * 3 + 1;
	add	w1, w19, w19, lsl 1	; _11, n, n,
; GuessSketchFlow/eval/problem124/code.c:16:             n = n * 3 + 1;
	add	w19, w1, 1	; n, _11,
; GuessSketchFlow/eval/problem124/code.c:10:         if (n % 2 == 1) {
	tbz	x1, 0, L5	; _11,,
; GuessSketchFlow/eval/problem124/code.c:18:             n = n / 2;
	asr	w19, w19, 1	; n, n,
	b	L7		;
	.p2align 2,,3
L26:
LCFI7:
; GuessSketchFlow/eval/problem124/code.c:30:         out[j + 1] = key;
	add	w3, w3, 1	; _93, j,
	add	x3, x0, x3, lsl 2	; _97, out, _93,
	b	L10		;
	.p2align 2,,3
L27:
LCFI8:
; GuessSketchFlow/eval/problem124/code.c:12:                 capacity *= 2;
	lsl	w21, w21, 1	; capacity, capacity,
; GuessSketchFlow/eval/problem124/code.c:13:                 out = (int*)realloc(out, capacity * sizeof(int));
	sbfiz	x1, x21, 2, 32	;, capacity,,
	bl	_realloc		;
; GuessSketchFlow/eval/problem124/code.c:15:             out[(*size)++] = n;
	ldr	w1, [x20]	;, *size_42(D)
	b	L4		;
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
	.byte	0x95
	.uleb128 0x2
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xd5
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
	.byte	0x95
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xd5
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0x95
	.uleb128 0x2
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
