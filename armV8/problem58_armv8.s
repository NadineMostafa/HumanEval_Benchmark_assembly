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
; GuessSketchFlow/eval/problem58/code.c:8:     for (int i = 1; i < size; i++) {
	cmp	w1, 1	; size,
	ble	L5		;,
	mov	x2, x0	; ivtmp.11, l
	sub	w1, w1, #2	; _25, size,
	add	x0, x0, 8	; _27, l,
; GuessSketchFlow/eval/problem58/code.c:6:     incr = decr = 0;
	mov	w4, 0	; incr,
	add	x0, x0, w1, uxtw 2	; _10, _27, _25,
	ldr	s31, [x2], 4	;, *l_17(D)
; GuessSketchFlow/eval/problem58/code.c:6:     incr = decr = 0;
	mov	w1, 0	; decr,
	.p2align 5,,15
L4:
	fmov	s30, s31	;,
; GuessSketchFlow/eval/problem58/code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	ldr	s31, [x2]	;, MEM[(float *)_18]
; GuessSketchFlow/eval/problem58/code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	fcmpe	s31, s30	;,
	bgt	L6		;,
; GuessSketchFlow/eval/problem58/code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	cset	w3, mi	; _9,
	orr	w1, w1, w3	; decr, decr, _9
L3:
; GuessSketchFlow/eval/problem58/code.c:8:     for (int i = 1; i < size; i++) {
	add	x2, x2, 4	; ivtmp.11, ivtmp.11,
	cmp	x0, x2	; _10, ivtmp.11
	bne	L4		;,
; GuessSketchFlow/eval/problem58/code.c:12:     if (incr + decr == 2) return false;
	add	w1, w1, w4	; _35, decr, incr
; GuessSketchFlow/eval/problem58/code.c:12:     if (incr + decr == 2) return false;
	cmp	w1, 2	; _35,
	cset	w0, ne	; <retval>,
; GuessSketchFlow/eval/problem58/code.c:14: }
	ret	
	.p2align 2,,3
L6:
; GuessSketchFlow/eval/problem58/code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	mov	w4, 1	; incr,
	b	L3		;
	.p2align 2,,3
L5:
; GuessSketchFlow/eval/problem58/code.c:8:     for (int i = 1; i < size; i++) {
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem58/code.c:14: }
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
