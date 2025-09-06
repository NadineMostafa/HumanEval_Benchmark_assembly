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
LFB1:
; GuessSketchFlow/eval/problem40/code.c:3: int func0(int n) {
	mov	w5, w0	; n, n
; GuessSketchFlow/eval/problem40/code.c:5:     int count = 0;
	mov	w3, 0	; count,
; GuessSketchFlow/eval/problem40/code.c:4:     int f1 = 1, f2 = 2, m;
	mov	w0, 2	; <retval>,
; GuessSketchFlow/eval/problem40/code.c:4:     int f1 = 1, f2 = 2, m;
	mov	w4, 1	; f1,
; GuessSketchFlow/eval/problem40/code.c:6:     while (count < n) {
	cmp	w3, w5	; count, n
	bge	L14		;,
	.p2align 5,,15
L8:
; GuessSketchFlow/eval/problem40/code.c:10:         for (int w = 2; w * w <= f1; w++) {
	cmp	w0, 3	; <retval>,
	ble	L3		;,
; GuessSketchFlow/eval/problem40/code.c:10:         for (int w = 2; w * w <= f1; w++) {
	mov	w1, 2	; w,
	b	L5		;
	.p2align 2,,3
L15:
; GuessSketchFlow/eval/problem40/code.c:10:         for (int w = 2; w * w <= f1; w++) {
	add	w1, w1, 1	; w, w,
; GuessSketchFlow/eval/problem40/code.c:10:         for (int w = 2; w * w <= f1; w++) {
	mul	w2, w1, w1	; _2, w, w
; GuessSketchFlow/eval/problem40/code.c:10:         for (int w = 2; w * w <= f1; w++) {
	cmp	w2, w0	; _2, <retval>
	bgt	L3		;,
L5:
; GuessSketchFlow/eval/problem40/code.c:11:             if (f1 % w == 0) {
	sdiv	w2, w0, w1	; tmp122, <retval>, w
	msub	w2, w2, w1, w0	; _1, tmp122, w, <retval>
; GuessSketchFlow/eval/problem40/code.c:11:             if (f1 % w == 0) {
	cbnz	w2, L15	; _1,
; GuessSketchFlow/eval/problem40/code.c:7:         f1 = f1 + f2;
	add	w1, w4, w0	; f1, f1, <retval>
; GuessSketchFlow/eval/problem40/code.c:8:         m = f1; f1 = f2; f2 = m;
	mov	w4, w0	; f1, <retval>
; GuessSketchFlow/eval/problem40/code.c:8:         m = f1; f1 = f2; f2 = m;
	mov	w0, w1	; <retval>, f1
L16:
; GuessSketchFlow/eval/problem40/code.c:6:     while (count < n) {
	cmp	w3, w5	; count, n
	blt	L8		;,
L14:
; GuessSketchFlow/eval/problem40/code.c:18:     return 0;
	mov	w0, 0	; <retval>,
L1:
; GuessSketchFlow/eval/problem40/code.c:19: }
	ret	
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem40/code.c:15:         if (isprime) count += 1;
	add	w3, w3, 1	; count, count,
; GuessSketchFlow/eval/problem40/code.c:16:         if (count == n) return f1;
	cmp	w5, w3	; n, count
	beq	L1		;,
; GuessSketchFlow/eval/problem40/code.c:7:         f1 = f1 + f2;
	add	w1, w4, w0	; f1, f1, <retval>
; GuessSketchFlow/eval/problem40/code.c:8:         m = f1; f1 = f2; f2 = m;
	mov	w4, w0	; f1, <retval>
; GuessSketchFlow/eval/problem40/code.c:8:         m = f1; f1 = f2; f2 = m;
	mov	w0, w1	; <retval>, f1
	b	L16		;
LFE1:
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
	.quad	LFB1-.
	.set L$set$2,LFE1-LFB1
	.quad L$set$2
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
