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
; GuessSketchFlow/eval/problem37/code.c:3: int func0(int n) {
	mov	w6, w0	; n, n
; GuessSketchFlow/eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	mov	w4, 0	; i,
	mov	w0, 0	; <retval>,
	cmp	w6, 0	; n,
	ble	L1		;,
	mov	w8, 35747	; tmp183,
; GuessSketchFlow/eval/problem37/code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	mov	w7, 53620	; tmp184,
; GuessSketchFlow/eval/problem37/code.c:9:                 if (q % 10 == 7) count += 1;
	mov	w5, 52429	; tmp185,
; GuessSketchFlow/eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	mov	w10, 20165	; tmp187,
; GuessSketchFlow/eval/problem37/code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	mov	w9, 15123	; tmp188,
	movk	w8, 0xba2e, lsl 16	; tmp183,,
; GuessSketchFlow/eval/problem37/code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	movk	w7, 0x1745, lsl 16	; tmp184,,
; GuessSketchFlow/eval/problem37/code.c:9:                 if (q % 10 == 7) count += 1;
	movk	w5, 0xcccc, lsl 16	; tmp185,,
; GuessSketchFlow/eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	movk	w10, 0xc4ec, lsl 16	; tmp187,,
; GuessSketchFlow/eval/problem37/code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	movk	w9, 0x13b1, lsl 16	; tmp188,,
	.p2align 5,,15
L2:
; GuessSketchFlow/eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	add	w4, w4, 1	; i, i,
; GuessSketchFlow/eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	cmp	w6, w4	; n, i
	beq	L1		;,
L14:
	mul	w1, w4, w8	; tmp177, i, tmp183
; GuessSketchFlow/eval/problem37/code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	cmp	w1, w7	; tmp177, tmp184
	bls	L10		;,
; GuessSketchFlow/eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	mul	w1, w4, w10	; tmp124, i, tmp187
; GuessSketchFlow/eval/problem37/code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	cmp	w1, w9	; tmp124, tmp188
	bhi	L2		;,
L10:
	mov	w2, w4	; q, i
	.p2align 5,,15
L7:
; GuessSketchFlow/eval/problem37/code.c:9:                 if (q % 10 == 7) count += 1;
	umull	x1, w2, w5	; tmp128, q, tmp185
	lsr	x1, x1, 35	; tmp127, tmp128,
	add	w3, w1, w1, lsl 2	; tmp133, tmp127, tmp127,
	sub	w2, w2, w3, lsl 1	; _2, q, tmp133,
; GuessSketchFlow/eval/problem37/code.c:9:                 if (q % 10 == 7) count += 1;
	cmp	w2, 7	; _2,
; GuessSketchFlow/eval/problem37/code.c:10:                 q = q / 10;
	mov	w2, w1	; q, tmp127
; GuessSketchFlow/eval/problem37/code.c:9:                 if (q % 10 == 7) count += 1;
	cinc	w0, w0, eq	; <retval>, <retval>,
; GuessSketchFlow/eval/problem37/code.c:8:             while (q > 0) {
	cbnz	w1, L7	; q,
; GuessSketchFlow/eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	add	w4, w4, 1	; i, i,
; GuessSketchFlow/eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	cmp	w6, w4	; n, i
	bne	L14		;,
L1:
; GuessSketchFlow/eval/problem37/code.c:14: }
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
