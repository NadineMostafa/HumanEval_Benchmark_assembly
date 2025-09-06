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
; GuessSketchFlow/eval/problem48/code.c:6:     for (int i = 0; i < size; i++) {
	cmp	w1, 0	; size,
	ble	L2		;,
; GuessSketchFlow/eval/problem48/code.c:7:         for (int j = i + 1; j < size; j++) {
	cmp	w1, 1	; size,
	beq	L3		;,
	mov	x3, 1	; ivtmp.17,
	sub	x4, x0, #4	; _48, l,
	.p2align 5,,15
L7:
	mov	x2, x3	; ivtmp.9, ivtmp.17
	.p2align 5,,15
L6:
; GuessSketchFlow/eval/problem48/code.c:8:             if (l[i] > l[j]) {
	ldr	s31, [x4, x3, lsl 2]	;, MEM[(float *)_48 + ivtmp.17_52 * 4]
; GuessSketchFlow/eval/problem48/code.c:8:             if (l[i] > l[j]) {
	ldr	s30, [x0, x2, lsl 2]	;, MEM[(float *)l_32(D) + ivtmp.9_47 * 4]
; GuessSketchFlow/eval/problem48/code.c:8:             if (l[i] > l[j]) {
	fcmpe	s31, s30	;,
	bgt	L9		;,
L4:
; GuessSketchFlow/eval/problem48/code.c:7:         for (int j = i + 1; j < size; j++) {
	add	x2, x2, 1	; ivtmp.9, ivtmp.9,
	cmp	w1, w2	; size, ivtmp.9
	bgt	L6		;,
	add	x3, x3, 1	; ivtmp.17, ivtmp.17,
	cmp	w1, w3	; size, ivtmp.17
	bgt	L7		;,
; GuessSketchFlow/eval/problem48/code.c:15:     if (size % 2 == 1) return l[size / 2];
	tbnz	x1, 0, L3	; size,,
L2:
; GuessSketchFlow/eval/problem48/code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	add	w1, w1, w1, lsr 31	; tmp133, size, size,
; GuessSketchFlow/eval/problem48/code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	fmov	s0, 5.0e-1	;,
; GuessSketchFlow/eval/problem48/code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	asr	w1, w1, 1	; _14, tmp133,
	sxtw	x1, w1	; _15, _14
; GuessSketchFlow/eval/problem48/code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	sub	x2, x1, #1	; tmp136, _15,
; GuessSketchFlow/eval/problem48/code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	ldr	s29, [x0, x1, lsl 2]	;, *_17
	ldr	s1, [x0, x2, lsl 2]	;, *_20
	fadd	s29, s1, s29	;,,
; GuessSketchFlow/eval/problem48/code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	fmul	s0, s29, s0	;,,
; GuessSketchFlow/eval/problem48/code.c:17: }
	ret	
	.p2align 2,,3
L9:
; GuessSketchFlow/eval/problem48/code.c:10:                 l[i] = l[j];
	str	s30, [x4, x3, lsl 2]	;, MEM[(float *)_48 + ivtmp.17_52 * 4]
; GuessSketchFlow/eval/problem48/code.c:11:                 l[j] = temp;
	str	s31, [x0, x2, lsl 2]	;, MEM[(float *)l_32(D) + ivtmp.9_47 * 4]
	b	L4		;
L3:
; GuessSketchFlow/eval/problem48/code.c:15:     if (size % 2 == 1) return l[size / 2];
	asr	w1, w1, 1	; _11, size,
	ldr	s0, [x0, x1, lsl 2]	;, *_13
; GuessSketchFlow/eval/problem48/code.c:17: }
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
