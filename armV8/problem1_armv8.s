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
LFB23:
; GuessSketchFlow/eval/problem1/code.c:7:     for (i = 0; i < size; i++) {
	cmp	w1, 0	; size,
	ble	L6		;,
	sub	w5, w1, #1	; _45, size,
	mov	x4, 0	; ivtmp.15,
	sub	w1, w1, #2	; _23, size,
	add	x6, x0, 4	; _22, ivtmp.18,
; GuessSketchFlow/eval/problem1/code.c:8:         for (j = i + 1; j < size; j++) {
	cmp	x4, x5	; ivtmp.15, _45
	beq	L6		;,
L10:
; GuessSketchFlow/eval/problem1/code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	ldr	s31, [x0]	;, MEM[(float *)_48]
	sub	w3, w1, w4	; _32, _23, ivtmp.15
	mov	x2, x0	; ivtmp.10, ivtmp.18
	add	x3, x3, x4	; _33, _32, ivtmp.15
	add	x3, x6, x3, lsl 2	; _37, _22, _33,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem1/code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	ldr	s30, [x2, 4]	;, MEM[(float *)_29 + 4B]
; GuessSketchFlow/eval/problem1/code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fabd	s30, s31, s30	;,,
; GuessSketchFlow/eval/problem1/code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fcmpe	s30, s0	;,
	bmi	L7		;,
; GuessSketchFlow/eval/problem1/code.c:8:         for (j = i + 1; j < size; j++) {
	add	x2, x2, 4	; ivtmp.10, ivtmp.10,
	cmp	x2, x3	; ivtmp.10, _37
	bne	L3		;,
	add	x4, x4, 1	; ivtmp.15, ivtmp.15,
	add	x0, x0, 4	; ivtmp.18, ivtmp.18,
	cmp	x4, x5	; ivtmp.15, _45
	bne	L10		;,
L6:
; GuessSketchFlow/eval/problem1/code.c:14:     return 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem1/code.c:15: }
	ret	
	.p2align 2,,3
L7:
; GuessSketchFlow/eval/problem1/code.c:10:                 return 1;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem1/code.c:15: }
	ret	
LFE23:
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
	.quad	LFB23-.
	.set L$set$2,LFE23-LFB23
	.quad L$set$2
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
