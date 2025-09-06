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
LFB20:
; GuessSketchFlow/eval/problem93/code.c:5:     if (roundf(a) != a) return 0;
	frinta	s6, s0	;,
; GuessSketchFlow/eval/problem93/code.c:5:     if (roundf(a) != a) return 0;
	fcmp	s6, s0	;,
; GuessSketchFlow/eval/problem93/code.c:5:     if (roundf(a) != a) return 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem93/code.c:5:     if (roundf(a) != a) return 0;
	bne	L1		;,
; GuessSketchFlow/eval/problem93/code.c:6:     if (roundf(b) != b) return 0;
	frinta	s5, s1	;,
; GuessSketchFlow/eval/problem93/code.c:6:     if (roundf(b) != b) return 0;
	fcmp	s5, s1	;,
	bne	L1		;,
; GuessSketchFlow/eval/problem93/code.c:7:     if (roundf(c) != c) return 0;
	frinta	s4, s2	;,
; GuessSketchFlow/eval/problem93/code.c:7:     if (roundf(c) != c) return 0;
	fcmp	s4, s2	;,
	bne	L1		;,
; GuessSketchFlow/eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	fadd	s3, s0, s1	;,,
; GuessSketchFlow/eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	fcmp	s3, s2	;,
	beq	L1		;,
; GuessSketchFlow/eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	fadd	s31, s0, s2	;,,
; GuessSketchFlow/eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	fcmp	s31, s1	;,
	beq	L1		;,
; GuessSketchFlow/eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	fadd	s2, s1, s2	;,,
; GuessSketchFlow/eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	fcmp	s2, s0	;,
	cset	w0, eq	; <retval>,
L1:
; GuessSketchFlow/eval/problem93/code.c:10: }
	ret	
LFE20:
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
	.quad	LFB20-.
	.set L$set$2,LFE20-LFB20
	.quad L$set$2
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
