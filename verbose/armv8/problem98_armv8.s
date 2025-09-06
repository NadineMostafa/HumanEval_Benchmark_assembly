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
; GuessSketchFlow/eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mov	w2, 52429	; tmp112,
; GuessSketchFlow/eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	cmp	w0, 0	; a,
	csneg	w0, w0, w0, ge	; _1, a, a,
; GuessSketchFlow/eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movk	w2, 0xcccc, lsl 16	; tmp112,,
; GuessSketchFlow/eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	cmp	w1, 0	; b,
	csneg	w1, w1, w1, ge	; _3, b, b,
; GuessSketchFlow/eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	umull	x3, w0, w2	; tmp111, _1, tmp112
; GuessSketchFlow/eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	umull	x2, w1, w2	; tmp136, _3, tmp112
; GuessSketchFlow/eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	lsr	x3, x3, 35	; tmp110, tmp111,
; GuessSketchFlow/eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	lsr	x2, x2, 35	; tmp135, tmp136,
; GuessSketchFlow/eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	add	w3, w3, w3, lsl 2	; tmp116, tmp110, tmp110,
; GuessSketchFlow/eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	add	w2, w2, w2, lsl 2	; tmp141, tmp135, tmp135,
; GuessSketchFlow/eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	sub	w0, w0, w3, lsl 1	; _2, _1, tmp116,
; GuessSketchFlow/eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	sub	w2, w1, w2, lsl 1	; _4, _3, tmp141,
; GuessSketchFlow/eval/problem98/code.c:6: }
	mul	w0, w0, w2	;, _2, _4
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
