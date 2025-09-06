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
; GuessSketchFlow/eval/problem73/code.c:6:     for (int i = 0; i < size / 2; i++) {
	add	w8, w1, w1, lsr 31	; tmp124, size, size,
	asr	w8, w8, 1	; _32, tmp124,
; GuessSketchFlow/eval/problem73/code.c:6:     for (int i = 0; i < size / 2; i++) {
	cmp	w1, 1	; size,
	ble	L6		;,
	mov	x3, 0	; ivtmp.5,
; GuessSketchFlow/eval/problem73/code.c:5:     int sum = 0;
	mov	w6, 0	; sum,
	add	x4, x0, w1, uxtw 2	; ivtmp.9, q, size,
	b	L4		;
	.p2align 2,,3
L10:
; GuessSketchFlow/eval/problem73/code.c:6:     for (int i = 0; i < size / 2; i++) {
	add	x3, x3, 1	; ivtmp.5, ivtmp.5,
; GuessSketchFlow/eval/problem73/code.c:8:         sum += q[i] + q[size - 1 - i];
	add	w6, w6, w5, lsl 1	; sum, sum, _4,
; GuessSketchFlow/eval/problem73/code.c:6:     for (int i = 0; i < size / 2; i++) {
	sub	x4, x4, #4	; ivtmp.9, ivtmp.9,
	cmp	w8, w3	; _32, ivtmp.5
	ble	L2		;,
L4:
; GuessSketchFlow/eval/problem73/code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	ldr	w5, [x0, x3, lsl 2]	;, MEM[(int *)q_23(D) + ivtmp.5_61 * 4]
; GuessSketchFlow/eval/problem73/code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	ldr	w7, [x4, -4]	;, MEM[(int *)_53 + -4B]
; GuessSketchFlow/eval/problem73/code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	cmp	w5, w7	; _4, _10
	beq	L10		;,
; GuessSketchFlow/eval/problem73/code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem73/code.c:12: }
	ret	
L6:
; GuessSketchFlow/eval/problem73/code.c:5:     int sum = 0;
	mov	w6, 0	; sum,
	.p2align 5,,15
L2:
; GuessSketchFlow/eval/problem73/code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	cmp	w1, 0	; size,
	and	w1, w1, 1	; tmp131, size,
	csneg	w1, w1, w1, ge	; _13, tmp131, tmp131,
; GuessSketchFlow/eval/problem73/code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	cmp	w1, 1	; _13,
	beq	L11		;,
; GuessSketchFlow/eval/problem73/code.c:11:     return sum <= w;
	cmp	w6, w2	; sum, w
	cset	w0, le	; <retval>,
L12:
; GuessSketchFlow/eval/problem73/code.c:12: }
	ret	
	.p2align 2,,3
L11:
; GuessSketchFlow/eval/problem73/code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	ldr	w0, [x0, w8, uxtw 2]	;, *_16
	add	w6, w6, w0	; sum, sum, *_16
; GuessSketchFlow/eval/problem73/code.c:11:     return sum <= w;
	cmp	w6, w2	; sum, w
	cset	w0, le	; <retval>,
	b	L12		;
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
