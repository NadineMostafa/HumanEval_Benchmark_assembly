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
; GuessSketchFlow/eval/problem67/code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	ldrsb	w1, [x0]	; _15, *s_10(D)
; GuessSketchFlow/eval/problem67/code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	cbz	w1, L5	; _15,
	add	x3, x0, 1	; ivtmp.8, s,
; GuessSketchFlow/eval/problem67/code.c:5:     int sum = 0;
	mov	w0, 0	; <retval>,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem67/code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	sub	w2, w1, #65	; tmp111, _15,
; GuessSketchFlow/eval/problem67/code.c:8:             sum += s[i];
	add	w1, w0, w1	; tmp114, <retval>, _15
; GuessSketchFlow/eval/problem67/code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	and	w2, w2, 255	; tmp112, tmp111
; GuessSketchFlow/eval/problem67/code.c:8:             sum += s[i];
	cmp	w2, 26	; tmp112,
	csel	w0, w1, w0, cc	; <retval>, tmp114, <retval>,
; GuessSketchFlow/eval/problem67/code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	ldrsb	w1, [x3], 1	; _15, MEM[(const char *)_1 + -1B]
; GuessSketchFlow/eval/problem67/code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	cbnz	w1, L4	; _15,
; GuessSketchFlow/eval/problem67/code.c:10: }
	ret	
	.p2align 2,,3
L5:
; GuessSketchFlow/eval/problem67/code.c:5:     int sum = 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem67/code.c:10: }
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
