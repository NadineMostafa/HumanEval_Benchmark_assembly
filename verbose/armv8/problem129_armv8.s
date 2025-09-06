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
; GuessSketchFlow/eval/problem129/code.c:5:     if (arr_size == 0) return -32768;
	cmp	w1, 0	; arr_size,
	cbz	w1, L6	; arr_size,
; GuessSketchFlow/eval/problem129/code.c:7:     for (i = 0; i < arr_size; i++) {
	ble	L7		;,
; GuessSketchFlow/eval/problem129/code.c:6:     int sum = 0, prods = 1, i;
	mov	w3, 1	; prods,
; GuessSketchFlow/eval/problem129/code.c:6:     int sum = 0, prods = 1, i;
	mov	w4, 0	; sum,
	add	x1, x0, w1, uxtw 2	; _4, ivtmp.8, arr_size,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem129/code.c:8:         sum += abs(arr[i]);
	ldr	w2, [x0], 4	;, MEM[(int *)_19]
; GuessSketchFlow/eval/problem129/code.c:8:         sum += abs(arr[i]);
	cmp	w2, 0	; _37,
	csneg	w2, w2, w2, ge	; _38, _37, _37,
; GuessSketchFlow/eval/problem129/code.c:10:         if (arr[i] < 0) prods = -prods;
	csneg	w3, w3, w3, ge	; tmp121, prods, prods,
; GuessSketchFlow/eval/problem129/code.c:8:         sum += abs(arr[i]);
	add	w4, w4, w2	; sum, sum, _38
; GuessSketchFlow/eval/problem129/code.c:10:         if (arr[i] < 0) prods = -prods;
	csel	w3, w3, wzr, ne	; prods, tmp121,,
; GuessSketchFlow/eval/problem129/code.c:7:     for (i = 0; i < arr_size; i++) {
	cmp	x1, x0	; _4, ivtmp.8
	bne	L5		;,
; GuessSketchFlow/eval/problem129/code.c:12:     return sum * prods;
	mul	w0, w4, w3	; <retval>, sum, prods
; GuessSketchFlow/eval/problem129/code.c:13: }
	ret	
	.p2align 2,,3
L7:
; GuessSketchFlow/eval/problem129/code.c:7:     for (i = 0; i < arr_size; i++) {
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem129/code.c:13: }
	ret	
L6:
; GuessSketchFlow/eval/problem129/code.c:5:     if (arr_size == 0) return -32768;
	mov	w0, -32768	; <retval>,
; GuessSketchFlow/eval/problem129/code.c:13: }
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
