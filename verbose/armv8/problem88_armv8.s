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
	stp	x29, x30, [sp, -112]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x25, x26, [sp, 64]	;,,
LCFI2:
	mov	x25, x0	; lst, lst
; GuessSketchFlow/eval/problem88/code.c:5:     int **out = (int **)malloc(100 * sizeof(int *));
	mov	x0, 800	;,
; GuessSketchFlow/eval/problem88/code.c:4: int **func0(int **lst, int lst_size, int *row_sizes, int x, int *return_size) {
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
LCFI3:
	sxtw	x23, w1	;, lst_size
	mov	x24, x2	; row_sizes, row_sizes
	stp	x27, x28, [sp, 80]	;,,
LCFI4:
	mov	w27, w3	; x, x
	str	x4, [x29, 104]	; return_size, %sfp
; GuessSketchFlow/eval/problem88/code.c:5:     int **out = (int **)malloc(100 * sizeof(int *));
	bl	_malloc		;
	mov	x22, x0	; <retval>, <retval>
; GuessSketchFlow/eval/problem88/code.c:7:     for (int i = 0; i < lst_size; i++) {
	cmp	w23, 0	; lst_size,
	ble	L7		;,
	mov	x28, 0	; ivtmp.17,
; GuessSketchFlow/eval/problem88/code.c:6:     int count = 0;
	mov	w26, 0	; count,
	stp	x19, x20, [x29, 16]	;,,
LCFI5:
	.p2align 5,,15
L6:
; GuessSketchFlow/eval/problem88/code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	ldr	w0, [x24, x28, lsl 2]	;, MEM[(int *)row_sizes_30(D) + ivtmp.17_67 * 4]
; GuessSketchFlow/eval/problem88/code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	subs	w19, w0, #1	; j, _4,
	bmi	L3		;,
	ldr	x20, [x25, x28, lsl 3]	; MEM[(int * *)lst_33(D) + ivtmp.17_67 * 8], MEM[(int * *)lst_33(D) + ivtmp.17_67 * 8]
	sxtw	x19, w19	; ivtmp.9, j
	mov	w21, w28	; i, ivtmp.17
	neg	x1, x19, lsl 2	; tmp133, ivtmp.9,
	add	x0, x1, w0, uxtw 2	; _62, tmp133, _4,
	sub	x0, x0, #4	; _18, _62,
	add	x20, x20, x0	; _64, MEM[(int * *)lst_33(D) + ivtmp.17_67 * 8], _18
	b	L5		;
	.p2align 2,,3
L4:
	sub	x19, x19, #1	; ivtmp.9, ivtmp.9,
	tbnz	w19, #31, L3	; ivtmp.9,
L5:
; GuessSketchFlow/eval/problem88/code.c:9:             if (lst[i][j] == x) {
	ldr	w1, [x20, x19, lsl 2]	;, MEM[(int *)_64 + ivtmp.9_60 * 4]
	cmp	w1, w27	; MEM[(int *)_64 + ivtmp.9_60 * 4], x
	bne	L4		;,
; GuessSketchFlow/eval/problem88/code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	mov	x0, 8	;,
	bl	_malloc		;
; GuessSketchFlow/eval/problem88/code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	str	x0, [x22, w26, uxtw 3]	; tmp139, *_14
; GuessSketchFlow/eval/problem88/code.c:13:                 count++;
	add	w26, w26, 1	; count, count,
; GuessSketchFlow/eval/problem88/code.c:11:                 out[count][0] = i;
	stp	w21, w19, [x0]	; i, ivtmp.9,
; GuessSketchFlow/eval/problem88/code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	sub	x19, x19, #1	; ivtmp.9, ivtmp.9,
	tbz	w19, #31, L5	; ivtmp.9,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem88/code.c:7:     for (int i = 0; i < lst_size; i++) {
	add	x28, x28, 1	; ivtmp.17, ivtmp.17,
	cmp	x28, x23	; ivtmp.17, _69
	bne	L6		;,
	ldp	x19, x20, [x29, 16]	;,,
LCFI6:
L2:
; GuessSketchFlow/eval/problem88/code.c:17:     *return_size = count;
	ldr	x0, [x29, 104]	; return_size, %sfp
	str	w26, [x0]	; count, *return_size_28(D)
; GuessSketchFlow/eval/problem88/code.c:19: }
	mov	x0, x22	;, <retval>
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x27, x28, [sp, 80]	;,,
	ldp	x29, x30, [sp], 112	;,,,
LCFI7:
	ret	
L7:
LCFI8:
; GuessSketchFlow/eval/problem88/code.c:6:     int count = 0;
	mov	w26, 0	; count,
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
	.uleb128 0x70
	.byte	0x9d
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xd
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x99
	.uleb128 0x6
	.byte	0x9a
	.uleb128 0x5
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0xa
	.byte	0x96
	.uleb128 0x9
	.byte	0x97
	.uleb128 0x8
	.byte	0x98
	.uleb128 0x7
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x9b
	.uleb128 0x4
	.byte	0x9c
	.uleb128 0x3
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x94
	.uleb128 0xb
	.byte	0x93
	.uleb128 0xc
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xd4
	.byte	0xd3
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xdb
	.byte	0xdc
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
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
