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
	stp	x29, x30, [sp, -96]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
	stp	x25, x26, [sp, 64]	;,,
LCFI2:
	mov	x25, x0	; lst, lst
	stp	x27, x28, [sp, 80]	;,,
LCFI3:
	mov	x27, x2	; return_size, return_size
; GuessSketchFlow/eval/problem150/code.c:9:     *return_size = 0;
	str	wzr, [x2]	;, *return_size_44(D)
; GuessSketchFlow/eval/problem150/code.c:10:     for (i = 0; i < lst_size; ++i) {
	cmp	w1, 0	; lst_size,
	ble	L17		;,
	mov	x19, x0	; ivtmp.23, lst
	stp	x23, x24, [x29, 48]	;,,
LCFI4:
	mov	w24, 0	; _66,
	stp	x21, x22, [x29, 32]	;,,
LCFI5:
	add	x21, x0, w1, uxtw 3	; _21, lst, lst_size,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem150/code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	ldr	x20, [x19]	; _4, MEM[(char * *)_32]
	mov	x0, x20	;, _4
	bl	_strlen		;
; GuessSketchFlow/eval/problem150/code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	tbnz	x0, 0, L3	; tmp169,,
; GuessSketchFlow/eval/problem150/code.c:12:             lst[*return_size] = lst[i];
	str	x20, [x25, w24, sxtw 3]	; _4, *_10
; GuessSketchFlow/eval/problem150/code.c:13:             (*return_size)++;
	add	w24, w24, 1	; _66, _66,
	str	w24, [x27]	; _66, *return_size_44(D)
L3:
; GuessSketchFlow/eval/problem150/code.c:10:     for (i = 0; i < lst_size; ++i) {
	add	x19, x19, 8	; ivtmp.23, ivtmp.23,
	cmp	x21, x19	; _21, ivtmp.23
	bne	L4		;,
; GuessSketchFlow/eval/problem150/code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	sbfiz	x28, x24, 3, 32	; prephitmp_94, _66,,
	add	x26, x25, 8	; _35, lst,
; GuessSketchFlow/eval/problem150/code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	cmp	w24, 1	; _66,
	ble	L27		;,
	.p2align 5,,15
L12:
	sub	w23, w24, #2	; _62, ivtmp.18,
; GuessSketchFlow/eval/problem150/code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	mov	x19, x25	; ivtmp.10, lst
	add	x23, x26, w23, uxtw 3	; _31, _35, _62,
	cmp	w24, 1	; ivtmp.18,
	bgt	L9		;,
	b	L29		;
	.p2align 2,,3
L32:
; GuessSketchFlow/eval/problem150/code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	beq	L30		;,
L8:
; GuessSketchFlow/eval/problem150/code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	add	x19, x19, 8	; ivtmp.10, ivtmp.10,
	cmp	x23, x19	; _31, ivtmp.10
	beq	L31		;,
L9:
; GuessSketchFlow/eval/problem150/code.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	ldp	x21, x20, [x19]	; _15, _19,* ivtmp.10
; GuessSketchFlow/eval/problem150/code.c:19:             size_t len_j = strlen(lst[j]);
	mov	x0, x21	;, _15
	bl	_strlen		;
	mov	x22, x0	; tmp170,
; GuessSketchFlow/eval/problem150/code.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	mov	x0, x20	;, _19
	bl	_strlen		;
; GuessSketchFlow/eval/problem150/code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	cmp	x22, x0	; tmp170, tmp171
	bls	L32		;,
; GuessSketchFlow/eval/problem150/code.c:23:                 lst[j] = lst[j + 1];
	stp	x20, x21, [x19]	; _19, _15,* ivtmp.10
L33:
; GuessSketchFlow/eval/problem150/code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	add	x19, x19, 8	; ivtmp.10, ivtmp.10,
	cmp	x23, x19	; _31, ivtmp.10
	bne	L9		;,
L31:
; GuessSketchFlow/eval/problem150/code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	sub	w24, w24, #1	; ivtmp.18, ivtmp.18,
	cmp	w24, 1	; ivtmp.18,
	bne	L12		;,
L27:
	ldp	x21, x22, [x29, 32]	;,,
LCFI6:
	ldp	x23, x24, [x29, 48]	;,,
LCFI7:
L2:
; GuessSketchFlow/eval/problem150/code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	mov	x0, x28	;, prephitmp_94
	bl	_malloc		;
; GuessSketchFlow/eval/problem150/code.c:30:     for (i = 0; i < *return_size; ++i) {
	ldr	w2, [x27]	;, *return_size_44(D)
; GuessSketchFlow/eval/problem150/code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	mov	x19, x0	; <retval>,
; GuessSketchFlow/eval/problem150/code.c:30:     for (i = 0; i < *return_size; ++i) {
	cmp	w2, 0	; _63,
	ble	L1		;,
; GuessSketchFlow/eval/problem150/code.c:31:         out[i] = lst[i];
	ubfiz	x2, x2, 3, 32	;, _63,,
	mov	x1, x25	;, lst
	bl	_memcpy		;
L1:
; GuessSketchFlow/eval/problem150/code.c:35: }
	mov	x0, x19	;, <retval>
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x27, x28, [sp, 80]	;,,
	ldp	x29, x30, [sp], 96	;,,,
LCFI8:
	ret	
	.p2align 2,,3
L30:
LCFI9:
; GuessSketchFlow/eval/problem150/code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	mov	x1, x20	;, _19
	mov	x0, x21	;, _15
	bl	_strcmp		;
; GuessSketchFlow/eval/problem150/code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	cmp	w0, 0	; tmp172,
	ble	L8		;,
; GuessSketchFlow/eval/problem150/code.c:23:                 lst[j] = lst[j + 1];
	stp	x20, x21, [x19]	; _19, _15,* ivtmp.10
	b	L33		;
	.p2align 2,,3
L29:
; GuessSketchFlow/eval/problem150/code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	sub	w24, w24, #1	; ivtmp.18, ivtmp.18,
	b	L12		;
L17:
LCFI10:
; GuessSketchFlow/eval/problem150/code.c:10:     for (i = 0; i < lst_size; ++i) {
	mov	x28, 0	; prephitmp_94,
	b	L2		;
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
	.byte	0x99
	.uleb128 0x4
	.byte	0x9a
	.uleb128 0x3
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x9b
	.uleb128 0x2
	.byte	0x9c
	.uleb128 0x1
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
	.byte	0xdb
	.byte	0xdc
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
	.byte	0x9b
	.uleb128 0x2
	.byte	0x9c
	.uleb128 0x1
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$13,LCFI10-LCFI9
	.long L$set$13
	.byte	0xd5
	.byte	0xd6
	.byte	0xd7
	.byte	0xd8
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
