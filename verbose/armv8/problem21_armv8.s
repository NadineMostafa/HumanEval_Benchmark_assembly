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
LFB20:
; GuessSketchFlow/eval/problem21/code.c:9:     out[0] = numbers[0];
	ldr	s31, [x0]	;, *numbers_25(D)
; GuessSketchFlow/eval/problem21/code.c:9:     out[0] = numbers[0];
	str	s31, [x2]	;, *out_26(D)
; GuessSketchFlow/eval/problem21/code.c:10:     out[1] = numbers[1];
	ldr	s30, [x0, 4]	;, MEM[(float *)numbers_25(D) + 4B]
	str	s30, [x2, 4]	;, MEM[(float *)out_26(D) + 4B]
; GuessSketchFlow/eval/problem21/code.c:12:     for (i = 0; i < size; i++) {
	cmp	w1, 0	; size,
	ble	L2		;,
; GuessSketchFlow/eval/problem21/code.c:13:         for (j = i + 1; j < size; j++) {
	cmp	w1, 1	; size,
	beq	L7		;,
; GuessSketchFlow/eval/problem21/code.c:6:     float min_diff = FLT_MAX;
	mov	w3, 2139095039	; tmp117,
; GuessSketchFlow/eval/problem21/code.c:13:         for (j = i + 1; j < size; j++) {
	mov	x4, 1	; ivtmp.17,
	sub	x5, x0, #4	; _53, numbers,
; GuessSketchFlow/eval/problem21/code.c:6:     float min_diff = FLT_MAX;
	fmov	s29, w3	; min_diff, tmp117
	.p2align 5,,15
L3:
	mov	x3, x4	; ivtmp.9, ivtmp.17
	.p2align 5,,15
L6:
; GuessSketchFlow/eval/problem21/code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	ldr	s30, [x5, x4, lsl 2]	; _6, MEM[(float *)_53 + ivtmp.17_46 * 4]
; GuessSketchFlow/eval/problem21/code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	ldr	s31, [x0, x3, lsl 2]	; MEM[(float *)numbers_25(D) + ivtmp.9_22 * 4], MEM[(float *)numbers_25(D) + ivtmp.9_22 * 4]
; GuessSketchFlow/eval/problem21/code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	fabd	s31, s30, s31	; diff, _6, MEM[(float *)numbers_25(D) + ivtmp.9_22 * 4]
; GuessSketchFlow/eval/problem21/code.c:15:             if (diff < min_diff) {
	fcmpe	s31, s29	; diff, min_diff
	bmi	L11		;,
L4:
; GuessSketchFlow/eval/problem21/code.c:13:         for (j = i + 1; j < size; j++) {
	add	x3, x3, 1	; ivtmp.9, ivtmp.9,
	cmp	w1, w3	; size, ivtmp.9
	bgt	L6		;,
	add	x4, x4, 1	; ivtmp.17, ivtmp.17,
	cmp	w1, w4	; size, ivtmp.17
	bgt	L3		;,
L7:
; GuessSketchFlow/eval/problem21/code.c:23:     if (out[0] > out[1]) {
	ldp	s31, s30, [x2]	;,,* out
L2:
; GuessSketchFlow/eval/problem21/code.c:23:     if (out[0] > out[1]) {
	fcmpe	s31, s30	;,
	bgt	L12		;,
; GuessSketchFlow/eval/problem21/code.c:28: }
	ret	
	.p2align 2,,3
L11:
; GuessSketchFlow/eval/problem21/code.c:17:                 out[0] = numbers[i];
	str	s30, [x2]	; _6, *out_26(D)
; GuessSketchFlow/eval/problem21/code.c:16:                 min_diff = diff;
	fmov	s29, s31	; min_diff, diff
; GuessSketchFlow/eval/problem21/code.c:18:                 out[1] = numbers[j];
	ldr	s30, [x0, x3, lsl 2]	; _12, MEM[(float *)numbers_25(D) + ivtmp.9_22 * 4]
; GuessSketchFlow/eval/problem21/code.c:18:                 out[1] = numbers[j];
	str	s30, [x2, 4]	; _12, MEM[(float *)out_26(D) + 4B]
	b	L4		;
L12:
; GuessSketchFlow/eval/problem21/code.c:25:         out[0] = out[1];
	stp	s30, s31, [x2]	;,,* out
; GuessSketchFlow/eval/problem21/code.c:28: }
	ret	
LFE20:
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
	.quad	LFB20-.
	.set L$set$2,LFE20-LFB20
	.quad L$set$2
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
