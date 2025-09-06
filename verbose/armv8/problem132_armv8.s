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
; GuessSketchFlow/eval/problem132/code.c:3: int func0(int n) {
	mov	w2, w0	; n, n
; GuessSketchFlow/eval/problem132/code.c:5:     while (n > 0) {
	cmp	w0, 0	; n,
	ble	L5		;,
; GuessSketchFlow/eval/problem132/code.c:6:         digit = n % 10;
	mov	w6, 52429	; tmp108,
; GuessSketchFlow/eval/problem132/code.c:4:     int prod = 1, has_odd = 0, digit;
	mov	w5, 0	; has_odd,
; GuessSketchFlow/eval/problem132/code.c:4:     int prod = 1, has_odd = 0, digit;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem132/code.c:6:         digit = n % 10;
	movk	w6, 0xcccc, lsl 16	; tmp108,,
	b	L4		;
	.p2align 2,,3
L6:
; GuessSketchFlow/eval/problem132/code.c:11:         n /= 10;
	mov	w2, w3	; n, n
L4:
; GuessSketchFlow/eval/problem132/code.c:6:         digit = n % 10;
	umull	x3, w2, w6	; tmp107, n, tmp108
; GuessSketchFlow/eval/problem132/code.c:7:         if (digit % 2 == 1) {
	ands	w4, w2, 1	; _22, n,
; GuessSketchFlow/eval/problem132/code.c:8:             has_odd = 1;
	csel	w5, w5, w4, eq	; has_odd, has_odd, _22,
; GuessSketchFlow/eval/problem132/code.c:6:         digit = n % 10;
	lsr	x1, x3, 35	; digit, tmp107,
; GuessSketchFlow/eval/problem132/code.c:11:         n /= 10;
	lsr	x3, x3, 35	; n, tmp107,
; GuessSketchFlow/eval/problem132/code.c:6:         digit = n % 10;
	add	w1, w1, w1, lsl 2	; tmp112, digit, digit,
	sub	w1, w2, w1, lsl 1	; digit, n, tmp112,
; GuessSketchFlow/eval/problem132/code.c:8:             has_odd = 1;
	mul	w1, w0, w1	; tmp137, <retval>, digit
	csel	w0, w1, w0, ne	; <retval>, tmp137, <retval>,
; GuessSketchFlow/eval/problem132/code.c:5:     while (n > 0) {
	cmp	w2, 9	; n,
	bgt	L6		;,
; GuessSketchFlow/eval/problem132/code.c:13:     return has_odd ? prod : 0;
	cmp	w5, 0	; has_odd,
	csel	w0, w0, wzr, ne	; <retval>, <retval>,,
; GuessSketchFlow/eval/problem132/code.c:14: }
	ret	
	.p2align 2,,3
L5:
; GuessSketchFlow/eval/problem132/code.c:13:     return has_odd ? prod : 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem132/code.c:14: }
	ret	
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
