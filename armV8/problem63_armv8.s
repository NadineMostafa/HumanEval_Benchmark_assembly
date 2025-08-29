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
; GuessSketchFlow/eval/problem63/code.c:4:     for (int i = 1; i < xs_size; i++) {
	cmp	w1, 1	; xs_size,
	ble	L1		;,
	mov	x3, 1	; ivtmp.7,
	sub	x2, x2, #4	; _26, out,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem63/code.c:5:         out[i - 1] = i * xs[i];
	ldr	s30, [x0, x3, lsl 2]	;, MEM[(const float *)xs_14(D) + ivtmp.7_23 * 4]
	scvtf	s31, w3	;, ivtmp.7
	fmul	s30, s31, s30	;,,
; GuessSketchFlow/eval/problem63/code.c:5:         out[i - 1] = i * xs[i];
	str	s30, [x2, x3, lsl 2]	;, MEM[(float *)_26 + ivtmp.7_23 * 4]
; GuessSketchFlow/eval/problem63/code.c:4:     for (int i = 1; i < xs_size; i++) {
	add	x3, x3, 1	; ivtmp.7, ivtmp.7,
	cmp	w1, w3	; xs_size, ivtmp.7
	bgt	L3		;,
L1:
; GuessSketchFlow/eval/problem63/code.c:7: }
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
