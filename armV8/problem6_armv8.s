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
; GuessSketchFlow/eval/problem6/code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	cmp	w1, 0	; size,
	ble	L2		;,
	mov	x5, x0	; numbers, numbers
; GuessSketchFlow/eval/problem6/code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	lsl	w0, w1, 1	; _1, size,
; GuessSketchFlow/eval/problem6/code.c:4: int *func0(const int numbers[], int size, int delimiter, int *out_size) {
	stp	x29, x30, [sp, -32]!	;,,,
LCFI0:
; GuessSketchFlow/eval/problem6/code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	sub	w0, w0, #1	; iftmp.0_21, _1,
; GuessSketchFlow/eval/problem6/code.c:4: int *func0(const int numbers[], int size, int delimiter, int *out_size) {
	mov	x29, sp	;,
LCFI1:
; GuessSketchFlow/eval/problem6/code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	str	w0, [x3]	; iftmp.0_21, *out_size_23(D)
; GuessSketchFlow/eval/problem6/code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	ubfiz	x0, x0, 2, 32	;, iftmp.0_21,,
	str	x5, [x29, 16]	; numbers, %sfp
	stp	w2, w1, [x29, 24]	; delimiter, size,
	bl	_malloc		;
; GuessSketchFlow/eval/problem6/code.c:7:     if (size > 0) out[0] = numbers[0];
	ldr	x5, [x29, 16]	; numbers, %sfp
; GuessSketchFlow/eval/problem6/code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	ldp	w2, w1, [x29, 24]	;,,
; GuessSketchFlow/eval/problem6/code.c:7:     if (size > 0) out[0] = numbers[0];
	ldr	w3, [x5]	;, *numbers_27(D)
; GuessSketchFlow/eval/problem6/code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	cmp	w1, 1	; size,
; GuessSketchFlow/eval/problem6/code.c:7:     if (size > 0) out[0] = numbers[0];
	str	w3, [x0]	; *numbers_27(D), *out_42
; GuessSketchFlow/eval/problem6/code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	beq	L1		;,
	add	x3, x0, 8	; ivtmp.19, <retval>,
	add	x4, x5, 4	; ivtmp.16, numbers,
	sub	w1, w1, #2	; _3, size,
	add	x5, x5, 8	; _49, numbers,
	add	x5, x5, w1, uxtw 2	; _56, _49, _3,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem6/code.c:10:         out[j++] = numbers[i];
	ldr	w1, [x4], 4	;, MEM[(const int *)_25]
; GuessSketchFlow/eval/problem6/code.c:9:         out[j++] = delimiter;
	str	w2, [x3, -4]	; delimiter, MEM[(int *)_36 + -4B]
; GuessSketchFlow/eval/problem6/code.c:10:         out[j++] = numbers[i];
	str	w1, [x3], 8	; MEM[(const int *)_25], MEM[(int *)_36]
; GuessSketchFlow/eval/problem6/code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	cmp	x4, x5	; ivtmp.16, _56
	bne	L5		;,
L1:
; GuessSketchFlow/eval/problem6/code.c:13: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI2:
	ret	
	.p2align 2,,3
L2:
; GuessSketchFlow/eval/problem6/code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	mov	x0, 0	;,
; GuessSketchFlow/eval/problem6/code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	str	wzr, [x3]	;, *out_size_23(D)
; GuessSketchFlow/eval/problem6/code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	b	_malloc		;
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
	.byte	0x4
	.set L$set$3,LCFI0-LFB4
	.long L$set$3
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
