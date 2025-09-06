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
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	mov	x19, x0	; S, S
; GuessSketchFlow/eval/problem92/code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	ldrsb	w0, [x0]	; _12, *S_22(D)
; GuessSketchFlow/eval/problem92/code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	cbz	w0, L16	; _12,
	stp	x21, x22, [x29, 32]	;,,
LCFI3:
	mov	x21, 70377334112256	; tmp193,
; GuessSketchFlow/eval/problem92/code.c:8:     int sum = 0;
	mov	w20, 0	; <retval>,
; GuessSketchFlow/eval/problem92/code.c:7:     int isi = 0;
	mov	w22, 0	; isi,
	movk	x21, 0x8000, lsl 48	; tmp193,,
	stp	x23, x24, [x29, 48]	;,,
LCFI4:
; GuessSketchFlow/eval/problem92/code.c:6:     int isstart = 1;
	mov	w23, 1	; isstart,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	adrp	x24, __DefaultRuneLocale@GOTPAGE	; tmp192,
	ldr	x24, [x24, __DefaultRuneLocale@GOTPAGEOFF]	; tmp192,
	b	L15		;
	.p2align 2,,3
L7:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	cmp	w0, 127	; _2,
	bhi	L10		;,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	sxtw	x1, w0	; _24, _2
	mov	x3, x24	; tmp190, tmp192
	add	x2, x24, x1, lsl 2	; tmp164, tmp192, _24,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	ldr	w2, [x2, 60]	;, _DefaultRuneLocale.__runetype[_103]
	ubfx	x2, x2, 14, 1	; _79, _DefaultRuneLocale.__runetype[_103],,
; GuessSketchFlow/eval/problem92/code.c:16:         } else if (!isspace(S[i])) {
	and	w22, w22, w2	; isi, isi, _79
L11:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	add	x1, x3, x1, lsl 2	; tmp174, tmp190, _24,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	ldr	w1, [x1, 60]	;, _DefaultRuneLocale.__runetype[_24]
	ubfx	x1, x1, 14, 1	; _46, _DefaultRuneLocale.__runetype[_24],,
L13:
	and	w2, w0, 255	; _2, _2
	cmp	w2, 63	; _2,
	bhi	L9		;,
	lsr	x0, x21, x0	; _25, tmp193, _2
	tbz	x0, 0, L9	; _25,,
; GuessSketchFlow/eval/problem92/code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	ldrsb	w0, [x19, 1]!	; _12, MEM[(const char *)_11]
; GuessSketchFlow/eval/problem92/code.c:15:             isi = 1;
	mov	w23, 1	; isstart,
; GuessSketchFlow/eval/problem92/code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	cbz	w0, L21	; _12,
L15:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	cmp	w0, 127	; _12,
	bhi	L3		;,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	add	x0, x24, w0, sxtw 2	; tmp143, tmp192, _12,
; GuessSketchFlow/eval/problem92/code.c:10:         if (isspace(S[i]) && isi) {
	ldr	w0, [x0, 60]	;, _DefaultRuneLocale.__runetype[_1]
	tbnz	x0, 14, L4	; _DefaultRuneLocale.__runetype[_1],,
L6:
; GuessSketchFlow/eval/problem92/code.c:14:         if (S[i] == 'I' && isstart) {
	ldrsb	w0, [x19]	; _2, MEM[(const char *)_64]
; GuessSketchFlow/eval/problem92/code.c:14:         if (S[i] == 'I' && isstart) {
	cmp	w0, 73	; _2,
	bne	L7		;,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	ldr	x1, [x24, 352]	; tmp158,
; GuessSketchFlow/eval/problem92/code.c:14:         if (S[i] == 'I' && isstart) {
	cbnz	w23, L8	; isstart,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	ubfx	x0, x1, 14, 1	; _105, tmp150,,
	ubfx	w1, w1, 14, 1	; _46, tmp150,,
; GuessSketchFlow/eval/problem92/code.c:16:         } else if (!isspace(S[i])) {
	and	w22, w22, w0	; isi, isi, _105
L9:
; GuessSketchFlow/eval/problem92/code.c:19:         if (!isspace(S[i])) {
	and	w23, w23, w1	; isstart, isstart, _46
L23:
; GuessSketchFlow/eval/problem92/code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	ldrsb	w0, [x19, 1]!	; _12, MEM[(const char *)_11]
; GuessSketchFlow/eval/problem92/code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	cbnz	w0, L15	; _12,
L21:
; GuessSketchFlow/eval/problem92/code.c:27: }
	mov	w0, w20	;, <retval>
	ldp	x21, x22, [x29, 32]	;,,
LCFI5:
	ldp	x23, x24, [x29, 48]	;,,
LCFI6:
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI7:
	ret	
	.p2align 2,,3
L3:
LCFI8:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 16384	;,
	bl	___maskrune		;
; GuessSketchFlow/eval/problem92/code.c:10:         if (isspace(S[i]) && isi) {
	cbz	w0, L6	; _30,
L4:
; GuessSketchFlow/eval/problem92/code.c:10:         if (isspace(S[i]) && isi) {
	add	w20, w20, w22	; <retval>, <retval>, isi
	mov	w22, 0	; isi,
	b	L6		;
	.p2align 2,,3
L10:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 16384	;,
	bl	___maskrune		;
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	cmp	w0, 0	;,
; GuessSketchFlow/eval/problem92/code.c:19:         if (!isspace(S[i])) {
	ldrsb	w0, [x19]	; _2, MEM[(const char *)_64]
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	cset	w1, ne	; _38,
; GuessSketchFlow/eval/problem92/code.c:16:         } else if (!isspace(S[i])) {
	and	w22, w22, w1	; isi, isi, _38
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	cmp	w0, 127	; _2,
	bls	L22		;,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 16384	;,
	bl	___maskrune		;
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	cmp	w0, 0	; _44,
; GuessSketchFlow/eval/problem92/code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	ldrsb	w0, [x19]	; _2, MEM[(const char *)_64]
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	cset	w1, ne	; _46,
	b	L13		;
	.p2align 2,,3
L8:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	ubfx	w1, w1, 14, 1	; _46, tmp158,,
; GuessSketchFlow/eval/problem92/code.c:15:             isi = 1;
	mov	w22, w23	; isi, isstart
; GuessSketchFlow/eval/problem92/code.c:19:         if (!isspace(S[i])) {
	and	w23, w23, w1	; isstart, isstart, _46
	b	L23		;
	.p2align 2,,3
L22:
	adrp	x3, __DefaultRuneLocale@GOTPAGE	; tmp190,
	ldr	x3, [x3, __DefaultRuneLocale@GOTPAGEOFF]	; tmp190,
	sxtw	x1, w0	; _24, _2
	b	L11		;
	.p2align 2,,3
L16:
LCFI9:
; GuessSketchFlow/eval/problem92/code.c:8:     int sum = 0;
	mov	w20, 0	; <retval>,
; GuessSketchFlow/eval/problem92/code.c:27: }
	mov	w0, w20	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI10:
	ret	
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xd5
	.byte	0xd6
	.byte	0xd7
	.byte	0xd8
	.byte	0x4
	.set L$set$13,LCFI10-LCFI9
	.long L$set$13
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
