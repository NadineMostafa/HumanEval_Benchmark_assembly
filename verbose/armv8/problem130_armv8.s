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
	stp	x29, x30, [sp, -48]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
; GuessSketchFlow/eval/problem130/code.c:12:     min = N * N;
	mul	w19, w1, w1	; min, N, N
; GuessSketchFlow/eval/problem130/code.c:4: int *func0(int **grid, int N, int k, int *returnSize) {
	str	x21, [sp, 32]	;,
LCFI3:
; GuessSketchFlow/eval/problem130/code.c:4: int *func0(int **grid, int N, int k, int *returnSize) {
	mov	w21, w2	; k, k
; GuessSketchFlow/eval/problem130/code.c:6:     for (i = 0; i < N; i++)
	cmp	w1, 0	; N,
	ble	L11		;,
	sub	w11, w1, #1	; _183, N,
	sxtw	x9, w1	; _132, N
	mov	x10, 0	; ivtmp.22,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem130/code.c:8:             if (grid[i][j] == 1) {
	ldr	x7, [x0, x10, lsl 3]	; _146, MEM[(int * *)grid_76(D) + ivtmp.22_140 * 8]
	mov	w8, w10	; i, ivtmp.22
	mov	x1, 0	; ivtmp.17,
	b	L4		;
	.p2align 2,,3
L19:
; GuessSketchFlow/eval/problem130/code.c:7:         for (j = 0; j < N; j++)
	mov	x1, x4	; ivtmp.17, ivtmp.17
L4:
; GuessSketchFlow/eval/problem130/code.c:8:             if (grid[i][j] == 1) {
	ldr	w4, [x7, x1, lsl 2]	;, MEM[(int *)_146 + ivtmp.17_144 * 4]
; GuessSketchFlow/eval/problem130/code.c:9:                 x = i;
	cmp	w4, 1	; MEM[(int *)_146 + ivtmp.17_144 * 4],
; GuessSketchFlow/eval/problem130/code.c:7:         for (j = 0; j < N; j++)
	add	x4, x1, 1	; ivtmp.17, ivtmp.17,
; GuessSketchFlow/eval/problem130/code.c:9:                 x = i;
	csel	w5, w5, w1, ne	; j, j, ivtmp.17,
	csel	w6, w6, w8, ne	; x, x, i,
; GuessSketchFlow/eval/problem130/code.c:7:         for (j = 0; j < N; j++)
	cmp	x9, x4	; _132, ivtmp.17
	bne	L19		;,
; GuessSketchFlow/eval/problem130/code.c:6:     for (i = 0; i < N; i++)
	cmp	x10, x1	; ivtmp.22, ivtmp.17
	beq	L36		;,
	add	x10, x10, 1	; ivtmp.22, ivtmp.22,
	b	L5		;
	.p2align 2,,3
L36:
; GuessSketchFlow/eval/problem130/code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	cbz	w6, L37	; x,
; GuessSketchFlow/eval/problem130/code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	sub	w1, w6, #1	; _88, _22,
	mov	x2, x6	; _22, x
; GuessSketchFlow/eval/problem130/code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldr	x1, [x0, x1, lsl 3]	; *_11, *_11
	uxtw	x4, w5	; _27, j
; GuessSketchFlow/eval/problem130/code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	ldr	w1, [x1, w5, uxtw 2]	;, *_15
	cmp	w19, w1	; min, *_15
	csel	w19, w19, w1, le	; min, min, *_15,
; GuessSketchFlow/eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	cmp	w6, w11	; x, _183
	bge	L12		;,
; GuessSketchFlow/eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	add	w6, w2, 1	; _23, _22,
; GuessSketchFlow/eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	mov	x1, x5	; _27, j
	ldr	x6, [x0, x6, lsl 3]	; *_25, *_25
; GuessSketchFlow/eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldr	w4, [x6, x4, lsl 2]	;, *_29
	cmp	w19, w4	; min, *_29
	csel	w19, w19, w4, le	; min, min, *_29,
; GuessSketchFlow/eval/problem130/code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	cbnz	w5, L13	; j,
L38:
	mov	x1, 4	; _177,
L14:
; GuessSketchFlow/eval/problem130/code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldr	x0, [x0, w2, uxtw 3]	; *_41, *_41
; GuessSketchFlow/eval/problem130/code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	ldr	w0, [x0, x1]	;, *_46
	cmp	w19, w0	; min, *_46
	csel	w19, w19, w0, le	; min, min, *_46,
L11:
; GuessSketchFlow/eval/problem130/code.c:19:     int *out = (int *)malloc(k * sizeof(int));
	sbfiz	x0, x21, 2, 32	;, k,,
; GuessSketchFlow/eval/problem130/code.c:18:     *returnSize = k;
	str	w21, [x3]	; k, *returnSize_78(D)
; GuessSketchFlow/eval/problem130/code.c:19:     int *out = (int *)malloc(k * sizeof(int));
	sxtw	x20, w21	; _48, k
	bl	_malloc		;
; GuessSketchFlow/eval/problem130/code.c:20:     for (i = 0; i < k; i++)
	mov	x1, 0	; ivtmp.11,
	cmp	w21, 0	; k,
	ble	L1		;,
	.p2align 5,,15
L16:
; GuessSketchFlow/eval/problem130/code.c:21:         if (i % 2 == 0) out[i] = 1;
	tst	x1, 1	; ivtmp.11,
	csinc	w2, w19, wzr, ne	; _157, min,
; GuessSketchFlow/eval/problem130/code.c:21:         if (i % 2 == 0) out[i] = 1;
	str	w2, [x0, x1, lsl 2]	; _157, MEM[(int *)out_82 + ivtmp.11_153 * 4]
; GuessSketchFlow/eval/problem130/code.c:20:     for (i = 0; i < k; i++)
	add	x1, x1, 1	; ivtmp.11, ivtmp.11,
	cmp	x20, x1	; _48, ivtmp.11
	bne	L16		;,
L1:
; GuessSketchFlow/eval/problem130/code.c:24: }
	ldr	x21, [sp, 32]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI4:
	ret	
L37:
LCFI5:
; GuessSketchFlow/eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	cbz	w11, L32	; _183,
	mov	x2, 0	; _22,
	uxtw	x4, w5	; _27, j
; GuessSketchFlow/eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	add	w6, w2, 1	; _23, _22,
; GuessSketchFlow/eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	mov	x1, x5	; _27, j
	ldr	x6, [x0, x6, lsl 3]	; *_25, *_25
; GuessSketchFlow/eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	ldr	w4, [x6, x4, lsl 2]	;, *_29
	cmp	w19, w4	; min, *_29
	csel	w19, w19, w4, le	; min, min, *_29,
; GuessSketchFlow/eval/problem130/code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	cbz	w5, L38	; j,
L13:
; GuessSketchFlow/eval/problem130/code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldr	x4, [x0, w2, uxtw 3]	; *_33, *_33
	sub	w1, w1, #1	; _86, _27,
; GuessSketchFlow/eval/problem130/code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	ldr	w1, [x4, x1, lsl 2]	;, *_37
	cmp	w19, w1	; min, *_37
	csel	w19, w19, w1, le	; min, min, *_37,
L15:
; GuessSketchFlow/eval/problem130/code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	cmp	w5, w11	; j, _183
	bge	L11		;,
; GuessSketchFlow/eval/problem130/code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	add	w1, w5, 1	; _175, j,
	lsl	x1, x1, 2	; _177, _175,
	b	L14		;
L12:
; GuessSketchFlow/eval/problem130/code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	cbz	w5, L15	; j,
; GuessSketchFlow/eval/problem130/code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	mov	x1, x5	; _27, j
	b	L13		;
L32:
	mov	x2, 0	; _22,
; GuessSketchFlow/eval/problem130/code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	cbz	w5, L11	; j,
; GuessSketchFlow/eval/problem130/code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	mov	x1, x5	; _27, j
	b	L13		;
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
	.byte	0x95
	.uleb128 0x2
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
