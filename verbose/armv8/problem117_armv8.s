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
; GuessSketchFlow/eval/problem117/code.c:4: void func0(int *arr, int size) {
	mov	x9, x0	; arr, arr
; GuessSketchFlow/eval/problem117/code.c:6:     for (int i = 0; i < size; i++) {
	cmp	w1, 0	; size,
	ble	L1		;,
; GuessSketchFlow/eval/problem117/code.c:7:         for (int j = i + 1; j < size; j++) {
	mov	x8, 1	; ivtmp.20,
	sub	x10, x0, #4	; _9, arr,
	cmp	w1, 1	; size,
	beq	L1		;,
	.p2align 5,,15
L3:
	mov	x5, x8	; ivtmp.11, ivtmp.20
	.p2align 5,,15
L13:
; GuessSketchFlow/eval/problem117/code.c:9:             x = arr[i];
	ldr	w6, [x10, x8, lsl 2]	;, MEM[(int *)_9 + ivtmp.20_48 * 4]
; GuessSketchFlow/eval/problem117/code.c:10:             y = arr[j];
	ldr	w7, [x9, x5, lsl 2]	;, MEM[(int *)arr_21(D) + ivtmp.11_17 * 4]
; GuessSketchFlow/eval/problem117/code.c:11:             while (x > 0) {
	cmp	w6, 0	; x,
	ble	L4		;,
; GuessSketchFlow/eval/problem117/code.c:9:             x = arr[i];
	mov	w0, w6	; count_ones, x
; GuessSketchFlow/eval/problem117/code.c:8:             count_ones = 0;
	mov	w3, 0	; count_ones,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem117/code.c:12:                 count_ones += x & 1;
	and	w2, w0, 1	; _7, count_ones,
; GuessSketchFlow/eval/problem117/code.c:13:                 x >>= 1;
	asr	w0, w0, 1	; count_ones, count_ones,
; GuessSketchFlow/eval/problem117/code.c:12:                 count_ones += x & 1;
	add	w3, w3, w2	; count_ones, count_ones, _7
; GuessSketchFlow/eval/problem117/code.c:11:             while (x > 0) {
	cbnz	w0, L5	; count_ones,
; GuessSketchFlow/eval/problem117/code.c:17:             while (y > 0) {
	cmp	w7, 0	; y,
	ble	L9		;,
L7:
; GuessSketchFlow/eval/problem117/code.c:10:             y = arr[j];
	mov	w2, w7	; y, y
; GuessSketchFlow/eval/problem117/code.c:16:             count_ones = 0;
	mov	w0, 0	; count_ones,
	.p2align 5,,15
L10:
; GuessSketchFlow/eval/problem117/code.c:18:                 count_ones += y & 1;
	and	w4, w2, 1	; _8, y,
; GuessSketchFlow/eval/problem117/code.c:19:                 y >>= 1;
	asr	w2, w2, 1	; y, y,
; GuessSketchFlow/eval/problem117/code.c:18:                 count_ones += y & 1;
	add	w0, w0, w4	; count_ones, count_ones, _8
; GuessSketchFlow/eval/problem117/code.c:17:             while (y > 0) {
	cbnz	w2, L10	; y,
L9:
; GuessSketchFlow/eval/problem117/code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	cmp	w3, w0	; count_ones, count_ones
	bgt	L11		;,
; GuessSketchFlow/eval/problem117/code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	cset	w0, eq	; prephitmp_32,
L8:
; GuessSketchFlow/eval/problem117/code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	cmp	w0, 0	; prephitmp_32,
	ccmp	w6, w7, 4, ne	; x, y,,
	bgt	L11		;,
L12:
; GuessSketchFlow/eval/problem117/code.c:7:         for (int j = i + 1; j < size; j++) {
	add	x5, x5, 1	; ivtmp.11, ivtmp.11,
	cmp	w1, w5	; size, ivtmp.11
	bgt	L13		;,
	add	x8, x8, 1	; ivtmp.20, ivtmp.20,
	cmp	w1, w8	; size, ivtmp.20
	bgt	L3		;,
L1:
; GuessSketchFlow/eval/problem117/code.c:29: }
	ret	
	.p2align 2,,3
L11:
; GuessSketchFlow/eval/problem117/code.c:24:                 arr[i] = arr[j];
	str	w7, [x10, x8, lsl 2]	; y, MEM[(int *)_9 + ivtmp.20_48 * 4]
; GuessSketchFlow/eval/problem117/code.c:25:                 arr[j] = temp;
	str	w6, [x9, x5, lsl 2]	; x, MEM[(int *)arr_21(D) + ivtmp.11_17 * 4]
	b	L12		;
	.p2align 2,,3
L4:
; GuessSketchFlow/eval/problem117/code.c:8:             count_ones = 0;
	mov	w3, 0	; count_ones,
; GuessSketchFlow/eval/problem117/code.c:17:             while (y > 0) {
	mov	w0, 1	; prephitmp_32,
	cmp	w7, 0	; y,
	bgt	L7		;,
	b	L8		;
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
