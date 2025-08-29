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
	sub	sp, sp, #64	;,,
LCFI0:
; GuessSketchFlow/eval/problem85/code.c:6:     sprintf(str, "%d", N);
	adrp	x3, lC0@PAGE	; tmp131,
	add	x3, x3, lC0@PAGEOFF;	;, tmp131,
	mov	x2, 6	;,
; GuessSketchFlow/eval/problem85/code.c:4: char* func0(int N) {
	stp	x29, x30, [sp, 16]	;,,
LCFI1:
	add	x29, sp, 16	;,,
LCFI2:
; GuessSketchFlow/eval/problem85/code.c:6:     sprintf(str, "%d", N);
	mov	w1, 0	;,
; GuessSketchFlow/eval/problem85/code.c:4: char* func0(int N) {
; GuessSketchFlow/eval/problem85/code.c:6:     sprintf(str, "%d", N);
	str	w0, [sp]	; N,
	add	x0, x29, 40	;,,
	bl	___sprintf_chk		;
; GuessSketchFlow/eval/problem85/code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	ldrsb	w0, [x29, 40]	; _3, str[0]
; GuessSketchFlow/eval/problem85/code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	cbz	w0, L2	; _3,
	add	x2, x29, 41	; ivtmp.26,,
; GuessSketchFlow/eval/problem85/code.c:7:     int sum = 0;
	mov	w1, 0	; sum,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem85/code.c:9:         sum += str[i] - '0';
	sub	w0, w0, #48	; _2, _3,
; GuessSketchFlow/eval/problem85/code.c:9:         sum += str[i] - '0';
	add	w1, w1, w0	; sum, sum, _2
; GuessSketchFlow/eval/problem85/code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	ldrsb	w0, [x2], 1	; _3, MEM[(char *)_83 + -1B]
; GuessSketchFlow/eval/problem85/code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	cbnz	w0, L3	; _3,
; GuessSketchFlow/eval/problem85/code.c:11:     char* bi = malloc(33);
	mov	x0, 33	;,
	str	w1, [x29, 28]	; sum, %sfp
	bl	_malloc		;
; GuessSketchFlow/eval/problem85/code.c:13:     if (sum == 0) {
	ldr	w1, [x29, 28]	;, %sfp
	cmp	w1, 0	; sum,
	cbz	w1, L5	; sum,
; GuessSketchFlow/eval/problem85/code.c:16:         while (sum > 0) {
	mov	x3, 1	; ivtmp.20,
	sub	x2, x0, #1	; _78, <retval>,
	ble	L28		;,
	.p2align 5,,15
L6:
; GuessSketchFlow/eval/problem85/code.c:17:             bi[index++] = (sum % 2) + '0';
	and	w4, w1, 1	; _4, sum,
; GuessSketchFlow/eval/problem85/code.c:18:             sum /= 2;
	asr	w1, w1, 1	; sum, sum,
; GuessSketchFlow/eval/problem85/code.c:17:             bi[index++] = (sum % 2) + '0';
	add	w4, w4, 48	; tmp141, _4,
	mov	x5, x3	; ivtmp.20, ivtmp.20
; GuessSketchFlow/eval/problem85/code.c:17:             bi[index++] = (sum % 2) + '0';
	strb	w4, [x2, x3]	; tmp141, MEM[(char *)_78 + ivtmp.20_19 * 1]
; GuessSketchFlow/eval/problem85/code.c:16:         while (sum > 0) {
	add	x3, x3, 1	; ivtmp.20, ivtmp.20,
	cbnz	w1, L6	; sum,
; GuessSketchFlow/eval/problem85/code.c:21:     bi[index] = '\0';
	sxtw	x3, w5	; _10, ivtmp.20
; GuessSketchFlow/eval/problem85/code.c:23:     for (int i = 0; i < index / 2; i++) {
	asr	w5, w5, 1	; _48, ivtmp.20,
; GuessSketchFlow/eval/problem85/code.c:21:     bi[index] = '\0';
	strb	wzr, [x0, x3]	;, *_11
; GuessSketchFlow/eval/problem85/code.c:23:     for (int i = 0; i < index / 2; i++) {
	cbz	w5, L1	; _48,
	mov	x1, x0	; ivtmp.13, <retval>
	add	x2, x2, x3	; ivtmp.14, _78, _10
	add	x5, x0, w5, sxtw	; _21, <retval>, _48
	.p2align 5,,15
L11:
; GuessSketchFlow/eval/problem85/code.c:25:         bi[i] = bi[index - i - 1];
	ldrsb	w4, [x2]	; _18, MEM[(char *)_49]
; GuessSketchFlow/eval/problem85/code.c:24:         char temp = bi[i];
	ldrsb	w3, [x1]	; temp, MEM[(char *)_51]
; GuessSketchFlow/eval/problem85/code.c:25:         bi[i] = bi[index - i - 1];
	strb	w4, [x1], 1	; _18, MEM[(char *)_51]
; GuessSketchFlow/eval/problem85/code.c:26:         bi[index - i - 1] = temp;
	strb	w3, [x2], -1	; temp, MEM[(char *)_49]
; GuessSketchFlow/eval/problem85/code.c:23:     for (int i = 0; i < index / 2; i++) {
	cmp	x5, x1	; _21, ivtmp.13
	bne	L11		;,
; GuessSketchFlow/eval/problem85/code.c:30: }
	ldp	x29, x30, [sp, 16]	;,,
	add	sp, sp, 64	;,,
LCFI3:
	ret	
	.p2align 2,,3
L2:
LCFI4:
; GuessSketchFlow/eval/problem85/code.c:11:     char* bi = malloc(33);
	mov	x0, 33	;,
	bl	_malloc		;
L5:
; GuessSketchFlow/eval/problem85/code.c:14:         bi[index++] = '0';
	mov	w1, 48	; tmp137,
	strh	w1, [x0]	; tmp137, MEM <vector(2) char> [(char *)bi_68]
L1:
; GuessSketchFlow/eval/problem85/code.c:30: }
	ldp	x29, x30, [sp, 16]	;,,
	add	sp, sp, 64	;,,
LCFI5:
	ret	
L28:
LCFI6:
; GuessSketchFlow/eval/problem85/code.c:21:     bi[index] = '\0';
	strb	wzr, [x0]	;, *bi_33
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
	.uleb128 0x40
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x30
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xa
	.byte	0xdd
	.byte	0xde
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
	.byte	0xa
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
