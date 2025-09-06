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
LFB27:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	mov	x20, x1	; out, out
; GuessSketchFlow/eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	ldrsb	w19, [x0]	; w, *message_18(D)
; GuessSketchFlow/eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	cbz	w19, L2	; w,
	stp	x21, x22, [x29, 32]	;,,
LCFI3:
	mov	x21, x0	; message, message
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	adrp	x22, __DefaultRuneLocale@GOTPAGE	; tmp134,
	ldr	x22, [x22, __DefaultRuneLocale@GOTPAGEOFF]	; tmp134,
	stp	x23, x24, [x29, 48]	;,,
LCFI4:
; GuessSketchFlow/eval/problem94/code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	adrp	x23, lC0@PAGE	; tmp131,
; GuessSketchFlow/eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	mov	x24, 0	; _40,
; GuessSketchFlow/eval/problem94/code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	add	x23, x23, lC0@PAGEOFF;	; tmp132, tmp131,
	.p2align 5,,15
L13:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	cmp	w19, 127	; w,
	bhi	L3		;,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	add	x0, x22, w19, sxtw 2	; tmp120, tmp134, w,
	ldr	w0, [x0, 60]	;, _DefaultRuneLocale.__runetype[_1]
; GuessSketchFlow/eval/problem94/code.c:11:         if (islower(w)) {
	tbnz	x0, 12, L6	; _28,,
; GuessSketchFlow/eval/problem94/code.c:13:         } else if (isupper(w)) {
	tbnz	x0, 15, L8	; _28,,
L5:
; GuessSketchFlow/eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	mov	x2, 0	; ivtmp.14,
; GuessSketchFlow/eval/problem94/code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	mov	w3, 97	; _6,
	.p2align 5,,15
L12:
; GuessSketchFlow/eval/problem94/code.c:18:             if (w == vowels[j]) {
	cmp	w19, w3	; w, _6
	beq	L22		;,
; GuessSketchFlow/eval/problem94/code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	add	x3, x2, x23	; tmp127, ivtmp.14, tmp132
; GuessSketchFlow/eval/problem94/code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	add	x2, x2, 1	; ivtmp.14, ivtmp.14,
; GuessSketchFlow/eval/problem94/code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	ldrsb	w3, [x3, 1]	; _6, MEM[(const char *)"aeiouAEIOU" + 1B + ivtmp.14_67 * 1]
; GuessSketchFlow/eval/problem94/code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	cmp	x2, 10	; ivtmp.14,
	bne	L12		;,
; GuessSketchFlow/eval/problem94/code.c:25:         out[i] = w;
	strb	w19, [x20, x24]	; w, MEM[(char *)out_19(D) + _60 * 1]
	add	x24, x24, 1	; _40, _40,
; GuessSketchFlow/eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	ldrsb	w19, [x21, x24]	; w, MEM[(const char *)message_18(D) + _40 * 1]
; GuessSketchFlow/eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	cbnz	w19, L13	; w,
L23:
; GuessSketchFlow/eval/problem94/code.c:27:     out[i] = '\0';
	add	x20, x20, x24	; out, out, _40
	ldp	x21, x22, [x29, 32]	;,,
LCFI5:
	ldp	x23, x24, [x29, 48]	;,,
LCFI6:
L2:
; GuessSketchFlow/eval/problem94/code.c:27:     out[i] = '\0';
	strb	wzr, [x20]	;, *prephitmp_13
; GuessSketchFlow/eval/problem94/code.c:28: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI7:
	ret	
	.p2align 2,,3
L22:
LCFI8:
; GuessSketchFlow/eval/problem94/code.c:20:                     w = w + 2;
	add	w19, w19, 2	; _3, w,
; GuessSketchFlow/eval/problem94/code.c:20:                     w = w + 2;
	sxtb	w19, w19	; w, _3
; GuessSketchFlow/eval/problem94/code.c:25:         out[i] = w;
	strb	w19, [x20, x24]	; w, MEM[(char *)out_19(D) + _60 * 1]
	add	x24, x24, 1	; _40, _40,
; GuessSketchFlow/eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	ldrsb	w19, [x21, x24]	; w, MEM[(const char *)message_18(D) + _40 * 1]
; GuessSketchFlow/eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	cbnz	w19, L13	; w,
	b	L23		;
	.p2align 2,,3
L6:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:305:         return (__toupper(_c));
	mov	w0, w19	;, w
	bl	___toupper		;
; GuessSketchFlow/eval/problem94/code.c:12:             w = toupper(w);
	sxtb	w19, w0	; w, _34
	b	L5		;
	.p2align 2,,3
L3:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 4096	;,
	mov	w0, w19	;, w
	bl	___maskrune		;
; GuessSketchFlow/eval/problem94/code.c:11:         if (islower(w)) {
	cbnz	w0, L6	; _31,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 32768	;,
	mov	w0, w19	;, w
	bl	___maskrune		;
; GuessSketchFlow/eval/problem94/code.c:13:         } else if (isupper(w)) {
	cbz	w0, L5	; _38,
L8:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:299:         return (__tolower(_c));
	mov	w0, w19	;, w
	bl	___tolower		;
; GuessSketchFlow/eval/problem94/code.c:14:             w = tolower(w);
	sxtb	w19, w0	; w, _41
	b	L5		;
LFE27:
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
	.quad	LFB27-.
	.set L$set$2,LFE27-LFB27
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB27
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
	.byte	0x96
	.uleb128 0x3
	.byte	0x95
	.uleb128 0x4
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x98
	.uleb128 0x1
	.byte	0x97
	.uleb128 0x2
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xd6
	.byte	0xd5
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xd8
	.byte	0xd7
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x97
	.uleb128 0x2
	.byte	0x98
	.uleb128 0x1
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
