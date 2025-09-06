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
; GuessSketchFlow/eval/problem76/code.c:5:     if (a < 2) return 0;
	cmp	w0, 1	; a,
	ble	L10		;,
; GuessSketchFlow/eval/problem76/code.c:7:     for (int i = 2; i * i <= a; i++) {
	mov	w2, 2	; i,
; GuessSketchFlow/eval/problem76/code.c:6:     int num = 0;
	mov	w3, 0	; num,
; GuessSketchFlow/eval/problem76/code.c:7:     for (int i = 2; i * i <= a; i++) {
	cmp	w0, 3	; a,
	ble	L10		;,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem76/code.c:8:         while (a % i == 0) {
	udiv	w1, w0, w2	; tmp138, a, i
	msub	w1, w1, w2, w0	; _24, tmp138, i, a
; GuessSketchFlow/eval/problem76/code.c:8:         while (a % i == 0) {
	cbnz	w1, L7	; _24,
	sdiv	w1, w0, w2	; a, a, i
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem76/code.c:9:             a = a / i;
	mov	w0, w1	; a, a
; GuessSketchFlow/eval/problem76/code.c:10:             num++;
	add	w3, w3, 1	; num, num,
; GuessSketchFlow/eval/problem76/code.c:8:         while (a % i == 0) {
	sdiv	w1, w1, w2	; a, a, i
	msub	w4, w1, w2, w0	; _1, a, i, a
; GuessSketchFlow/eval/problem76/code.c:8:         while (a % i == 0) {
	cbz	w4, L5	; _1,
L7:
; GuessSketchFlow/eval/problem76/code.c:7:     for (int i = 2; i * i <= a; i++) {
	add	w2, w2, 1	; i, i,
; GuessSketchFlow/eval/problem76/code.c:7:     for (int i = 2; i * i <= a; i++) {
	mul	w1, w2, w2	; _2, i, i
; GuessSketchFlow/eval/problem76/code.c:7:     for (int i = 2; i * i <= a; i++) {
	cmp	w1, w0	; _2, a
	ble	L3		;,
; GuessSketchFlow/eval/problem76/code.c:13:     if (a > 1) num++;
	cmp	w0, 1	; a,
	ble	L17		;,
; GuessSketchFlow/eval/problem76/code.c:14:     return num == 3;
	cmp	w3, 2	; num,
	cset	w0, eq	; <retval>,
; GuessSketchFlow/eval/problem76/code.c:15: }
	ret	
L17:
; GuessSketchFlow/eval/problem76/code.c:14:     return num == 3;
	cmp	w3, 3	; num,
	cset	w0, eq	; <retval>,
; GuessSketchFlow/eval/problem76/code.c:15: }
	ret	
L10:
; GuessSketchFlow/eval/problem76/code.c:5:     if (a < 2) return 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem76/code.c:15: }
	ret	
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
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
