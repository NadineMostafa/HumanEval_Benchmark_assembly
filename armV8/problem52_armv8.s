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
LFB4:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	mov	x20, x0	; text, text
; GuessSketchFlow/eval/problem52/code.c:8:     while (*text != '\0') {
	ldrsb	w19, [x0]	; _3, *text_9(D)
; GuessSketchFlow/eval/problem52/code.c:8:     while (*text != '\0') {
	cbz	w19, L2	; _3,
	stp	x21, x22, [x29, 32]	;,,
LCFI3:
	adrp	x22, lC0@PAGE	; tmp110,
; GuessSketchFlow/eval/problem52/code.c:8:     while (*text != '\0') {
	mov	x21, x0	; text, text
; GuessSketchFlow/eval/problem52/code.c:9:         if (strchr(vowels, *text) == NULL) {
	add	x22, x22, lC0@PAGEOFF;	; tmp107, tmp110,
	b	L4		;
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem52/code.c:8:     while (*text != '\0') {
	ldrsb	w19, [x21, 1]!	; _3, MEM[(char *)text_14]
; GuessSketchFlow/eval/problem52/code.c:8:     while (*text != '\0') {
	cbz	w19, L11	; _3,
L4:
; GuessSketchFlow/eval/problem52/code.c:9:         if (strchr(vowels, *text) == NULL) {
	mov	w1, w19	;, _3
	mov	x0, x22	;, tmp107
	bl	_strchr		;
; GuessSketchFlow/eval/problem52/code.c:9:         if (strchr(vowels, *text) == NULL) {
	cbnz	x0, L3	; _2,
; GuessSketchFlow/eval/problem52/code.c:10:             *out++ = *text;
	mov	x0, x20	; out, text
; GuessSketchFlow/eval/problem52/code.c:10:             *out++ = *text;
	strb	w19, [x0], 1	; _3, *out_21
; GuessSketchFlow/eval/problem52/code.c:10:             *out++ = *text;
	mov	x20, x0	; text, out
; GuessSketchFlow/eval/problem52/code.c:8:     while (*text != '\0') {
	ldrsb	w19, [x21, 1]!	; _3, MEM[(char *)text_14]
; GuessSketchFlow/eval/problem52/code.c:8:     while (*text != '\0') {
	cbnz	w19, L4	; _3,
L11:
	ldp	x21, x22, [x29, 32]	;,,
LCFI4:
L2:
; GuessSketchFlow/eval/problem52/code.c:14:     *out = '\0';
	strb	wzr, [x20]	;, *out_22
; GuessSketchFlow/eval/problem52/code.c:15: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI5:
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
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
