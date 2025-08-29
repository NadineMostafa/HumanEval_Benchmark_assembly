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
	.ascii "AEIOU\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB1:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
; GuessSketchFlow/eval/problem99/code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	ldrsb	w1, [x0]	; *s_14(D), *s_14(D)
LCFI2:
	cbz	w1, L6	; *s_14(D),
	add	x19, x0, 1	; ivtmp.8, s,
	stp	x21, x22, [x29, 32]	;,,
LCFI3:
; GuessSketchFlow/eval/problem99/code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	neg	x21, x0	; _34, s
; GuessSketchFlow/eval/problem99/code.c:6:     int count = 0;
	mov	w20, 0	; <retval>,
	str	x23, [x29, 48]	;,
LCFI4:
; GuessSketchFlow/eval/problem99/code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	adrp	x23, lC0@PAGE	; tmp134,
; GuessSketchFlow/eval/problem99/code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	bl	_strlen		;
	add	x22, x0, 1	; _26, tmp137,
; GuessSketchFlow/eval/problem99/code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	add	x23, x23, lC0@PAGEOFF;	; tmp135, tmp134,
	add	x22, x19, x22, lsr 1	; _30, ivtmp.8, _26,
	b	L3		;
	.p2align 2,,3
L5:
; GuessSketchFlow/eval/problem99/code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	add	x1, x21, x19, lsl 1	; _35, _34, ivtmp.8,
; GuessSketchFlow/eval/problem99/code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	mov	x0, x23	;, tmp135
	ldrsb	w1, [x1, -2]	;, *_36
	bl	_strchr		;
; GuessSketchFlow/eval/problem99/code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	ldrsb	w1, [x19], 1	; MEM[(const char *)_31 + -1B], MEM[(const char *)_31 + -1B]
; GuessSketchFlow/eval/problem99/code.c:9:             count += 1;
	cmp	x0, 0	; _4,
	cinc	w20, w20, ne	; <retval>, <retval>,
; GuessSketchFlow/eval/problem99/code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	cbz	w1, L13	; MEM[(const char *)_31 + -1B],
L3:
; GuessSketchFlow/eval/problem99/code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	cmp	x19, x22	; ivtmp.8, _30
	bne	L5		;,
L13:
	ldr	x23, [x29, 48]	;,
LCFI5:
	ldp	x21, x22, [x29, 32]	;,,
LCFI6:
L1:
; GuessSketchFlow/eval/problem99/code.c:13: }
	mov	w0, w20	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI7:
	ret	
L6:
LCFI8:
; GuessSketchFlow/eval/problem99/code.c:6:     int count = 0;
	mov	w20, 0	; <retval>,
; GuessSketchFlow/eval/problem99/code.c:12:     return count;
	b	L1		;
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
	.byte	0x96
	.uleb128 0x3
	.byte	0x95
	.uleb128 0x4
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x97
	.uleb128 0x2
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xd7
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xd6
	.byte	0xd5
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
