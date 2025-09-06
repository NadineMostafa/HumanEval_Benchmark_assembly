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
	sub	sp, sp, #1088	;,,
LCFI0:
; GuessSketchFlow/eval/problem17/code.c:7:     int char_map[256] = {0};
	mov	x2, 1024	;,
	mov	w1, 0	;,
; GuessSketchFlow/eval/problem17/code.c:5: int func0(const char *str) {
	stp	x29, x30, [sp]	;,,
LCFI1:
	mov	x29, sp	;,
LCFI2:
	stp	x19, x20, [sp, 16]	;,,
LCFI3:
; GuessSketchFlow/eval/problem17/code.c:7:     int char_map[256] = {0};
	add	x20, x29, 64	; tmp140,,
; GuessSketchFlow/eval/problem17/code.c:5: int func0(const char *str) {
	mov	x19, x0	; str, str
; GuessSketchFlow/eval/problem17/code.c:7:     int char_map[256] = {0};
	mov	x0, x20	;, tmp140
; GuessSketchFlow/eval/problem17/code.c:5: int func0(const char *str) {
	stp	x21, x22, [sp, 32]	;,,
LCFI4:
; GuessSketchFlow/eval/problem17/code.c:7:     int char_map[256] = {0};
	bl	_memset		;
; GuessSketchFlow/eval/problem17/code.c:10:     for (index = 0; str[index]; index++) {
	ldrsb	w0, [x19]	; _7, *str_15(D)
; GuessSketchFlow/eval/problem17/code.c:10:     for (index = 0; str[index]; index++) {
	cbz	w0, L9	; _7,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	adrp	x22, __DefaultRuneLocale@GOTPAGE	; tmp143,
	ldr	x22, [x22, __DefaultRuneLocale@GOTPAGEOFF]	; tmp143,
	add	x19, x19, 1	; ivtmp.13, str,
; GuessSketchFlow/eval/problem17/code.c:6:     int count = 0;
	mov	w21, 0	; <retval>,
	stp	x23, x24, [x29, 48]	;,,
LCFI5:
; GuessSketchFlow/eval/problem17/code.c:13:             char_map[ch] = 1;
	mov	w23, 1	; tmp142,
	b	L8		;
	.p2align 2,,3
L17:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:163: 	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
	add	x2, x22, w2, uxtb 2	; tmp131, tmp143, _31,,
; GuessSketchFlow/eval/problem17/code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	ldr	w0, [x2, 60]	;, _DefaultRuneLocale.__runetype[_31]
	tbnz	x0, 8, L7	; _DefaultRuneLocale.__runetype[_31],,
L4:
; GuessSketchFlow/eval/problem17/code.c:10:     for (index = 0; str[index]; index++) {
	ldrsb	w0, [x19], 1	; _7, MEM[(const char *)_10 + -1B]
; GuessSketchFlow/eval/problem17/code.c:10:     for (index = 0; str[index]; index++) {
	cbz	w0, L16	; _7,
L8:
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:299:         return (__tolower(_c));
	and	w0, w0, 255	;, _7
	bl	___tolower		;
; GuessSketchFlow/eval/problem17/code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	sbfiz	x1, x0, 2, 8	; tmp123, _21,,
	sxtb	x24, w0	; _3, _21
; GuessSketchFlow/eval/problem17/code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	ldr	w1, [x20, x1]	;, char_map[_3]
	cbnz	w1, L4	; char_map[_3],
	and	w2, w0, 255	; _31, _21,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	tbz	x0, 7, L17	; _21,,
; /Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_ctype.h:164: 		: !!__maskrune(_c, _f));
	mov	x1, 256	;,
	mov	w0, w2	;, _31
	bl	___maskrune		;
; GuessSketchFlow/eval/problem17/code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	cbz	w0, L4	; _26,
L7:
; GuessSketchFlow/eval/problem17/code.c:10:     for (index = 0; str[index]; index++) {
	ldrsb	w0, [x19], 1	; _7, MEM[(const char *)_10 + -1B]
; GuessSketchFlow/eval/problem17/code.c:14:             count++;
	add	w21, w21, 1	; <retval>, <retval>,
; GuessSketchFlow/eval/problem17/code.c:13:             char_map[ch] = 1;
	str	w23, [x20, x24, lsl 2]	; tmp142, char_map[_3]
; GuessSketchFlow/eval/problem17/code.c:10:     for (index = 0; str[index]; index++) {
	cbnz	w0, L8	; _7,
L16:
	ldp	x23, x24, [x29, 48]	;,,
LCFI6:
; GuessSketchFlow/eval/problem17/code.c:19: }
	mov	w0, w21	;, <retval>
	ldp	x29, x30, [sp]	;,,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	add	sp, sp, 1088	;,,
LCFI7:
	ret	
	.p2align 2,,3
L9:
LCFI8:
; GuessSketchFlow/eval/problem17/code.c:6:     int count = 0;
	mov	w21, 0	; <retval>,
; GuessSketchFlow/eval/problem17/code.c:19: }
	ldp	x29, x30, [sp]	;,,
	mov	w0, w21	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	add	sp, sp, 1088	;,,
LCFI9:
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
	.uleb128 0x440
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0x9d
	.uleb128 0x88
	.byte	0x9e
	.uleb128 0x87
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x93
	.uleb128 0x86
	.byte	0x94
	.uleb128 0x85
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x95
	.uleb128 0x84
	.byte	0x96
	.uleb128 0x83
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x98
	.uleb128 0x81
	.byte	0x97
	.uleb128 0x82
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xd8
	.byte	0xd7
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x440
	.byte	0x93
	.uleb128 0x86
	.byte	0x94
	.uleb128 0x85
	.byte	0x95
	.uleb128 0x84
	.byte	0x96
	.uleb128 0x83
	.byte	0x9d
	.uleb128 0x88
	.byte	0x9e
	.uleb128 0x87
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
