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
; GuessSketchFlow/eval/problem127/code.c:5:     if (lst_size == 0) return true;
	cmp	w1, 1	; lst_size,
	ble	L5		;,
	mov	x2, 1	; ivtmp.7,
	sub	x5, x0, #4	; _24, lst,
; GuessSketchFlow/eval/problem127/code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	sub	x6, x0, #8	; _25, lst,
	b	L4		;
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem127/code.c:7:     for (int i = 1; i < lst_size; i++) {
	add	x2, x2, 1	; ivtmp.7, ivtmp.7,
	cmp	w1, w2	; lst_size, ivtmp.7
	ble	L5		;,
L4:
; GuessSketchFlow/eval/problem127/code.c:8:         if (lst[i] < lst[i - 1]) return false;
	ldr	w3, [x0, x2, lsl 2]	;, MEM[(const int *)lst_14(D) + ivtmp.7_11 * 4]
; GuessSketchFlow/eval/problem127/code.c:8:         if (lst[i] < lst[i - 1]) return false;
	ldr	w4, [x5, x2, lsl 2]	;, MEM[(const int *)_24 + ivtmp.7_11 * 4]
; GuessSketchFlow/eval/problem127/code.c:8:         if (lst[i] < lst[i - 1]) return false;
	cmp	w3, w4	; _4, _7
	blt	L7		;,
; GuessSketchFlow/eval/problem127/code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	ccmp	x2, 1, 4, eq	; ivtmp.7,,,
	beq	L3		;,
; GuessSketchFlow/eval/problem127/code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	ldr	w4, [x6, x2, lsl 2]	;, MEM[(const int *)_25 + ivtmp.7_11 * 4]
	cmp	w3, w4	; _4, MEM[(const int *)_25 + ivtmp.7_11 * 4]
	bne	L3		;,
L7:
; GuessSketchFlow/eval/problem127/code.c:8:         if (lst[i] < lst[i - 1]) return false;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem127/code.c:12: }
	ret	
	.p2align 2,,3
L5:
; GuessSketchFlow/eval/problem127/code.c:5:     if (lst_size == 0) return true;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem127/code.c:12: }
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
