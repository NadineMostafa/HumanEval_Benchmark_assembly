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
	stp	x29, x30, [sp, -16]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
; GuessSketchFlow/eval/problem100/code.c:7:     w = atof(value);
	bl	_atof		;
; GuessSketchFlow/eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fcmpe	d0, #0.0	; w
	bmi	L5		;,
; GuessSketchFlow/eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fmov	d31, 5.0e-1	; tmp110,
; GuessSketchFlow/eval/problem100/code.c:9: }
	ldp	x29, x30, [sp], 16	;,,,
LCFI2:
; GuessSketchFlow/eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fadd	d0, d0, d31	; _3, w, tmp110
	frintm	d0, d0	; _4, _3
; GuessSketchFlow/eval/problem100/code.c:9: }
	fcvtzs	w0, d0	;, _4
	ret	
	.p2align 2,,3
L5:
LCFI3:
; GuessSketchFlow/eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fmov	d31, 5.0e-1	; tmp108,
; GuessSketchFlow/eval/problem100/code.c:9: }
	ldp	x29, x30, [sp], 16	;,,,
LCFI4:
; GuessSketchFlow/eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fsub	d0, d0, d31	; _1, w, tmp108
	frintp	d0, d0	; _4, _1
; GuessSketchFlow/eval/problem100/code.c:9: }
	fcvtzs	w0, d0	;, _4
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
	.byte	0x4
	.set L$set$3,LCFI0-LFB23
	.long L$set$3
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xb
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
