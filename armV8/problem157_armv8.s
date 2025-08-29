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
	stp	x29, x30, [sp, -224]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	mov	w19, w0	; number, number
; GuessSketchFlow/eval/problem157/code.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	adrp	x0, lC15@PAGE	; tmp107,
	add	x0, x0, lC15@PAGEOFF;	; tmp106, tmp107,
	ldp	q31, q30, [x0, 64]	; tmp114, tmp115,
; GuessSketchFlow/eval/problem157/code.c:4: void func0(int number, char *result) {
	stp	x23, x24, [sp, 48]	;,,
LCFI3:
; GuessSketchFlow/eval/problem157/code.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	add	x24, x29, 120	; tmp131,,
; GuessSketchFlow/eval/problem157/code.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	add	x23, x29, 64	; tmp132,,
; GuessSketchFlow/eval/problem157/code.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	ldp	q29, q28, [x0, 32]	; tmp112, tmp113,
	ldp	q27, q26, [x0]	; tmp110, tmp111,
	ldr	x0, [x0, 96]	; tmp116,
	stp	q31, q30, [x24, 64]	; tmp114, tmp115,
	str	x0, [x24, 96]	; tmp116, rep
; GuessSketchFlow/eval/problem157/code.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	adrp	x0, lC14@PAGE	; tmp118,
	add	x0, x0, lC14@PAGEOFF;	; tmp117, tmp118,
; GuessSketchFlow/eval/problem157/code.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	stp	q29, q28, [x24, 32]	; tmp112, tmp113,
; GuessSketchFlow/eval/problem157/code.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	ldp	q30, q29, [x0]	; tmp121, tmp122,
; GuessSketchFlow/eval/problem157/code.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	stp	q27, q26, [x24]	; tmp110, tmp111,
; GuessSketchFlow/eval/problem157/code.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	ldr	q31, [x0, 32]	; tmp123,
	ldr	w0, [x0, 48]	;,
	stp	q30, q29, [x23]	; tmp121, tmp122,
; GuessSketchFlow/eval/problem157/code.c:8:     result[0] = '\0';
	strb	wzr, [x1]	;, *result_12(D)
; GuessSketchFlow/eval/problem157/code.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	str	q31, [x23, 32]	; tmp123, num
	str	w0, [x23, 48]	; tmp124, num
; GuessSketchFlow/eval/problem157/code.c:10:     while(number > 0) {
	cmp	w19, 0	; number,
	ble	L1		;,
	mov	x2, x1	; result, result
	stp	x21, x22, [x29, 32]	;,,
LCFI4:
	mov	x22, 1	; ivtmp.13,
	.p2align 5,,15
L2:
; GuessSketchFlow/eval/problem157/code.c:11:         while (number >= num[pos]) {
	add	x0, x23, x22, lsl 2	; tmp129, tmp132, ivtmp.13,
	ldr	w20, [x0, -4]	;, MEM[(int *)&num + -4B + ivtmp.13_26 * 4]
; GuessSketchFlow/eval/problem157/code.c:11:         while (number >= num[pos]) {
	cmp	w20, w19	; _25, number
	bgt	L6		;,
; GuessSketchFlow/eval/problem157/code.c:12:             strcat(result, rep[pos]);
	add	x0, x24, x22, lsl 3	; tmp126, tmp131, ivtmp.13,
	ldr	x21, [x0, -8]	; pretmp_28, MEM[(const char * *)&rep + -8B + ivtmp.13_26 * 8]
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem157/code.c:12:             strcat(result, rep[pos]);
	mov	x0, x2	;, result
	mov	x1, x21	;, pretmp_28
	bl	_strcat		;
; GuessSketchFlow/eval/problem157/code.c:13:             number -= num[pos];
	sub	w19, w19, w20	; number, number, _25
; GuessSketchFlow/eval/problem157/code.c:12:             strcat(result, rep[pos]);
	mov	x2, x0	; result,
; GuessSketchFlow/eval/problem157/code.c:11:         while (number >= num[pos]) {
	cmp	w19, w20	; number, _25
	bge	L4		;,
; GuessSketchFlow/eval/problem157/code.c:15:         if (number > 0) pos++;
	cbz	w19, L15	; number,
L6:
	add	x22, x22, 1	; ivtmp.13, ivtmp.13,
	b	L2		;
L15:
	ldp	x21, x22, [x29, 32]	;,,
LCFI5:
L1:
; GuessSketchFlow/eval/problem157/code.c:17: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 224	;,,,
LCFI6:
	ret	
LFE1:
	.cstring
	.align	3
lC0:
	.ascii "m\0"
	.align	3
lC1:
	.ascii "cm\0"
	.align	3
lC2:
	.ascii "d\0"
	.align	3
lC3:
	.ascii "cd\0"
	.align	3
lC4:
	.ascii "c\0"
	.align	3
lC5:
	.ascii "xc\0"
	.align	3
lC6:
	.ascii "l\0"
	.align	3
lC7:
	.ascii "xl\0"
	.align	3
lC8:
	.ascii "x\0"
	.align	3
lC9:
	.ascii "ix\0"
	.align	3
lC10:
	.ascii "v\0"
	.align	3
lC11:
	.ascii "iv\0"
	.align	3
lC12:
	.ascii "i\0"
	.const_data
	.align	3
lC15:
	.xword	lC0
	.xword	lC1
	.xword	lC2
	.xword	lC3
	.xword	lC4
	.xword	lC5
	.xword	lC6
	.xword	lC7
	.xword	lC8
	.xword	lC9
	.xword	lC10
	.xword	lC11
	.xword	lC12
	.const
	.align	2
lC14:
	.word	1000
	.word	900
	.word	500
	.word	400
	.word	100
	.word	90
	.word	50
	.word	40
	.word	10
	.word	9
	.word	5
	.word	4
	.word	1
	.text
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
	.uleb128 0xe0
	.byte	0x9d
	.uleb128 0x1c
	.byte	0x9e
	.uleb128 0x1b
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0x1a
	.byte	0x94
	.uleb128 0x19
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x97
	.uleb128 0x16
	.byte	0x98
	.uleb128 0x15
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x96
	.uleb128 0x17
	.byte	0x95
	.uleb128 0x18
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xd6
	.byte	0xd5
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd8
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
