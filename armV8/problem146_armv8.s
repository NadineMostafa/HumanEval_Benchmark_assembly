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
	sub	sp, sp, #112	;,,
LCFI0:
	stp	x29, x30, [sp, 16]	;,,
LCFI1:
	add	x29, sp, 16	;,,
LCFI2:
	stp	x21, x22, [sp, 48]	;,,
LCFI3:
; GuessSketchFlow/eval/problem146/code.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	sbfiz	x21, x1, 2, 32	; _2, size,,
; GuessSketchFlow/eval/problem146/code.c:5: int* func0(int nums[], int size) {
	stp	x23, x24, [sp, 64]	;,,
LCFI4:
	mov	x23, x0	; nums, nums
; GuessSketchFlow/eval/problem146/code.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	mov	x0, x21	;, _2
; GuessSketchFlow/eval/problem146/code.c:5: int* func0(int nums[], int size) {
	stp	x19, x20, [sp, 32]	;,,
LCFI5:
	mov	w19, w1	; size, size
; GuessSketchFlow/eval/problem146/code.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	bl	_malloc		;
	mov	x24, x0	; sumdigit, sumdigit
; GuessSketchFlow/eval/problem146/code.c:7:     for (int i = 0; i < size; i++) {
	cmp	w19, 0	; size,
	ble	L7		;,
	adrp	x20, lC0@PAGE	; tmp165,
	add	x22, x29, 80	; tmp164,,
	str	x25, [x29, 64]	;,
LCFI6:
	add	x20, x20, lC0@PAGEOFF;	; tmp143, tmp165,
	mov	x25, 0	; ivtmp.40,
	.p2align 5,,15
L2:
; GuessSketchFlow/eval/problem146/code.c:9:         sprintf(w, "%d", abs(nums[i]));
	ldr	w0, [x23, x25]	;, MEM[(int *)nums_45(D) + ivtmp.40_100 * 1]
	mov	x3, x20	;, tmp143
	mov	x2, 12	;,
	mov	w1, 0	;,
	cmp	w0, 0	; MEM[(int *)nums_45(D) + ivtmp.40_100 * 1],
	csneg	w0, w0, w0, ge	; _7, MEM[(int *)nums_45(D) + ivtmp.40_100 * 1], MEM[(int *)nums_45(D) + ivtmp.40_100 * 1],
	str	w0, [sp]	; _7,
	mov	x0, x22	;, tmp164
	bl	___sprintf_chk		;
; GuessSketchFlow/eval/problem146/code.c:10:         int sum = 0, length = strlen(w);
	mov	x0, x22	;, tmp164
	bl	_strlen		;
; GuessSketchFlow/eval/problem146/code.c:11:         for (int j = 1; j < length; j++)
	cmp	x0, 1	; tmp172,
	bls	L12		;,
	sub	w0, w0, #1	; _99, tmp172,
	mov	x1, 0	; ivtmp.28,
; GuessSketchFlow/eval/problem146/code.c:10:         int sum = 0, length = strlen(w);
	mov	w3, 0	; sum,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem146/code.c:12:             sum += w[j] - '0';
	add	x2, x22, x1	; tmp152, tmp164, ivtmp.28
; GuessSketchFlow/eval/problem146/code.c:11:         for (int j = 1; j < length; j++)
	add	x1, x1, 1	; ivtmp.28, ivtmp.28,
; GuessSketchFlow/eval/problem146/code.c:12:             sum += w[j] - '0';
	ldrsb	w2, [x2, 1]	; _10, MEM[(char *)&w + 1B + ivtmp.28_69 * 1]
; GuessSketchFlow/eval/problem146/code.c:12:             sum += w[j] - '0';
	sub	w2, w2, #48	; _11, _10,
; GuessSketchFlow/eval/problem146/code.c:12:             sum += w[j] - '0';
	add	w3, w3, w2	; sum, sum, _11
; GuessSketchFlow/eval/problem146/code.c:11:         for (int j = 1; j < length; j++)
	cmp	x1, x0	; ivtmp.28, _99
	bne	L4		;,
L3:
; GuessSketchFlow/eval/problem146/code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldrsb	w0, [x29, 80]	; _86, w[0]
; GuessSketchFlow/eval/problem146/code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldr	w2, [x23, x25]	;, MEM[(int *)nums_45(D) + ivtmp.40_100 * 1]
; GuessSketchFlow/eval/problem146/code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	sub	w0, w0, #48	; _87, _86,
; GuessSketchFlow/eval/problem146/code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	add	w1, w3, w0	; tmp167, sum, _87
	sub	w3, w3, w0	; tmp166, sum, _87
	cmp	w2, 0	; MEM[(int *)nums_45(D) + ivtmp.40_100 * 1],
	csel	w3, w3, w1, le	; sum, tmp166, tmp167,
; GuessSketchFlow/eval/problem146/code.c:15:         sumdigit[i] = sum;
	str	w3, [x24, x25]	; sum, MEM[(int *)sumdigit_43 + ivtmp.40_100 * 1]
; GuessSketchFlow/eval/problem146/code.c:7:     for (int i = 0; i < size; i++) {
	add	x25, x25, 4	; ivtmp.40, ivtmp.40,
	cmp	x21, x25	; _2, ivtmp.40
	bne	L2		;,
; GuessSketchFlow/eval/problem146/code.c:19:         for (int j = 1; j < size; j++)
	cmp	w19, 1	; size,
	bne	L25		;,
L23:
	ldr	x25, [x29, 64]	;,
LCFI7:
L7:
; GuessSketchFlow/eval/problem146/code.c:25:     free(sumdigit);
	mov	x0, x24	;, sumdigit
	bl	_free		;
; GuessSketchFlow/eval/problem146/code.c:27: }
	ldp	x29, x30, [sp, 16]	;,,
	mov	x0, x23	;, nums
	ldp	x19, x20, [sp, 32]	;,,
	ldp	x21, x22, [sp, 48]	;,,
	ldp	x23, x24, [sp, 64]	;,,
	add	sp, sp, 112	;,,
LCFI8:
	ret	
	.p2align 2,,3
L12:
LCFI9:
; GuessSketchFlow/eval/problem146/code.c:10:         int sum = 0, length = strlen(w);
	mov	w3, 0	; sum,
	b	L3		;
L25:
	add	x0, x23, 4	; _78, nums,
	sub	w5, w19, #2	; _89, size,
	add	x5, x0, w5, uxtw 2	; _50, _78, _89,
; GuessSketchFlow/eval/problem146/code.c:19:         for (int j = 1; j < size; j++)
	mov	w0, 0	; i,
	.p2align 5,,15
L10:
	add	x1, x24, 4	; ivtmp.20, sumdigit,
	mov	x2, x23	; ivtmp.19, nums
	.p2align 5,,15
L9:
; GuessSketchFlow/eval/problem146/code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	ldp	w4, w3, [x1, -4]	; _23, _26,
; GuessSketchFlow/eval/problem146/code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	cmp	w4, w3	; _23, _26
	ble	L8		;,
; GuessSketchFlow/eval/problem146/code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	stp	w3, w4, [x1, -4]	; _26, _23,
; GuessSketchFlow/eval/problem146/code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldr	d31, [x2]	;, MEM <vector(2) int> [(int *)_51]
; GuessSketchFlow/eval/problem146/code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	rev64	v31.2s, v31.2s	;,
; GuessSketchFlow/eval/problem146/code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	str	d31, [x2]	;, MEM <vector(2) int> [(int *)_51]
L8:
; GuessSketchFlow/eval/problem146/code.c:19:         for (int j = 1; j < size; j++)
	add	x2, x2, 4	; ivtmp.19, ivtmp.19,
	add	x1, x1, 4	; ivtmp.20, ivtmp.20,
	cmp	x2, x5	; ivtmp.19, _50
	bne	L9		;,
; GuessSketchFlow/eval/problem146/code.c:18:     for (int i = 0; i < size; i++)
	add	w0, w0, 1	; i, i,
; GuessSketchFlow/eval/problem146/code.c:18:     for (int i = 0; i < size; i++)
	cmp	w19, w0	; size, i
	bne	L10		;,
	b	L23		;
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
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x60
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0x8
	.byte	0x96
	.uleb128 0x7
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x97
	.uleb128 0x6
	.byte	0x98
	.uleb128 0x5
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x93
	.uleb128 0xa
	.byte	0x94
	.uleb128 0x9
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0x99
	.uleb128 0x4
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xd9
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xdd
	.byte	0xde
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
	.byte	0x9d
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
