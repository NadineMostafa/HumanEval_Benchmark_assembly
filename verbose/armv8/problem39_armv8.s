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
	stp	x29, x30, [sp, -96]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	mov	x20, x0	; s, s
	stp	x25, x26, [sp, 64]	;,,
LCFI3:
	mov	w26, w1	; encode, encode
; GuessSketchFlow/eval/problem39/code.c:5:     int l = strlen(s);
	bl	_strlen		;
; GuessSketchFlow/eval/problem39/code.c:9:     for (int i = 0; i < num; ++i) {
	cmp	w0, 0	; tmp119,
	ble	L1		;,
; GuessSketchFlow/eval/problem39/code.c:6:     int num = (l + 2) / 3;
	add	w25, w0, 2	; _2, tmp119,
	stp	x23, x24, [x29, 48]	;,,
LCFI4:
	mov	x24, x0	; tmp119, tmp147
; GuessSketchFlow/eval/problem39/code.c:6:     int num = (l + 2) / 3;
	mov	w0, 43691	; tmp122,
; GuessSketchFlow/eval/problem39/code.c:9:     for (int i = 0; i < num; ++i) {
	mov	w19, 0	; i,
; GuessSketchFlow/eval/problem39/code.c:6:     int num = (l + 2) / 3;
	movk	w0, 0xaaaa, lsl 16	; tmp122,,
	stp	x21, x22, [x29, 32]	;,,
LCFI5:
	mov	w21, w24	; ivtmp.10, tmp119
	add	x22, x29, 88	; tmp142,,
; GuessSketchFlow/eval/problem39/code.c:6:     int num = (l + 2) / 3;
	umull	x25, w25, w0	; tmp121, _2, tmp122
	lsr	x25, x25, 33	; num, tmp121,
	.p2align 5,,15
L7:
; GuessSketchFlow/eval/problem39/code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	add	w19, w19, 1	; i, i,
; GuessSketchFlow/eval/problem39/code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	add	w1, w19, w19, lsl 1	; _5, i, i,
	cmp	w1, w24	; _5, tmp119
	bgt	L13		;,
; GuessSketchFlow/eval/problem39/code.c:11:         strncpy(x, s + i * 3, len);
	mov	x2, 3	;,
	mov	x1, x20	;, ivtmp.9
	mov	x0, x22	;, tmp142
	bl	_strncpy		;
; GuessSketchFlow/eval/problem39/code.c:12:         x[len] = '\0';
	strb	wzr, [x29, 91]	;, x[3]
L9:
; GuessSketchFlow/eval/problem39/code.c:17:                 x[2] = x[1];
	ldrsb	w2, [x29, 89]	; pretmp_49, x[1]
; GuessSketchFlow/eval/problem39/code.c:16:                 char temp = x[2];
	ldrsb	w1, [x29, 90]	; pretmp_50, x[2]
; GuessSketchFlow/eval/problem39/code.c:18:                 x[1] = x[0];
	ldrsb	w0, [x29, 88]	; pretmp_51, x[0]
; GuessSketchFlow/eval/problem39/code.c:15:             if (encode) {
	cbz	w26, L5	; encode,
; GuessSketchFlow/eval/problem39/code.c:19:                 x[0] = temp;
	strb	w1, [x29, 88]	; pretmp_50, x[0]
; GuessSketchFlow/eval/problem39/code.c:18:                 x[1] = x[0];
	strb	w0, [x29, 89]	; pretmp_51, x[1]
; GuessSketchFlow/eval/problem39/code.c:17:                 x[2] = x[1];
	strb	w2, [x29, 90]	; pretmp_49, x[2]
L6:
; GuessSketchFlow/eval/problem39/code.c:9:     for (int i = 0; i < num; ++i) {
	mov	x23, 3	; _9,
L4:
; GuessSketchFlow/eval/problem39/code.c:27:         strncpy(s + i * 3, x, len);
	mov	x0, x20	;, ivtmp.9
	mov	x2, x23	;, _9
	mov	x1, x22	;, tmp142
; GuessSketchFlow/eval/problem39/code.c:9:     for (int i = 0; i < num; ++i) {
	add	x20, x20, 3	; ivtmp.9, ivtmp.9,
; GuessSketchFlow/eval/problem39/code.c:27:         strncpy(s + i * 3, x, len);
	bl	_strncpy		;
; GuessSketchFlow/eval/problem39/code.c:9:     for (int i = 0; i < num; ++i) {
	sub	w21, w21, #3	; ivtmp.10, ivtmp.10,
	cmp	w19, w25	; i, num
	blt	L7		;,
	ldp	x21, x22, [x29, 32]	;,,
LCFI6:
	ldp	x23, x24, [x29, 48]	;,,
LCFI7:
L1:
; GuessSketchFlow/eval/problem39/code.c:29: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 96	;,,,
LCFI8:
	ret	
	.p2align 2,,3
L13:
LCFI9:
; GuessSketchFlow/eval/problem39/code.c:11:         strncpy(x, s + i * 3, len);
	sxtw	x23, w21	; _9, ivtmp.10
	mov	x3, 4	;,
	mov	x2, x23	;, _9
	mov	x1, x20	;, ivtmp.9
	mov	x0, x22	;, tmp142
	bl	___strncpy_chk		;
; GuessSketchFlow/eval/problem39/code.c:12:         x[len] = '\0';
	strb	wzr, [x22, w21, sxtw]	;, x[_56]
; GuessSketchFlow/eval/problem39/code.c:14:         if (len == 3) {
	cmp	w21, 3	; ivtmp.10,
	bne	L4		;,
	b	L9		;
	.p2align 2,,3
L5:
; GuessSketchFlow/eval/problem39/code.c:22:                 x[0] = x[1];
	strb	w2, [x29, 88]	; pretmp_49, x[0]
; GuessSketchFlow/eval/problem39/code.c:23:                 x[1] = x[2];
	strb	w1, [x29, 89]	; pretmp_50, x[1]
; GuessSketchFlow/eval/problem39/code.c:24:                 x[2] = temp;
	strb	w0, [x29, 90]	; pretmp_51, x[2]
	b	L6		;
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
	.uleb128 0x60
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0xa
	.byte	0x94
	.uleb128 0x9
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x99
	.uleb128 0x4
	.byte	0x9a
	.uleb128 0x3
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x98
	.uleb128 0x5
	.byte	0x97
	.uleb128 0x6
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x96
	.uleb128 0x7
	.byte	0x95
	.uleb128 0x8
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xd6
	.byte	0xd5
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xd8
	.byte	0xd7
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xda
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x60
	.byte	0x93
	.uleb128 0xa
	.byte	0x94
	.uleb128 0x9
	.byte	0x95
	.uleb128 0x8
	.byte	0x96
	.uleb128 0x7
	.byte	0x97
	.uleb128 0x6
	.byte	0x98
	.uleb128 0x5
	.byte	0x99
	.uleb128 0x4
	.byte	0x9a
	.uleb128 0x3
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
