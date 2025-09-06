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
	.ascii "the number of odd elements %d in the string %d of the %d input.\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB4:
	sub	sp, sp, #96	;,,
LCFI0:
	stp	x29, x30, [sp, 32]	;,,
LCFI1:
	add	x29, sp, 32	;,,
LCFI2:
	stp	x21, x22, [sp, 64]	;,,
LCFI3:
; GuessSketchFlow/eval/problem114/code.c:6:     char **out = malloc(size * sizeof(char *));
	sbfiz	x22, x1, 3, 32	; _2, size,,
	adrp	x21, lC0@PAGE	; tmp128,
	add	x21, x21, lC0@PAGEOFF;	; tmp125, tmp128,
; GuessSketchFlow/eval/problem114/code.c:5: char **func0(char *lst[], int size) {
	stp	x23, x24, [sp, 80]	;,,
LCFI4:
	mov	x23, x0	; lst, lst
; GuessSketchFlow/eval/problem114/code.c:6:     char **out = malloc(size * sizeof(char *));
	mov	x0, x22	;, _2
	mov	x24, 0	; ivtmp.18,
; GuessSketchFlow/eval/problem114/code.c:5: char **func0(char *lst[], int size) {
	stp	x19, x20, [sp, 48]	;,,
LCFI5:
; GuessSketchFlow/eval/problem114/code.c:5: char **func0(char *lst[], int size) {
	mov	w19, w1	; size, size
; GuessSketchFlow/eval/problem114/code.c:6:     char **out = malloc(size * sizeof(char *));
	bl	_malloc		;
	mov	x20, x0	; <retval>, <retval>
; GuessSketchFlow/eval/problem114/code.c:7:     for (int i = 0; i < size; i++) {
	cmp	w19, 0	; size,
	ble	L1		;,
	.p2align 5,,15
L2:
; GuessSketchFlow/eval/problem114/code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	ldr	x0, [x23, x24]	; ivtmp.9, MEM[(char * *)lst_26(D) + ivtmp.18_3 * 1]
; GuessSketchFlow/eval/problem114/code.c:8:         int sum = 0;
	mov	w19, 0	; sum,
; GuessSketchFlow/eval/problem114/code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	ldrsb	w1, [x0], 1	; _35, *_39
; GuessSketchFlow/eval/problem114/code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	cbz	w1, L7	; _35,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem114/code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	sub	w2, w1, #48	; tmp120, _35,
; GuessSketchFlow/eval/problem114/code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	and	w1, w1, 1	; _15, _35,
	add	w1, w19, w1	; tmp131, sum, _15
; GuessSketchFlow/eval/problem114/code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	and	w2, w2, 255	; tmp121, tmp120
; GuessSketchFlow/eval/problem114/code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmp	w2, 9	; tmp121,
	csel	w19, w1, w19, ls	; sum, tmp131, sum,
; GuessSketchFlow/eval/problem114/code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	ldrsb	w1, [x0], 1	; _35, MEM[(char *)_4 + -1B]
; GuessSketchFlow/eval/problem114/code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	cbnz	w1, L5	; _35,
L7:
; GuessSketchFlow/eval/problem114/code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	mov	x0, 100	;,
	bl	_malloc		;
; GuessSketchFlow/eval/problem114/code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	str	x0, [x20, x24]	; tmp137, MEM[(char * *)out_25 + ivtmp.18_3 * 1]
; GuessSketchFlow/eval/problem114/code.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	mov	x3, x21	;, tmp125
	mov	x2, 100	;,
	mov	w1, 0	;,
	str	w19, [sp]	; sum,
; GuessSketchFlow/eval/problem114/code.c:7:     for (int i = 0; i < size; i++) {
	add	x24, x24, 8	; ivtmp.18, ivtmp.18,
; GuessSketchFlow/eval/problem114/code.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	str	w19, [sp, 8]	; sum,
	str	w19, [sp, 16]	; sum,
	bl	___sprintf_chk		;
; GuessSketchFlow/eval/problem114/code.c:7:     for (int i = 0; i < size; i++) {
	cmp	x22, x24	; _2, ivtmp.18
	bne	L2		;,
L1:
; GuessSketchFlow/eval/problem114/code.c:17: }
	mov	x0, x20	;, <retval>
	ldp	x29, x30, [sp, 32]	;,,
	ldp	x19, x20, [sp, 48]	;,,
	ldp	x21, x22, [sp, 64]	;,,
	ldp	x23, x24, [sp, 80]	;,,
	add	sp, sp, 96	;,,
LCFI6:
	ret	
LFE4:
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
	.uleb128 0x60
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
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
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xd7
	.byte	0xd8
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
