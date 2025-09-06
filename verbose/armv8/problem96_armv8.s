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
LFB30:
; GuessSketchFlow/eval/problem96/code.c:7:     if (size == 0) return 0;
	cbz	w1, L33	; size,
	cmp	w1, 0	; size,
; GuessSketchFlow/eval/problem96/code.c:9:     for (int i = 0; i < size; ++i) {
	ble	L34		;,
; GuessSketchFlow/eval/problem96/code.c:6: int func0(char* dict[][2], int size) {
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	adrp	x20, __DefaultRuneLocale@GOTPAGE	; tmp171,
	ldr	x20, [x20, __DefaultRuneLocale@GOTPAGEOFF]	; tmp171,
; GuessSketchFlow/eval/problem96/code.c:6: int func0(char* dict[][2], int size) {
	stp	x21, x22, [sp, 32]	;,,
LCFI3:
	mov	x21, x0	; ivtmp.20, dict
	add	x22, x0, w1, uxtw 4	; _87, ivtmp.20, size,
	stp	x23, x24, [sp, 48]	;,,
LCFI4:
; GuessSketchFlow/eval/problem96/code.c:8:     int has_lower = 0, has_upper = 0;
	mov	w24, 0	; has_upper,
; GuessSketchFlow/eval/problem96/code.c:8:     int has_lower = 0, has_upper = 0;
	mov	w23, 0	; has_lower,
L14:
; GuessSketchFlow/eval/problem96/code.c:10:         char* key = dict[i][0];
	ldr	x19, [x21]	; key, MEM[(char * *)_69]
; GuessSketchFlow/eval/problem96/code.c:11:         for (int j = 0; key[j]; ++j) {
	ldrsb	w1, [x19]	; _16, *key_29
; GuessSketchFlow/eval/problem96/code.c:11:         for (int j = 0; key[j]; ++j) {
	cbz	w1, L5	; _16,
	.p2align 5,,15
L13:
; GuessSketchFlow/eval/problem96/code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	and	w0, w1, 255	; _5, _16
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	tbnz	w1, #31, L6	; _16,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	add	x0, x20, w0, uxtb 2	; tmp145, tmp171, _5,,
; GuessSketchFlow/eval/problem96/code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	ldr	w0, [x0, 60]	;, _DefaultRuneLocale.__runetype[_5]
	tbz	x0, 8, L8	; _DefaultRuneLocale.__runetype[_5],,
L7:
; GuessSketchFlow/eval/problem96/code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	ldrsb	w1, [x19]	; _6, MEM[(char *)_71]
; GuessSketchFlow/eval/problem96/code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	and	w0, w1, 255	; _8, _6
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	tbnz	w1, #31, L9	; _6,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	add	x0, x20, w0, uxtb 2	; tmp152, tmp171, _8,,
	ldr	w1, [x0, 60]	;, _DefaultRuneLocale.__runetype[_8]
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	ubfx	x0, x1, 15, 1	; _40, _38,,
; GuessSketchFlow/eval/problem96/code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	orr	w24, w24, w0	; has_upper, has_upper, _40
L10:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	ubfx	x1, x1, 12, 1	; _46, _38,,
L12:
; GuessSketchFlow/eval/problem96/code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	orr	w23, w23, w1	; has_lower, has_lower, _46
; GuessSketchFlow/eval/problem96/code.c:15:             if (has_upper + has_lower == 2) return 0;
	add	w0, w23, w24	; _13, has_lower, has_upper
; GuessSketchFlow/eval/problem96/code.c:15:             if (has_upper + has_lower == 2) return 0;
	cmp	w0, 2	; _13,
	beq	L8		;,
; GuessSketchFlow/eval/problem96/code.c:11:         for (int j = 0; key[j]; ++j) {
	ldrsb	w1, [x19, 1]!	; _16, MEM[(char *)_15]
; GuessSketchFlow/eval/problem96/code.c:11:         for (int j = 0; key[j]; ++j) {
	cbnz	w1, L13	; _16,
L5:
; GuessSketchFlow/eval/problem96/code.c:9:     for (int i = 0; i < size; ++i) {
	add	x21, x21, 16	; ivtmp.20, ivtmp.20,
	cmp	x21, x22	; ivtmp.20, _87
	bne	L14		;,
; GuessSketchFlow/eval/problem96/code.c:18:     return 1;
	mov	w0, 1	; <retval>,
	b	L1		;
	.p2align 2,,3
L6:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 256	;,
	bl	___maskrune		;
; GuessSketchFlow/eval/problem96/code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	cbnz	w0, L7	; _35,
L8:
; GuessSketchFlow/eval/problem96/code.c:7:     if (size == 0) return 0;
	mov	w0, 0	; <retval>,
L1:
; GuessSketchFlow/eval/problem96/code.c:19: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI5:
	ret	
	.p2align 2,,3
L9:
LCFI6:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 32768	;,
	bl	___maskrune		;
; GuessSketchFlow/eval/problem96/code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	ldrsb	w1, [x19]	; _10, MEM[(char *)_71]
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	cmp	w0, 0	; _41,
	cset	w0, ne	; _42,
; GuessSketchFlow/eval/problem96/code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	orr	w24, w24, w0	; has_upper, has_upper, _42
; GuessSketchFlow/eval/problem96/code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	and	w0, w1, 255	; _12, _10
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	tbz	w1, #31, L35	; _10,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 4096	;,
	bl	___maskrune		;
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	cmp	w0, 0	; _47,
	cset	w1, ne	; _46,
	b	L12		;
	.p2align 2,,3
L33:
LCFI7:
; GuessSketchFlow/eval/problem96/code.c:7:     if (size == 0) return 0;
	mov	w0, 0	; <retval>,
	ret	
L34:
; GuessSketchFlow/eval/problem96/code.c:18:     return 1;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem96/code.c:19: }
	ret	
L35:
LCFI8:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	adrp	x1, __DefaultRuneLocale@GOTPAGE	; tmp156,
	ldr	x1, [x1, __DefaultRuneLocale@GOTPAGEOFF]	; tmp156,
	add	x0, x1, w0, uxtb 2	; tmp160, tmp156, _12,,
	ldr	w1, [x0, 60]	;, _DefaultRuneLocale.__runetype[_12]
	b	L10		;
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
	.byte	0x98
	.uleb128 0x1
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xa
	.byte	0xde
	.byte	0xdd
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
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xb
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xd3
	.byte	0xd4
	.byte	0xd5
	.byte	0xd6
	.byte	0xd7
	.byte	0xd8
	.byte	0xdd
	.byte	0xde
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
