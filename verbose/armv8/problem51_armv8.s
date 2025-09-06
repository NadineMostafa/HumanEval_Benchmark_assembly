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
	stp	x29, x30, [sp, -32]!	;,,,
LCFI0:
; GuessSketchFlow/eval/problem51/code.c:6:     int shift = encode ? 5 : 21;
	cmp	w1, 0	; encode,
; GuessSketchFlow/eval/problem51/code.c:5: void func0(char *s, int encode) {
	mov	x29, sp	;,
LCFI1:
; GuessSketchFlow/eval/problem51/code.c:6:     int shift = encode ? 5 : 21;
	mov	w1, 5	; tmp257,
; GuessSketchFlow/eval/problem51/code.c:5: void func0(char *s, int encode) {
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
; GuessSketchFlow/eval/problem51/code.c:6:     int shift = encode ? 5 : 21;
	mov	w20, 21	; tmp256,
; GuessSketchFlow/eval/problem51/code.c:5: void func0(char *s, int encode) {
	mov	x19, x0	; s, s
; GuessSketchFlow/eval/problem51/code.c:6:     int shift = encode ? 5 : 21;
	csel	w20, w20, w1, eq	; shift, tmp256, tmp257,
; GuessSketchFlow/eval/problem51/code.c:7:     size_t len = strlen(s);
	bl	_strlen		;
; GuessSketchFlow/eval/problem51/code.c:8:     for (size_t i = 0; i < len; i++) {
	cbz	x0, L1	; len,
	sub	x1, x0, #1	; _112, len,
	cmp	x1, 14	; _112,
	bls	L9		;,
	dup	v18.8h, w20	;, shift
; GuessSketchFlow/eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	adrp	x4, lC0@PAGE	; tmp262,
	and	x3, x0, -16	; i, len,
	mov	x1, x19	; ivtmp.40, s
	add	x2, x19, x3	; _86, s, i
	mvni	v30.8h, 0x60	;
	ldr	q29, [x4, #lC0@PAGEOFF]	;,
	movi	v28.4s, 0x1a	;
	movi	v27.16b, 0x61	;
	add	v30.8h, v18.8h, v30.8h	;,,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	ldr	q26, [x1]	;, MEM <vector(16) char> [(char *)_82]
; GuessSketchFlow/eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	saddw	v25.8h, v30.8h, v26.8b	;,,
	saddw2	v26.8h, v30.8h, v26.16b	;,,
	sxtl	v24.4s, v25.4h	;,
	sxtl	v23.4s, v26.4h	;,
	sxtl2	v25.4s, v25.8h	;,
	sxtl2	v26.4s, v26.8h	;,
; GuessSketchFlow/eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	smull	v17.2d, v24.2s, v29.2s	;,,
	cmlt	v7.4s, v24.4s, #0	;,
	smull2	v16.2d, v24.4s, v29.4s	;,,
	cmlt	v1.4s, v23.4s, #0	;,
	smull	v6.2d, v25.2s, v29.2s	;,,
	cmlt	v4.4s, v25.4s, #0	;,
	smull2	v5.2d, v25.4s, v29.4s	;,,
	cmlt	v31.4s, v26.4s, #0	;,
	smull	v3.2d, v23.2s, v29.2s	;,,
	smull2	v2.2d, v23.4s, v29.4s	;,,
	smull	v0.2d, v26.2s, v29.2s	;,,
	smull2	v22.2d, v26.4s, v29.4s	;,,
	uzp2	v16.4s, v17.4s, v16.4s	;,,
	uzp2	v5.4s, v6.4s, v5.4s	;,,
	uzp2	v2.4s, v3.4s, v2.4s	;,,
	sshr	v16.4s, v16.4s, 3	;,,
	uzp2	v22.4s, v0.4s, v22.4s	;,,
	sshr	v5.4s, v5.4s, 3	;,,
	sshr	v2.4s, v2.4s, 3	;,,
	sub	v7.4s, v16.4s, v7.4s	;,,
	sshr	v22.4s, v22.4s, 3	;,,
	sub	v4.4s, v5.4s, v4.4s	;,,
	sub	v1.4s, v2.4s, v1.4s	;,,
	mls	v24.4s, v7.4s, v28.4s	;,,
	sub	v31.4s, v22.4s, v31.4s	;,,
	mls	v25.4s, v4.4s, v28.4s	;,,
	mls	v23.4s, v1.4s, v28.4s	;,,
	mls	v26.4s, v31.4s, v28.4s	;,,
	uzp1	v25.8h, v24.8h, v25.8h	;,,
	uzp1	v26.8h, v23.8h, v26.8h	;,,
	uzp1	v26.16b, v25.16b, v26.16b	;,,
	add	v26.16b, v26.16b, v27.16b	;,,
; GuessSketchFlow/eval/problem51/code.c:10:         s[i] = (char)w;
	str	q26, [x1], 16	;, MEM <vector(16) char> [(char *)_82]
	cmp	x1, x2	; ivtmp.40, _86
	bne	L5		;,
	cmp	x0, x3	; len, i
	beq	L1		;,
L4:
; GuessSketchFlow/eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	mov	w4, 26	; tmp250,
	.p2align 5,,15
L7:
; GuessSketchFlow/eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	ldrsb	w1, [x19, x3]	; _102, MEM[(char *)s_13(D) + i_98 * 1]
; GuessSketchFlow/eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	sub	w1, w1, #97	; _103, _102,
; GuessSketchFlow/eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	add	w1, w1, w20	; _104, _103, shift
; GuessSketchFlow/eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	sdiv	w2, w1, w4	; tmp249, _104, tmp250
	msub	w1, w2, w4, w1	; _105, tmp249, tmp250, _104
; GuessSketchFlow/eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	add	w1, w1, 97	; w_106, _105,
; GuessSketchFlow/eval/problem51/code.c:10:         s[i] = (char)w;
	strb	w1, [x19, x3]	; w_106, MEM[(char *)s_13(D) + i_98 * 1]
; GuessSketchFlow/eval/problem51/code.c:8:     for (size_t i = 0; i < len; i++) {
	add	x3, x3, 1	; i, i,
; GuessSketchFlow/eval/problem51/code.c:8:     for (size_t i = 0; i < len; i++) {
	cmp	x0, x3	; len, i
	bhi	L7		;,
L1:
; GuessSketchFlow/eval/problem51/code.c:12: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 32	;,,,
LCFI3:
	ret	
L9:
LCFI4:
; GuessSketchFlow/eval/problem51/code.c:8:     for (size_t i = 0; i < len; i++) {
	mov	x3, 0	; i,
	b	L4		;
LFE4:
	.literal16
	.align	4
lC0:
	.word	1321528399
	.word	1321528399
	.word	1321528399
	.word	1321528399
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
	.byte	0x94
	.uleb128 0x1
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
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
