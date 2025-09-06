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
; GuessSketchFlow/eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	fadd	s30, s0, s1	; _1, a, b
; GuessSketchFlow/eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	fcmpe	s30, s2	; _1, c
	bls	L6		;,
; GuessSketchFlow/eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	fadd	s29, s0, s2	; _2, a, c
	fmov	s31, s0	; a, a
; GuessSketchFlow/eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	fmov	s0, -1.0e+0	; <retval>,
; GuessSketchFlow/eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	fcmpe	s29, s1	; _2, b
	bls	L12		;,
; GuessSketchFlow/eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	fadd	s29, s1, s2	; _3, b, c
; GuessSketchFlow/eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	fcmpe	s29, s31	; _3, a
	bls	L12		;,
; GuessSketchFlow/eval/problem72/code.c:6: float s = (a + b + c) / 2;
	fadd	s30, s30, s2	; _4, _1, c
; GuessSketchFlow/eval/problem72/code.c:6: float s = (a + b + c) / 2;
	fmov	s29, 5.0e-1	; tmp122,
	fmul	s30, s30, s29	; s, _4, tmp122
; GuessSketchFlow/eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fsub	s31, s30, s31	; _5, s, a
; GuessSketchFlow/eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fsub	s1, s30, s1	; _7, s, b
; GuessSketchFlow/eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul	s31, s31, s30	; _6, _5, s
; GuessSketchFlow/eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fsub	s30, s30, s2	; _9, s, c
; GuessSketchFlow/eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul	s31, s31, s1	; _8, _6, _7
; GuessSketchFlow/eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul	s0, s31, s30	; _10, _8, _9
	fcmp	s0, #0.0	; _10
	bpl	L9		;,
; GuessSketchFlow/eval/problem72/code.c:4: float func0(float a, float b, float c) {
	stp	x29, x30, [sp, -16]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
; GuessSketchFlow/eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	bl	_sqrtf		;
; GuessSketchFlow/eval/problem72/code.c:8: return roundf(area * 100) / 100;
	mov	w0, 1120403456	; tmp130,
; GuessSketchFlow/eval/problem72/code.c:9: }
	ldp	x29, x30, [sp], 16	;,,,
LCFI2:
; GuessSketchFlow/eval/problem72/code.c:8: return roundf(area * 100) / 100;
	fmov	s31, w0	; tmp129, tmp130
	fmul	s0, s0, s31	; _11, area, tmp129
	frinta	s0, s0	; _12, _11
; GuessSketchFlow/eval/problem72/code.c:8: return roundf(area * 100) / 100;
	fdiv	s0, s0, s31	; <retval>, _12, tmp129
; GuessSketchFlow/eval/problem72/code.c:9: }
	ret	
	.p2align 2,,3
L9:
; GuessSketchFlow/eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fsqrt	s0, s0	; area, _10
; GuessSketchFlow/eval/problem72/code.c:8: return roundf(area * 100) / 100;
	mov	w0, 1120403456	; tmp130,
	fmov	s31, w0	; tmp129, tmp130
	fmul	s0, s0, s31	; _11, area, tmp129
	frinta	s0, s0	; _12, _11
; GuessSketchFlow/eval/problem72/code.c:8: return roundf(area * 100) / 100;
	fdiv	s0, s0, s31	; <retval>, _12, tmp129
L12:
; GuessSketchFlow/eval/problem72/code.c:9: }
	ret	
	.p2align 2,,3
L6:
; GuessSketchFlow/eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	fmov	s0, -1.0e+0	; <retval>,
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
	.byte	0x4
	.set L$set$3,LCFI0-LFB20
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
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
