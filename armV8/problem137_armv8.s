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
; GuessSketchFlow/eval/problem137/code.c:6:     for (int i = 0; i < size; i++) {
	cmp	w1, 0	; size,
	ble	L6		;,
; GuessSketchFlow/eval/problem137/code.c:5:     int minpos = 0;
	mov	w4, 0	; minpos,
; GuessSketchFlow/eval/problem137/code.c:4:     int maxneg = 0;
	mov	w5, 0	; maxneg,
	add	x1, x0, w1, uxtw 2	; _32, ivtmp.10, size,
	b	L5		;
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem137/code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	cbz	w3, L4	; _4,
; GuessSketchFlow/eval/problem137/code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	cbz	w4, L8	; minpos,
; GuessSketchFlow/eval/problem137/code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	cmp	w4, w3	; minpos, _4
	csel	w4, w4, w3, le	; minpos, minpos, _4,
L4:
; GuessSketchFlow/eval/problem137/code.c:6:     for (int i = 0; i < size; i++) {
	add	x0, x0, 4	; ivtmp.10, ivtmp.10,
	cmp	x0, x1	; ivtmp.10, _32
	beq	L11		;,
L5:
; GuessSketchFlow/eval/problem137/code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	ldr	w3, [x0]	;, MEM[(const int *)_15]
; GuessSketchFlow/eval/problem137/code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	tbz	w3, #31, L3	; _4,
; GuessSketchFlow/eval/problem137/code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	cbz	w5, L7	; maxneg,
; GuessSketchFlow/eval/problem137/code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	cmp	w5, w3	; maxneg, _4
; GuessSketchFlow/eval/problem137/code.c:6:     for (int i = 0; i < size; i++) {
	add	x0, x0, 4	; ivtmp.10, ivtmp.10,
; GuessSketchFlow/eval/problem137/code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	csel	w5, w5, w3, ge	; maxneg, maxneg, _4,
; GuessSketchFlow/eval/problem137/code.c:6:     for (int i = 0; i < size; i++) {
	cmp	x0, x1	; ivtmp.10, _32
	bne	L5		;,
L11:
	fmov	s31, w5	; vect_maxneg_23.4, maxneg
	ins	v31.s[1], w4	; vect_maxneg_23.4, minpos
; GuessSketchFlow/eval/problem137/code.c:10:     result[0] = maxneg;
	str	d31, [x2]	; vect_maxneg_23.4, MEM <vector(2) int> [(int *)result_14(D)]
; GuessSketchFlow/eval/problem137/code.c:12: }
	ret	
	.p2align 2,,3
L8:
; GuessSketchFlow/eval/problem137/code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	mov	w4, w3	; minpos, _4
	b	L4		;
	.p2align 2,,3
L7:
; GuessSketchFlow/eval/problem137/code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	mov	w5, w3	; maxneg, _4
	b	L4		;
	.p2align 2,,3
L6:
; GuessSketchFlow/eval/problem137/code.c:6:     for (int i = 0; i < size; i++) {
	movi	v31.2s, 0	; vect_maxneg_23.4
; GuessSketchFlow/eval/problem137/code.c:10:     result[0] = maxneg;
	str	d31, [x2]	; vect_maxneg_23.4, MEM <vector(2) int> [(int *)result_14(D)]
; GuessSketchFlow/eval/problem137/code.c:12: }
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
