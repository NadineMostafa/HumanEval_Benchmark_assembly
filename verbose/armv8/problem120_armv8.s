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
	.ascii "Yes\0"
	.align	3
lC1:
	.ascii "No\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB1:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	mov	x19, x1	; s2, s2
	str	x21, [sp, 32]	;,
LCFI3:
; GuessSketchFlow/eval/problem120/code.c:4: const char *func0(const char *s1, const char *s2) {
	mov	x21, x0	; s1, s1
; GuessSketchFlow/eval/problem120/code.c:6:     int len1 = strlen(s1);
	bl	_strlen		;
	mov	x20, x0	; tmp151, tmp204
; GuessSketchFlow/eval/problem120/code.c:7:     int len2 = strlen(s2);
	mov	x0, x19	;, s2
	bl	_strlen		;
; GuessSketchFlow/eval/problem120/code.c:11:     for (i = 0; i < len1; i++) {
	cmp	w20, 0	; tmp151,
	ble	L2		;,
	add	x2, x21, 1	; _128, s1,
	sub	w1, w20, #1	; _52, tmp151,
	add	x1, x1, x2	; _31, _52, _128
	mov	x4, x21	; ivtmp.30, s1
; GuessSketchFlow/eval/problem120/code.c:9:     int can = 1;
	mov	w3, 1	; can,
; GuessSketchFlow/eval/problem120/code.c:5:     int count = 0;
	mov	w2, 0	; count,
	b	L5		;
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem120/code.c:13:         if (s1[i] == ')') count--;
	cmp	w5, 41	; _183,
	cset	w5, eq	; tmp193,
	sub	w2, w2, w5	; count, count, tmp193
; GuessSketchFlow/eval/problem120/code.c:14:         if (count < 0) can = 0;
	mvn	w5, w2	; tmp157, count
; GuessSketchFlow/eval/problem120/code.c:11:     for (i = 0; i < len1; i++) {
	add	x4, x4, 1	; ivtmp.30, ivtmp.30,
; GuessSketchFlow/eval/problem120/code.c:14:         if (count < 0) can = 0;
	and	w3, w3, w5, lsr 31	; can, can, tmp157,
; GuessSketchFlow/eval/problem120/code.c:11:     for (i = 0; i < len1; i++) {
	cmp	x1, x4	; _31, ivtmp.30
	beq	L34		;,
L5:
; GuessSketchFlow/eval/problem120/code.c:12:         if (s1[i] == '(') count++;
	ldrsb	w5, [x4]	; _183, MEM[(const char *)_51]
; GuessSketchFlow/eval/problem120/code.c:12:         if (s1[i] == '(') count++;
	cmp	w5, 40	; _183,
	bne	L3		;,
; GuessSketchFlow/eval/problem120/code.c:12:         if (s1[i] == '(') count++;
	add	w2, w2, 1	; count, count,
; GuessSketchFlow/eval/problem120/code.c:11:     for (i = 0; i < len1; i++) {
	add	x4, x4, 1	; ivtmp.30, ivtmp.30,
; GuessSketchFlow/eval/problem120/code.c:14:         if (count < 0) can = 0;
	mvn	w5, w2	; tmp157, count
	and	w3, w3, w5, lsr 31	; can, can, tmp157,
; GuessSketchFlow/eval/problem120/code.c:11:     for (i = 0; i < len1; i++) {
	cmp	x1, x4	; _31, ivtmp.30
	bne	L5		;,
L34:
; GuessSketchFlow/eval/problem120/code.c:16:     for (i = 0; i < len2; i++) {
	cmp	w0, 0	; tmp152,
	ble	L9		;,
L7:
; GuessSketchFlow/eval/problem120/code.c:5:     int count = 0;
	mov	x4, 0	; ivtmp.23,
	b	L12		;
	.p2align 2,,3
L10:
; GuessSketchFlow/eval/problem120/code.c:18:         if (s2[i] == ')') count--;
	cmp	w5, 41	; _155,
	cset	w1, eq	; tmp195,
	sub	w2, w2, w1	; count, count, tmp195
; GuessSketchFlow/eval/problem120/code.c:19:         if (count < 0) can = 0;
	mvn	w5, w2	; tmp159, count
; GuessSketchFlow/eval/problem120/code.c:16:     for (i = 0; i < len2; i++) {
	add	x4, x4, 1	; ivtmp.23, ivtmp.23,
; GuessSketchFlow/eval/problem120/code.c:19:         if (count < 0) can = 0;
	and	w3, w3, w5, lsr 31	; can, can, tmp159,
; GuessSketchFlow/eval/problem120/code.c:16:     for (i = 0; i < len2; i++) {
	cmp	w0, w4	; tmp152, ivtmp.23
	ble	L35		;,
L12:
; GuessSketchFlow/eval/problem120/code.c:17:         if (s2[i] == '(') count++;
	ldrsb	w5, [x19, x4]	; _155, MEM[(const char *)s2_49(D) + ivtmp.23_90 * 1]
; GuessSketchFlow/eval/problem120/code.c:17:         if (s2[i] == '(') count++;
	cmp	w5, 40	; _155,
	bne	L10		;,
; GuessSketchFlow/eval/problem120/code.c:17:         if (s2[i] == '(') count++;
	add	w2, w2, 1	; count, count,
; GuessSketchFlow/eval/problem120/code.c:16:     for (i = 0; i < len2; i++) {
	add	x4, x4, 1	; ivtmp.23, ivtmp.23,
; GuessSketchFlow/eval/problem120/code.c:19:         if (count < 0) can = 0;
	mvn	w5, w2	; tmp159, count
	and	w3, w3, w5, lsr 31	; can, can, tmp159,
; GuessSketchFlow/eval/problem120/code.c:16:     for (i = 0; i < len2; i++) {
	cmp	w0, w4	; tmp152, ivtmp.23
	bgt	L12		;,
L35:
; GuessSketchFlow/eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	cmp	w2, 0	; count,
	cset	w1, eq	; tmp170,
; GuessSketchFlow/eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	tst	w1, w3	; tmp170, can
	bne	L24		;,
	mov	x4, 0	; ivtmp.18,
; GuessSketchFlow/eval/problem120/code.c:24:     can = 1;
	mov	w3, 1	; can,
; GuessSketchFlow/eval/problem120/code.c:23:     count = 0;
	mov	w2, 0	; count,
	b	L17		;
	.p2align 2,,3
L15:
; GuessSketchFlow/eval/problem120/code.c:28:         if (s2[i] == ')') count--;
	cmp	w1, 41	; _26,
	cset	w1, eq	; tmp197,
	sub	w2, w2, w1	; count, count, tmp197
; GuessSketchFlow/eval/problem120/code.c:29:         if (count < 0) can = 0;
	mvn	w1, w2	; tmp179, count
; GuessSketchFlow/eval/problem120/code.c:26:     for (i = 0; i < len2; i++) {
	add	x4, x4, 1	; ivtmp.18, ivtmp.18,
; GuessSketchFlow/eval/problem120/code.c:29:         if (count < 0) can = 0;
	and	w3, w3, w1, lsr 31	; can, can, tmp179,
; GuessSketchFlow/eval/problem120/code.c:26:     for (i = 0; i < len2; i++) {
	cmp	w0, w4	; tmp152, ivtmp.18
	ble	L36		;,
L17:
; GuessSketchFlow/eval/problem120/code.c:27:         if (s2[i] == '(') count++;
	ldrsb	w1, [x19, x4]	; _26, MEM[(const char *)s2_49(D) + ivtmp.18_16 * 1]
; GuessSketchFlow/eval/problem120/code.c:27:         if (s2[i] == '(') count++;
	cmp	w1, 40	; _26,
	bne	L15		;,
; GuessSketchFlow/eval/problem120/code.c:27:         if (s2[i] == '(') count++;
	add	w2, w2, 1	; count, count,
; GuessSketchFlow/eval/problem120/code.c:26:     for (i = 0; i < len2; i++) {
	add	x4, x4, 1	; ivtmp.18, ivtmp.18,
; GuessSketchFlow/eval/problem120/code.c:29:         if (count < 0) can = 0;
	mvn	w1, w2	; tmp179, count
	and	w3, w3, w1, lsr 31	; can, can, tmp179,
; GuessSketchFlow/eval/problem120/code.c:26:     for (i = 0; i < len2; i++) {
	cmp	w0, w4	; tmp152, ivtmp.18
	bgt	L17		;,
L36:
; GuessSketchFlow/eval/problem120/code.c:31:     for (i = 0; i < len1; i++) {
	cmp	w20, 0	; tmp151,
	ble	L18		;,
L14:
; GuessSketchFlow/eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	mov	x1, 0	; ivtmp.12,
	b	L21		;
	.p2align 2,,3
L19:
; GuessSketchFlow/eval/problem120/code.c:33:         if (s1[i] == ')') count--;
	cmp	w4, 41	; _106,
	cset	w0, eq	; tmp199,
	sub	w2, w2, w0	; count, count, tmp199
; GuessSketchFlow/eval/problem120/code.c:34:         if (count < 0) can = 0;
	mvn	w0, w2	; tmp181, count
; GuessSketchFlow/eval/problem120/code.c:31:     for (i = 0; i < len1; i++) {
	add	x1, x1, 1	; ivtmp.12, ivtmp.12,
; GuessSketchFlow/eval/problem120/code.c:34:         if (count < 0) can = 0;
	and	w3, w3, w0, lsr 31	; can, can, tmp181,
; GuessSketchFlow/eval/problem120/code.c:31:     for (i = 0; i < len1; i++) {
	cmp	w20, w1	; tmp151, ivtmp.12
	ble	L18		;,
L21:
; GuessSketchFlow/eval/problem120/code.c:32:         if (s1[i] == '(') count++;
	ldrsb	w4, [x21, x1]	; _106, MEM[(const char *)s1_47(D) + ivtmp.12_92 * 1]
; GuessSketchFlow/eval/problem120/code.c:32:         if (s1[i] == '(') count++;
	cmp	w4, 40	; _106,
	bne	L19		;,
; GuessSketchFlow/eval/problem120/code.c:32:         if (s1[i] == '(') count++;
	add	w2, w2, 1	; count, count,
; GuessSketchFlow/eval/problem120/code.c:31:     for (i = 0; i < len1; i++) {
	add	x1, x1, 1	; ivtmp.12, ivtmp.12,
; GuessSketchFlow/eval/problem120/code.c:34:         if (count < 0) can = 0;
	mvn	w0, w2	; tmp181, count
	and	w3, w3, w0, lsr 31	; can, can, tmp181,
; GuessSketchFlow/eval/problem120/code.c:31:     for (i = 0; i < len1; i++) {
	cmp	w20, w1	; tmp151, ivtmp.12
	bgt	L21		;,
L18:
; GuessSketchFlow/eval/problem120/code.c:36:     if (count == 0 && can) return "Yes";
	cmp	w2, 0	; count,
; GuessSketchFlow/eval/problem120/code.c:38:     return "No";
	adrp	x1, lC1@PAGE	; tmp147,
; GuessSketchFlow/eval/problem120/code.c:39: }
	ldr	x21, [sp, 32]	;,
; GuessSketchFlow/eval/problem120/code.c:38:     return "No";
	adrp	x0, lC0@PAGE	; tmp148,
; GuessSketchFlow/eval/problem120/code.c:39: }
	ldp	x19, x20, [sp, 16]	;,,
; GuessSketchFlow/eval/problem120/code.c:38:     return "No";
	add	x1, x1, lC1@PAGEOFF;	; tmp200, tmp147,
; GuessSketchFlow/eval/problem120/code.c:36:     if (count == 0 && can) return "Yes";
	cset	w2, eq	; tmp183,
; GuessSketchFlow/eval/problem120/code.c:38:     return "No";
	add	x0, x0, lC0@PAGEOFF;	; tmp201, tmp148,
	tst	w2, w3	; tmp183, can
	csel	x0, x0, x1, ne	; <retval>, tmp201, tmp200,
; GuessSketchFlow/eval/problem120/code.c:39: }
	ldp	x29, x30, [sp], 48	;,,,
LCFI4:
	ret	
	.p2align 2,,3
L2:
LCFI5:
; GuessSketchFlow/eval/problem120/code.c:9:     int can = 1;
	mov	w3, 1	; can,
; GuessSketchFlow/eval/problem120/code.c:5:     int count = 0;
	mov	w2, 0	; count,
; GuessSketchFlow/eval/problem120/code.c:16:     for (i = 0; i < len2; i++) {
	cmp	w0, 0	; tmp152,
	bgt	L7		;,
L24:
; GuessSketchFlow/eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	adrp	x0, lC0@PAGE	; tmp150,
; GuessSketchFlow/eval/problem120/code.c:39: }
	ldr	x21, [sp, 32]	;,
	ldp	x19, x20, [sp, 16]	;,,
; GuessSketchFlow/eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	add	x0, x0, lC0@PAGEOFF;	; <retval>, tmp150,
; GuessSketchFlow/eval/problem120/code.c:39: }
	ldp	x29, x30, [sp], 48	;,,,
LCFI6:
	ret	
	.p2align 2,,3
L9:
LCFI7:
; GuessSketchFlow/eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	cmp	w2, 0	; count,
	cset	w0, eq	; tmp161,
; GuessSketchFlow/eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	tst	w0, w3	; tmp161, can
	bne	L24		;,
	mov	w3, 1	; can,
	mov	w2, 0	; count,
	b	L14		;
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
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0x2
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xb
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
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
