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
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldrsb	w2, [x0]	; _13, *sentence_44(D)
; GuessSketchFlow/eval/problem144/code.c:5: void func0(const char* sentence, char* out) {
	mov	x8, x1	; out, out
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	cbz	w2, L20	; _13,
; GuessSketchFlow/eval/problem144/code.c:5: void func0(const char* sentence, char* out) {
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x6, x0	; sentence, sentence
	mov	x29, sp	;,
LCFI1:
; GuessSketchFlow/eval/problem144/code.c:7:     int out_index = 0;
	mov	w7, 0	; out_index,
; GuessSketchFlow/eval/problem144/code.c:6:     int index = 0, word_len = 0;
	mov	w3, 0	; word_len,
; GuessSketchFlow/eval/problem144/code.c:5: void func0(const char* sentence, char* out) {
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	mov	x5, 0	; _68,
	b	L4		;
	.p2align 2,,3
L13:
	add	x5, x5, 1	; _68, _68,
; GuessSketchFlow/eval/problem144/code.c:13:             word_len++;
	add	w3, w3, 1	; word_len, word_len,
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldrsb	w2, [x6, x5]	; _13, MEM[(const char *)sentence_44(D) + _69 * 1]
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	cbz	w2, L5	; _13,
L4:
; GuessSketchFlow/eval/problem144/code.c:12:         if (sentence[i] != ' ') {
	cmp	w2, 32	; _13,
	bne	L13		;,
; GuessSketchFlow/eval/problem144/code.c:15:             if (word_len > 1) {
	cmp	w3, 1	; word_len,
	bgt	L43		;,
L14:
	add	x5, x5, 1	; _68, _68,
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldrsb	w0, [x6, x5]	; _60, MEM[(const char *)sentence_44(D) + _61 * 1]
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	cbz	w0, L8	; _60,
; GuessSketchFlow/eval/problem144/code.c:12:         if (sentence[i] != ' ') {
	cmp	w0, 32	; _60,
	beq	L14		;,
	add	x5, x5, 1	; _68, _68,
; GuessSketchFlow/eval/problem144/code.c:34:             word_len = 0;
	mov	w3, 0	; word_len,
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldrsb	w2, [x6, x5]	; _13, MEM[(const char *)sentence_44(D) + _69 * 1]
; GuessSketchFlow/eval/problem144/code.c:13:             word_len++;
	add	w3, w3, 1	; word_len, word_len,
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	cbnz	w2, L4	; _13,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem144/code.c:52:             out[out_index++] = ' ';
	sxtw	x0, w7	; _18, out_index
; GuessSketchFlow/eval/problem144/code.c:52:             out[out_index++] = ' ';
	add	x1, x8, x0	; _16, out, _18
; GuessSketchFlow/eval/problem144/code.c:38:     if (word_len > 1) {
	cmp	w3, 1	; word_len,
	beq	L2		;,
; GuessSketchFlow/eval/problem144/code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	cmp	w3, 3	; word_len,
	ble	L16		;,
; GuessSketchFlow/eval/problem144/code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	mov	w2, 2	; j,
	b	L18		;
	.p2align 2,,3
L44:
; GuessSketchFlow/eval/problem144/code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	add	w2, w2, 1	; j, j,
; GuessSketchFlow/eval/problem144/code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	mul	w4, w2, w2	; _15, j, j
; GuessSketchFlow/eval/problem144/code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	cmp	w4, w3	; _15, word_len
	bgt	L16		;,
L18:
; GuessSketchFlow/eval/problem144/code.c:41:             if (word_len % j == 0) {
	udiv	w4, w3, w2	; tmp187, word_len, j
	msub	w4, w4, w2, w3	; _14, tmp187, j, word_len
; GuessSketchFlow/eval/problem144/code.c:41:             if (word_len % j == 0) {
	cbnz	w4, L44	; _14,
L2:
; GuessSketchFlow/eval/problem144/code.c:58:     out[out_index] = '\0';
	strb	wzr, [x1]	;, *prephitmp_89
; GuessSketchFlow/eval/problem144/code.c:59: }
	ldp	x29, x30, [sp], 64	;,,,
LCFI2:
	ret	
	.p2align 2,,3
L43:
LCFI3:
; GuessSketchFlow/eval/problem144/code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	cmp	w3, 3	; word_len,
	ble	L9		;,
; GuessSketchFlow/eval/problem144/code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	mov	w2, 2	; j,
	.p2align 5,,15
L11:
; GuessSketchFlow/eval/problem144/code.c:18:                     if (word_len % j == 0) {
	udiv	w4, w3, w2	; tmp145, word_len, j
	msub	w4, w4, w2, w3	; _1, tmp145, j, word_len
; GuessSketchFlow/eval/problem144/code.c:18:                     if (word_len % j == 0) {
	cbz	w4, L14	; _1,
; GuessSketchFlow/eval/problem144/code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	add	w2, w2, 1	; j, j,
; GuessSketchFlow/eval/problem144/code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	mul	w4, w2, w2	; _2, j, j
; GuessSketchFlow/eval/problem144/code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	cmp	w4, w3	; _2, word_len
	ble	L11		;,
L9:
; GuessSketchFlow/eval/problem144/code.c:28:                 if (out_index > 0) {
	cmp	w7, 0	; out_index,
	ble	L12		;,
; GuessSketchFlow/eval/problem144/code.c:29:                     out[out_index++] = ' ';
	sxtw	x0, w7	; _96, out_index
; GuessSketchFlow/eval/problem144/code.c:29:                     out[out_index++] = ' ';
	mov	w1, 32	; tmp166,
	add	w7, w7, 1	; out_index, out_index,
	strb	w1, [x8, x0]	; tmp166, *_97
L12:
; GuessSketchFlow/eval/problem144/code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	sxtw	x2, w3	; _7, word_len
; GuessSketchFlow/eval/problem144/code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	add	x0, x8, w7, sxtw	;, out, out_index
; GuessSketchFlow/eval/problem144/code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	str	w3, [x29, 28]	; word_len, %sfp
	sub	x1, x5, x2	; _8, _68, _7
	stp	x5, x6, [x29, 32]	; _68, sentence,
; GuessSketchFlow/eval/problem144/code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	add	x1, x6, x1	;, sentence, _8
	str	x8, [x29, 48]	; out, %sfp
	str	w7, [x29, 56]	; out_index, %sfp
	bl	_memcpy		;
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldp	x5, x6, [x29, 32]	; _68, sentence,
; GuessSketchFlow/eval/problem144/code.c:32:                 out_index += word_len;
	ldr	w3, [x29, 28]	;, %sfp
	add	x1, x5, 1	; _81, _68,
	ldr	w7, [x29, 56]	;, %sfp
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldrsb	w0, [x6, x1]	; _32, MEM[(const char *)sentence_44(D) + _81 * 1]
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldr	x8, [x29, 48]	; out, %sfp
; GuessSketchFlow/eval/problem144/code.c:32:                 out_index += word_len;
	add	w7, w7, w3	; out_index, out_index, word_len
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	cbz	w0, L8	; _32,
; GuessSketchFlow/eval/problem144/code.c:12:         if (sentence[i] != ' ') {
	cmp	w0, 32	; _32,
	beq	L21		;,
	add	x5, x5, 2	; _68, _68,
; GuessSketchFlow/eval/problem144/code.c:13:             word_len++;
	mov	w3, 1	; word_len,
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldrsb	w0, [x6, x5]	; _24, MEM[(const char *)sentence_44(D) + _17 * 1]
; GuessSketchFlow/eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	cbz	w0, L5	; _24,
; GuessSketchFlow/eval/problem144/code.c:12:         if (sentence[i] != ' ') {
	cmp	w0, 32	; _24,
	bne	L13		;,
	b	L14		;
	.p2align 2,,3
L16:
; GuessSketchFlow/eval/problem144/code.c:51:         if (out_index > 0) {
	cmp	w7, 0	; out_index,
	ble	L19		;,
; GuessSketchFlow/eval/problem144/code.c:52:             out[out_index++] = ' ';
	mov	w1, 32	; tmp207,
; GuessSketchFlow/eval/problem144/code.c:52:             out[out_index++] = ' ';
	add	w7, w7, 1	; out_index, out_index,
; GuessSketchFlow/eval/problem144/code.c:52:             out[out_index++] = ' ';
	strb	w1, [x8, x0]	; tmp207, *_95
	sxtw	x0, w7	; _18, out_index
L19:
; GuessSketchFlow/eval/problem144/code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	sxtw	x2, w3	; _20, word_len
; GuessSketchFlow/eval/problem144/code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	add	x0, x8, x0	;, out, _18
	str	w7, [x29, 40]	; out_index, %sfp
; GuessSketchFlow/eval/problem144/code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	sub	x5, x5, x2	; _21, _68, _20
	str	w3, [x29, 48]	; word_len, %sfp
; GuessSketchFlow/eval/problem144/code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	add	x1, x6, x5	;, sentence, _21
	str	x8, [x29, 56]	; out, %sfp
	bl	_memcpy		;
; GuessSketchFlow/eval/problem144/code.c:55:         out_index += word_len;
	ldr	w7, [x29, 40]	;, %sfp
	ldr	w3, [x29, 48]	;, %sfp
; GuessSketchFlow/eval/problem144/code.c:58:     out[out_index] = '\0';
	ldr	x8, [x29, 56]	; out, %sfp
; GuessSketchFlow/eval/problem144/code.c:55:         out_index += word_len;
	add	w3, w3, w7	; out_index_50, word_len, out_index
; GuessSketchFlow/eval/problem144/code.c:58:     out[out_index] = '\0';
	add	x1, x8, w3, sxtw	; _16, out, out_index_50
; GuessSketchFlow/eval/problem144/code.c:58:     out[out_index] = '\0';
	strb	wzr, [x1]	;, *prephitmp_89
; GuessSketchFlow/eval/problem144/code.c:59: }
	ldp	x29, x30, [sp], 64	;,,,
LCFI4:
	ret	
	.p2align 2,,3
L8:
LCFI5:
; GuessSketchFlow/eval/problem144/code.c:52:             out[out_index++] = ' ';
	add	x1, x8, w7, sxtw	; _16, out, out_index
; GuessSketchFlow/eval/problem144/code.c:58:     out[out_index] = '\0';
	strb	wzr, [x1]	;, *prephitmp_89
; GuessSketchFlow/eval/problem144/code.c:59: }
	ldp	x29, x30, [sp], 64	;,,,
LCFI6:
	ret	
	.p2align 2,,3
L21:
LCFI7:
; GuessSketchFlow/eval/problem144/code.c:12:         if (sentence[i] != ' ') {
	mov	x5, x1	; _68, _81
	b	L14		;
	.p2align 2,,3
L20:
LCFI8:
; GuessSketchFlow/eval/problem144/code.c:58:     out[out_index] = '\0';
	strb	wzr, [x1]	;, *prephitmp_89
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
	.byte	0x4
	.set L$set$3,LCFI0-LFB1
	.long L$set$3
	.byte	0xe
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xb
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xb
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xb
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xdd
	.byte	0xde
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
