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
; GuessSketchFlow/eval/problem5/code.c:9:     for (i = 0; i < size; i++)
	cmp	w1, 0	; size,
	ble	L2		;,
; GuessSketchFlow/eval/problem5/code.c:5:     float sum = 0;
	movi	v31.2s, #0	; sum
; GuessSketchFlow/eval/problem5/code.c:9:     for (i = 0; i < size; i++)
	mov	x2, x0	; ivtmp.14, ivtmp.8
	add	x3, x0, w1, uxtw 2	; _45, ivtmp.8, size,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem5/code.c:10:         sum += numbers[i];
	ldr	s30, [x2], 4	; MEM[(float *)_41], MEM[(float *)_41]
	fadd	s31, s31, s30	; sum, sum, MEM[(float *)_41]
; GuessSketchFlow/eval/problem5/code.c:9:     for (i = 0; i < size; i++)
	cmp	x2, x3	; ivtmp.14, _45
	bne	L3		;,
; GuessSketchFlow/eval/problem5/code.c:12:     avg = sum / size;
	scvtf	s0, w1	; _5, size
; GuessSketchFlow/eval/problem5/code.c:13:     msum = 0;
	movi	v29.2s, #0	; msum
; GuessSketchFlow/eval/problem5/code.c:12:     avg = sum / size;
	fdiv	s30, s31, s0	; avg, sum, _5
	.p2align 5,,15
L6:
; GuessSketchFlow/eval/problem5/code.c:16:         msum += fabs(numbers[i] - avg);
	ldr	s31, [x0], 4	; MEM[(float *)_36], MEM[(float *)_36]
; GuessSketchFlow/eval/problem5/code.c:16:         msum += fabs(numbers[i] - avg);
	fabd	s31, s31, s30	; _11, MEM[(float *)_36], avg
; GuessSketchFlow/eval/problem5/code.c:16:         msum += fabs(numbers[i] - avg);
	fadd	s29, s29, s31	; msum, msum, _11
; GuessSketchFlow/eval/problem5/code.c:15:     for (i = 0; i < size; i++)
	cmp	x0, x3	; ivtmp.8, _45
	bne	L6		;,
; GuessSketchFlow/eval/problem5/code.c:19: }
	fdiv	s0, s29, s0	;, msum, _5
	ret	
	.p2align 2,,3
L2:
; GuessSketchFlow/eval/problem5/code.c:12:     avg = sum / size;
	scvtf	s0, w1	; _5, size
; GuessSketchFlow/eval/problem5/code.c:13:     msum = 0;
	movi	v29.2s, #0	; msum
; GuessSketchFlow/eval/problem5/code.c:19: }
	fdiv	s0, s29, s0	;, msum, _5
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
