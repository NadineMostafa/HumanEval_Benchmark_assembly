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
LFB23:
; GuessSketchFlow/eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	mov	w2, 0	; i,
; GuessSketchFlow/eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	mov	w1, 0	; _2,
; GuessSketchFlow/eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	cmp	w0, 0	; a,
	csneg	w0, w0, w0, ge	; _12, a, a,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem78/code.c:7:         if (i * i * i == abs(a)) return 1;
	cmp	w0, w1	; _12, _2
	beq	L4		;,
; GuessSketchFlow/eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	add	w2, w2, 1	; i, i,
; GuessSketchFlow/eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	mul	w1, w2, w2	; _1, i, i
; GuessSketchFlow/eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	mul	w1, w1, w2	; _2, _1, i
; GuessSketchFlow/eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	cmp	w1, w0	; _2, _12
	ble	L3		;,
; GuessSketchFlow/eval/problem78/code.c:8:     return 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem78/code.c:9: }
	ret	
	.p2align 2,,3
L4:
; GuessSketchFlow/eval/problem78/code.c:7:         if (i * i * i == abs(a)) return 1;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem78/code.c:9: }
	ret	
LFE23:
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
	.quad	LFB23-.
	.set L$set$2,LFE23-LFB23
	.quad L$set$2
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
