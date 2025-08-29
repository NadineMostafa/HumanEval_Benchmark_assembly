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
LFB4:
; GuessSketchFlow/eval/problem109/code.c:6:     for (int i = 0; i < size; i++) {
	cmp	w1, 0	; size,
	ble	L7		;,
; GuessSketchFlow/eval/problem109/code.c:13:                 sum += w % 10;
	mov	w7, 52429	; tmp153,
	mov	x5, x0	; ivtmp.8, n
	add	x1, x0, w1, uxtw 2	; _14, ivtmp.8, size,
	movk	w7, 0xcccc, lsl 16	; tmp153,,
; GuessSketchFlow/eval/problem109/code.c:5:     int num = 0;
	mov	w0, 0	; <retval>,
	.p2align 5,,15
L6:
; GuessSketchFlow/eval/problem109/code.c:7:         if (n[i] > 0) {
	ldr	w3, [x5]	;, MEM[(int *)_19]
; GuessSketchFlow/eval/problem109/code.c:7:         if (n[i] > 0) {
	cmp	w3, 0	; _4,
	ble	L11		;,
L3:
; GuessSketchFlow/eval/problem109/code.c:17:             if (sum > 0) num += 1;
	add	w0, w0, 1	; <retval>, <retval>,
L4:
; GuessSketchFlow/eval/problem109/code.c:6:     for (int i = 0; i < size; i++) {
	add	x5, x5, 4	; ivtmp.8, ivtmp.8,
	cmp	x1, x5	; _14, ivtmp.8
	bne	L6		;,
; GuessSketchFlow/eval/problem109/code.c:21: }
	ret	
	.p2align 2,,3
L11:
; GuessSketchFlow/eval/problem109/code.c:12:             while (w >= 10) {
	cmn	w3, #9	; _4,
	bge	L4		;,
; GuessSketchFlow/eval/problem109/code.c:11:             int w = abs(n[i]);
	neg	w3, w3	; w, _4
; GuessSketchFlow/eval/problem109/code.c:10:             int sum = 0;
	mov	w6, 0	; sum,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem109/code.c:13:                 sum += w % 10;
	umull	x2, w3, w7	; tmp119, w, tmp153
; GuessSketchFlow/eval/problem109/code.c:12:             while (w >= 10) {
	cmp	w3, 99	; w,
; GuessSketchFlow/eval/problem109/code.c:13:                 sum += w % 10;
	lsr	x2, x2, 35	; tmp118, tmp119,
	add	w4, w2, w2, lsl 2	; tmp124, tmp118, tmp118,
	sub	w4, w3, w4, lsl 1	; _5, w, tmp124,
; GuessSketchFlow/eval/problem109/code.c:14:                 w = w / 10;
	mov	w3, w2	; w, tmp118
; GuessSketchFlow/eval/problem109/code.c:13:                 sum += w % 10;
	add	w6, w6, w4	; sum, sum, _5
; GuessSketchFlow/eval/problem109/code.c:12:             while (w >= 10) {
	bgt	L5		;,
; GuessSketchFlow/eval/problem109/code.c:17:             if (sum > 0) num += 1;
	cmp	w6, w2	; sum, w
	bgt	L3		;,
	b	L4		;
L7:
; GuessSketchFlow/eval/problem109/code.c:5:     int num = 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem109/code.c:21: }
	ret	
LFE4:
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
	.quad	LFB4-.
	.set L$set$2,LFE4-LFB4
	.quad L$set$2
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
