	.arch armv8.5-a
	.build_version macos,  15, 0
; GNU C11 (Homebrew GCC 15.1.0) version 15.1.0 (aarch64-apple-darwin24)
;	compiled by GNU C version 15.1.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed: -fPIC -mmacosx-version-min=15.0.0 -mcpu=apple-m1 -mlittle-endian -mabi=lp64 -O2 -std=c11
	.text
	.cstring
	.align	3
lC0:
	.ascii "True\0"
	.align	3
lC1:
	.ascii "False\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB4:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	mov	x20, x3	; palindrome, palindrome
	stp	x21, x22, [sp, 32]	;,,
LCFI3:
	mov	x21, x0	; s, s
	mov	x22, x1	; c, c
	str	x23, [sp, 48]	;,
LCFI4:
; GuessSketchFlow/eval/problem113/code.c:6: void func0(const char *s, const char *c, char *result, char *palindrome) {
	mov	x23, x2	; result, result
; GuessSketchFlow/eval/problem113/code.c:7:     int len = strlen(s);
	bl	_strlen		;
; GuessSketchFlow/eval/problem113/code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	add	w0, w0, 1	; _2, tmp182,
; GuessSketchFlow/eval/problem113/code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	sxtw	x0, w0	;, _2
	bl	_malloc		;
; GuessSketchFlow/eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsb	w4, [x21]	; _16, *s_35(D)
; GuessSketchFlow/eval/problem113/code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	mov	x19, x0	; n, n
; GuessSketchFlow/eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cbz	w4, L17	; _16,
; GuessSketchFlow/eval/problem113/code.c:13:         while (*temp != '\0') {
	ldrsb	w1, [x22]	; _59, *c_47(D)
	add	x0, x21, 1	; ivtmp.23, s,
; GuessSketchFlow/eval/problem113/code.c:9:     int ni = 0;
	mov	w5, 0	; ni,
; GuessSketchFlow/eval/problem113/code.c:13:         while (*temp != '\0') {
	cbz	w1, L23	; _59,
	.p2align 5,,15
L7:
; GuessSketchFlow/eval/problem113/code.c:11:         const char *temp = c;
	mov	x3, x22	; temp, c
; GuessSketchFlow/eval/problem113/code.c:13:         while (*temp != '\0') {
	mov	w2, w1	; _4, _59
	b	L5		;
	.p2align 2,,3
L30:
	ldrsb	w2, [x3, 1]!	; _4, MEM[(const char *)temp_48]
; GuessSketchFlow/eval/problem113/code.c:13:         while (*temp != '\0') {
	cbz	w2, L29	; _4,
L5:
; GuessSketchFlow/eval/problem113/code.c:14:             if (s[i] == *temp) {
	cmp	w2, w4	; _4, _16
	bne	L30		;,
; GuessSketchFlow/eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsb	w4, [x0], 1	; _16, MEM[(const char *)_14 + -1B]
; GuessSketchFlow/eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cbnz	w4, L7	; _16,
L16:
; GuessSketchFlow/eval/problem113/code.c:24:     n[ni] = '\0';
	add	x5, x19, w5, sxtw	; _77, n, ni
L2:
; GuessSketchFlow/eval/problem113/code.c:26:     int n_len = strlen(n);
	mov	x0, x19	;, n
; GuessSketchFlow/eval/problem113/code.c:24:     n[ni] = '\0';
	strb	wzr, [x5]	;, *prephitmp_78
; GuessSketchFlow/eval/problem113/code.c:26:     int n_len = strlen(n);
	bl	_strlen		;
; GuessSketchFlow/eval/problem113/code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	cmp	w0, 1	; _12,
	ble	L9		;,
	sxtw	x5, w0	; _58, _12
; GuessSketchFlow/eval/problem113/code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	asr	w6, w0, 1	; _22, _12,
; GuessSketchFlow/eval/problem113/code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	sub	x5, x5, #1	; _96, _58,
; GuessSketchFlow/eval/problem113/code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	mov	x1, 0	; ivtmp.9,
; GuessSketchFlow/eval/problem113/code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	add	x5, x19, x5	; _71, n, _96
	b	L11		;
	.p2align 2,,3
L31:
; GuessSketchFlow/eval/problem113/code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	add	x1, x1, 1	; ivtmp.9, ivtmp.9,
	cmp	w6, w1	; _22, ivtmp.9
	ble	L9		;,
L11:
; GuessSketchFlow/eval/problem113/code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	neg	x3, x1	; _70, ivtmp.9
; GuessSketchFlow/eval/problem113/code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ldrsb	w4, [x19, x1]	; MEM[(char *)n_38 + ivtmp.9_54 * 1], MEM[(char *)n_38 + ivtmp.9_54 * 1]
	ldrsb	w3, [x5, x3]	; MEM[(char *)_71 + _70 * 1], MEM[(char *)_71 + _70 * 1]
	cmp	w4, w3	; MEM[(char *)n_38 + ivtmp.9_54 * 1], MEM[(char *)_71 + _70 * 1]
	beq	L31		;,
; GuessSketchFlow/eval/problem113/code.c:35:     strcpy(result, n);
	add	x2, x0, 1	;, _12,
	mov	x1, x19	;, n
	mov	x0, x23	;, result
	bl	_memcpy		;
; GuessSketchFlow/eval/problem113/code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	adrp	x1, lC1@PAGE	; tmp144,
; GuessSketchFlow/eval/problem113/code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	mov	x0, x20	;, palindrome
; GuessSketchFlow/eval/problem113/code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	add	x1, x1, lC1@PAGEOFF;	; iftmp.1_31, tmp144,
; GuessSketchFlow/eval/problem113/code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	bl	_strcpy		;
; GuessSketchFlow/eval/problem113/code.c:39: }
	ldr	x23, [sp, 48]	;,
; GuessSketchFlow/eval/problem113/code.c:38:     free(n);
	mov	x0, x19	;, n
; GuessSketchFlow/eval/problem113/code.c:39: }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI5:
; GuessSketchFlow/eval/problem113/code.c:38:     free(n);
	b	_free		;
L23:
LCFI6:
; GuessSketchFlow/eval/problem113/code.c:21:             n[ni++] = s[i];
	strb	w4, [x19, w5, sxtw]	; _16, *_6
	add	w5, w5, 1	; ni, ni,
; GuessSketchFlow/eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsb	w4, [x0], 1	; _16, MEM[(const char *)_27 + -1B]
; GuessSketchFlow/eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cbz	w4, L16	; _16,
; GuessSketchFlow/eval/problem113/code.c:21:             n[ni++] = s[i];
	strb	w4, [x19, w5, sxtw]	; _16, *_6
	add	w5, w5, 1	; ni, ni,
; GuessSketchFlow/eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsb	w4, [x0], 1	; _16, MEM[(const char *)_27 + -1B]
; GuessSketchFlow/eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cbnz	w4, L23	; _16,
	b	L16		;
	.p2align 2,,3
L29:
; GuessSketchFlow/eval/problem113/code.c:21:             n[ni++] = s[i];
	strb	w4, [x19, w5, sxtw]	; _16, *_10
; GuessSketchFlow/eval/problem113/code.c:21:             n[ni++] = s[i];
	add	w5, w5, 1	; ni, ni,
; GuessSketchFlow/eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsb	w4, [x0], 1	; _16, MEM[(const char *)_82 + -1B]
; GuessSketchFlow/eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cbnz	w4, L7	; _16,
	b	L16		;
L9:
; GuessSketchFlow/eval/problem113/code.c:35:     strcpy(result, n);
	add	x2, x0, 1	;, _12,
	mov	x1, x19	;, n
	mov	x0, x23	;, result
	bl	_memcpy		;
; GuessSketchFlow/eval/problem113/code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	adrp	x1, lC0@PAGE	; tmp143,
; GuessSketchFlow/eval/problem113/code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	mov	x0, x20	;, palindrome
; GuessSketchFlow/eval/problem113/code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	add	x1, x1, lC0@PAGEOFF;	; iftmp.1_31, tmp143,
; GuessSketchFlow/eval/problem113/code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	bl	_strcpy		;
; GuessSketchFlow/eval/problem113/code.c:39: }
	ldr	x23, [sp, 48]	;,
; GuessSketchFlow/eval/problem113/code.c:38:     free(n);
	mov	x0, x19	;, n
; GuessSketchFlow/eval/problem113/code.c:39: }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI7:
; GuessSketchFlow/eval/problem113/code.c:38:     free(n);
	b	_free		;
L17:
LCFI8:
; GuessSketchFlow/eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	mov	x5, x0	; _77, n
	b	L2		;
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
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x97
	.uleb128 0x2
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xb
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
