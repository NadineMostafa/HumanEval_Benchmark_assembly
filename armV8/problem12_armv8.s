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
	stp	x29, x30, [sp, -48]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	mov	x20, x1	; b, b
	str	x21, [sp, 32]	;,
LCFI3:
; GuessSketchFlow/eval/problem12/code.c:5: char *func0(const char *a, const char *b) {
	mov	x21, x0	; a, a
; GuessSketchFlow/eval/problem12/code.c:6:     int len_a = strlen(a);
	bl	_strlen		;
	mov	x19, x0	; tmp161,
; GuessSketchFlow/eval/problem12/code.c:7:     int len_b = strlen(b);
	mov	x0, x20	;, b
	bl	_strlen		;
; GuessSketchFlow/eval/problem12/code.c:8:     int min_len = len_a < len_b ? len_a : len_b;
	cmp	w0, w19	; tmp162, tmp161
	csel	w19, w0, w19, lt	; min_len, tmp162, tmp161,
; GuessSketchFlow/eval/problem12/code.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	add	w0, w19, 1	; _3, min_len,
; GuessSketchFlow/eval/problem12/code.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	sxtw	x0, w0	;, _3
	bl	_malloc		;
; GuessSketchFlow/eval/problem12/code.c:10:     if (!output) return NULL;
	cbz	x0, L1	; <retval>,
; GuessSketchFlow/eval/problem12/code.c:12:     for (int i = 0; i < min_len; i++) {
	cmp	w19, 0	; min_len,
	ble	L3		;,
	sub	w1, w19, #1	; _60, min_len,
	cmp	w1, 14	; _60,
	bls	L9		;,
; GuessSketchFlow/eval/problem12/code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movi	v31.16b, 0x30	;
	movi	v30.16b, 0x31	;
	and	x1, x19, 4294967280	; _29, min_len,
; GuessSketchFlow/eval/problem12/code.c:12:     for (int i = 0; i < min_len; i++) {
	mov	x2, 0	; ivtmp.33,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem12/code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	ldr	q29, [x20, x2]	;, MEM <const vector(16) char> [(const char *)b_20(D) + ivtmp.33_7 * 1]
; GuessSketchFlow/eval/problem12/code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	ldr	q28, [x21, x2]	;, MEM <const vector(16) char> [(const char *)a_18(D) + ivtmp.33_7 * 1]
; GuessSketchFlow/eval/problem12/code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	cmeq	v28.16b, v29.16b, v28.16b	;,,
; GuessSketchFlow/eval/problem12/code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	bsl	v28.16b, v31.16b, v30.16b	;,,
	str	q28, [x0, x2]	;, MEM <vector(16) char> [(char *)output_24 + ivtmp.33_7 * 1]
	add	x2, x2, 16	; ivtmp.33, ivtmp.33,
	cmp	x2, x1	; ivtmp.33, _29
	bne	L5		;,
	and	w2, w19, -16	; _57, min_len,
	cmp	w19, w2	; min_len, _57
	beq	L3		;,
L4:
	sxtw	x2, w2	; ivtmp.23, _57
	.p2align 5,,15
L8:
; GuessSketchFlow/eval/problem12/code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	ldrsb	w3, [x21, x2]	; MEM[(const char *)a_18(D) + ivtmp.23_28 * 1], MEM[(const char *)a_18(D) + ivtmp.23_28 * 1]
	ldrsb	w1, [x20, x2]	; MEM[(const char *)b_20(D) + ivtmp.23_28 * 1], MEM[(const char *)b_20(D) + ivtmp.23_28 * 1]
; GuessSketchFlow/eval/problem12/code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	cmp	w3, w1	; MEM[(const char *)a_18(D) + ivtmp.23_28 * 1], MEM[(const char *)b_20(D) + ivtmp.23_28 * 1]
	cset	w3, ne	; tmp158,
	add	w3, w3, 48	; iftmp.0_53, tmp158,
; GuessSketchFlow/eval/problem12/code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	strb	w3, [x0, x2]	; iftmp.0_53, MEM[(char *)output_24 + ivtmp.23_28 * 1]
; GuessSketchFlow/eval/problem12/code.c:12:     for (int i = 0; i < min_len; i++) {
	add	x2, x2, 1	; ivtmp.23, ivtmp.23,
	cmp	w19, w2	; min_len, ivtmp.23
	bgt	L8		;,
L3:
; GuessSketchFlow/eval/problem12/code.c:15:     output[min_len] = '\0';
	strb	wzr, [x0, w19, sxtw]	;, *_12
L1:
; GuessSketchFlow/eval/problem12/code.c:17: }
	ldr	x21, [sp, 32]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI4:
	ret	
L9:
LCFI5:
; GuessSketchFlow/eval/problem12/code.c:12:     for (int i = 0; i < min_len; i++) {
	mov	w2, 0	; _57,
	b	L4		;
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
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0x2
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
