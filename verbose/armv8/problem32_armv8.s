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
LFB0:
; GuessSketchFlow/eval/problem32/code.c:4:     if (n < 2) return false;
	cmp	x0, 1	; n,
	ble	L6		;,
; GuessSketchFlow/eval/problem32/code.c:5:     for (long long i = 2; i * i <= n; i++)
	cmp	x0, 3	; n,
	ble	L5		;,
; GuessSketchFlow/eval/problem32/code.c:5:     for (long long i = 2; i * i <= n; i++)
	mov	x1, 2	; i,
	b	L3		;
	.p2align 2,,3
L9:
; GuessSketchFlow/eval/problem32/code.c:5:     for (long long i = 2; i * i <= n; i++)
	add	x1, x1, 1	; i, i,
; GuessSketchFlow/eval/problem32/code.c:5:     for (long long i = 2; i * i <= n; i++)
	mul	x2, x1, x1	; _2, i, i
; GuessSketchFlow/eval/problem32/code.c:5:     for (long long i = 2; i * i <= n; i++)
	cmp	x2, x0	; _2, n
	bgt	L5		;,
L3:
; GuessSketchFlow/eval/problem32/code.c:6:         if (n % i == 0) return false;
	sdiv	x2, x0, x1	; tmp111, n, i
	msub	x2, x2, x1, x0	; _1, tmp111, i, n
; GuessSketchFlow/eval/problem32/code.c:6:         if (n % i == 0) return false;
	cbnz	x2, L9	; _1,
L6:
; GuessSketchFlow/eval/problem32/code.c:4:     if (n < 2) return false;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem32/code.c:8: }
	ret	
	.p2align 2,,3
L5:
; GuessSketchFlow/eval/problem32/code.c:7:     return true;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem32/code.c:8: }
	ret	
LFE0:
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
	.quad	LFB0-.
	.set L$set$2,LFE0-LFB0
	.quad L$set$2
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
