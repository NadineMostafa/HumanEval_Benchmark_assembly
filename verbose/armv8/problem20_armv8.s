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
	stp	x29, x30, [sp, -208]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	str	x25, [sp, 64]	;,
LCFI2:
	mov	x25, x0	; numbers, numbers
; GuessSketchFlow/eval/problem20/code.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	adrp	x0, lC11@PAGE	; tmp135,
	add	x0, x0, lC11@PAGEOFF;	; tmp134, tmp135,
; GuessSketchFlow/eval/problem20/code.c:4: const char* func0(const char* numbers) {
	stp	x19, x20, [sp, 16]	;,,
LCFI3:
; GuessSketchFlow/eval/problem20/code.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	add	x19, x29, 128	; tmp195,,
	add	x20, x29, 88	; tmp197,,
	ldp	q28, q27, [x0]	; tmp138, tmp139,
; GuessSketchFlow/eval/problem20/code.c:5:     int count[10] = {0};
	stp	xzr, xzr, [x29, 88]	; count
; GuessSketchFlow/eval/problem20/code.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	ldp	q30, q29, [x0, 32]	; tmp140, tmp141,
; GuessSketchFlow/eval/problem20/code.c:5:     int count[10] = {0};
	stp	xzr, xzr, [x29, 104]	; count
; GuessSketchFlow/eval/problem20/code.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	ldr	q31, [x0, 64]	; tmp142,
; GuessSketchFlow/eval/problem20/code.c:5:     int count[10] = {0};
	str	xzr, [x29, 120]	;, count
; GuessSketchFlow/eval/problem20/code.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	stp	q28, q27, [x19]	; tmp138, tmp139,
	stp	q30, q29, [x19, 32]	; tmp140, tmp141,
; GuessSketchFlow/eval/problem20/code.c:12:     if (*numbers) {
	ldrsb	w0, [x25]	; _4, *numbers_40(D)
; GuessSketchFlow/eval/problem20/code.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	str	q31, [x19, 64]	; tmp142, numto
; GuessSketchFlow/eval/problem20/code.c:12:     if (*numbers) {
	cbz	w0, L2	; _4,
	stp	x21, x22, [x29, 32]	;,,
LCFI4:
; GuessSketchFlow/eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	mov	x21, 1	; ivtmp.39,
	stp	x23, x24, [x29, 48]	;,,
LCFI5:
	add	x24, x29, 80	; tmp196,,
; GuessSketchFlow/eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	tst	w0, -33	; _4,
	beq	L18		;,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem20/code.c:15:                 current[i] = numbers[i];
	add	x1, x24, x21	; tmp147, tmp196, ivtmp.39
	strb	w0, [x1, -1]	; _4, MEM[(char *)&current + -1B + ivtmp.39_73 * 1]
	mov	x1, x21	; ivtmp.39, ivtmp.39
; GuessSketchFlow/eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	ldrsb	w0, [x25, x21]	; _4, MEM[(const char *)numbers_21 + ivtmp.39_73 * 1]
; GuessSketchFlow/eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	add	x21, x21, 1	; ivtmp.39, ivtmp.39,
	tst	w0, -33	; _4,
	bne	L4		;,
L3:
	mov	x23, x19	; ivtmp.36, tmp195
; GuessSketchFlow/eval/problem20/code.c:18:             for (j = 0; j < 10; ++j) {
	mov	w22, 0	; j,
; GuessSketchFlow/eval/problem20/code.c:17:             current[i] = '\0';
	strb	wzr, [x24, w1, sxtw]	;, current[i_94]
	.p2align 5,,15
L7:
; GuessSketchFlow/eval/problem20/code.c:19:                 if (strcmp(current, numto[j]) == 0) {
	ldr	x1, [x23]	;, MEM[(const char * *)_72]
	mov	x0, x24	;, tmp196
	bl	_strcmp		;
; GuessSketchFlow/eval/problem20/code.c:19:                 if (strcmp(current, numto[j]) == 0) {
	cbz	w0, L29	; tmp204,
; GuessSketchFlow/eval/problem20/code.c:18:             for (j = 0; j < 10; ++j) {
	add	w22, w22, 1	; j, j,
; GuessSketchFlow/eval/problem20/code.c:18:             for (j = 0; j < 10; ++j) {
	add	x23, x23, 8	; ivtmp.36, ivtmp.36,
	cmp	w22, 10	; j,
	bne	L7		;,
; GuessSketchFlow/eval/problem20/code.c:24:             numbers += i + 1;
	add	x25, x25, x21	; numbers, numbers, ivtmp.39
; GuessSketchFlow/eval/problem20/code.c:25:         } while (numbers[-1]);
	ldrsb	w0, [x25, -1]	; MEM[(const char *)numbers_44 + -1B], MEM[(const char *)numbers_44 + -1B]
	cbz	w0, L30	; MEM[(const char *)numbers_44 + -1B],
L8:
; GuessSketchFlow/eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	ldrsb	w0, [x25]	; _4, *numbers_44
; GuessSketchFlow/eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	mov	x21, 1	; ivtmp.39,
	tst	w0, -33	; _4,
	bne	L4		;,
L18:
; GuessSketchFlow/eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	mov	w1, 0	; i,
	b	L3		;
L29:
; GuessSketchFlow/eval/problem20/code.c:20:                     count[j]++;
	sbfiz	x22, x22, 2, 32	; tmp158, j,,
; GuessSketchFlow/eval/problem20/code.c:24:             numbers += i + 1;
	add	x25, x25, x21	; numbers, numbers, ivtmp.39
; GuessSketchFlow/eval/problem20/code.c:20:                     count[j]++;
	ldr	w0, [x20, x22]	;, count[j_96]
	add	w0, w0, 1	; _11, count[j_96],
	str	w0, [x20, x22]	; _11, count[j_96]
; GuessSketchFlow/eval/problem20/code.c:25:         } while (numbers[-1]);
	ldrsb	w0, [x25, -1]	; MEM[(const char *)numbers_44 + -1B], MEM[(const char *)numbers_44 + -1B]
	cbnz	w0, L8	; MEM[(const char *)numbers_44 + -1B],
L30:
	ldp	x21, x22, [x29, 32]	;,,
LCFI6:
	ldp	x23, x24, [x29, 48]	;,,
LCFI7:
L2:
	adrp	x0, _out.0@PAGE	; tmp194,
; GuessSketchFlow/eval/problem20/code.c:29:         for (j = 0; j < count[i]; ++j) {
	mov	x12, 1	; ivtmp.27,
	mov	w7, 0	; index,
; GuessSketchFlow/eval/problem20/code.c:31:                 out[index] = numto[i][k];
	add	x8, x0, _out.0@PAGEOFF;	; tmp199, tmp194,
; GuessSketchFlow/eval/problem20/code.c:33:             out[index++] = ' '; 
	mov	w11, 32	; tmp200,
	.p2align 5,,15
L9:
; GuessSketchFlow/eval/problem20/code.c:29:         for (j = 0; j < count[i]; ++j) {
	add	x1, x20, x12, lsl 2	; tmp179, tmp197, ivtmp.27,
	ldr	w9, [x1, -4]	;, MEM[(int *)&count + -4B + ivtmp.27_77 * 4]
; GuessSketchFlow/eval/problem20/code.c:29:         for (j = 0; j < count[i]; ++j) {
	cmp	w9, 0	; _68,
	ble	L12		;,
; GuessSketchFlow/eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	add	x1, x19, x12, lsl 3	; tmp182, tmp195, ivtmp.27,
; GuessSketchFlow/eval/problem20/code.c:29:         for (j = 0; j < count[i]; ++j) {
	mov	w6, 0	; j,
; GuessSketchFlow/eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	ldr	x10, [x1, -8]	; _71, MEM[(const char * *)&numto + -8B + ivtmp.27_77 * 8]
	sub	x5, x10, #1	; _25, _71,
	.p2align 5,,15
L15:
	sxtw	x3, w7	; _80, index
; GuessSketchFlow/eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	ldrsb	w2, [x10]	; _17, *_71
; GuessSketchFlow/eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	mov	x1, 1	; ivtmp.11,
; GuessSketchFlow/eval/problem20/code.c:31:                 out[index] = numto[i][k];
	sub	x3, x3, #1	; _78, _80,
; GuessSketchFlow/eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	mov	w4, w7	; index, index
; GuessSketchFlow/eval/problem20/code.c:31:                 out[index] = numto[i][k];
	add	x3, x3, x8	; _31, _78, tmp199
; GuessSketchFlow/eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	cbz	w2, L13	; _17,
	.p2align 5,,15
L11:
	mov	x4, x1	; ivtmp.11, ivtmp.11
; GuessSketchFlow/eval/problem20/code.c:31:                 out[index] = numto[i][k];
	strb	w2, [x3, x1]	; _17, MEM[(char *)_31 + ivtmp.11_5 * 1]
; GuessSketchFlow/eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	add	x1, x1, 1	; ivtmp.11, ivtmp.11,
; GuessSketchFlow/eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	ldrsb	w2, [x5, x1]	; _17, MEM[(const char *)_25 + ivtmp.11_23 * 1]
; GuessSketchFlow/eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	cbnz	w2, L11	; _17,
	add	w4, w7, w4	; index, index, ivtmp.11
L13:
; GuessSketchFlow/eval/problem20/code.c:29:         for (j = 0; j < count[i]; ++j) {
	add	w6, w6, 1	; j, j,
; GuessSketchFlow/eval/problem20/code.c:33:             out[index++] = ' '; 
	strb	w11, [x8, w4, sxtw]	; tmp200, out[index_88]
; GuessSketchFlow/eval/problem20/code.c:33:             out[index++] = ' '; 
	add	w7, w4, 1	; index, index,
; GuessSketchFlow/eval/problem20/code.c:29:         for (j = 0; j < count[i]; ++j) {
	cmp	w6, w9	; j, _68
	bne	L15		;,
L12:
; GuessSketchFlow/eval/problem20/code.c:28:     for (i = 0; i < 10; ++i) {
	add	x12, x12, 1	; ivtmp.27, ivtmp.27,
	cmp	x12, 11	; ivtmp.27,
	bne	L9		;,
; GuessSketchFlow/eval/problem20/code.c:37:     if (index > 0) {
	cmp	w7, 0	; index,
	ble	L16		;,
; GuessSketchFlow/eval/problem20/code.c:38:         out[index - 1] = '\0'; 
	add	x1, x0, _out.0@PAGEOFF;	; tmp184, tmp194,
; GuessSketchFlow/eval/problem20/code.c:38:         out[index - 1] = '\0'; 
	sub	w7, w7, #1	; _20, index,
; GuessSketchFlow/eval/problem20/code.c:44: }
	add	x0, x0, _out.0@PAGEOFF;	;, tmp194,
; GuessSketchFlow/eval/problem20/code.c:38:         out[index - 1] = '\0'; 
	strb	wzr, [x1, w7, sxtw]	;, out[_20]
; GuessSketchFlow/eval/problem20/code.c:44: }
	ldr	x25, [sp, 64]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 208	;,,,
LCFI8:
	ret	
L16:
LCFI9:
; GuessSketchFlow/eval/problem20/code.c:40:         out[0] = '\0';
	strb	wzr, [x0, #_out.0@PAGEOFF]	;, out[0]
; GuessSketchFlow/eval/problem20/code.c:44: }
	add	x0, x0, _out.0@PAGEOFF;	;, tmp194,
	ldr	x25, [sp, 64]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 208	;,,,
LCFI10:
	ret	
LFE1:
	.cstring
	.align	3
lC0:
	.ascii "zero\0"
	.align	3
lC1:
	.ascii "one\0"
	.align	3
lC2:
	.ascii "two\0"
	.align	3
lC3:
	.ascii "three\0"
	.align	3
lC4:
	.ascii "four\0"
	.align	3
lC5:
	.ascii "five\0"
	.align	3
lC6:
	.ascii "six\0"
	.align	3
lC7:
	.ascii "seven\0"
	.align	3
lC8:
	.ascii "eight\0"
	.align	3
lC9:
	.ascii "nine\0"
	.const_data
	.align	3
lC11:
	.xword	lC0
	.xword	lC1
	.xword	lC2
	.xword	lC3
	.xword	lC4
	.xword	lC5
	.xword	lC6
	.xword	lC7
	.xword	lC8
	.xword	lC9
	.text
	.zerofill __DATA,__bss,_out.0,1000,0
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
	.uleb128 0xd0
	.byte	0x9d
	.uleb128 0x1a
	.byte	0x9e
	.uleb128 0x19
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x99
	.uleb128 0x12
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x93
	.uleb128 0x18
	.byte	0x94
	.uleb128 0x17
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x96
	.uleb128 0x15
	.byte	0x95
	.uleb128 0x16
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x98
	.uleb128 0x13
	.byte	0x97
	.uleb128 0x14
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xd6
	.byte	0xd5
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xd8
	.byte	0xd7
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xb
	.byte	0x4
	.set L$set$13,LCFI10-LCFI9
	.long L$set$13
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
