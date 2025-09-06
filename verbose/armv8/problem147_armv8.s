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
; GuessSketchFlow/eval/problem147/code.c:6:     for (int i = 0; i < size; i++) {
	cmp	w1, 0	; size,
	ble	L6		;,
; GuessSketchFlow/eval/problem147/code.c:12:                 n /= 10;
	mov	w6, 52429	; tmp144,
	mov	x4, x0	; ivtmp.8, nums
	add	x1, x0, w1, uxtw 2	; _15, ivtmp.8, size,
	movk	w6, 0xcccc, lsl 16	; tmp144,,
; GuessSketchFlow/eval/problem147/code.c:5:     int num = 0;
	mov	w0, 0	; <retval>,
	b	L5		;
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem147/code.c:6:     for (int i = 0; i < size; i++) {
	add	x4, x4, 4	; ivtmp.8, ivtmp.8,
	cmp	x1, x4	; _15, ivtmp.8
	beq	L1		;,
L5:
; GuessSketchFlow/eval/problem147/code.c:7:         if (nums[i] > 10) {
	ldr	w5, [x4]	;, MEM[(int *)_28]
; GuessSketchFlow/eval/problem147/code.c:7:         if (nums[i] > 10) {
	cmp	w5, 10	; _4,
	ble	L3		;,
; GuessSketchFlow/eval/problem147/code.c:10:             int n = nums[i];
	mov	w2, w5	; n, _4
	.p2align 5,,15
L4:
	mov	w3, w2	; n, n
; GuessSketchFlow/eval/problem147/code.c:12:                 n /= 10;
	umull	x2, w2, w6	; tmp119, n, tmp144
	lsr	x2, x2, 35	; n, tmp119,
; GuessSketchFlow/eval/problem147/code.c:11:             while (n >= 10) {
	cmp	w3, 99	; n,
	bgt	L4		;,
; GuessSketchFlow/eval/problem147/code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	tst	x2, 1	; n,
	and	w5, w5, 1	; _6, _4,
; GuessSketchFlow/eval/problem147/code.c:6:     for (int i = 0; i < size; i++) {
	add	x4, x4, 4	; ivtmp.8, ivtmp.8,
; GuessSketchFlow/eval/problem147/code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	add	w5, w0, w5	; tmp149, <retval>, _6
	csel	w0, w0, w5, eq	; <retval>, <retval>, tmp149,
; GuessSketchFlow/eval/problem147/code.c:6:     for (int i = 0; i < size; i++) {
	cmp	x1, x4	; _15, ivtmp.8
	bne	L5		;,
L1:
; GuessSketchFlow/eval/problem147/code.c:21: }
	ret	
L6:
; GuessSketchFlow/eval/problem147/code.c:5:     int num = 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem147/code.c:21: }
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
