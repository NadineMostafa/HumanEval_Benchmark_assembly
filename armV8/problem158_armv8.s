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
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fmul	s0, s0, s0	;,,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fmul	s1, s1, s1	;,,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	adrp	x0, lC0@PAGE	; tmp143,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fmul	s2, s2, s2	;,,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	d30, [x0, #lC0@PAGEOFF]	;,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd	s3, s0, s1	;,,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabd	s3, s3, s2	;,,
	fcvt	d3, s3	;,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fcmpe	d3, d30	;,
	bmi	L1		;,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd	s31, s0, s2	;,,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabd	s31, s31, s1	;,,
	fcvt	d31, s31	;,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fcmpe	d31, d30	;,
	bmi	L1		;,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd	s2, s1, s2	;,,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabd	s2, s2, s0	;,,
	fcvt	d2, s2	;,
; GuessSketchFlow/eval/problem158/code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fcmpe	d2, d30	;,
	cset	w0, mi	; <retval>,
L1:
; GuessSketchFlow/eval/problem158/code.c:7: }
	ret	
LFE20:
	.literal8
	.align	3
lC0:
	.word	-350469331
	.word	1058682594
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
