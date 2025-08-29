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
	.ascii "aeiouAEIOU\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB30:
	stp	x29, x30, [sp, -128]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
; GuessSketchFlow/eval/problem118/code.c:11:     char *current = (char *)malloc(length + 1);
	mov	w19, 1	; ivtmp.11,
; GuessSketchFlow/eval/problem118/code.c:9:     int numc = 0, word_count = 0, begin = 0;
	mov	w20, 0	; begin,
; GuessSketchFlow/eval/problem118/code.c:6: char **func0(const char *s, int n, int *returnSize) {
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
LCFI3:
	mov	w24, w1	; n, n
; GuessSketchFlow/eval/problem118/code.c:8:     char **out = NULL;
	mov	x23, 0	; <retval>,
; GuessSketchFlow/eval/problem118/code.c:6: char **func0(const char *s, int n, int *returnSize) {
	stp	x25, x26, [sp, 64]	;,,
LCFI4:
; GuessSketchFlow/eval/problem118/code.c:9:     int numc = 0, word_count = 0, begin = 0;
	mov	w26, 0	; word_count,
; GuessSketchFlow/eval/problem118/code.c:6: char **func0(const char *s, int n, int *returnSize) {
	stp	x27, x28, [sp, 80]	;,,
LCFI5:
; GuessSketchFlow/eval/problem118/code.c:6: char **func0(const char *s, int n, int *returnSize) {
	mov	x27, x0	; s, s
; GuessSketchFlow/eval/problem118/code.c:9:     int numc = 0, word_count = 0, begin = 0;
	mov	w28, 0	; numc,
; GuessSketchFlow/eval/problem118/code.c:6: char **func0(const char *s, int n, int *returnSize) {
	str	x2, [x29, 96]	; returnSize, %sfp
; GuessSketchFlow/eval/problem118/code.c:10:     size_t length = strlen(s);
	bl	_strlen		;
	mov	x21, x0	; length,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	adrp	x25, __DefaultRuneLocale@GOTPAGE	; tmp189,
	ldr	x25, [x25, __DefaultRuneLocale@GOTPAGEOFF]	; tmp189,
; GuessSketchFlow/eval/problem118/code.c:11:     char *current = (char *)malloc(length + 1);
	add	x0, x0, 1	;, length,
	bl	_malloc		;
; GuessSketchFlow/eval/problem118/code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	adrp	x1, lC0@PAGE	; tmp186,
; GuessSketchFlow/eval/problem118/code.c:11:     char *current = (char *)malloc(length + 1);
	mov	x22, x0	; current, current
; GuessSketchFlow/eval/problem118/code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	add	x1, x1, lC0@PAGEOFF;	; tmp187, tmp186,
; GuessSketchFlow/eval/problem118/code.c:13:     for (int i = 0; i <= length; i++) {
	mov	x0, 0	; _27,
; GuessSketchFlow/eval/problem118/code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	str	x1, [x29, 104]	; tmp187, %sfp
	.p2align 5,,15
L11:
; GuessSketchFlow/eval/problem118/code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	ldrsb	w2, [x27, x0]	; _3, *_2
	sub	w3, w19, #1	; i, ivtmp.11,
	add	x6, x27, x0	; _2, s, _27
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	cmp	w2, 127	; _3,
	bhi	L2		;,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	add	x0, x25, w2, sxtw 2	; tmp152, tmp189, _3,
; GuessSketchFlow/eval/problem118/code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	ldr	w0, [x0, 60]	;, _DefaultRuneLocale.__runetype[_4]
	tbnz	x0, 14, L6	; _DefaultRuneLocale.__runetype[_4],,
L3:
; GuessSketchFlow/eval/problem118/code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	cbz	w2, L6	; _3,
; GuessSketchFlow/eval/problem118/code.c:25:             current[i - begin] = s[i];
	sub	w3, w3, w20	; _20, i, begin
; GuessSketchFlow/eval/problem118/code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	ldr	x0, [x29, 104]	;, %sfp
	mov	w1, w2	;, _3
	str	w2, [x29, 120]	; _3, %sfp
; GuessSketchFlow/eval/problem118/code.c:25:             current[i - begin] = s[i];
	strb	w2, [x22, w3, sxtw]	; _3, *_22
; GuessSketchFlow/eval/problem118/code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	bl	_strchr		;
; GuessSketchFlow/eval/problem118/code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	ldr	w2, [x29, 120]	;, %sfp
	cbz	x0, L22	; _24,
	.p2align 5,,15
L8:
; GuessSketchFlow/eval/problem118/code.c:13:     for (int i = 0; i <= length; i++) {
	sxtw	x0, w19	; _27, ivtmp.11
	add	w19, w19, 1	; ivtmp.11, ivtmp.11,
	cmp	x0, x21	; _27, length
	bls	L11		;,
; GuessSketchFlow/eval/problem118/code.c:31:     free(current);
	mov	x0, x22	;, current
	bl	_free		;
; GuessSketchFlow/eval/problem118/code.c:33:     *returnSize = word_count;
	ldr	x0, [x29, 96]	; returnSize, %sfp
	str	w26, [x0]	; word_count, *returnSize_48(D)
; GuessSketchFlow/eval/problem118/code.c:35: }
	mov	x0, x23	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x27, x28, [sp, 80]	;,,
	ldp	x29, x30, [sp], 128	;,,,
LCFI6:
	ret	
	.p2align 2,,3
L2:
LCFI7:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 16384	;,
	mov	w0, w2	;, _3
	str	w3, [x29, 116]	; i, %sfp
	str	x6, [x29, 120]	; _2, %sfp
	bl	___maskrune		;
; GuessSketchFlow/eval/problem118/code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	ldr	x6, [x29, 120]	; _2, %sfp
	ldr	w3, [x29, 116]	;, %sfp
	cbz	w0, L23	; _65,
L6:
; GuessSketchFlow/eval/problem118/code.c:15:             if (numc == n) {
	cmp	w24, w28	; n, numc
	beq	L24		;,
L5:
; GuessSketchFlow/eval/problem118/code.c:22:             begin = i + 1;
	mov	w20, w19	; begin, ivtmp.11
; GuessSketchFlow/eval/problem118/code.c:23:             numc = 0;
	mov	w28, 0	; numc,
	b	L8		;
	.p2align 2,,3
L24:
; GuessSketchFlow/eval/problem118/code.c:16:                 current[i - begin] = '\0';
	sub	w3, w3, w20	; _6, i, begin
; GuessSketchFlow/eval/problem118/code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	add	w26, w26, 1	; word_count, word_count,
; GuessSketchFlow/eval/problem118/code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	ubfiz	x1, x26, 3, 32	;, word_count,,
	mov	x0, x23	;, <retval>
; GuessSketchFlow/eval/problem118/code.c:16:                 current[i - begin] = '\0';
	strb	wzr, [x22, w3, sxtw]	;, *_8
; GuessSketchFlow/eval/problem118/code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	bl	_realloc		;
	mov	x23, x0	; <retval>, <retval>
; GuessSketchFlow/eval/problem118/code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	mov	x0, x22	;, current
	bl	_strlen		;
; GuessSketchFlow/eval/problem118/code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	add	x20, x0, 1	; _13, tmp197,
	mov	x0, x20	;, _13
	bl	_malloc		;
; GuessSketchFlow/eval/problem118/code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	add	x1, x23, w26, uxtw 3	; tmp164, <retval>, word_count,,
; GuessSketchFlow/eval/problem118/code.c:19:                 strcpy(out[word_count], current);
	mov	x2, x20	;, _13
; GuessSketchFlow/eval/problem118/code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	str	x0, [x1, -8]	; tmp198, *_16
; GuessSketchFlow/eval/problem118/code.c:19:                 strcpy(out[word_count], current);
	mov	x1, x22	;, current
	bl	_memcpy		;
	b	L5		;
	.p2align 2,,3
L22:
; GuessSketchFlow/eval/problem118/code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	and	w0, w2, 255	; _26, _3
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	tbnz	w2, #31, L9	; _3,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	adrp	x1, __DefaultRuneLocale@GOTPAGE	; tmp175,
	ldr	x1, [x1, __DefaultRuneLocale@GOTPAGEOFF]	; tmp175,
	add	x0, x1, w0, uxtb 2	; tmp179, tmp175, _26,,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	ldr	w0, [x0, 60]	;, _DefaultRuneLocale.__runetype[_26]
	ubfx	x0, x0, 8, 1	; _70, _DefaultRuneLocale.__runetype[_26],,
; GuessSketchFlow/eval/problem118/code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	add	w28, w28, w0	; numc, numc, _70
	b	L8		;
	.p2align 2,,3
L9:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 256	;,
	bl	___maskrune		;
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	cmp	w0, 0	; _71,
	cset	w0, ne	; _70,
; GuessSketchFlow/eval/problem118/code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	add	w28, w28, w0	; numc, numc, _70
	b	L8		;
L23:
; GuessSketchFlow/eval/problem118/code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	ldrsb	w2, [x6]	; _3, *_2
	b	L3		;
LFE30:
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
	.quad	LFB30-.
	.set L$set$2,LFE30-LFB30
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB30
	.long L$set$3
	.byte	0xe
	.uleb128 0x80
	.byte	0x9d
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xf
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0xe
	.byte	0x94
	.uleb128 0xd
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0xc
	.byte	0x96
	.uleb128 0xb
	.byte	0x97
	.uleb128 0xa
	.byte	0x98
	.uleb128 0x9
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x99
	.uleb128 0x8
	.byte	0x9a
	.uleb128 0x7
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x9b
	.uleb128 0x6
	.byte	0x9c
	.uleb128 0x5
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xdc
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
