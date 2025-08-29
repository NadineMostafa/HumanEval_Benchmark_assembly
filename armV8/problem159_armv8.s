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
	.ascii "\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB1:
	stp	x29, x30, [sp, -352]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	str	x27, [sp, 80]	;,
; GuessSketchFlow/eval/problem159/code.c:7:     for (int i = 0; i < count; i++) {
	cmp	w1, 0	; count,
LCFI2:
	ble	L8		;,
; GuessSketchFlow/eval/problem159/code.c:8:         char unique[256] = {0};
	movi	v31.4s, 0	; tmp128
; GuessSketchFlow/eval/problem159/code.c:5:     char *max = "";
	adrp	x27, lC0@PAGE	; tmp123,
	stp	x19, x20, [x29, 16]	;,,
LCFI3:
	add	x27, x27, lC0@PAGEOFF;	; <retval>, tmp123,
	add	x20, x29, 96	; tmp140,,
	stp	x23, x24, [x29, 48]	;,,
LCFI4:
	mov	x23, x0	; ivtmp.14, words
	stp	x25, x26, [x29, 64]	;,,
LCFI5:
; GuessSketchFlow/eval/problem159/code.c:6:     int maxu = 0;
	mov	w25, 0	; maxu,
	add	x26, x0, w1, uxtw 3	; _47, ivtmp.14, count,
	stp	x21, x22, [x29, 32]	;,,
LCFI6:
	.p2align 5,,15
L7:
; GuessSketchFlow/eval/problem159/code.c:8:         char unique[256] = {0};
	stp	q31, q31, [x20]	; tmp128, tmp128,
	stp	q31, q31, [x20, 32]	; tmp128, tmp128,
	stp	q31, q31, [x20, 64]	; tmp128, tmp128,
	stp	q31, q31, [x20, 96]	; tmp128, tmp128,
	stp	q31, q31, [x20, 128]	; tmp128, tmp128,
	stp	q31, q31, [x20, 160]	; tmp128, tmp128,
	stp	q31, q31, [x20, 192]	; tmp128, tmp128,
	stp	q31, q31, [x20, 224]	; tmp128, tmp128,
; GuessSketchFlow/eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldr	x24, [x23]	; _45, MEM[(char * *)_5]
; GuessSketchFlow/eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldrsb	w19, [x24]	; _11, *_45
; GuessSketchFlow/eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	cbz	w19, L9	; _11,
	add	x21, x24, 1	; ivtmp.8, _45,
; GuessSketchFlow/eval/problem159/code.c:9:         int unique_count = 0;
	mov	w22, 0	; unique_count,
	b	L5		;
	.p2align 2,,3
L4:
; GuessSketchFlow/eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldrsb	w19, [x21], 1	; _11, MEM[(char *)_36 + -1B]
; GuessSketchFlow/eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	cbz	w19, L16	; _11,
L5:
; GuessSketchFlow/eval/problem159/code.c:11:             if (!strchr(unique, words[i][j])) {
	mov	w1, w19	;, _11
	mov	x0, x20	;, tmp140
	bl	_strchr		;
; GuessSketchFlow/eval/problem159/code.c:11:             if (!strchr(unique, words[i][j])) {
	movi	v31.4s, 0	; tmp128
	cbnz	x0, L4	; _2,
; GuessSketchFlow/eval/problem159/code.c:12:                 int len = strlen(unique);
	mov	x0, x20	;, tmp140
; GuessSketchFlow/eval/problem159/code.c:15:                 unique_count++;
	add	w22, w22, 1	; unique_count, unique_count,
; GuessSketchFlow/eval/problem159/code.c:12:                 int len = strlen(unique);
	bl	_strlen		;
; GuessSketchFlow/eval/problem159/code.c:13:                 unique[len] = words[i][j];
	strb	w19, [x20, w0, sxtw]	; _11, unique[len_30]
; GuessSketchFlow/eval/problem159/code.c:14:                 unique[len + 1] = '\0';
	add	w0, w0, 1	; _4, tmp131,
; GuessSketchFlow/eval/problem159/code.c:15:                 unique_count++;
	movi	v31.4s, 0	; tmp128
; GuessSketchFlow/eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldrsb	w19, [x21], 1	; _11, MEM[(char *)_36 + -1B]
; GuessSketchFlow/eval/problem159/code.c:14:                 unique[len + 1] = '\0';
	strb	wzr, [x20, w0, sxtw]	;, unique[_4]
; GuessSketchFlow/eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	cbnz	w19, L5	; _11,
L16:
; GuessSketchFlow/eval/problem159/code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	cmp	w22, w25	; unique_count, maxu
	ble	L3		;,
; GuessSketchFlow/eval/problem159/code.c:20:             maxu = unique_count;
	mov	w25, w22	; maxu, unique_count
; GuessSketchFlow/eval/problem159/code.c:19:             max = words[i];
	mov	x27, x24	; <retval>, _45
L6:
; GuessSketchFlow/eval/problem159/code.c:7:     for (int i = 0; i < count; i++) {
	add	x23, x23, 8	; ivtmp.14, ivtmp.14,
	cmp	x23, x26	; ivtmp.14, _47
	bne	L7		;,
	ldp	x19, x20, [x29, 16]	;,,
LCFI7:
; GuessSketchFlow/eval/problem159/code.c:24: }
	mov	x0, x27	;, <retval>
	ldp	x21, x22, [x29, 32]	;,,
LCFI8:
	ldp	x23, x24, [x29, 48]	;,,
LCFI9:
	ldp	x25, x26, [x29, 64]	;,,
LCFI10:
	ldr	x27, [sp, 80]	;,
	ldp	x29, x30, [sp], 352	;,,,
LCFI11:
	ret	
	.p2align 2,,3
L9:
LCFI12:
; GuessSketchFlow/eval/problem159/code.c:9:         int unique_count = 0;
	mov	w22, 0	; unique_count,
L3:
; GuessSketchFlow/eval/problem159/code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	cmp	w22, w25	; unique_count, maxu
	bne	L6		;,
; GuessSketchFlow/eval/problem159/code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	mov	x1, x27	;, <retval>
	mov	x0, x24	;, _45
	bl	_strcmp		;
; GuessSketchFlow/eval/problem159/code.c:19:             max = words[i];
	cmp	w0, 0	; tmp145,
	movi	v31.4s, 0	; tmp128
	csel	x27, x27, x24, ge	; <retval>, <retval>, _45,
	b	L6		;
L8:
LCFI13:
; GuessSketchFlow/eval/problem159/code.c:5:     char *max = "";
	adrp	x27, lC0@PAGE	; tmp124,
	add	x27, x27, lC0@PAGEOFF;	; <retval>, tmp124,
; GuessSketchFlow/eval/problem159/code.c:24: }
	mov	x0, x27	;, <retval>
	ldr	x27, [sp, 80]	;,
	ldp	x29, x30, [sp], 352	;,,,
LCFI14:
	ret	
LFE1:
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
	.uleb128 0x160
	.byte	0x9d
	.uleb128 0x2c
	.byte	0x9e
	.uleb128 0x2b
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x9b
	.uleb128 0x22
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x94
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x2a
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x98
	.uleb128 0x25
	.byte	0x97
	.uleb128 0x26
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x9a
	.uleb128 0x23
	.byte	0x99
	.uleb128 0x24
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0x96
	.uleb128 0x27
	.byte	0x95
	.uleb128 0x28
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xa
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
	.byte	0xd8
	.byte	0xd7
	.byte	0x4
	.set L$set$13,LCFI10-LCFI9
	.long L$set$13
	.byte	0xda
	.byte	0xd9
	.byte	0x4
	.set L$set$14,LCFI11-LCFI10
	.long L$set$14
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$15,LCFI12-LCFI11
	.long L$set$15
	.byte	0xb
	.byte	0x4
	.set L$set$16,LCFI13-LCFI12
	.long L$set$16
	.byte	0xd3
	.byte	0xd4
	.byte	0xd5
	.byte	0xd6
	.byte	0xd7
	.byte	0xd8
	.byte	0xd9
	.byte	0xda
	.byte	0x4
	.set L$set$17,LCFI14-LCFI13
	.long L$set$17
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
