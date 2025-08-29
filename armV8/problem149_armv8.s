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
	stp	x29, x30, [sp, -160]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x25, x26, [sp, 64]	;,,
LCFI2:
	mov	x26, x0	; planet1, planet1
; GuessSketchFlow/eval/problem149/code.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	adrp	x0, lC9@PAGE	; tmp135,
	add	x0, x0, lC9@PAGEOFF;	; tmp134, tmp135,
; GuessSketchFlow/eval/problem149/code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	mov	x25, x1	; planet2, planet2
; GuessSketchFlow/eval/problem149/code.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	ldp	q29, q28, [x0]	; tmp138, tmp139,
; GuessSketchFlow/eval/problem149/code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	stp	x21, x22, [sp, 32]	;,,
LCFI3:
; GuessSketchFlow/eval/problem149/code.c:7:     int pos1 = -1, pos2 = -1, m;
	mov	w22, -1	; pos2,
; GuessSketchFlow/eval/problem149/code.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	ldp	q31, q30, [x0, 32]	; tmp140, tmp141,
; GuessSketchFlow/eval/problem149/code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	stp	x23, x24, [sp, 48]	;,,
LCFI4:
; GuessSketchFlow/eval/problem149/code.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	add	x24, x29, 96	; tmp167,,
	mov	x23, x24	; ivtmp.11, tmp167
; GuessSketchFlow/eval/problem149/code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	stp	x19, x20, [sp, 16]	;,,
LCFI5:
; GuessSketchFlow/eval/problem149/code.c:8:     for (m = 0; m < 8; m++) {
	mov	w19, 0	; m,
; GuessSketchFlow/eval/problem149/code.c:7:     int pos1 = -1, pos2 = -1, m;
	mov	w20, w22	; pos1, pos2
; GuessSketchFlow/eval/problem149/code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	str	x27, [sp, 80]	;,
LCFI6:
; GuessSketchFlow/eval/problem149/code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	mov	x27, x2	; returnSize, returnSize
; GuessSketchFlow/eval/problem149/code.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	stp	q29, q28, [x24]	; tmp138, tmp139,
	stp	q31, q30, [x24, 32]	; tmp140, tmp141,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem149/code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	ldr	x21, [x23], 8	; _1, MEM[(const char * *)_35]
	mov	x1, x26	;, planet1
	mov	x0, x21	;, _1
	bl	_strcmp		;
; GuessSketchFlow/eval/problem149/code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	cmp	w0, 0	; tmp174,
; GuessSketchFlow/eval/problem149/code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	mov	x1, x25	;, planet2
; GuessSketchFlow/eval/problem149/code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	csel	w20, w20, w19, ne	; pos1, pos1, m,
; GuessSketchFlow/eval/problem149/code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	mov	x0, x21	;, _1
	bl	_strcmp		;
; GuessSketchFlow/eval/problem149/code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	cmp	w0, 0	; tmp175,
	csel	w22, w22, w19, ne	; pos2, pos2, m,
; GuessSketchFlow/eval/problem149/code.c:8:     for (m = 0; m < 8; m++) {
	add	w19, w19, 1	; m, m,
; GuessSketchFlow/eval/problem149/code.c:8:     for (m = 0; m < 8; m++) {
	cmp	w19, 8	; m,
	bne	L4		;,
; GuessSketchFlow/eval/problem149/code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	cmp	w20, w22	; pos1, pos2
	ccmn	w22, #1, 4, ne	; pos2,,,
	ccmn	w20, #1, 4, ne	; pos1,,,
	beq	L8		;,
; GuessSketchFlow/eval/problem149/code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	cmp	w20, w22	; pos1, pos2
	csel	w21, w22, w20, gt	; tmp170, pos2, pos1,
	csel	w20, w20, w22, gt	; pos1, pos1, pos2,
; GuessSketchFlow/eval/problem149/code.c:17:     *returnSize = pos2 - pos1 - 1;
	sub	w0, w20, w21	; _8, pos1, tmp170
; GuessSketchFlow/eval/problem149/code.c:17:     *returnSize = pos2 - pos1 - 1;
	sub	w0, w0, #1	; _9, _8,
; GuessSketchFlow/eval/problem149/code.c:17:     *returnSize = pos2 - pos1 - 1;
	str	w0, [x27]	; _9, *returnSize_30(D)
; GuessSketchFlow/eval/problem149/code.c:18:     if (*returnSize <= 0) {
	cmp	w0, 0	; _9,
	ble	L8		;,
; GuessSketchFlow/eval/problem149/code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	ubfiz	x0, x0, 3, 32	;, _9,,
	bl	_malloc		;
; GuessSketchFlow/eval/problem149/code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	add	w1, w21, 1	; m, tmp170,
; GuessSketchFlow/eval/problem149/code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	mov	x19, x0	; <retval>, <retval>
; GuessSketchFlow/eval/problem149/code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	cmp	w20, w1	; pos1, m
	ble	L1		;,
; GuessSketchFlow/eval/problem149/code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	sub	w2, w20, #2	; _48, pos1,
	add	x1, x24, w1, sxtw 3	;, tmp167, m,
	sub	w2, w2, w21	; _23, _48, tmp170
	add	x2, x2, 1	; _21, _23,
	lsl	x2, x2, 3	;, _21,
	bl	_memcpy		;
L1:
; GuessSketchFlow/eval/problem149/code.c:27: }
	ldr	x27, [sp, 80]	;,
	mov	x0, x19	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 160	;,,,
LCFI7:
	ret	
	.p2align 2,,3
L8:
LCFI8:
; GuessSketchFlow/eval/problem149/code.c:14:         return NULL;
	mov	x19, 0	; <retval>,
; GuessSketchFlow/eval/problem149/code.c:13:         *returnSize = 0;
	str	wzr, [x27]	;, *returnSize_30(D)
; GuessSketchFlow/eval/problem149/code.c:27: }
	ldr	x27, [sp, 80]	;,
	mov	x0, x19	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 160	;,,,
LCFI9:
	ret	
LFE4:
	.cstring
	.align	3
lC0:
	.ascii "Mercury\0"
	.align	3
lC1:
	.ascii "Venus\0"
	.align	3
lC2:
	.ascii "Earth\0"
	.align	3
lC3:
	.ascii "Mars\0"
	.align	3
lC4:
	.ascii "Jupiter\0"
	.align	3
lC5:
	.ascii "Saturn\0"
	.align	3
lC6:
	.ascii "Uranus\0"
	.align	3
lC7:
	.ascii "Neptune\0"
	.const_data
	.align	3
lC9:
	.xword	lC0
	.xword	lC1
	.xword	lC2
	.xword	lC3
	.xword	lC4
	.xword	lC5
	.xword	lC6
	.xword	lC7
	.text
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
	.uleb128 0xa0
	.byte	0x9d
	.uleb128 0x14
	.byte	0x9e
	.uleb128 0x13
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x99
	.uleb128 0xc
	.byte	0x9a
	.uleb128 0xb
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0x10
	.byte	0x96
	.uleb128 0xf
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x97
	.uleb128 0xe
	.byte	0x98
	.uleb128 0xd
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x93
	.uleb128 0x12
	.byte	0x94
	.uleb128 0x11
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0x9b
	.uleb128 0xa
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xd9
	.byte	0xda
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
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xb
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
