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
; GuessSketchFlow/eval/problem151/code.c:6:     for (int i = 2; i * i <= n; i++) {
	cmp	w0, 3	; n,
	ble	L2		;,
	mov	w3, 2	; i,
; GuessSketchFlow/eval/problem151/code.c:4:     int isp = 1;
	mov	w5, 1	; isp,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem151/code.c:7:         if (n % i == 0) isp = 0;
	sdiv	w4, w0, w3	; tmp125, n, i
	msub	w4, w4, w3, w0	; _1, tmp125, i, n
; GuessSketchFlow/eval/problem151/code.c:6:     for (int i = 2; i * i <= n; i++) {
	add	w3, w3, 1	; i, i,
; GuessSketchFlow/eval/problem151/code.c:7:         if (n % i == 0) isp = 0;
	cmp	w4, 0	; _1,
	cset	w4, ne	; _13,
	and	w5, w5, w4	; isp, isp, _13
; GuessSketchFlow/eval/problem151/code.c:6:     for (int i = 2; i * i <= n; i++) {
	mul	w4, w3, w3	; _2, i, i
; GuessSketchFlow/eval/problem151/code.c:6:     for (int i = 2; i * i <= n; i++) {
	cmp	w4, w0	; _2, n
	ble	L3		;,
; GuessSketchFlow/eval/problem151/code.c:10:     return y;
	cmp	w5, 0	; isp,
; GuessSketchFlow/eval/problem151/code.c:11: }
	csel	w0, w1, w2, ne	;, x, y,
	ret	
	.p2align 2,,3
L2:
; GuessSketchFlow/eval/problem151/code.c:5:     if (n < 2) isp = 0;
	cmp	w0, 1	; n,
	cset	w5, gt	; isp,
; GuessSketchFlow/eval/problem151/code.c:10:     return y;
	cmp	w5, 0	; isp,
; GuessSketchFlow/eval/problem151/code.c:11: }
	csel	w0, w1, w2, ne	;, x, y,
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
