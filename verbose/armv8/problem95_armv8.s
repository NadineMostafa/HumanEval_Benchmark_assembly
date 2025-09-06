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
; GuessSketchFlow/eval/problem95/code.c:6:     for (int i = 0; i < size; ++i) {
	cmp	w1, 0	; size,
	ble	L8		;,
; GuessSketchFlow/eval/problem95/code.c:4:     int largest = 0, sum = 0, num, temp;
	mov	w5, 0	; largest,
	add	x1, x0, w1, uxtw 2	; _9, ivtmp.14, size,
	b	L6		;
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem95/code.c:6:     for (int i = 0; i < size; ++i) {
	add	x0, x0, 4	; ivtmp.14, ivtmp.14,
	cmp	x1, x0	; _9, ivtmp.14
	beq	L17		;,
L6:
; GuessSketchFlow/eval/problem95/code.c:7:         num = lst[i];
	ldr	w4, [x0]	;, MEM[(int *)_28]
; GuessSketchFlow/eval/problem95/code.c:8:         if (num > 1) {
	cmp	w4, 1	; num,
	ble	L3		;,
; GuessSketchFlow/eval/problem95/code.c:10:             for (int j = 2; j * j <= num; ++j) {
	cmp	w4, 3	; num,
	ble	L4		;,
; GuessSketchFlow/eval/problem95/code.c:10:             for (int j = 2; j * j <= num; ++j) {
	mov	w2, 2	; j,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem95/code.c:11:                 if (num % j == 0) {
	sdiv	w3, w4, w2	; tmp131, num, j
	msub	w3, w3, w2, w4	; _4, tmp131, j, num
; GuessSketchFlow/eval/problem95/code.c:11:                 if (num % j == 0) {
	cbz	w3, L3	; _4,
; GuessSketchFlow/eval/problem95/code.c:10:             for (int j = 2; j * j <= num; ++j) {
	add	w2, w2, 1	; j, j,
; GuessSketchFlow/eval/problem95/code.c:10:             for (int j = 2; j * j <= num; ++j) {
	mul	w3, w2, w2	; _5, j, j
; GuessSketchFlow/eval/problem95/code.c:10:             for (int j = 2; j * j <= num; ++j) {
	cmp	w3, w4	; _5, num
	ble	L5		;,
L4:
; GuessSketchFlow/eval/problem95/code.c:17:                 largest = num > largest ? num : largest;
	cmp	w5, w4	; largest, num
; GuessSketchFlow/eval/problem95/code.c:6:     for (int i = 0; i < size; ++i) {
	add	x0, x0, 4	; ivtmp.14, ivtmp.14,
; GuessSketchFlow/eval/problem95/code.c:17:                 largest = num > largest ? num : largest;
	csel	w5, w5, w4, ge	; largest, largest, num,
; GuessSketchFlow/eval/problem95/code.c:6:     for (int i = 0; i < size; ++i) {
	cmp	x1, x0	; _9, ivtmp.14
	bne	L6		;,
	.p2align 5,,15
L17:
; GuessSketchFlow/eval/problem95/code.c:4:     int largest = 0, sum = 0, num, temp;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem95/code.c:22:     while (largest > 0) {
	cbz	w5, L1	; largest,
; GuessSketchFlow/eval/problem95/code.c:23:         sum += largest % 10;
	mov	w3, 52429	; tmp143,
	movk	w3, 0xcccc, lsl 16	; tmp143,,
	.p2align 5,,15
L7:
	umull	x1, w5, w3	; tmp142, largest, tmp143
	lsr	x1, x1, 35	; tmp141, tmp142,
	add	w2, w1, w1, lsl 2	; tmp147, tmp141, tmp141,
	sub	w2, w5, w2, lsl 1	; _6, largest, tmp147,
; GuessSketchFlow/eval/problem95/code.c:24:         largest /= 10;
	mov	w5, w1	; largest, tmp141
; GuessSketchFlow/eval/problem95/code.c:23:         sum += largest % 10;
	add	w0, w0, w2	; <retval>, <retval>, _6
; GuessSketchFlow/eval/problem95/code.c:22:     while (largest > 0) {
	cbnz	w1, L7	; largest,
L1:
; GuessSketchFlow/eval/problem95/code.c:28: }
	ret	
L8:
; GuessSketchFlow/eval/problem95/code.c:4:     int largest = 0, sum = 0, num, temp;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem95/code.c:28: }
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
