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
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
LCFI2:
; GuessSketchFlow/eval/problem11/code.c:5: char *func0(const char *str) {
	mov	x24, x0	; str, str
; GuessSketchFlow/eval/problem11/code.c:6:     int len = strlen(str), i, j;
	bl	_strlen		;
; GuessSketchFlow/eval/problem11/code.c:7:     char *result = (char *)malloc(2 * len + 1);
	lsl	w19, w0, 1	; _2, _1,
; GuessSketchFlow/eval/problem11/code.c:6:     int len = strlen(str), i, j;
	mov	x21, x0	; _1, _1
; GuessSketchFlow/eval/problem11/code.c:7:     char *result = (char *)malloc(2 * len + 1);
	add	w0, w19, 1	; _3, _2,
; GuessSketchFlow/eval/problem11/code.c:7:     char *result = (char *)malloc(2 * len + 1);
	sxtw	x0, w0	;, _3
	bl	_malloc		;
	mov	x23, x0	; <retval>, <retval>
; GuessSketchFlow/eval/problem11/code.c:8:     if (!result) {
	cbz	x0, L1	; <retval>,
; GuessSketchFlow/eval/problem11/code.c:30:     strncpy(result, str, len);
	sxtw	x20, w21	; _100, _1
; GuessSketchFlow/eval/problem11/code.c:12:     for (i = 0; i < len; i++) {
	cmp	w21, 0	; _1,
	ble	L3		;,
	mov	x2, x24	; ivtmp.75, str
	lsl	x8, x24, 1	; ivtmp.76, str,
; GuessSketchFlow/eval/problem11/code.c:12:     for (i = 0; i < len; i++) {
	mov	w22, 0	; i,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem11/code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	sub	w6, w21, w22	; _178, _1, i
; GuessSketchFlow/eval/problem11/code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	asr	w6, w6, 1	; _69, _178,
; GuessSketchFlow/eval/problem11/code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	cbz	w6, L16	; _69,
	mov	x3, x2	; ivtmp.67, ivtmp.75
	sub	x7, x8, #1	; _98, ivtmp.76,
	add	x6, x2, w6, sxtw	; _167, ivtmp.75, _69
	b	L6		;
	.p2align 2,,3
L40:
	add	x3, x3, 1	; ivtmp.67, ivtmp.67,
	cmp	x3, x6	; ivtmp.67, _167
	beq	L16		;,
L6:
; GuessSketchFlow/eval/problem11/code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	sub	x4, x7, x3	; _87, _98, ivtmp.67
; GuessSketchFlow/eval/problem11/code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ldrsb	w5, [x3]	; MEM[(const char *)_121], MEM[(const char *)_121]
	ldrsb	w4, [x4, x20]	; *_88, *_88
	cmp	w5, w4	; MEM[(const char *)_121], *_88
	beq	L40		;,
; GuessSketchFlow/eval/problem11/code.c:12:     for (i = 0; i < len; i++) {
	add	w22, w22, 1	; i, i,
; GuessSketchFlow/eval/problem11/code.c:12:     for (i = 0; i < len; i++) {
	add	x2, x2, 1	; ivtmp.75, ivtmp.75,
	add	x8, x8, 1	; ivtmp.76, ivtmp.76,
	cmp	w21, w22	; _1, i
	bne	L4		;,
; GuessSketchFlow/eval/problem11/code.c:30:     strncpy(result, str, len);
	mov	x2, x20	;, _100
	mov	x1, x24	;, str
	mov	x0, x23	;, <retval>
	bl	_strncpy		;
	sub	w0, w21, #1	; _41, _1,
	cmp	w0, 14	; _41,
	bls	L23		;,
; GuessSketchFlow/eval/problem11/code.c:32:         result[len + j] = str[len - j - 1];
	adrp	x1, lC0@PAGE	; tmp232,
	sub	x3, x20, #16	; _16, _100,
	add	x3, x24, x3	; vectp.12, str, _16
	add	x0, x23, x20	; _24, <retval>, _100
	ldr	q29, [x1, #lC0@PAGEOFF]	;,
	and	x4, x21, 4294967280	; _18, _1,
; GuessSketchFlow/eval/problem11/code.c:30:     strncpy(result, str, len);
	mov	x2, 0	; ivtmp.44,
	.p2align 5,,15
L19:
; GuessSketchFlow/eval/problem11/code.c:32:         result[len + j] = str[len - j - 1];
	neg	x1, x2	; _20, ivtmp.44
	ldr	q28, [x3, x1]	;, MEM <const vector(16) char> [(const char *)vectp.12_9 + _20 * 1]
	tbl	v28.16b, {v28.16b}, v29.16b	;,,
; GuessSketchFlow/eval/problem11/code.c:32:         result[len + j] = str[len - j - 1];
	str	q28, [x0, x2]	;, MEM <vector(16) char> [(char *)vectp.16_106 + ivtmp.44_22 * 1]
	add	x2, x2, 16	; ivtmp.44, ivtmp.44,
	cmp	x4, x2	; _18, ivtmp.44
	bne	L19		;,
	tst	x21, 15	; _1,
	beq	L17		;,
	and	w2, w21, -16	; tmp.10, _1,
L18:
	sub	x20, x20, #1	; _62, _100,
	sxtw	x2, w2	; ivtmp.32, tmp.10
; GuessSketchFlow/eval/problem11/code.c:32:         result[len + j] = str[len - j - 1];
	add	x24, x24, x20	; _136, str, _62
	.p2align 5,,15
L21:
	neg	x1, x2	; _73, ivtmp.32
; GuessSketchFlow/eval/problem11/code.c:32:         result[len + j] = str[len - j - 1];
	ldrb	w1, [x24, x1]	;, MEM[(const char *)_136 + _73 * 1]
	strb	w1, [x0, x2]	; MEM[(const char *)_136 + _73 * 1], MEM[(char *)_24 + ivtmp.32_36 * 1]
; GuessSketchFlow/eval/problem11/code.c:31:     for (j = 0; j < len; j++) {
	add	x2, x2, 1	; ivtmp.32, ivtmp.32,
	cmp	w22, w2	; i, ivtmp.32
	bgt	L21		;,
L17:
; GuessSketchFlow/eval/problem11/code.c:34:     result[2 * len] = '\0';
	strb	wzr, [x23, w19, sxtw]	;, *_40
L1:
; GuessSketchFlow/eval/problem11/code.c:36: }
	mov	x0, x23	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI3:
	ret	
	.p2align 2,,3
L16:
LCFI4:
; GuessSketchFlow/eval/problem11/code.c:21:             strncpy(result, str, len);
	mov	x2, x20	;, _100
	mov	x1, x24	;, str
	mov	x0, x23	;, <retval>
	bl	_strncpy		;
; GuessSketchFlow/eval/problem11/code.c:22:             for (j = 0; j < i; j++) {
	cbz	w22, L11	; i,
	sub	w0, w22, #1	; _138, i,
	cmp	w0, 14	; _138,
	bls	L22		;,
; GuessSketchFlow/eval/problem11/code.c:23:                 result[len + j] = str[i - j - 1];
	adrp	x1, lC0@PAGE	; tmp231,
	sxtw	x3, w22	; _57, i
	sub	x4, x3, #16	; _146, _57,
	add	x0, x23, x20	; _24, <retval>, _100
	ldr	q31, [x1, #lC0@PAGEOFF]	;,
	add	x4, x24, x4	; vectp.22, str, _146
	and	x5, x22, 4294967280	; _162, i,
; GuessSketchFlow/eval/problem11/code.c:22:             for (j = 0; j < i; j++) {
	mov	x2, 0	; ivtmp.61,
	.p2align 5,,15
L9:
; GuessSketchFlow/eval/problem11/code.c:23:                 result[len + j] = str[i - j - 1];
	neg	x1, x2	; _164, ivtmp.61
	ldr	q30, [x4, x1]	;, MEM <const vector(16) char> [(const char *)vectp.22_144 + _164 * 1]
	tbl	v30.16b, {v30.16b}, v31.16b	;,,
; GuessSketchFlow/eval/problem11/code.c:23:                 result[len + j] = str[i - j - 1];
	str	q30, [x0, x2]	;, MEM <vector(16) char> [(char *)vectp.26_151 + ivtmp.61_94 * 1]
	add	x2, x2, 16	; ivtmp.61, ivtmp.61,
	cmp	x5, x2	; _162, ivtmp.61
	bne	L9		;,
	tst	x22, 15	; i,
	beq	L11		;,
	and	w2, w22, -16	; _119, i,
L8:
; GuessSketchFlow/eval/problem11/code.c:23:                 result[len + j] = str[i - j - 1];
	sub	x3, x3, #1	; _159, _57,
	sxtw	x2, w2	; ivtmp.49, _119
	add	x3, x24, x3	; _114, str, _159
	.p2align 5,,15
L13:
	neg	x1, x2	; _115, ivtmp.49
; GuessSketchFlow/eval/problem11/code.c:23:                 result[len + j] = str[i - j - 1];
	ldrb	w1, [x3, x1]	;, MEM[(const char *)_114 + _115 * 1]
	strb	w1, [x0, x2]	; MEM[(const char *)_114 + _115 * 1], MEM[(char *)_92 + ivtmp.49_72 * 1]
; GuessSketchFlow/eval/problem11/code.c:22:             for (j = 0; j < i; j++) {
	add	x2, x2, 1	; ivtmp.49, ivtmp.49,
	cmp	w22, w2	; i, ivtmp.49
	bgt	L13		;,
L11:
; GuessSketchFlow/eval/problem11/code.c:25:             result[len + i] = '\0';
	add	w21, w22, w21	; _26, i, _1
; GuessSketchFlow/eval/problem11/code.c:36: }
	mov	x0, x23	;, <retval>
; GuessSketchFlow/eval/problem11/code.c:25:             result[len + i] = '\0';
	strb	wzr, [x23, w21, sxtw]	;, *_28
; GuessSketchFlow/eval/problem11/code.c:36: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI5:
	ret	
L3:
LCFI6:
; GuessSketchFlow/eval/problem11/code.c:30:     strncpy(result, str, len);
	mov	x2, x20	;, _100
	mov	x1, x24	;, str
	bl	_strncpy		;
; GuessSketchFlow/eval/problem11/code.c:34:     result[2 * len] = '\0';
	strb	wzr, [x23, w19, sxtw]	;, *_40
	b	L1		;
L23:
; GuessSketchFlow/eval/problem11/code.c:31:     for (j = 0; j < len; j++) {
	mov	w2, 0	; tmp.10,
	add	x0, x23, x20	; _24, <retval>, _100
	b	L18		;
L22:
; GuessSketchFlow/eval/problem11/code.c:22:             for (j = 0; j < i; j++) {
	mov	w2, 0	; _119,
	sxtw	x3, w22	; _57, i
	add	x0, x23, x20	; _24, <retval>, _100
	b	L8		;
LFE4:
	.literal16
	.align	4
lC0:
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
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
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x97
	.uleb128 0x2
	.byte	0x98
	.uleb128 0x1
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
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
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xb
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
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
