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
	stp	x29, x30, [sp, -48]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	mov	x20, x1	; s1, s1
	str	x21, [sp, 32]	;,
LCFI3:
; GuessSketchFlow/eval/problem55/code.c:5: bool func0(const char *s0, const char *s1) {
	mov	x21, x0	; s0, s0
; GuessSketchFlow/eval/problem55/code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	bl	_strlen		;
	mov	x19, x0	; _1,
; GuessSketchFlow/eval/problem55/code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	mov	x0, x20	;, s1
	bl	_strlen		;
	mov	x7, x0	; _2,
; GuessSketchFlow/eval/problem55/code.c:7:     for (int i = 0; i < len0; i++) {
	cmp	w19, 0	; _1,
	ble	L2		;,
; GuessSketchFlow/eval/problem55/code.c:15:         if (!found) return false;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem55/code.c:9:         for (int j = 0; j < len1; j++) {
	cmp	w7, 0	; _2,
	bgt	L21		;,
L3:
; GuessSketchFlow/eval/problem55/code.c:28: }
	ldr	x21, [sp, 32]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI4:
	ret	
	.p2align 2,,3
L21:
LCFI5:
	sub	w0, w19, #1	; _64, _1,
	add	x1, x21, 1	; _37, s0,
	add	x1, x1, x0	; _67, _37, _64
	add	x5, x20, 1	; _35, s1,
	sub	w0, w7, #1	; _55, _2,
	mov	x6, x21	; ivtmp.27, s0
	add	x5, x5, x0	; _58, _35, _55
	.p2align 5,,15
L6:
; GuessSketchFlow/eval/problem55/code.c:10:             if (s0[i] == s1[j]) {
	ldrsb	w4, [x6]	; _5, MEM[(const char *)_68]
	mov	x2, x20	; ivtmp.21, s1
	b	L5		;
	.p2align 2,,3
L22:
; GuessSketchFlow/eval/problem55/code.c:9:         for (int j = 0; j < len1; j++) {
	add	x2, x2, 1	; ivtmp.21, ivtmp.21,
	cmp	x2, x5	; ivtmp.21, _58
	beq	L19		;,
L5:
; GuessSketchFlow/eval/problem55/code.c:10:             if (s0[i] == s1[j]) {
	ldrsb	w3, [x2]	; MEM[(const char *)_52], MEM[(const char *)_52]
	cmp	w3, w4	; MEM[(const char *)_52], _5
	bne	L22		;,
; GuessSketchFlow/eval/problem55/code.c:7:     for (int i = 0; i < len0; i++) {
	add	x6, x6, 1	; ivtmp.27, ivtmp.27,
	cmp	x6, x1	; ivtmp.27, _67
	bne	L6		;,
L7:
; GuessSketchFlow/eval/problem55/code.c:15:         if (!found) return false;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem55/code.c:19:         for (int j = 0; j < len0; j++) {
	cmp	w19, 0	; _1,
	ble	L3		;,
	add	x5, x20, 1	; _38, ivtmp.17,
	sub	w7, w7, #1	; _44, _2,
	add	x1, x21, 1	; _37, s0,
	sub	w3, w19, #1	; _15, _1,
	mov	x4, x20	; ivtmp.17, s1
	add	x5, x5, x7	; _47, _38, _44
	add	x3, x3, x1	; _18, _15, _37
	.p2align 5,,15
L10:
; GuessSketchFlow/eval/problem55/code.c:20:             if (s1[i] == s0[j]) {
	ldrsb	w2, [x4]	; _11, MEM[(const char *)_48]
	mov	x0, x21	; ivtmp.10, s0
	b	L9		;
	.p2align 2,,3
L23:
; GuessSketchFlow/eval/problem55/code.c:19:         for (int j = 0; j < len0; j++) {
	add	x0, x0, 1	; ivtmp.10, ivtmp.10,
	cmp	x3, x0	; _18, ivtmp.10
	beq	L19		;,
L9:
; GuessSketchFlow/eval/problem55/code.c:20:             if (s1[i] == s0[j]) {
	ldrsb	w1, [x0]	; MEM[(const char *)_32], MEM[(const char *)_32]
	cmp	w1, w2	; MEM[(const char *)_32], _11
	bne	L23		;,
; GuessSketchFlow/eval/problem55/code.c:17:     for (int i = 0; i < len1; i++) {
	add	x4, x4, 1	; ivtmp.17, ivtmp.17,
	cmp	x4, x5	; ivtmp.17, _47
	bne	L10		;,
; GuessSketchFlow/eval/problem55/code.c:28: }
	ldr	x21, [sp, 32]	;,
; GuessSketchFlow/eval/problem55/code.c:27:     return true;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem55/code.c:28: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI6:
	ret	
	.p2align 2,,3
L19:
LCFI7:
	ldr	x21, [sp, 32]	;,
; GuessSketchFlow/eval/problem55/code.c:15:         if (!found) return false;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem55/code.c:28: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI8:
	ret	
L2:
LCFI9:
; GuessSketchFlow/eval/problem55/code.c:27:     return true;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem55/code.c:17:     for (int i = 0; i < len1; i++) {
	cmp	w7, 0	; _2,
	ble	L3		;,
	b	L7		;
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
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
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
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
