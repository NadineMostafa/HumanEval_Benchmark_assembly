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
	.ascii "db\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB4:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
; GuessSketchFlow/eval/problem80/code.c:5: char* func0(int decimal) {
	mov	w19, w0	; decimal, decimal
; GuessSketchFlow/eval/problem80/code.c:6:     char* out = malloc(64);
	mov	x0, 64	;,
	bl	_malloc		;
; GuessSketchFlow/eval/problem80/code.c:7:     if (!out) {
	cbz	x0, L2	; out,
; GuessSketchFlow/eval/problem80/code.c:11:     out[63] = '\0';
	strb	wzr, [x0, 63]	;, MEM[(char *)out_24 + 63B]
	mov	x20, x0	; out, out
; GuessSketchFlow/eval/problem80/code.c:13:     if (decimal == 0) {
	cmp	w19, 0	; decimal,
	cbnz	w19, L16	; decimal,
; GuessSketchFlow/eval/problem80/code.c:14:         out[index--] = '0';
	mov	w0, 48	; tmp124,
	mov	x3, 60	; _57,
	mov	x1, 61	; _53,
	strb	w0, [x20, 62]	; tmp124, MEM[(char *)out_24 + 62B]
	mov	x0, 5	; _61,
L5:
; GuessSketchFlow/eval/problem80/code.c:22:     out[index--] = 'b';
	mov	w2, 98	; tmp132,
	strb	w2, [x20, x1]	; tmp132, *_8
; GuessSketchFlow/eval/problem80/code.c:23:     out[index--] = 'd';
	mov	w2, 100	; tmp133,
; GuessSketchFlow/eval/problem80/code.c:23:     out[index--] = 'd';
	add	x1, x20, x3	; _10, out, _57
; GuessSketchFlow/eval/problem80/code.c:23:     out[index--] = 'd';
	strb	w2, [x20, x3]	; tmp133, *_10
; GuessSketchFlow/eval/problem80/code.c:23:     out[index--] = 'd';
	str	x1, [x29, 40]	; _10, %sfp
; GuessSketchFlow/eval/problem80/code.c:27:     char* formatted_out = malloc(len + 3);
	bl	_malloc		;
; GuessSketchFlow/eval/problem80/code.c:28:     if (!formatted_out) {
	ldr	x1, [x29, 40]	; _10, %sfp
; GuessSketchFlow/eval/problem80/code.c:27:     char* formatted_out = malloc(len + 3);
	mov	x19, x0	; <retval>, <retval>
; GuessSketchFlow/eval/problem80/code.c:28:     if (!formatted_out) {
	cbz	x0, L17	; <retval>,
; GuessSketchFlow/eval/problem80/code.c:33:     strcpy(formatted_out, &out[start]);
	bl	_strcpy		;
; GuessSketchFlow/eval/problem80/code.c:35:     strcat(formatted_out, "db");
	mov	x0, x19	;, <retval>
	bl	_strlen		;
	adrp	x1, lC0@PAGE	; tmp138,
	add	x2, x19, x0	; _41, <retval>, tmp135
	add	x1, x1, lC0@PAGEOFF;	; tmp137, tmp138,
	ldrh	w3, [x1]	;, MEM <char[1:3]> [(void *)"db"]
	ldrb	w1, [x1, 2]	;, MEM <char[1:3]> [(void *)"db"]
	strh	w3, [x19, x0]	; MEM <char[1:3]> [(void *)"db"], MEM <char[1:3]> [(void *)_41]
; GuessSketchFlow/eval/problem80/code.c:37:     free(out);
	mov	x0, x20	;, out
; GuessSketchFlow/eval/problem80/code.c:35:     strcat(formatted_out, "db");
	strb	w1, [x2, 2]	; MEM <char[1:3]> [(void *)"db"], MEM <char[1:3]> [(void *)_41]
; GuessSketchFlow/eval/problem80/code.c:37:     free(out);
	bl	_free		;
L1:
; GuessSketchFlow/eval/problem80/code.c:40: }
	mov	x0, x19	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI3:
	ret	
	.p2align 2,,3
L16:
LCFI4:
; GuessSketchFlow/eval/problem80/code.c:16:         while (decimal > 0) {
	mov	x1, 62	; ivtmp.13,
	mov	x0, 4	; _61,
	mov	x3, 61	; _57,
	ble	L5		;,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem80/code.c:17:             out[index--] = '0' + (decimal % 2);
	and	w2, w19, 1	; _1, decimal,
; GuessSketchFlow/eval/problem80/code.c:18:             decimal /= 2;
	asr	w19, w19, 1	; decimal, decimal,
; GuessSketchFlow/eval/problem80/code.c:17:             out[index--] = '0' + (decimal % 2);
	add	w2, w2, 48	; tmp127, _1,
	mov	x0, x1	; ivtmp.13, ivtmp.13
; GuessSketchFlow/eval/problem80/code.c:17:             out[index--] = '0' + (decimal % 2);
	strb	w2, [x20, x1]	; tmp127, MEM[(char *)out_24 + ivtmp.13_49 * 1]
; GuessSketchFlow/eval/problem80/code.c:16:         while (decimal > 0) {
	sub	x1, x1, #1	; ivtmp.13, ivtmp.13,
	cbnz	w19, L4	; decimal,
; GuessSketchFlow/eval/problem80/code.c:17:             out[index--] = '0' + (decimal % 2);
	sub	w1, w0, #1	; _46, ivtmp.13,
; GuessSketchFlow/eval/problem80/code.c:27:     char* formatted_out = malloc(len + 3);
	mov	w2, 65	; tmp131,
; GuessSketchFlow/eval/problem80/code.c:22:     out[index--] = 'b';
	sub	w0, w0, #2	; _55, ivtmp.13,
	sxtw	x1, w1	; _53, _46
; GuessSketchFlow/eval/problem80/code.c:23:     out[index--] = 'd';
	sxtw	x3, w0	; _57, _55
; GuessSketchFlow/eval/problem80/code.c:27:     char* formatted_out = malloc(len + 3);
	sub	w0, w2, w0	; _59, tmp131, _55
; GuessSketchFlow/eval/problem80/code.c:27:     char* formatted_out = malloc(len + 3);
	sxtw	x0, w0	; _61, _59
	b	L5		;
L17:
; GuessSketchFlow/eval/problem80/code.c:29:         free(out);
	mov	x0, x20	;, out
	bl	_free		;
L2:
; GuessSketchFlow/eval/problem80/code.c:8:         return NULL;
	mov	x19, 0	; <retval>,
	b	L1		;
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
