	.arch armv8.5-a
	.build_version macos,  15, 0
; GNU C11 (Homebrew GCC 15.1.0) version 15.1.0 (aarch64-apple-darwin24)
;	compiled by GNU C version 15.1.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed: -fPIC -mmacosx-version-min=15.0.0 -mcpu=apple-m1 -mlittle-endian -mabi=lp64 -O2 -std=c11
	.text
	.cstring
	.align	3
lC0:
	.ascii "YES\0"
	.align	3
lC1:
	.ascii "NO\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB1:
; GuessSketchFlow/eval/problem128/code.c:6:     inter2 = interval1_end < interval2_end ? interval1_end : interval2_end;
	cmp	w3, w1	; interval2_end, interval1_end
	csel	w3, w3, w1, le	; inter2_10, interval2_end, interval1_end,
; GuessSketchFlow/eval/problem128/code.c:5:     inter1 = interval1_start > interval2_start ? interval1_start : interval2_start;
	cmp	w2, w0	; interval2_start, interval1_start
	csel	w2, w2, w0, ge	; inter1_7, interval2_start, interval1_start,
; GuessSketchFlow/eval/problem128/code.c:7:     l = inter2 - inter1;
	sub	w3, w3, w2	; l, inter2_10, inter1_7
; GuessSketchFlow/eval/problem128/code.c:9:     if (l < 2) return "NO";
	cmp	w3, 1	; l,
	ble	L6		;,
; GuessSketchFlow/eval/problem128/code.c:11:     for (i = 2; i * i <= l; i++)
	cmp	w3, 3	; l,
	ble	L5		;,
; GuessSketchFlow/eval/problem128/code.c:11:     for (i = 2; i * i <= l; i++)
	mov	w0, 2	; i,
	b	L3		;
	.p2align 2,,3
L9:
; GuessSketchFlow/eval/problem128/code.c:11:     for (i = 2; i * i <= l; i++)
	add	w0, w0, 1	; i, i,
; GuessSketchFlow/eval/problem128/code.c:11:     for (i = 2; i * i <= l; i++)
	mul	w1, w0, w0	; _2, i, i
; GuessSketchFlow/eval/problem128/code.c:11:     for (i = 2; i * i <= l; i++)
	cmp	w1, w3	; _2, l
	bgt	L5		;,
L3:
; GuessSketchFlow/eval/problem128/code.c:12:         if (l % i == 0) return "NO";
	sdiv	w1, w3, w0	; tmp143, l, i
	msub	w1, w1, w0, w3	; _1, tmp143, i, l
; GuessSketchFlow/eval/problem128/code.c:12:         if (l % i == 0) return "NO";
	cbnz	w1, L9	; _1,
L6:
; GuessSketchFlow/eval/problem128/code.c:9:     if (l < 2) return "NO";
	adrp	x0, lC1@PAGE	; tmp115,
	add	x0, x0, lC1@PAGEOFF;	; <retval>, tmp115,
; GuessSketchFlow/eval/problem128/code.c:15: }
	ret	
	.p2align 2,,3
L5:
; GuessSketchFlow/eval/problem128/code.c:14:     return "YES";
	adrp	x0, lC0@PAGE	; tmp112,
	add	x0, x0, lC0@PAGEOFF;	; <retval>, tmp112,
; GuessSketchFlow/eval/problem128/code.c:15: }
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
