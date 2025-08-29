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
; GuessSketchFlow/eval/problem122/code.c:3: int func0(int* lst, int size) {
	mov	x5, x0	; lst, lst
; GuessSketchFlow/eval/problem122/code.c:5:     for (int i = 0; i * 2 < size; i++)
	cmp	w1, 0	; size,
	ble	L5		;,
	mov	x4, 0	; ivtmp.7,
; GuessSketchFlow/eval/problem122/code.c:4:     int sum = 0;
	mov	w0, 0	; <retval>,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem122/code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	ldr	w2, [x5, x4, lsl 2]	;, MEM[(int *)lst_12(D) + ivtmp.7_14 * 4]
; GuessSketchFlow/eval/problem122/code.c:5:     for (int i = 0; i * 2 < size; i++)
	add	x4, x4, 2	; ivtmp.7, ivtmp.7,
; GuessSketchFlow/eval/problem122/code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	cmp	w2, 0	; _27,
	and	w3, w2, 1	; tmp110, _27,
	csneg	w3, w3, w3, ge	; _28, tmp110, tmp110,
; GuessSketchFlow/eval/problem122/code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	cmp	w3, 1	; _28,
	add	w2, w0, w2	; tmp112, <retval>, _27
	csel	w0, w2, w0, eq	; <retval>, tmp112, <retval>,
; GuessSketchFlow/eval/problem122/code.c:5:     for (int i = 0; i * 2 < size; i++)
	cmp	w1, w4	; size, ivtmp.7
	bgt	L4		;,
; GuessSketchFlow/eval/problem122/code.c:8: }
	ret	
	.p2align 2,,3
L5:
; GuessSketchFlow/eval/problem122/code.c:4:     int sum = 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem122/code.c:8: }
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
