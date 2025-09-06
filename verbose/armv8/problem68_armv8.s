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
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
; GuessSketchFlow/eval/problem68/code.c:5: int func0(const char *s, int n) {
	mov	w19, w1	; n, n
; GuessSketchFlow/eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsb	w2, [x0]	; _9, *s_23(D)
; GuessSketchFlow/eval/problem68/code.c:6:     char num1[10] = "";
	str	xzr, [x29, 32]	;, num1
	strh	wzr, [x29, 40]	;, num1
; GuessSketchFlow/eval/problem68/code.c:7:     char num2[10] = "";
	str	xzr, [x29, 48]	;, num2
	strh	wzr, [x29, 56]	;, num2
; GuessSketchFlow/eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cbz	w2, L29	; _9,
	add	x3, x0, 1	; ivtmp.9, s,
; GuessSketchFlow/eval/problem68/code.c:8:     int is12 = 0, j = 0;
	mov	w4, 0	; j,
; GuessSketchFlow/eval/problem68/code.c:8:     int is12 = 0, j = 0;
	mov	w5, 0	; is12,
	add	x0, x29, 32	; tmp152,,
	add	x20, x29, 48	; tmp151,,
L9:
; GuessSketchFlow/eval/problem68/code.c:11:         if (isdigit(s[i])) {
	sub	w6, w2, #48	; _3, _9,
; GuessSketchFlow/eval/problem68/code.c:11:         if (isdigit(s[i])) {
	cmp	w6, 9	; _3,
	bhi	L3		;,
; GuessSketchFlow/eval/problem68/code.c:12:             if (is12 == 0) {
	cbnz	w5, L7	; is12,
L6:
; GuessSketchFlow/eval/problem68/code.c:13:                 num1[j++] = s[i];
	strb	w2, [x0, w4, sxtw]	; _9, num1[j_81]
; GuessSketchFlow/eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsb	w2, [x3], 1	; _9, MEM[(const char *)_56 + -1B]
; GuessSketchFlow/eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cbz	w2, L5	; _9,
; GuessSketchFlow/eval/problem68/code.c:11:         if (isdigit(s[i])) {
	sub	w1, w2, #48	; _64, _9,
; GuessSketchFlow/eval/problem68/code.c:13:                 num1[j++] = s[i];
	add	w4, w4, 1	; j, j,
; GuessSketchFlow/eval/problem68/code.c:11:         if (isdigit(s[i])) {
	cmp	w1, 9	; _64,
	bls	L6		;,
L3:
; GuessSketchFlow/eval/problem68/code.c:18:             if (is12 == 0 && j > 0) {
	cmp	w4, 0	; j,
; GuessSketchFlow/eval/problem68/code.c:18:             if (is12 == 0 && j > 0) {
	eor	w2, w5, 1	; tmp142, is12,
; GuessSketchFlow/eval/problem68/code.c:18:             if (is12 == 0 && j > 0) {
	cset	w6, gt	; tmp144,
; GuessSketchFlow/eval/problem68/code.c:18:             if (is12 == 0 && j > 0) {
	tst	w6, w2	; tmp144, tmp142
	beq	L8		;,
; GuessSketchFlow/eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsb	w2, [x3], 1	; _9, MEM[(const char *)_69 + -1B]
; GuessSketchFlow/eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cbz	w2, L5	; _9,
; GuessSketchFlow/eval/problem68/code.c:11:         if (isdigit(s[i])) {
	sub	w1, w2, #48	; _77, _9,
; GuessSketchFlow/eval/problem68/code.c:20:                 j = 0;
	mov	w4, 0	; j,
; GuessSketchFlow/eval/problem68/code.c:11:         if (isdigit(s[i])) {
	cmp	w1, 9	; _77,
	bls	L7		;,
; GuessSketchFlow/eval/problem68/code.c:19:                 is12 = 1;
	mov	w5, 1	; is12,
L8:
; GuessSketchFlow/eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsb	w2, [x3], 1	; _9, MEM[(const char *)_48 + -1B]
; GuessSketchFlow/eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cbnz	w2, L9	; _9,
L5:
; GuessSketchFlow/eval/problem68/code.c:24:     return n - atoi(num1) - atoi(num2);
	bl	_atoi		;
; GuessSketchFlow/eval/problem68/code.c:24:     return n - atoi(num1) - atoi(num2);
	sub	w19, w19, w0	; _11, n, _10
; GuessSketchFlow/eval/problem68/code.c:24:     return n - atoi(num1) - atoi(num2);
	mov	x0, x20	;, tmp151
	bl	_atoi		;
; GuessSketchFlow/eval/problem68/code.c:24:     return n - atoi(num1) - atoi(num2);
	sub	w0, w19, w0	; _27, _11, _12
; GuessSketchFlow/eval/problem68/code.c:25: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI3:
	ret	
	.p2align 2,,3
L7:
LCFI4:
; GuessSketchFlow/eval/problem68/code.c:15:                 num2[j++] = s[i];
	strb	w2, [x20, w4, sxtw]	; _9, num2[j_82]
; GuessSketchFlow/eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsb	w2, [x3], 1	; _9, MEM[(const char *)_8 + -1B]
; GuessSketchFlow/eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cbz	w2, L5	; _9,
; GuessSketchFlow/eval/problem68/code.c:11:         if (isdigit(s[i])) {
	sub	w1, w2, #48	; _37, _9,
; GuessSketchFlow/eval/problem68/code.c:13:                 num1[j++] = s[i];
	add	w4, w4, 1	; j, j,
	mov	w5, 1	; is12,
; GuessSketchFlow/eval/problem68/code.c:11:         if (isdigit(s[i])) {
	cmp	w1, 9	; _37,
	bls	L7		;,
	b	L3		;
	.p2align 2,,3
L29:
	add	x0, x29, 32	; tmp152,,
	add	x20, x29, 48	; tmp151,,
; GuessSketchFlow/eval/problem68/code.c:24:     return n - atoi(num1) - atoi(num2);
	bl	_atoi		;
; GuessSketchFlow/eval/problem68/code.c:24:     return n - atoi(num1) - atoi(num2);
	sub	w19, w19, w0	; _11, n, _10
; GuessSketchFlow/eval/problem68/code.c:24:     return n - atoi(num1) - atoi(num2);
	mov	x0, x20	;, tmp151
	bl	_atoi		;
; GuessSketchFlow/eval/problem68/code.c:24:     return n - atoi(num1) - atoi(num2);
	sub	w0, w19, w0	; _27, _11, _12
; GuessSketchFlow/eval/problem68/code.c:25: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI5:
	ret	
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
	.byte	0xa
	.byte	0xde
	.byte	0xdd
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
