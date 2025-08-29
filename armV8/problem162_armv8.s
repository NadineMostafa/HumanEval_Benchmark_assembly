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
LFB27:
	stp	x29, x30, [sp, -80]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x23, x24, [sp, 48]	;,,
LCFI2:
	mov	x23, x0	; s, s
; GuessSketchFlow/eval/problem162/code.c:7:     int length = strlen(s);
	bl	_strlen		;
; GuessSketchFlow/eval/problem162/code.c:8:     for (int i = 0; i < length; i++) {
	cmp	w0, 0	; tmp185,
	ble	L20		;,
	stp	x21, x22, [x29, 32]	;,,
LCFI3:
	mov	x24, x0	; tmp185,
	sub	w21, w0, #1	; _15, tmp185,
	add	x0, x23, 1	; _103, s,
	add	x21, x21, x0	; _111, _15, _103
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	adrp	x22, __DefaultRuneLocale@GOTPAGE	; tmp183,
	ldr	x22, [x22, __DefaultRuneLocale@GOTPAGEOFF]	; tmp183,
	stp	x19, x20, [x29, 16]	;,,
LCFI4:
; GuessSketchFlow/eval/problem162/code.c:8:     for (int i = 0; i < length; i++) {
	mov	x19, x23	; ivtmp.24, s
; GuessSketchFlow/eval/problem162/code.c:6:     int nletter = 0;
	mov	w20, 0	; nletter,
	str	x25, [x29, 64]	;,
LCFI5:
	mov	x25, x23	; ivtmp.16, s
L14:
; GuessSketchFlow/eval/problem162/code.c:9:         if (isalpha((unsigned char)s[i])) {
	ldrsb	w1, [x19]	; _4, MEM[(char *)_36]
; GuessSketchFlow/eval/problem162/code.c:9:         if (isalpha((unsigned char)s[i])) {
	and	w0, w1, 255	; _6, _4
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	tbnz	w1, #31, L3	; _4,
L37:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	sxtw	x1, w0	; _6, _6
	mov	x3, x22	; tmp178, tmp183
	add	x2, x22, x1, lsl 2	; tmp155, tmp183, _6,
	ldr	w2, [x2, 60]	;, _DefaultRuneLocale.__runetype[_6]
; GuessSketchFlow/eval/problem162/code.c:9:         if (isalpha((unsigned char)s[i])) {
	tbz	x2, 8, L5	; _49,,
L4:
; GuessSketchFlow/eval/problem162/code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	tbnz	x2, 15, L7	; _49,,
L8:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	add	x1, x3, x1, lsl 2	; tmp168, tmp178, _6,
; GuessSketchFlow/eval/problem162/code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	ldr	w0, [x1, 60]	;, _DefaultRuneLocale.__runetype[_101]
	tbnz	x0, 12, L12	; _DefaultRuneLocale.__runetype[_101],,
; GuessSketchFlow/eval/problem162/code.c:8:     for (int i = 0; i < length; i++) {
	add	x19, x19, 1	; ivtmp.24, ivtmp.24,
	cmp	x19, x21	; ivtmp.24, _111
	bne	L14		;,
L36:
; GuessSketchFlow/eval/problem162/code.c:16:     if (nletter == length) {
	cmp	w20, w24	; nletter, tmp185
	beq	L35		;,
L31:
	ldr	x25, [x29, 64]	;,
LCFI6:
	ldp	x19, x20, [x29, 16]	;,,
LCFI7:
	ldp	x21, x22, [x29, 32]	;,,
LCFI8:
L20:
; GuessSketchFlow/eval/problem162/code.c:24: }
	mov	x0, x23	;, s
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI9:
	ret	
	.p2align 2,,3
L5:
LCFI10:
; GuessSketchFlow/eval/problem162/code.c:13:             nletter += 1;
	add	w20, w20, 1	; nletter, nletter,
L10:
; GuessSketchFlow/eval/problem162/code.c:8:     for (int i = 0; i < length; i++) {
	add	x19, x19, 1	; ivtmp.24, ivtmp.24,
	cmp	x19, x21	; ivtmp.24, _111
	beq	L36		;,
; GuessSketchFlow/eval/problem162/code.c:9:         if (isalpha((unsigned char)s[i])) {
	ldrsb	w1, [x19]	; _4, MEM[(char *)_36]
; GuessSketchFlow/eval/problem162/code.c:9:         if (isalpha((unsigned char)s[i])) {
	and	w0, w1, 255	; _6, _4
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	tbz	w1, #31, L37	; _4,
L3:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 256	;,
	bl	___maskrune		;
; GuessSketchFlow/eval/problem162/code.c:9:         if (isalpha((unsigned char)s[i])) {
	cbz	w0, L5	; _52,
; GuessSketchFlow/eval/problem162/code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	ldrsb	w1, [x19]	; _7, MEM[(char *)_36]
; GuessSketchFlow/eval/problem162/code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	and	w0, w1, 255	; _6, _7
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	tbz	w1, #31, L38	; _7,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 32768	;,
	bl	___maskrune		;
; GuessSketchFlow/eval/problem162/code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	ldrsb	w1, [x19]	; pretmp_115, MEM[(char *)_36]
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	w2, w0	; _58,
; GuessSketchFlow/eval/problem162/code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	and	w0, w1, 255	; _6, pretmp_115
; GuessSketchFlow/eval/problem162/code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	cbnz	w2, L7	; _58,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	tbz	w1, #31, L39	; pretmp_115,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 4096	;,
	bl	___maskrune		;
; GuessSketchFlow/eval/problem162/code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	cbz	w0, L10	; _65,
L12:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:305:         return (__toupper(_c));
	ldrb	w0, [x19]	;, MEM[(char *)_36]
	bl	___toupper		;
; GuessSketchFlow/eval/problem162/code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	strb	w0, [x19]	; _68, MEM[(char *)_36]
	b	L10		;
	.p2align 2,,3
L7:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:299:         return (__tolower(_c));
	bl	___tolower		;
; GuessSketchFlow/eval/problem162/code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	strb	w0, [x19]	; _61, MEM[(char *)_36]
	b	L10		;
	.p2align 2,,3
L35:
; GuessSketchFlow/eval/problem162/code.c:17:         for (int i = 0; i < length / 2; i++) {
	asr	w2, w20, 1	; _78, nletter,
; GuessSketchFlow/eval/problem162/code.c:17:         for (int i = 0; i < length / 2; i++) {
	cbz	w2, L31	; _78,
	sub	x0, x23, #1	; _100, s,
	add	x2, x23, w2, sxtw	; _57, s, _78
	add	x20, x0, w20, sxtw	; ivtmp.17, _100, nletter
	.p2align 5,,15
L16:
; GuessSketchFlow/eval/problem162/code.c:19:             s[i] = s[length - i - 1];
	ldrsb	w1, [x20]	; _27, MEM[(char *)_69]
; GuessSketchFlow/eval/problem162/code.c:18:             char temp = s[i];
	ldrsb	w0, [x25]	; temp, MEM[(char *)_71]
; GuessSketchFlow/eval/problem162/code.c:19:             s[i] = s[length - i - 1];
	strb	w1, [x25], 1	; _27, MEM[(char *)_71]
; GuessSketchFlow/eval/problem162/code.c:20:             s[length - i - 1] = temp;
	strb	w0, [x20], -1	; temp, MEM[(char *)_69]
; GuessSketchFlow/eval/problem162/code.c:17:         for (int i = 0; i < length / 2; i++) {
	cmp	x2, x25	; _57, ivtmp.16
	bne	L16		;,
	b	L31		;
L39:
	adrp	x3, __DefaultRuneLocale@GOTPAGE	; tmp178,
	ldr	x3, [x3, __DefaultRuneLocale@GOTPAGEOFF]	; tmp178,
	sxtw	x1, w0	; _6, _6
	b	L8		;
L38:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	adrp	x3, __DefaultRuneLocale@GOTPAGE	; tmp178,
	ldr	x3, [x3, __DefaultRuneLocale@GOTPAGEOFF]	; tmp178,
	sxtw	x1, w0	; _6, _6
	add	x2, x3, x1, lsl 2	; tmp161, tmp178, _6,
	ldr	w2, [x2, 60]	;, _DefaultRuneLocale.__runetype[_9]
	b	L4		;
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
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x97
	.uleb128 0x4
	.byte	0x98
	.uleb128 0x3
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x96
	.uleb128 0x5
	.byte	0x95
	.uleb128 0x6
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x94
	.uleb128 0x7
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x99
	.uleb128 0x2
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xd9
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xd4
	.byte	0xd3
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xd6
	.byte	0xd5
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd8
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$13,LCFI10-LCFI9
	.long L$set$13
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x50
	.byte	0x93
	.uleb128 0x8
	.byte	0x94
	.uleb128 0x7
	.byte	0x95
	.uleb128 0x6
	.byte	0x96
	.uleb128 0x5
	.byte	0x97
	.uleb128 0x4
	.byte	0x98
	.uleb128 0x3
	.byte	0x99
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
