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
; GuessSketchFlow/eval/problem163/code.c:7:     if (b < a) {
	cmp	w1, w0	; b, a
	csel	w4, w1, w0, lt	; tmp120, b, a,
	csel	w0, w0, w1, lt	; a, a, b,
	add	w0, w0, 1	; _27, a,
; GuessSketchFlow/eval/problem163/code.c:5:     *size = 0;
	str	wzr, [x3]	;, *size_12(D)
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem163/code.c:14:         if (i < 10 && i % 2 == 0) {
	cmp	w4, 9	; b,
	bgt	L3		;,
; GuessSketchFlow/eval/problem163/code.c:14:         if (i < 10 && i % 2 == 0) {
	tbnz	x4, 0, L3	; b,,
; GuessSketchFlow/eval/problem163/code.c:15:             out[(*size)++] = i;
	ldr	w1, [x3]	;, *size_12(D)
; GuessSketchFlow/eval/problem163/code.c:15:             out[(*size)++] = i;
	add	w5, w1, 1	; _2, _1,
	str	w5, [x3]	; _2, *size_12(D)
; GuessSketchFlow/eval/problem163/code.c:15:             out[(*size)++] = i;
	str	w4, [x2, w1, sxtw 2]	; b, *_5
L3:
; GuessSketchFlow/eval/problem163/code.c:13:     for (int i = a; i <= b; i++) {
	add	w4, w4, 1	; b, b,
; GuessSketchFlow/eval/problem163/code.c:13:     for (int i = a; i <= b; i++) {
	cmp	w4, w0	; b, _27
	bne	L4		;,
; GuessSketchFlow/eval/problem163/code.c:18: }
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
