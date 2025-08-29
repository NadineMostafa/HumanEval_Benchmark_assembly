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
; GuessSketchFlow/eval/problem84/code.c:3: int func0(int n) {
	mov	w2, w0	; n, n
; GuessSketchFlow/eval/problem84/code.c:4:     if (n < 1) return 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem84/code.c:4:     if (n < 1) return 0;
	cmp	w2, 0	; n,
	ble	L1		;,
; GuessSketchFlow/eval/problem84/code.c:5:     if (n == 1) return 1;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem84/code.c:5:     if (n == 1) return 1;
	cmp	w2, w0	; n,
	beq	L1		;,
; GuessSketchFlow/eval/problem84/code.c:7:     for (int i = 2; i < n; i++)
	cmp	w2, 2	; n,
	beq	L6		;,
; GuessSketchFlow/eval/problem84/code.c:7:     for (int i = 2; i < n; i++)
	mov	w1, 2	; i,
; GuessSketchFlow/eval/problem84/code.c:6:     int out = 18;
	mov	w0, 18	; <retval>,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem84/code.c:8:         out = out * 10;
	add	w0, w0, w0, lsl 2	; out_5, <retval>, <retval>,
; GuessSketchFlow/eval/problem84/code.c:7:     for (int i = 2; i < n; i++)
	add	w1, w1, 1	; i, i,
; GuessSketchFlow/eval/problem84/code.c:8:         out = out * 10;
	lsl	w0, w0, 1	; <retval>, out_5,
; GuessSketchFlow/eval/problem84/code.c:7:     for (int i = 2; i < n; i++)
	cmp	w2, w1	; n, i
	bne	L3		;,
L1:
; GuessSketchFlow/eval/problem84/code.c:10: }
	ret	
	.p2align 2,,3
L6:
; GuessSketchFlow/eval/problem84/code.c:9:     return out;
	mov	w0, 18	; <retval>,
; GuessSketchFlow/eval/problem84/code.c:10: }
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
