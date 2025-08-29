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
	str	x19, [sp, 16]	;,
LCFI2:
; GuessSketchFlow/eval/problem135/code.c:5: int func0(const char *txt) {
	mov	x19, x0	; txt, txt
; GuessSketchFlow/eval/problem135/code.c:6:     int len = strlen(txt);
	bl	_strlen		;
; GuessSketchFlow/eval/problem135/code.c:7:     if (len == 0) return 0;
	cbz	w0, L5	; tmp123,
; GuessSketchFlow/eval/problem135/code.c:8:     char last_char = txt[len - 1];
	add	x4, x19, w0, sxtw	; tmp145, txt, tmp123
	ldrsb	w1, [x4, -1]	; last_char, *_4
	mov	x2, x0	; tmp123, tmp147
	mov	w3, w0	; <retval>, tmp123
; GuessSketchFlow/eval/problem135/code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	and	w0, w1, 255	; _6, last_char
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	tbnz	w1, #31, L4	; last_char,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	adrp	x1, __DefaultRuneLocale@GOTPAGE	; tmp125,
	ldr	x1, [x1, __DefaultRuneLocale@GOTPAGEOFF]	; tmp125,
	add	x0, x1, w0, uxtb 2	; tmp129, tmp125, _6,,
; GuessSketchFlow/eval/problem135/code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	ldr	w0, [x0, 60]	;, _DefaultRuneLocale.__runetype[_6]
	tbz	x0, 8, L5	; _DefaultRuneLocale.__runetype[_6],,
L7:
; GuessSketchFlow/eval/problem135/code.c:10:     if (len == 1) return 1;
	cmp	w2, 1	; tmp123,
	beq	L1		;,
; GuessSketchFlow/eval/problem135/code.c:11:     char second_last_char = txt[len - 2];
	ldrsb	w1, [x4, -2]	; second_last_char, *_9
; GuessSketchFlow/eval/problem135/code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	and	w0, w1, 255	; _11, second_last_char
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	tbnz	w1, #31, L8	; second_last_char,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	adrp	x1, __DefaultRuneLocale@GOTPAGE	; tmp133,
	ldr	x1, [x1, __DefaultRuneLocale@GOTPAGEOFF]	; tmp133,
	add	x0, x1, w0, uxtb 2	; tmp137, tmp133, _11,,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	ldr	w3, [x0, 60]	;, _DefaultRuneLocale.__runetype[_11]
	ubfx	x3, x3, 8, 1	; _26, _DefaultRuneLocale.__runetype[_11],,
L9:
; GuessSketchFlow/eval/problem135/code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	eor	w3, w3, 1	; tmp143, _26,
; GuessSketchFlow/eval/problem135/code.c:14: }
	ldr	x19, [sp, 16]	;,
; GuessSketchFlow/eval/problem135/code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	and	w3, w3, 255	; <retval>, tmp143
; GuessSketchFlow/eval/problem135/code.c:14: }
	ldp	x29, x30, [sp], 64	;,,,
LCFI3:
	mov	w0, w3	;, <retval>
	ret	
	.p2align 2,,3
L4:
LCFI4:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 256	;,
	stp	x4, x2, [x29, 40]	; tmp145, tmp123,
	str	w2, [x29, 60]	; <retval>, %sfp
	bl	___maskrune		;
; GuessSketchFlow/eval/problem135/code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	ldr	w3, [x29, 60]	;, %sfp
	ldp	x4, x2, [x29, 40]	; tmp145, tmp123,
	cbnz	w0, L7	; _21,
L5:
; GuessSketchFlow/eval/problem135/code.c:7:     if (len == 0) return 0;
	mov	w3, 0	; <retval>,
L1:
; GuessSketchFlow/eval/problem135/code.c:14: }
	mov	w0, w3	;, <retval>
	ldr	x19, [sp, 16]	;,
	ldp	x29, x30, [sp], 64	;,,,
LCFI5:
	ret	
	.p2align 2,,3
L8:
LCFI6:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 256	;,
	bl	___maskrune		;
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	cmp	w0, 0	; _27,
	cset	w3, ne	; _26,
	b	L9		;
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
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xb
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
