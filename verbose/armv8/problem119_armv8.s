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
	.ascii "AEIOUaeiou\0"
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
	mov	x20, x0	; word, word
; GuessSketchFlow/eval/problem119/code.c:7:     size_t len = strlen(word);
	bl	_strlen		;
; GuessSketchFlow/eval/problem119/code.c:9:     for (int i = len - 2; i >= 1; i--) {
	sub	w1, w0, #2	;, tmp145,
; GuessSketchFlow/eval/problem119/code.c:9:     for (int i = len - 2; i >= 1; i--) {
	cmp	w1, 0	; _2,
	ble	L5		;,
	sub	w0, w0, #3	; _45, tmp145,
	add	x19, x20, x1	; ivtmp.9, word, _33
	stp	x21, x22, [x29, 32]	;,,
LCFI3:
	sub	x1, x1, x0	; _4, _33, _45
	sub	x20, x20, #1	; _3, word,
	adrp	x21, lC0@PAGE	; tmp143,
	add	x22, x1, x20	; _47, _4, _3
; GuessSketchFlow/eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	add	x21, x21, lC0@PAGEOFF;	; tmp130, tmp143,
	b	L4		;
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem119/code.c:9:     for (int i = len - 2; i >= 1; i--) {
	sub	x19, x19, #1	; ivtmp.9, ivtmp.9,
	cmp	x19, x22	; ivtmp.9, _47
	beq	L16		;,
L4:
; GuessSketchFlow/eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	ldrsb	w20, [x19]	; _5, MEM[(const char *)_31]
; GuessSketchFlow/eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	mov	x0, x21	;, tmp130
	mov	w1, w20	;, _5
	bl	_strchr		;
; GuessSketchFlow/eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	cbz	x0, L3	; _7,
; GuessSketchFlow/eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	ldrsb	w1, [x19, 1]	;, MEM[(const char *)_31 + 1B]
	mov	x0, x21	;, tmp130
	bl	_strchr		;
; GuessSketchFlow/eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	cbnz	x0, L3	; _12,
; GuessSketchFlow/eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	ldrsb	w1, [x19, -1]	;, MEM[(const char *)_31 + -1B]
	mov	x0, x21	;, tmp130
	bl	_strchr		;
; GuessSketchFlow/eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	cbnz	x0, L3	; _17,
; GuessSketchFlow/eval/problem119/code.c:11:             out[0] = word[i];
	adrp	x0, _out.0@PAGE	; tmp139,
	ldp	x21, x22, [x29, 32]	;,,
LCFI4:
	strb	w20, [x0, #_out.0@PAGEOFF]	; _5, out[0]
; GuessSketchFlow/eval/problem119/code.c:17: }
	add	x0, x0, _out.0@PAGEOFF;	;, tmp139,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI5:
	ret	
	.p2align 2,,3
L16:
LCFI6:
	ldp	x21, x22, [x29, 32]	;,,
LCFI7:
	mov	w20, 0	; _5,
L2:
; GuessSketchFlow/eval/problem119/code.c:11:             out[0] = word[i];
	adrp	x0, _out.0@PAGE	; tmp139,
	strb	w20, [x0, #_out.0@PAGEOFF]	; _5, out[0]
; GuessSketchFlow/eval/problem119/code.c:17: }
	add	x0, x0, _out.0@PAGEOFF;	;, tmp139,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI8:
	ret	
L5:
LCFI9:
; GuessSketchFlow/eval/problem119/code.c:9:     for (int i = len - 2; i >= 1; i--) {
	mov	w20, 0	; _5,
	b	L2		;
LFE1:
	.zerofill __DATA,__bss,_out.0,2,3
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
	.byte	0x96
	.uleb128 0x1
	.byte	0x95
	.uleb128 0x2
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xa
	.byte	0xd6
	.byte	0xd5
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
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xb
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xd6
	.byte	0xd5
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
