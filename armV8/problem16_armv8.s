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
	.ascii " %d\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB4:
	sub	sp, sp, #80	;,,
LCFI0:
	stp	x29, x30, [sp, 16]	;,,
LCFI1:
	add	x29, sp, 16	;,,
LCFI2:
	str	x23, [sp, 64]	;,
; GuessSketchFlow/eval/problem16/code.c:6:     for (int i = 1; i <= n; ++i) {
	cmp	w0, 0	; n,
LCFI3:
	ble	L2		;,
	stp	x21, x22, [x29, 32]	;,,
LCFI4:
	adrp	x22, lC0@PAGE	; tmp128,
	add	w21, w0, 1	; _8, n,
; GuessSketchFlow/eval/problem16/code.c:7:         len += snprintf(NULL, 0, " %d", i);
	add	x22, x22, lC0@PAGEOFF;	; tmp117, tmp128,
	stp	x19, x20, [x29, 16]	;,,
LCFI5:
; GuessSketchFlow/eval/problem16/code.c:6:     for (int i = 1; i <= n; ++i) {
	mov	w19, 1	; i,
; GuessSketchFlow/eval/problem16/code.c:5:     int len = 2; 
	mov	w20, 2	; len,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem16/code.c:7:         len += snprintf(NULL, 0, " %d", i);
	mov	x2, x22	;, tmp117
	mov	x1, 0	;,
	mov	x0, 0	;,
	str	w19, [sp]	; i,
; GuessSketchFlow/eval/problem16/code.c:6:     for (int i = 1; i <= n; ++i) {
	add	w19, w19, 1	; i, i,
; GuessSketchFlow/eval/problem16/code.c:7:         len += snprintf(NULL, 0, " %d", i);
	bl	_snprintf		;
; GuessSketchFlow/eval/problem16/code.c:7:         len += snprintf(NULL, 0, " %d", i);
	add	w20, w20, w0	; len, len, _26
; GuessSketchFlow/eval/problem16/code.c:6:     for (int i = 1; i <= n; ++i) {
	cmp	w19, w21	; i, _8
	bne	L3		;,
; GuessSketchFlow/eval/problem16/code.c:10:     char *out = malloc(len);
	sxtw	x0, w20	;, len
	bl	_malloc		;
	mov	x23, x0	; <retval>, <retval>
; GuessSketchFlow/eval/problem16/code.c:11:     if (!out) {
	cbz	x0, L16	; <retval>,
; GuessSketchFlow/eval/problem16/code.c:16:     ptr += sprintf(ptr, "0");
	mov	x20, x0	; ptr, <retval>
; GuessSketchFlow/eval/problem16/code.c:17:     for (int i = 1; i <= n; ++i) {
	mov	w19, 1	; i,
; GuessSketchFlow/eval/problem16/code.c:16:     ptr += sprintf(ptr, "0");
	mov	w0, 48	; tmp127,
	strh	w0, [x20], 1	; tmp127, MEM <char[1:2]> [(void *)out_3]
	.p2align 5,,15
L8:
; GuessSketchFlow/eval/problem16/code.c:18:         ptr += sprintf(ptr, " %d", i);
	mov	x0, x20	;, ptr
	mov	x1, x22	;, tmp117
	str	w19, [sp]	; i,
	bl	_sprintf		;
; GuessSketchFlow/eval/problem16/code.c:18:         ptr += sprintf(ptr, " %d", i);
	add	x20, x20, w0, sxtw	; ptr, ptr, _22
; GuessSketchFlow/eval/problem16/code.c:17:     for (int i = 1; i <= n; ++i) {
	add	w19, w19, 1	; i, i,
; GuessSketchFlow/eval/problem16/code.c:17:     for (int i = 1; i <= n; ++i) {
	cmp	w21, w19	; _8, i
	bne	L8		;,
L16:
	ldp	x19, x20, [x29, 16]	;,,
LCFI6:
	ldp	x21, x22, [x29, 32]	;,,
LCFI7:
L1:
; GuessSketchFlow/eval/problem16/code.c:21: }
	mov	x0, x23	;, <retval>
	ldp	x29, x30, [sp, 16]	;,,
	ldr	x23, [sp, 64]	;,
	add	sp, sp, 80	;,,
LCFI8:
	ret	
	.p2align 2,,3
L2:
LCFI9:
; GuessSketchFlow/eval/problem16/code.c:10:     char *out = malloc(len);
	mov	x0, 2	;,
	bl	_malloc		;
	mov	x23, x0	; <retval>, <retval>
; GuessSketchFlow/eval/problem16/code.c:11:     if (!out) {
	cbz	x0, L1	; <retval>,
; GuessSketchFlow/eval/problem16/code.c:16:     ptr += sprintf(ptr, "0");
	mov	w0, 48	; tmp123,
	strh	w0, [x23]	; tmp123, MEM <char[1:2]> [(void *)out_17]
; GuessSketchFlow/eval/problem16/code.c:21: }
	mov	x0, x23	;, <retval>
	ldr	x23, [sp, 64]	;,
	ldp	x29, x30, [sp, 16]	;,,
	add	sp, sp, 80	;,,
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
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x97
	.uleb128 0x2
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x96
	.uleb128 0x3
	.byte	0x95
	.uleb128 0x4
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xd4
	.byte	0xd3
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xd6
	.byte	0xd5
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xa
	.byte	0xd7
	.byte	0xdd
	.byte	0xde
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
	.byte	0xd7
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
