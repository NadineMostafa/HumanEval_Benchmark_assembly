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
; GuessSketchFlow/eval/problem45/code.c:8:     while (x > 0) {
	cmp	w0, 0	; x,
	ble	L15		;,
; GuessSketchFlow/eval/problem45/code.c:5: void func0(int x, int base, char *out) {
	sub	sp, sp, #48	;,,
LCFI0:
; GuessSketchFlow/eval/problem45/code.c:8:     while (x > 0) {
	mov	x4, 1	; ivtmp.33,
	add	x3, sp, 8	; _23,,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem45/code.c:9:         temp[index++] = (x % base) + '0';
	sdiv	w5, w0, w1	; tmp156, x, base
; GuessSketchFlow/eval/problem45/code.c:9:         temp[index++] = (x % base) + '0';
	add	x6, x3, x4	; tmp142, _23, ivtmp.33
; GuessSketchFlow/eval/problem45/code.c:9:         temp[index++] = (x % base) + '0';
	msub	w0, w5, w1, w0	; _1, tmp156, base, x
; GuessSketchFlow/eval/problem45/code.c:9:         temp[index++] = (x % base) + '0';
	add	w0, w0, 48	; tmp160, _1,
; GuessSketchFlow/eval/problem45/code.c:9:         temp[index++] = (x % base) + '0';
	strb	w0, [x6, -1]	; tmp160, MEM[(char *)&temp + -1B + ivtmp.33_79 * 1]
; GuessSketchFlow/eval/problem45/code.c:10:         x = x / base;
	mov	w0, w5	; x, tmp156
	mov	x5, x4	; ivtmp.33, ivtmp.33
; GuessSketchFlow/eval/problem45/code.c:8:     while (x > 0) {
	add	x4, x4, 1	; ivtmp.33, ivtmp.33,
	cmp	w0, 0	; x,
	bgt	L3		;,
	cmp	w5, 15	; ivtmp.33,
	ble	L8		;,
	sxtw	x6, w5	; _28, ivtmp.33
	sub	x0, x6, #16	; _58, _28,
	add	x1, x3, x0	; vectp_temp.13, _23, _58
; GuessSketchFlow/eval/problem45/code.c:14:         out[j++] = temp[--index];
	ldr	q0, [x3, x0]	;, MEM <vector(16) char> [(char *)vectp_temp.13_56]
	adrp	x0, lC0@PAGE	; tmp186,
	ldr	q30, [x0, #lC0@PAGEOFF]	;,
	lsr	w0, w5, 4	; bnd.8_51, ivtmp.33,
	tbl	v0.16b, {v0.16b}, v30.16b	;,,
; GuessSketchFlow/eval/problem45/code.c:14:         out[j++] = temp[--index];
	str	q0, [x2]	;, MEM <vector(16) char> [(char *)out_18(D)]
	cmp	w0, 2	; bnd.8_51,
	beq	L19		;,
L5:
	tst	x5, 15	; ivtmp.33,
	beq	L6		;,
	and	w1, w5, -16	; tmp.11, ivtmp.33,
	and	w4, w5, 15	; tmp.10, ivtmp.33,
L4:
	sub	w4, w4, #1	; _63, tmp.10,
	add	x0, x3, w4, sxtw	; ivtmp.27, _23, _63
	sxtw	x3, w1	; _38, tmp.11
	add	x1, x3, x2	; ivtmp.28, _38, out
	add	x4, x3, w4, uxtw	; _39, _38, _63
	add	x3, x2, 1	; _41, out,
	add	x4, x4, x3	; _78, _39, _41
	.p2align 5,,15
L7:
	ldrb	w3, [x0], -1	;, MEM[(char *)_69]
	strb	w3, [x1], 1	; MEM[(char *)_69], MEM[(char *)_70]
; GuessSketchFlow/eval/problem45/code.c:13:     while(index > 0) {
	cmp	x1, x4	; ivtmp.28, _78
	bne	L7		;,
L6:
; GuessSketchFlow/eval/problem45/code.c:16:     out[j] = '\0';
	add	x2, x2, x6	; out, out, _28
; GuessSketchFlow/eval/problem45/code.c:16:     out[j] = '\0';
	strb	wzr, [x2]	;, *prephitmp_46
; GuessSketchFlow/eval/problem45/code.c:17: }
	add	sp, sp, 48	;,,
LCFI1:
	ret	
	.p2align 2,,3
L19:
LCFI2:
; GuessSketchFlow/eval/problem45/code.c:14:         out[j++] = temp[--index];
	ldr	q31, [x1, -16]	;, MEM <vector(16) char> [(char *)vectp_temp.13_56 + -16B]
	tbl	v31.16b, {v31.16b}, v30.16b	;,,
; GuessSketchFlow/eval/problem45/code.c:14:         out[j++] = temp[--index];
	str	q31, [x2, 16]	;, MEM <vector(16) char> [(char *)out_18(D) + 16B]
	b	L5		;
	.p2align 2,,3
L15:
LCFI3:
; GuessSketchFlow/eval/problem45/code.c:16:     out[j] = '\0';
	strb	wzr, [x2]	;, *prephitmp_46
	ret	
L8:
LCFI4:
; GuessSketchFlow/eval/problem45/code.c:9:         temp[index++] = (x % base) + '0';
	mov	w4, w5	; tmp.10, ivtmp.33
; GuessSketchFlow/eval/problem45/code.c:12:     int j = 0;
	mov	w1, 0	; tmp.11,
	sxtw	x6, w5	; _28, ivtmp.33
	b	L4		;
LFE4:
	.literal16
	.align	4
lC0:
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
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
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xa
	.byte	0xe
	.uleb128 0
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xb
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xe
	.uleb128 0
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xe
	.uleb128 0x30
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
