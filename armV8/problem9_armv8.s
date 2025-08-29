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
; GuessSketchFlow/eval/problem9/code.c:5:     for (int i = 0; i < size; i++) {
	cmp	w1, 0	; size,
	ble	L4		;,
; GuessSketchFlow/eval/problem9/code.c:4:     int sum = 0, product = 1;
	movi	v31.2d, #0	; sum
; GuessSketchFlow/eval/problem9/code.c:4:     int sum = 0, product = 1;
	mov	w4, 1	; product,
	add	x1, x0, w1, uxtw 2	; _30, ivtmp.10, size,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem9/code.c:6:         sum += numbers[i];
	ldr	w3, [x0], 4	;, MEM[(int *)_11]
; GuessSketchFlow/eval/problem9/code.c:6:         sum += numbers[i];
	fmov	s30, w3	; _4, _4
; GuessSketchFlow/eval/problem9/code.c:7:         product *= numbers[i];
	mul	w4, w4, w3	; product, product, _4
; GuessSketchFlow/eval/problem9/code.c:6:         sum += numbers[i];
	add	v31.2s, v31.2s, v30.2s	; sum, sum, _4
; GuessSketchFlow/eval/problem9/code.c:5:     for (int i = 0; i < size; i++) {
	cmp	x0, x1	; ivtmp.10, _30
	bne	L3		;,
	ins	v31.s[1], w4	; vect_sum_21.4, product
; GuessSketchFlow/eval/problem9/code.c:9:     result[0] = sum;
	str	d31, [x2]	; vect_sum_21.4, MEM <vector(2) int> [(int *)result_10(D)]
; GuessSketchFlow/eval/problem9/code.c:11: }
	ret	
	.p2align 2,,3
L4:
; GuessSketchFlow/eval/problem9/code.c:5:     for (int i = 0; i < size; i++) {
	adrp	x0, lC0@PAGE	; tmp122,
	ldr	d31, [x0, #lC0@PAGEOFF]	; vect_sum_21.4,
; GuessSketchFlow/eval/problem9/code.c:9:     result[0] = sum;
	str	d31, [x2]	; vect_sum_21.4, MEM <vector(2) int> [(int *)result_10(D)]
; GuessSketchFlow/eval/problem9/code.c:11: }
	ret	
LFE1:
	.const
	.align	3
lC0:
	.word	0
	.word	1
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
