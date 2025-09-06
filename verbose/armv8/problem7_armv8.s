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
; GuessSketchFlow/eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	ldrsb	w2, [x0]	; _9, *paren_string_22(D)
; GuessSketchFlow/eval/problem7/code.c:5: int* func0(const char* paren_string, int* returnSize) {
	mov	x6, x1	; returnSize, returnSize
; GuessSketchFlow/eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	cbz	w2, L6	; _9,
	add	x3, x0, 1	; ivtmp.8, paren_string,
; GuessSketchFlow/eval/problem7/code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	mov	w7, 0	; count,
; GuessSketchFlow/eval/problem7/code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	mov	w5, 0	; max_level,
; GuessSketchFlow/eval/problem7/code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	mov	w4, 0	; level,
; GuessSketchFlow/eval/problem7/code.c:6:     int* all_levels = NULL;
	mov	x0, 0	; <retval>,
	b	L9		;
	.p2align 2,,3
L11:
; GuessSketchFlow/eval/problem7/code.c:14:         } else if (chr == ')') {
	cmp	w2, 41	; _9,
	beq	L20		;,
L12:
; GuessSketchFlow/eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	ldrsb	w2, [x3], 1	; _9, MEM[(const char *)_32 + -1B]
; GuessSketchFlow/eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	cbz	w2, L16	; _9,
L9:
; GuessSketchFlow/eval/problem7/code.c:11:         if (chr == '(') {
	cmp	w2, 40	; _9,
	bne	L11		;,
; GuessSketchFlow/eval/problem7/code.c:12:             level += 1;
	add	w4, w4, 1	; level, level,
; GuessSketchFlow/eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	ldrsb	w2, [x3], 1	; _9, MEM[(const char *)_32 + -1B]
; GuessSketchFlow/eval/problem7/code.c:13:             if (level > max_level) max_level = level;
	cmp	w5, w4	; max_level, level
	csel	w5, w5, w4, ge	; max_level, max_level, level,
; GuessSketchFlow/eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	cbnz	w2, L9	; _9,
L16:
; GuessSketchFlow/eval/problem7/code.c:23:     *returnSize = count;
	str	w7, [x6]	; count, *returnSize_23(D)
; GuessSketchFlow/eval/problem7/code.c:25: }
	ret	
	.p2align 2,,3
L20:
; GuessSketchFlow/eval/problem7/code.c:16:             if (level == 0) {
	subs	w4, w4, #1	; level, level,
	bne	L12		;,
; GuessSketchFlow/eval/problem7/code.c:5: int* func0(const char* paren_string, int* returnSize) {
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
L14:
; GuessSketchFlow/eval/problem7/code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	add	w7, w7, 1	; count, count,
; GuessSketchFlow/eval/problem7/code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	ubfiz	x1, x7, 2, 32	; _3, count,,
	stp	x6, x3, [x29, 24]	; returnSize, ivtmp.8,
	stp	w5, w4, [x29, 44]	; max_level, level,
	str	w7, [x29, 52]	; count, %sfp
; GuessSketchFlow/eval/problem7/code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	str	x1, [x29, 56]	; _3, %sfp
	bl	_realloc		;
; GuessSketchFlow/eval/problem7/code.c:18:                 all_levels[count++] = max_level;
	ldr	x1, [x29, 56]	; _3, %sfp
; GuessSketchFlow/eval/problem7/code.c:19:                 max_level = 0;
	ldp	x6, x3, [x29, 24]	; returnSize, ivtmp.8,
	ldp	w5, w4, [x29, 44]	;,,
; GuessSketchFlow/eval/problem7/code.c:18:                 all_levels[count++] = max_level;
	add	x1, x0, x1	; tmp124, <retval>, _3
; GuessSketchFlow/eval/problem7/code.c:19:                 max_level = 0;
	ldr	w7, [x29, 52]	;, %sfp
; GuessSketchFlow/eval/problem7/code.c:18:                 all_levels[count++] = max_level;
	str	w5, [x1, -4]	; max_level, *_6
; GuessSketchFlow/eval/problem7/code.c:19:                 max_level = 0;
	mov	w5, 0	; max_level,
L4:
; GuessSketchFlow/eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	ldrsb	w2, [x3], 1	; _9, MEM[(const char *)_32 + -1B]
; GuessSketchFlow/eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	cbz	w2, L21	; _9,
L5:
; GuessSketchFlow/eval/problem7/code.c:11:         if (chr == '(') {
	cmp	w2, 40	; _9,
	beq	L22		;,
; GuessSketchFlow/eval/problem7/code.c:14:         } else if (chr == ')') {
	cmp	w2, 41	; _9,
	bne	L4		;,
; GuessSketchFlow/eval/problem7/code.c:16:             if (level == 0) {
	subs	w4, w4, #1	; level, level,
	beq	L14		;,
; GuessSketchFlow/eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	ldrsb	w2, [x3], 1	; _9, MEM[(const char *)_32 + -1B]
; GuessSketchFlow/eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	cbnz	w2, L5	; _9,
L21:
; GuessSketchFlow/eval/problem7/code.c:23:     *returnSize = count;
	str	w7, [x6]	; count, *returnSize_23(D)
; GuessSketchFlow/eval/problem7/code.c:25: }
	ldp	x29, x30, [sp], 64	;,,,
LCFI2:
	ret	
	.p2align 2,,3
L22:
LCFI3:
; GuessSketchFlow/eval/problem7/code.c:12:             level += 1;
	add	w4, w4, 1	; level, level,
; GuessSketchFlow/eval/problem7/code.c:13:             if (level > max_level) max_level = level;
	cmp	w5, w4	; max_level, level
	csel	w5, w5, w4, ge	; max_level, max_level, level,
	b	L4		;
	.p2align 2,,3
L6:
LCFI4:
; GuessSketchFlow/eval/problem7/code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	mov	w7, 0	; count,
; GuessSketchFlow/eval/problem7/code.c:6:     int* all_levels = NULL;
	mov	x0, 0	; <retval>,
; GuessSketchFlow/eval/problem7/code.c:23:     *returnSize = count;
	str	w7, [x6]	; count, *returnSize_23(D)
; GuessSketchFlow/eval/problem7/code.c:25: }
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
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xb
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0xdd
	.byte	0xde
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
