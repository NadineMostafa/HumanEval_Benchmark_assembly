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
; GuessSketchFlow/eval/problem36/code.c:5:     for (int i = 0; i < size; i++)
	cmp	w1, 0	; size,
	ble	L4		;,
; GuessSketchFlow/eval/problem36/code.c:4:     float max = -10000;
	mov	w2, 16384	; tmp112,
	add	x1, x0, w1, uxtw 2	; _22, ivtmp.7, size,
	movk	w2, 0xc61c, lsl 16	; tmp112,,
	fmov	s0, w2	; <retval>, tmp112
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem36/code.c:6:         if (max < l[i]) max = l[i];
	ldr	s31, [x0], 4	; _4, MEM[(float *)_7]
	fcmpe	s31, s0	; _4, <retval>
	fcsel	s0, s31, s0, gt	; <retval>, _4, <retval>,
; GuessSketchFlow/eval/problem36/code.c:5:     for (int i = 0; i < size; i++)
	cmp	x0, x1	; ivtmp.7, _22
	bne	L3		;,
; GuessSketchFlow/eval/problem36/code.c:8: }
	ret	
	.p2align 2,,3
L4:
; GuessSketchFlow/eval/problem36/code.c:4:     float max = -10000;
	mov	w0, 16384	; tmp113,
	movk	w0, 0xc61c, lsl 16	; tmp113,,
	fmov	s0, w0	; <retval>, tmp113
; GuessSketchFlow/eval/problem36/code.c:8: }
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
