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
; GuessSketchFlow/eval/problem69/code.c:8:     for (int i = 0; i < length; ++i) {
	cmp	w1, 0	; length,
	ble	L6		;,
	sxtw	x1, w1	; _26, length
	mov	x3, 0	; ivtmp.6,
; GuessSketchFlow/eval/problem69/code.c:6:     int index = -1;
	mov	w5, -1	; i,
; GuessSketchFlow/eval/problem69/code.c:5:     int smallestEven = INT_MAX;
	mov	w6, 2147483647	; smallestEven,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem69/code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	ldr	w4, [x0, x3, lsl 2]	;, MEM[(int *)arr_17(D) + ivtmp.6_28 * 4]
; GuessSketchFlow/eval/problem69/code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	tbnz	x4, 0, L3	; _41,,
; GuessSketchFlow/eval/problem69/code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	cmp	w6, w4	; smallestEven, _41
	ccmn	w5, #1, 4, le	; i,,,
	cset	w7, eq	; tmp118,
; GuessSketchFlow/eval/problem69/code.c:10:             smallestEven = arr[i];
	cmp	w7, 0	; tmp118,
	csel	w5, w5, w3, eq	; i, i, ivtmp.6,
	csel	w6, w6, w4, eq	; smallestEven, smallestEven, _41,
L3:
; GuessSketchFlow/eval/problem69/code.c:8:     for (int i = 0; i < length; ++i) {
	add	x3, x3, 1	; ivtmp.6, ivtmp.6,
	cmp	x1, x3	; _26, ivtmp.6
	bne	L4		;,
; GuessSketchFlow/eval/problem69/code.c:15:     if (index == -1) {
	cmn	w5, #1	; i,
	beq	L6		;,
; GuessSketchFlow/eval/problem69/code.c:21:     return output;
	mov	x0, x2	; <retval>, output
; GuessSketchFlow/eval/problem69/code.c:19:     output[0] = smallestEven;
	stp	w6, w5, [x2]	; smallestEven, i,* output
; GuessSketchFlow/eval/problem69/code.c:22: }
	ret	
	.p2align 2,,3
L6:
; GuessSketchFlow/eval/problem69/code.c:16:         return NULL;
	mov	x0, 0	; <retval>,
; GuessSketchFlow/eval/problem69/code.c:22: }
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
