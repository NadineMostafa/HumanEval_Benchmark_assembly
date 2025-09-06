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
; GuessSketchFlow/eval/problem71/code.c:5:     for (int i = 0; i < size - 1; i++) {
	sub	w8, w1, #1	; _67, size,
; GuessSketchFlow/eval/problem71/code.c:5:     for (int i = 0; i < size - 1; i++) {
	mov	x6, x0	; ivtmp.44, lst
	mov	x10, 0	; ivtmp.41,
; GuessSketchFlow/eval/problem71/code.c:5:     for (int i = 0; i < size - 1; i++) {
	mov	w9, 0	; i,
	add	x11, x0, 4	; _54, lst,
; GuessSketchFlow/eval/problem71/code.c:5:     for (int i = 0; i < size - 1; i++) {
	cmp	w8, 0	; _67,
	ble	L19		;,
	.p2align 5,,15
L6:
; GuessSketchFlow/eval/problem71/code.c:6:         for (int j = i + 1; j < size; j++) {
	add	w9, w9, 1	; i, i,
; GuessSketchFlow/eval/problem71/code.c:6:         for (int j = i + 1; j < size; j++) {
	cmp	w1, w9	; size, i
	ble	L9		;,
	sub	w7, w8, w9	; _98, _67, i
	mov	x3, x6	; ivtmp.37, ivtmp.44
	add	x7, x7, x10	; _99, _98, ivtmp.41
	add	x7, x11, x7, lsl 2	; _103, _54, _99,
	.p2align 5,,15
L8:
; GuessSketchFlow/eval/problem71/code.c:7:             if (lst[i] > lst[j]) {
	ldr	w5, [x3, 4]	;, MEM[(int *)_91 + 4B]
; GuessSketchFlow/eval/problem71/code.c:7:             if (lst[i] > lst[j]) {
	ldr	w4, [x6]	;, MEM[(int *)_113]
; GuessSketchFlow/eval/problem71/code.c:7:             if (lst[i] > lst[j]) {
	cmp	w4, w5	; _4, _8
	ble	L7		;,
; GuessSketchFlow/eval/problem71/code.c:9:                 lst[i] = lst[j];
	str	w5, [x6]	; _8, MEM[(int *)_113]
; GuessSketchFlow/eval/problem71/code.c:10:                 lst[j] = temp;
	str	w4, [x3, 4]	; _4, MEM[(int *)_91 + 4B]
L7:
; GuessSketchFlow/eval/problem71/code.c:6:         for (int j = i + 1; j < size; j++) {
	add	x3, x3, 4	; ivtmp.37, ivtmp.37,
	cmp	x3, x7	; ivtmp.37, _103
	bne	L8		;,
L9:
; GuessSketchFlow/eval/problem71/code.c:5:     for (int i = 0; i < size - 1; i++) {
	add	x10, x10, 1	; ivtmp.41, ivtmp.41,
	add	x6, x6, 4	; ivtmp.44, ivtmp.44,
	cmp	w9, w8	; i, _67
	bne	L6		;,
L3:
	ubfiz	x4, x1, 2, 32	; _26, size,,
	sxtw	x3, w8	; ivtmp.19, _67
	sub	x4, x4, x3, lsl 2	; _61, _26, ivtmp.19,
; GuessSketchFlow/eval/problem71/code.c:6:         for (int j = i + 1; j < size; j++) {
	mov	x1, 0	; ivtmp.13,
	sub	x4, x4, #4	; _93, _61,
	add	x4, x0, x4	; _63, lst, _93
	b	L12		;
	.p2align 2,,3
L11:
; GuessSketchFlow/eval/problem71/code.c:23:             out[index++] = lst[r--];
	ldr	w5, [x4, x3, lsl 2]	;, MEM[(int *)_63 + ivtmp.19_42 * 4]
; GuessSketchFlow/eval/problem71/code.c:18:     while (l <= r) {
	add	x1, x1, 1	; ivtmp.13, ivtmp.13,
	sub	x3, x3, #1	; ivtmp.19, ivtmp.19,
	add	x2, x2, 8	; ivtmp.21, ivtmp.21,
; GuessSketchFlow/eval/problem71/code.c:23:             out[index++] = lst[r--];
	str	w5, [x2, -4]	; _33, MEM[(int *)_35 + 4B]
; GuessSketchFlow/eval/problem71/code.c:18:     while (l <= r) {
	cmp	w1, w3	; ivtmp.13, ivtmp.19
	bgt	L1		;,
L12:
; GuessSketchFlow/eval/problem71/code.c:20:             out[index++] = lst[l++];
	ldr	w5, [x0, x1, lsl 2]	;, MEM[(int *)lst_46(D) + ivtmp.13_16 * 4]
; GuessSketchFlow/eval/problem71/code.c:20:             out[index++] = lst[l++];
	str	w5, [x2]	; pretmp_69,* ivtmp.21
; GuessSketchFlow/eval/problem71/code.c:19:         if (l == r) {
	cmp	w1, w3	; ivtmp.13, ivtmp.19
	bne	L11		;,
L1:
; GuessSketchFlow/eval/problem71/code.c:26: }
	ret	
L19:
; GuessSketchFlow/eval/problem71/code.c:18:     while (l <= r) {
	beq	L3		;,
; GuessSketchFlow/eval/problem71/code.c:26: }
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
