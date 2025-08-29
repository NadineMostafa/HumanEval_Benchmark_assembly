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
; GuessSketchFlow/eval/problem121/code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	cmp	w1, 1	; arr_size,
	ble	L2		;,
	mov	w8, w1	; ivtmp.24, arr_size
	add	x9, x0, 4	; _53, arr,
	.p2align 5,,15
L3:
	sub	w7, w8, #2	; _22, ivtmp.24,
	mov	x4, x0	; ivtmp.17, arr
	add	x7, x9, w7, uxtw 2	; _12, _53, _22,
; GuessSketchFlow/eval/problem121/code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	cmp	w8, 1	; ivtmp.24,
	ble	L22		;,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem121/code.c:7:             if (arr[j] > arr[j + 1]) {
	ldp	w6, w5, [x4]	; _4, _8,* ivtmp.17
; GuessSketchFlow/eval/problem121/code.c:7:             if (arr[j] > arr[j + 1]) {
	cmp	w6, w5	; _4, _8
	ble	L4		;,
; GuessSketchFlow/eval/problem121/code.c:9:                 arr[j] = arr[j + 1];
	stp	w5, w6, [x4]	; _8, _4,* ivtmp.17
L4:
; GuessSketchFlow/eval/problem121/code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	add	x4, x4, 4	; ivtmp.17, ivtmp.17,
	cmp	x7, x4	; _12, ivtmp.17
	bne	L5		;,
; GuessSketchFlow/eval/problem121/code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	sub	w8, w8, #1	; ivtmp.24, ivtmp.24,
	cmp	w8, 1	; ivtmp.24,
	bne	L3		;,
L2:
; GuessSketchFlow/eval/problem121/code.c:15:     for (int i = 0; i < k; i++) {
	cmp	w2, 0	; k,
	ble	L1		;,
	ubfiz	x4, x2, 2, 32	; _41, k,,
; GuessSketchFlow/eval/problem121/code.c:16:         out[i] = arr[arr_size - k + i];
	sub	w1, w1, w2	; _60, arr_size, k
	add	x2, x0, w1, sxtw 2	; _39, arr, _60,
	mov	x0, 0	; ivtmp.12,
	.p2align 5,,15
L11:
; GuessSketchFlow/eval/problem121/code.c:16:         out[i] = arr[arr_size - k + i];
	ldr	w1, [x2, x0]	;, MEM[(int *)_39 + ivtmp.12_23 * 1]
; GuessSketchFlow/eval/problem121/code.c:16:         out[i] = arr[arr_size - k + i];
	str	w1, [x3, x0]	; _20, MEM[(int *)out_32(D) + ivtmp.12_23 * 1]
; GuessSketchFlow/eval/problem121/code.c:15:     for (int i = 0; i < k; i++) {
	add	x0, x0, 4	; ivtmp.12, ivtmp.12,
	cmp	x0, x4	; ivtmp.12, _41
	bne	L11		;,
L1:
; GuessSketchFlow/eval/problem121/code.c:18: }
	ret	
	.p2align 2,,3
L22:
; GuessSketchFlow/eval/problem121/code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	sub	w8, w8, #1	; ivtmp.24, ivtmp.24,
	b	L3		;
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
