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
	stp	x29, x30, [sp, -80]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	mov	x20, x0	; text, text
; GuessSketchFlow/eval/problem141/code.c:7:     for (int i = 0; i < strlen(text); i++) {
	mov	x19, 0	; ivtmp.13,
; GuessSketchFlow/eval/problem141/code.c:7:     for (int i = 0; i < strlen(text); i++) {
	mov	x0, x20	;, text
; GuessSketchFlow/eval/problem141/code.c:4: void func0(const char *text, char *out) {
	stp	x21, x22, [sp, 32]	;,,
LCFI3:
	mov	x21, x1	; out, out
; GuessSketchFlow/eval/problem141/code.c:6:     int j = 0;
	mov	w22, 0	; j,
; GuessSketchFlow/eval/problem141/code.c:4: void func0(const char *text, char *out) {
	stp	x23, x24, [sp, 48]	;,,
LCFI4:
	mov	x24, 0	; _100,
; GuessSketchFlow/eval/problem141/code.c:5:     int space_len = 0;
	mov	w23, 0	; space_len,
; GuessSketchFlow/eval/problem141/code.c:4: void func0(const char *text, char *out) {
	stp	x25, x26, [sp, 64]	;,,
LCFI5:
; GuessSketchFlow/eval/problem141/code.c:13:             if (space_len > 2) out[j++] = '-';
	mov	w26, 45	; tmp136,
; GuessSketchFlow/eval/problem141/code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	mov	w25, 95	; tmp137,
; GuessSketchFlow/eval/problem141/code.c:7:     for (int i = 0; i < strlen(text); i++) {
	bl	_strlen		;
; GuessSketchFlow/eval/problem141/code.c:11:             if (space_len == 1) out[j++] = '_';
	add	x2, x21, x24	; _101, out, _100
; GuessSketchFlow/eval/problem141/code.c:7:     for (int i = 0; i < strlen(text); i++) {
	cmp	x0, x19	; tmp140, ivtmp.13
	bls	L15		;,
	.p2align 5,,15
L8:
; GuessSketchFlow/eval/problem141/code.c:8:         if (text[i] == ' ') {
	ldrsb	w0, [x20, x19]	; pretmp_37, MEM[(const char *)text_46(D) + ivtmp.13_43 * 1]
; GuessSketchFlow/eval/problem141/code.c:8:         if (text[i] == ' ') {
	cmp	w0, 32	; pretmp_37,
	beq	L16		;,
; GuessSketchFlow/eval/problem141/code.c:11:             if (space_len == 1) out[j++] = '_';
	add	w1, w22, 1	; j, j,
; GuessSketchFlow/eval/problem141/code.c:11:             if (space_len == 1) out[j++] = '_';
	cmp	w23, 1	; space_len,
	beq	L17		;,
; GuessSketchFlow/eval/problem141/code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	cmp	w23, 2	; space_len,
	bne	L7		;,
; GuessSketchFlow/eval/problem141/code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	sxtw	x0, w1	; _88, j
; GuessSketchFlow/eval/problem141/code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	strb	w25, [x21, x24]	; tmp137, *_101
; GuessSketchFlow/eval/problem141/code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	add	w1, w22, 2	; j, j,
; GuessSketchFlow/eval/problem141/code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	strb	w25, [x21, x0]	; tmp137, *_89
; GuessSketchFlow/eval/problem141/code.c:15:             out[j++] = text[i];
	ldrsb	w0, [x20, x19]	; pretmp_37, MEM[(const char *)text_46(D) + ivtmp.13_43 * 1]
L6:
; GuessSketchFlow/eval/problem141/code.c:15:             out[j++] = text[i];
	add	w22, w1, 1	; j, j,
; GuessSketchFlow/eval/problem141/code.c:14:             space_len = 0;
	mov	w23, 0	; space_len,
; GuessSketchFlow/eval/problem141/code.c:15:             out[j++] = text[i];
	strb	w0, [x21, w1, sxtw]	; pretmp_37, *_12
	sxtw	x24, w22	; _100, j
	add	x19, x19, 1	; ivtmp.13, ivtmp.13,
L20:
; GuessSketchFlow/eval/problem141/code.c:7:     for (int i = 0; i < strlen(text); i++) {
	mov	x0, x20	;, text
	bl	_strlen		;
; GuessSketchFlow/eval/problem141/code.c:11:             if (space_len == 1) out[j++] = '_';
	add	x2, x21, x24	; _101, out, _100
; GuessSketchFlow/eval/problem141/code.c:7:     for (int i = 0; i < strlen(text); i++) {
	cmp	x0, x19	; tmp140, ivtmp.13
	bhi	L8		;,
L15:
; GuessSketchFlow/eval/problem141/code.c:18:     if (space_len == 1) out[j++] = '_';
	cmp	w23, 1	; space_len,
	beq	L18		;,
; GuessSketchFlow/eval/problem141/code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	cmp	w23, 2	; space_len,
	beq	L19		;,
; GuessSketchFlow/eval/problem141/code.c:20:     if (space_len > 2) out[j++] = '-';
	ble	L10		;,
; GuessSketchFlow/eval/problem141/code.c:20:     if (space_len > 2) out[j++] = '-';
	mov	w0, 45	; tmp133,
; GuessSketchFlow/eval/problem141/code.c:20:     if (space_len > 2) out[j++] = '-';
	add	w22, w22, 1	; j, j,
; GuessSketchFlow/eval/problem141/code.c:20:     if (space_len > 2) out[j++] = '-';
	strb	w0, [x21, x24]	; tmp133, *_101
L10:
; GuessSketchFlow/eval/problem141/code.c:21:     out[j] = '\0';
	strb	wzr, [x21, w22, sxtw]	;, *_25
; GuessSketchFlow/eval/problem141/code.c:22: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI6:
	ret	
	.p2align 2,,3
L16:
LCFI7:
; GuessSketchFlow/eval/problem141/code.c:9:             space_len++;
	add	w23, w23, 1	; space_len, space_len,
	add	x19, x19, 1	; ivtmp.13, ivtmp.13,
	b	L20		;
	.p2align 2,,3
L17:
; GuessSketchFlow/eval/problem141/code.c:11:             if (space_len == 1) out[j++] = '_';
	strb	w25, [x2]	; tmp137, *_101
; GuessSketchFlow/eval/problem141/code.c:15:             out[j++] = text[i];
	ldrsb	w0, [x20, x19]	; pretmp_37, MEM[(const char *)text_46(D) + ivtmp.13_43 * 1]
	b	L6		;
	.p2align 2,,3
L7:
; GuessSketchFlow/eval/problem141/code.c:13:             if (space_len > 2) out[j++] = '-';
	ble	L12		;,
; GuessSketchFlow/eval/problem141/code.c:13:             if (space_len > 2) out[j++] = '-';
	strb	w26, [x2]	; tmp136, *_101
; GuessSketchFlow/eval/problem141/code.c:15:             out[j++] = text[i];
	ldrsb	w0, [x20, x19]	; pretmp_37, MEM[(const char *)text_46(D) + ivtmp.13_43 * 1]
	b	L6		;
	.p2align 2,,3
L19:
; GuessSketchFlow/eval/problem141/code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	mov	w1, 95	; tmp130,
; GuessSketchFlow/eval/problem141/code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	add	w0, w22, 1	; j, j,
; GuessSketchFlow/eval/problem141/code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	add	w22, w22, 2	; j, j,
; GuessSketchFlow/eval/problem141/code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	strb	w1, [x21, x24]	; tmp130, *_101
; GuessSketchFlow/eval/problem141/code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	strb	w1, [x21, w0, sxtw]	; tmp130, *_21
; GuessSketchFlow/eval/problem141/code.c:21:     out[j] = '\0';
	strb	wzr, [x21, w22, sxtw]	;, *_25
; GuessSketchFlow/eval/problem141/code.c:22: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI8:
	ret	
	.p2align 2,,3
L18:
LCFI9:
; GuessSketchFlow/eval/problem141/code.c:18:     if (space_len == 1) out[j++] = '_';
	mov	w0, 95	; tmp129,
; GuessSketchFlow/eval/problem141/code.c:18:     if (space_len == 1) out[j++] = '_';
	add	w22, w22, 1	; j, j,
; GuessSketchFlow/eval/problem141/code.c:18:     if (space_len == 1) out[j++] = '_';
	strb	w0, [x21, x24]	; tmp129, *_101
; GuessSketchFlow/eval/problem141/code.c:21:     out[j] = '\0';
	strb	wzr, [x21, w22, sxtw]	;, *_25
; GuessSketchFlow/eval/problem141/code.c:22: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI10:
	ret	
	.p2align 2,,3
L12:
LCFI11:
	mov	w1, w22	; j, j
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
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0x8
	.byte	0x94
	.uleb128 0x7
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0x6
	.byte	0x96
	.uleb128 0x5
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x97
	.uleb128 0x4
	.byte	0x98
	.uleb128 0x3
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x99
	.uleb128 0x2
	.byte	0x9a
	.uleb128 0x1
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xa
	.byte	0xde
	.byte	0xdd
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
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xb
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xa
	.byte	0xde
	.byte	0xdd
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
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xb
	.byte	0x4
	.set L$set$13,LCFI10-LCFI9
	.long L$set$13
	.byte	0xa
	.byte	0xde
	.byte	0xdd
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
	.set L$set$14,LCFI11-LCFI10
	.long L$set$14
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
