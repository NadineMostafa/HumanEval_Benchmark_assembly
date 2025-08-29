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
	.ascii "%d\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB4:
	sub	sp, sp, #144	;,,
LCFI0:
; GuessSketchFlow/eval/problem66/code.c:7:     sprintf(xs, "%d", x);
	adrp	x3, lC0@PAGE	; tmp123,
	add	x3, x3, lC0@PAGEOFF;	;, tmp123,
	mov	x2, 50	;,
; GuessSketchFlow/eval/problem66/code.c:5: char* func0(int x, int shift) {
	stp	x29, x30, [sp, 16]	;,,
LCFI1:
	add	x29, sp, 16	;,,
LCFI2:
	str	x21, [sp, 48]	;,
LCFI3:
; GuessSketchFlow/eval/problem66/code.c:7:     sprintf(xs, "%d", x);
	adrp	x21, _xs.0@PAGE	; tmp150,
; GuessSketchFlow/eval/problem66/code.c:5: char* func0(int x, int shift) {
	stp	x19, x20, [sp, 32]	;,,
LCFI4:
; GuessSketchFlow/eval/problem66/code.c:7:     sprintf(xs, "%d", x);
	add	x19, x21, _xs.0@PAGEOFF;	; tmp124, tmp150,
; GuessSketchFlow/eval/problem66/code.c:5: char* func0(int x, int shift) {
	mov	w20, w1	; shift, shift
; GuessSketchFlow/eval/problem66/code.c:7:     sprintf(xs, "%d", x);
	mov	w1, 0	;,
	str	w0, [sp]	; x,
	mov	x0, x19	;, tmp124
	bl	___sprintf_chk		;
; GuessSketchFlow/eval/problem66/code.c:8:     int len = strlen(xs);
	mov	x0, x19	;, tmp124
	bl	_strlen		;
; GuessSketchFlow/eval/problem66/code.c:10:     if (len < shift) {
	cmp	w0, w20	; tmp153, shift
	bge	L2		;,
; GuessSketchFlow/eval/problem66/code.c:11:         for (int i = 0; i < len / 2; i++) {
	asr	w4, w0, 1	; _28, tmp153,
; GuessSketchFlow/eval/problem66/code.c:11:         for (int i = 0; i < len / 2; i++) {
	cbz	w4, L4	; _28,
	mov	x1, x19	; ivtmp.7, tmp124
	sub	w0, w0, #1	; _35, tmp153,
	add	x4, x19, w4, sxtw	; _45, ivtmp.7, _28
	add	x0, x19, w0, sxtw	; ivtmp.8, ivtmp.7, _35
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem66/code.c:13:             xs[i] = xs[len - 1 - i];
	ldrsb	w3, [x0]	; _4, MEM[(char *)_41]
; GuessSketchFlow/eval/problem66/code.c:12:             char temp = xs[i];
	ldrsb	w2, [x1]	; temp, MEM[(char *)_39]
; GuessSketchFlow/eval/problem66/code.c:13:             xs[i] = xs[len - 1 - i];
	strb	w3, [x1], 1	; _4, MEM[(char *)_39]
; GuessSketchFlow/eval/problem66/code.c:14:             xs[len - 1 - i] = temp;
	strb	w2, [x0], -1	; temp, MEM[(char *)_41]
; GuessSketchFlow/eval/problem66/code.c:11:         for (int i = 0; i < len / 2; i++) {
	cmp	x1, x4	; ivtmp.7, _45
	bne	L5		;,
L4:
; GuessSketchFlow/eval/problem66/code.c:25: }
	ldp	x29, x30, [sp, 16]	;,,
	add	x0, x21, _xs.0@PAGEOFF;	;, tmp150,
	ldp	x19, x20, [sp, 32]	;,,
	ldr	x21, [sp, 48]	;,
	add	sp, sp, 144	;,,
LCFI5:
	ret	
	.p2align 2,,3
L2:
LCFI6:
; GuessSketchFlow/eval/problem66/code.c:18:         strcpy(temp, xs + len - shift);
	sub	x4, x0, w20, sxtw	; _8, tmp153, shift
	mov	x2, 50	;,
	add	x1, x19, x4	;, tmp124, _8
	add	x0, x29, 72	;,,
	str	x4, [x29, 56]	; _8, %sfp
	bl	___strcpy_chk		;
; GuessSketchFlow/eval/problem66/code.c:20:         strncat(temp, xs, len - shift);
	ldr	x2, [x29, 56]	;, %sfp
	mov	x3, 50	;,
	mov	x1, x19	;, tmp124
; GuessSketchFlow/eval/problem66/code.c:19:         temp[shift] = '\0';
	strb	wzr, [x0, w20, sxtw]	;, temp[shift_17(D)]
; GuessSketchFlow/eval/problem66/code.c:20:         strncat(temp, xs, len - shift);
	bl	___strncat_chk		;
; GuessSketchFlow/eval/problem66/code.c:21:         strcpy(xs, temp);
	mov	x1, x0	;,
	mov	x2, 50	;,
	mov	x0, x19	;, tmp124
	bl	___strcpy_chk		;
; GuessSketchFlow/eval/problem66/code.c:25: }
	ldp	x29, x30, [sp, 16]	;,,
	add	x0, x21, _xs.0@PAGEOFF;	;, tmp150,
	ldp	x19, x20, [sp, 32]	;,,
	ldr	x21, [sp, 48]	;,
	add	sp, sp, 144	;,,
LCFI7:
	ret	
LFE4:
	.zerofill __DATA,__bss,_xs.0,50,0
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
	.uleb128 0x90
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0x9d
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xf
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x80
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0xc
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x93
	.uleb128 0xe
	.byte	0x94
	.uleb128 0xd
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xa
	.byte	0xd5
	.byte	0xd3
	.byte	0xd4
	.byte	0xdd
	.byte	0xde
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
	.byte	0xd5
	.byte	0xd3
	.byte	0xd4
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
