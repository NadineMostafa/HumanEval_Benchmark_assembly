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
	stp	x29, x30, [sp, -32]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	str	x19, [sp, 16]	;,
LCFI2:
; GuessSketchFlow/eval/problem108/code.c:4: int* func0(int n) {
	mov	w19, w0	; n, n
; GuessSketchFlow/eval/problem108/code.c:5:     int* counts = (int*)malloc(2 * sizeof(int));
	mov	x0, 8	;,
	bl	_malloc		;
; GuessSketchFlow/eval/problem108/code.c:6:     counts[0] = 0;
	str	xzr, [x0]	; MEM <vector(2) int> [(int *)counts_14]
; GuessSketchFlow/eval/problem108/code.c:9:     for (int i = 1; i <= n; i++) {
	cmp	w19, 0	; n,
	ble	L1		;,
; GuessSketchFlow/eval/problem108/code.c:15:             number /= 10;
	mov	w4, 26215	; tmp138,
	add	w7, w19, 1	; _34, n,
; GuessSketchFlow/eval/problem108/code.c:9:     for (int i = 1; i <= n; i++) {
	mov	w6, 1	; i,
; GuessSketchFlow/eval/problem108/code.c:14:             reversed = reversed * 10 + number % 10;
	mov	w5, 10	; tmp130,
; GuessSketchFlow/eval/problem108/code.c:15:             number /= 10;
	movk	w4, 0x6666, lsl 16	; tmp138,,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem108/code.c:12:         int number = i;
	mov	w2, w6	; number, i
; GuessSketchFlow/eval/problem108/code.c:10:         int reversed = 0, original = i;
	mov	w1, 0	; reversed,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem108/code.c:14:             reversed = reversed * 10 + number % 10;
	add	w3, w1, w1, lsl 2	; _1, reversed, reversed,
; GuessSketchFlow/eval/problem108/code.c:14:             reversed = reversed * 10 + number % 10;
	sdiv	w1, w2, w5	; tmp129, number, tmp130
	add	w1, w1, w1, lsl 2	; tmp133, tmp129, tmp129,
	sub	w1, w2, w1, lsl 1	; _2, number, tmp133,
; GuessSketchFlow/eval/problem108/code.c:14:             reversed = reversed * 10 + number % 10;
	add	w1, w1, w3, lsl 1	; reversed, _2, _1,
; GuessSketchFlow/eval/problem108/code.c:15:             number /= 10;
	smull	x3, w2, w4	; tmp137, number, tmp138
	asr	x3, x3, 34	; tmp140, tmp137,
; GuessSketchFlow/eval/problem108/code.c:13:         while (number != 0) {
	subs	w2, w3, w2, asr 31	; number, tmp140, number,
	bne	L4		;,
; GuessSketchFlow/eval/problem108/code.c:18:         if (original == reversed) {
	cmp	w1, w6	; reversed, i
	beq	L10		;,
L5:
; GuessSketchFlow/eval/problem108/code.c:9:     for (int i = 1; i <= n; i++) {
	add	w6, w6, 1	; i, i,
; GuessSketchFlow/eval/problem108/code.c:9:     for (int i = 1; i <= n; i++) {
	cmp	w6, w7	; i, _34
	bne	L3		;,
L1:
; GuessSketchFlow/eval/problem108/code.c:25: }
	ldr	x19, [sp, 16]	;,
	ldp	x29, x30, [sp], 32	;,,,
LCFI3:
	ret	
	.p2align 2,,3
L10:
LCFI4:
; GuessSketchFlow/eval/problem108/code.c:19:             if (original % 2 == 0) counts[0]++;
	tbnz	x6, 0, L6	; i,,
; GuessSketchFlow/eval/problem108/code.c:19:             if (original % 2 == 0) counts[0]++;
	ldr	w1, [x0]	;, *counts_14
	add	w1, w1, 1	; _4, *counts_14,
	str	w1, [x0]	; _4, *counts_14
	b	L5		;
	.p2align 2,,3
L6:
; GuessSketchFlow/eval/problem108/code.c:20:             else counts[1]++;
	ldr	w1, [x0, 4]	;, MEM[(int *)counts_14 + 4B]
	add	w1, w1, 1	; _6, MEM[(int *)counts_14 + 4B],
	str	w1, [x0, 4]	; _6, MEM[(int *)counts_14 + 4B]
	b	L5		;
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
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0x2
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
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
