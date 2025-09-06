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
	stp	x29, x30, [sp, -80]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x25, x26, [sp, 64]	;,,
LCFI2:
	mov	x25, x0	; a, a
; GuessSketchFlow/eval/problem155/code.c:8:     int len_b = strlen(b);
	mov	x0, x1	;, b
; GuessSketchFlow/eval/problem155/code.c:6: bool func0(const char *a, const char *b) {
	stp	x21, x22, [sp, 32]	;,,
LCFI3:
	mov	x22, x1	; b, b
	stp	x23, x24, [sp, 48]	;,,
LCFI4:
; GuessSketchFlow/eval/problem155/code.c:8:     int len_b = strlen(b);
	bl	_strlen		;
	mov	x24, x0	; tmp121, tmp132
; GuessSketchFlow/eval/problem155/code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	lsl	w0, w0, 1	; _2, tmp121,
; GuessSketchFlow/eval/problem155/code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	add	w0, w0, 1	; _3, _2,
; GuessSketchFlow/eval/problem155/code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	sxtw	x0, w0	;, _3
	bl	_malloc		;
	mov	x21, x0	; temp,
; GuessSketchFlow/eval/problem155/code.c:11:     for (int i = 0; i < len_b; i++) {
	cmp	w24, 0	; tmp121,
	ble	L6		;,
; GuessSketchFlow/eval/problem155/code.c:13:         strncpy(temp + len_b - i, b, i);
	add	x23, x0, w24, sxtw	; _42, temp, tmp121
	mov	x26, x23	; _36, _42
	stp	x19, x20, [x29, 16]	;,,
LCFI5:
; GuessSketchFlow/eval/problem155/code.c:13:         strncpy(temp + len_b - i, b, i);
	sxtw	x20, w24	; ivtmp.8, tmp121
	mov	x19, 0	; ivtmp.5,
	b	L5		;
	.p2align 2,,3
L4:
; GuessSketchFlow/eval/problem155/code.c:11:     for (int i = 0; i < len_b; i++) {
	add	x19, x19, 1	; ivtmp.5, ivtmp.5,
	sub	x20, x20, #1	; ivtmp.8, ivtmp.8,
	cmp	w24, w19	; tmp121, ivtmp.5
	ble	L9		;,
	add	x23, x21, x20	; _42, temp, ivtmp.8
L5:
; GuessSketchFlow/eval/problem155/code.c:12:         strncpy(temp, b + i, len_b - i);
	mov	x2, x20	;, ivtmp.8
	add	x1, x22, x19	;, b, ivtmp.5
	mov	x0, x21	;, temp
	bl	_strncpy		;
; GuessSketchFlow/eval/problem155/code.c:13:         strncpy(temp + len_b - i, b, i);
	mov	x1, x22	;, b
	mov	x2, x19	;, ivtmp.5
	mov	x0, x23	;, _42
	bl	_strncpy		;
; GuessSketchFlow/eval/problem155/code.c:15:         if (strstr(a, temp)) {
	mov	x1, x21	;, temp
	mov	x0, x25	;, a
; GuessSketchFlow/eval/problem155/code.c:14:         temp[len_b] = '\0';
	strb	wzr, [x26]	;, *_36
; GuessSketchFlow/eval/problem155/code.c:15:         if (strstr(a, temp)) {
	bl	_strstr		;
; GuessSketchFlow/eval/problem155/code.c:15:         if (strstr(a, temp)) {
	cbz	x0, L4	; _15,
; GuessSketchFlow/eval/problem155/code.c:16:             free(temp);
	mov	x0, x21	;, temp
	bl	_free		;
; GuessSketchFlow/eval/problem155/code.c:17:             return true;
	mov	w0, 1	; <retval>,
	ldp	x19, x20, [x29, 16]	;,,
LCFI6:
; GuessSketchFlow/eval/problem155/code.c:23: }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI7:
	ret	
	.p2align 2,,3
L9:
LCFI8:
	ldp	x19, x20, [x29, 16]	;,,
LCFI9:
L6:
; GuessSketchFlow/eval/problem155/code.c:21:     free(temp);
	mov	x0, x21	;, temp
	bl	_free		;
; GuessSketchFlow/eval/problem155/code.c:22:     return false;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem155/code.c:23: }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI10:
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
	.byte	0x99
	.uleb128 0x2
	.byte	0x9a
	.uleb128 0x1
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
	.byte	0x94
	.uleb128 0x7
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xa
	.byte	0xd4
	.byte	0xd3
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xb
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xd4
	.byte	0xd3
	.byte	0x4
	.set L$set$13,LCFI10-LCFI9
	.long L$set$13
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
