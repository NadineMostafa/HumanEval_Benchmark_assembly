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
	stp	x29, x30, [sp, -32]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	str	x19, [sp, 16]	;,
LCFI2:
; GuessSketchFlow/eval/problem49/code.c:5: bool func0(const char *text) {
	mov	x19, x0	; text, text
; GuessSketchFlow/eval/problem49/code.c:6:     int len = strlen(text);
	bl	_strlen		;
; GuessSketchFlow/eval/problem49/code.c:7:     for (int i = 0; i < len / 2; i++) {
	cmp	w0, 1	; tmp114,
	ble	L4		;,
	sxtw	x2, w0	; _20, tmp114
; GuessSketchFlow/eval/problem49/code.c:7:     for (int i = 0; i < len / 2; i++) {
	asr	w4, w0, 1	; _18, tmp114,
; GuessSketchFlow/eval/problem49/code.c:8:         if (text[i] != text[len - 1 - i]) {
	sub	x2, x2, #1	; _17, _20,
; GuessSketchFlow/eval/problem49/code.c:7:     for (int i = 0; i < len / 2; i++) {
	mov	x1, 0	; ivtmp.5,
; GuessSketchFlow/eval/problem49/code.c:8:         if (text[i] != text[len - 1 - i]) {
	add	x2, x19, x2	; _23, text, _17
	b	L3		;
	.p2align 2,,3
L9:
; GuessSketchFlow/eval/problem49/code.c:7:     for (int i = 0; i < len / 2; i++) {
	add	x1, x1, 1	; ivtmp.5, ivtmp.5,
	cmp	w4, w1	; _18, ivtmp.5
	ble	L4		;,
L3:
; GuessSketchFlow/eval/problem49/code.c:8:         if (text[i] != text[len - 1 - i]) {
	neg	x0, x1	; _22, ivtmp.5
; GuessSketchFlow/eval/problem49/code.c:8:         if (text[i] != text[len - 1 - i]) {
	ldrsb	w3, [x19, x1]	; MEM[(const char *)text_14(D) + ivtmp.5_10 * 1], MEM[(const char *)text_14(D) + ivtmp.5_10 * 1]
	ldrsb	w0, [x2, x0]	; MEM[(const char *)_23 + _22 * 1], MEM[(const char *)_23 + _22 * 1]
	cmp	w3, w0	; MEM[(const char *)text_14(D) + ivtmp.5_10 * 1], MEM[(const char *)_23 + _22 * 1]
	beq	L9		;,
; GuessSketchFlow/eval/problem49/code.c:13: }
	ldr	x19, [sp, 16]	;,
; GuessSketchFlow/eval/problem49/code.c:9:             return false;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem49/code.c:13: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI3:
	ret	
	.p2align 2,,3
L4:
LCFI4:
	ldr	x19, [sp, 16]	;,
; GuessSketchFlow/eval/problem49/code.c:12:     return true;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem49/code.c:13: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI5:
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
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0x2
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
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
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
