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
	stp	x29, x30, [sp, -80]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	str	x25, [sp, 64]	;,
LCFI2:
	mov	x25, x0	; numbers, numbers
; GuessSketchFlow/eval/problem27/code.c:5:     int* out = (int*)malloc(size * sizeof(int));
	sbfiz	x0, x1, 2, 32	;, size,,
; GuessSketchFlow/eval/problem27/code.c:4: int* func0(int* numbers, int size, int* new_size) {
	stp	x19, x20, [sp, 16]	;,,
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
LCFI3:
; GuessSketchFlow/eval/problem27/code.c:4: int* func0(int* numbers, int size, int* new_size) {
	mov	w24, w1	; size, size
	mov	x23, x2	; new_size, new_size
; GuessSketchFlow/eval/problem27/code.c:5:     int* out = (int*)malloc(size * sizeof(int));
	bl	_malloc		;
; GuessSketchFlow/eval/problem27/code.c:6:     int* has1 = (int*)calloc(size, sizeof(int));
	mov	x1, 4	;,
; GuessSketchFlow/eval/problem27/code.c:5:     int* out = (int*)malloc(size * sizeof(int));
	mov	x22, x0	; <retval>, <retval>
; GuessSketchFlow/eval/problem27/code.c:6:     int* has1 = (int*)calloc(size, sizeof(int));
	sxtw	x0, w24	;, size
	bl	_calloc		;
	mov	x21, x0	; has1, has1
; GuessSketchFlow/eval/problem27/code.c:7:     int* has2 = (int*)calloc(size, sizeof(int));
	mov	x1, 4	;,
	sxtw	x0, w24	;, size
	bl	_calloc		;
	mov	x19, x0	; has2, has2
; GuessSketchFlow/eval/problem27/code.c:12:     for (int i = 0; i < size; i++) {
	cmp	w24, 0	; size,
	ble	L19		;,
; GuessSketchFlow/eval/problem27/code.c:13:         int num = numbers[i];
	ldr	w5, [x25]	;, MEM[(int *)numbers_60(D)]
	mov	x6, x25	; ivtmp.20, numbers
	mov	x7, x25	; ivtmp.35, ivtmp.20
	mov	w9, 0	; has2_count,
	mov	w10, 0	; has1_count,
	add	x8, x25, w24, sxtw 2	; _119, ivtmp.20, size,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem27/code.c:25:         for (int j = 0; j < has1_count; j++) {
	cbz	w10, L6	; has1_count,
L12:
	mov	x1, x21	; ivtmp.25, has1
	add	x4, x21, w10, uxtw 2	; _103, has1, has1_count,
	b	L8		;
	.p2align 2,,3
L38:
	add	x1, x1, 4	; ivtmp.25, ivtmp.25,
	cmp	x1, x4	; ivtmp.25, _103
	beq	L6		;,
L8:
; GuessSketchFlow/eval/problem27/code.c:26:             if (has1[j] == num) {
	ldr	w3, [x1]	;, MEM[(int *)_80]
	cmp	w5, w3	; num, MEM[(int *)_80]
	bne	L38		;,
; GuessSketchFlow/eval/problem27/code.c:12:     for (int i = 0; i < size; i++) {
	add	x7, x7, 4	; ivtmp.35, ivtmp.35,
; GuessSketchFlow/eval/problem27/code.c:32:             has2[has2_count++] = num;
	str	w5, [x19, w9, uxtw 2]	; num, *_16
; GuessSketchFlow/eval/problem27/code.c:12:     for (int i = 0; i < size; i++) {
	cmp	x7, x8	; ivtmp.35, _119
	beq	L39		;,
; GuessSketchFlow/eval/problem27/code.c:13:         int num = numbers[i];
	ldr	w5, [x7]	;, MEM[(int *)_45]
; GuessSketchFlow/eval/problem27/code.c:32:             has2[has2_count++] = num;
	add	w9, w9, 1	; has2_count, has2_count,
	add	x4, x19, w9, uxtw 2	; _33, has2, has2_count,
L9:
	mov	x1, x19	; ivtmp.30, has2
	b	L5		;
	.p2align 2,,3
L40:
; GuessSketchFlow/eval/problem27/code.c:16:         for (int j = 0; j < has2_count; j++) {
	add	x1, x1, 4	; ivtmp.30, ivtmp.30,
	cmp	x1, x4	; ivtmp.30, _33
	beq	L3		;,
L5:
; GuessSketchFlow/eval/problem27/code.c:17:             if (has2[j] == num) {
	ldr	w3, [x1]	;, MEM[(int *)_107]
	cmp	w5, w3	; num, MEM[(int *)_107]
	bne	L40		;,
; GuessSketchFlow/eval/problem27/code.c:12:     for (int i = 0; i < size; i++) {
	add	x7, x7, 4	; ivtmp.35, ivtmp.35,
	cmp	x7, x8	; ivtmp.35, _119
	beq	L10		;,
; GuessSketchFlow/eval/problem27/code.c:13:         int num = numbers[i];
	ldr	w5, [x7]	;, MEM[(int *)_37]
	b	L9		;
	.p2align 2,,3
L6:
; GuessSketchFlow/eval/problem27/code.c:12:     for (int i = 0; i < size; i++) {
	add	x7, x7, 4	; ivtmp.35, ivtmp.35,
; GuessSketchFlow/eval/problem27/code.c:34:             has1[has1_count++] = num;
	str	w5, [x21, w10, uxtw 2]	; num, *_19
; GuessSketchFlow/eval/problem27/code.c:12:     for (int i = 0; i < size; i++) {
	cmp	x7, x8	; ivtmp.35, _119
	beq	L35		;,
; GuessSketchFlow/eval/problem27/code.c:13:         int num = numbers[i];
	ldr	w5, [x7]	;, MEM[(int *)_92]
; GuessSketchFlow/eval/problem27/code.c:34:             has1[has1_count++] = num;
	add	w10, w10, 1	; has1_count, has1_count,
; GuessSketchFlow/eval/problem27/code.c:16:         for (int j = 0; j < has2_count; j++) {
	cbz	w9, L12	; has2_count,
	add	x4, x19, w9, uxtw 2	; _33, has2, has2_count,
	b	L9		;
L39:
; GuessSketchFlow/eval/problem27/code.c:32:             has2[has2_count++] = num;
	add	w9, w9, 1	; has2_count, has2_count,
L35:
	add	x4, x19, w9, uxtw 2	; _33, has2, has2_count,
L10:
; GuessSketchFlow/eval/problem27/code.c:10:     int out_count = 0;
	mov	w7, 0	; out_count,
	.p2align 5,,15
L16:
; GuessSketchFlow/eval/problem27/code.c:39:         int num = numbers[i];
	ldr	w5, [x6]	;, MEM[(int *)_40]
; GuessSketchFlow/eval/problem27/code.c:41:         for (int j = 0; j < has2_count; j++) {
	cbz	w9, L13	; has2_count,
L17:
; GuessSketchFlow/eval/problem27/code.c:10:     int out_count = 0;
	mov	x1, x19	; ivtmp.14, has2
	b	L15		;
	.p2align 2,,3
L41:
; GuessSketchFlow/eval/problem27/code.c:41:         for (int j = 0; j < has2_count; j++) {
	add	x1, x1, 4	; ivtmp.14, ivtmp.14,
	cmp	x4, x1	; _33, ivtmp.14
	beq	L13		;,
L15:
; GuessSketchFlow/eval/problem27/code.c:42:             if (has2[j] == num) {
	ldr	w3, [x1]	;, MEM[(int *)_74]
	cmp	w3, w5	; MEM[(int *)_74], num
	bne	L41		;,
; GuessSketchFlow/eval/problem27/code.c:38:     for (int i = 0; i < size; i++) {
	add	x6, x6, 4	; ivtmp.20, ivtmp.20,
	cmp	x8, x6	; _119, ivtmp.20
	beq	L21		;,
; GuessSketchFlow/eval/problem27/code.c:39:         int num = numbers[i];
	ldr	w5, [x6]	;, MEM[(int *)_126]
	b	L17		;
	.p2align 2,,3
L13:
; GuessSketchFlow/eval/problem27/code.c:38:     for (int i = 0; i < size; i++) {
	add	x6, x6, 4	; ivtmp.20, ivtmp.20,
; GuessSketchFlow/eval/problem27/code.c:48:             out[out_count++] = num;
	str	w5, [x22, w7, uxtw 2]	; num, *_29
; GuessSketchFlow/eval/problem27/code.c:48:             out[out_count++] = num;
	add	w1, w7, 1	; out_count, out_count,
; GuessSketchFlow/eval/problem27/code.c:38:     for (int i = 0; i < size; i++) {
	cmp	x6, x8	; ivtmp.20, _119
	beq	L2		;,
	mov	w7, w1	; out_count, out_count
	b	L16		;
L21:
	mov	w1, w7	; out_count, out_count
L2:
; GuessSketchFlow/eval/problem27/code.c:53:     free(has1);
	mov	x0, x21	;, has1
; GuessSketchFlow/eval/problem27/code.c:52:     *new_size = out_count;
	str	w1, [x23]	; out_count, *new_size_56(D)
; GuessSketchFlow/eval/problem27/code.c:53:     free(has1);
	bl	_free		;
; GuessSketchFlow/eval/problem27/code.c:54:     free(has2);
	mov	x0, x19	;, has2
	bl	_free		;
; GuessSketchFlow/eval/problem27/code.c:56: }
	ldr	x25, [sp, 64]	;,
	mov	x0, x22	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI4:
	ret	
L19:
LCFI5:
; GuessSketchFlow/eval/problem27/code.c:10:     int out_count = 0;
	mov	w1, 0	; out_count,
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
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x99
	.uleb128 0x2
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x93
	.uleb128 0x8
	.byte	0x94
	.uleb128 0x7
	.byte	0x95
	.uleb128 0x6
	.byte	0x96
	.uleb128 0x5
	.byte	0x97
	.uleb128 0x4
	.byte	0x98
	.uleb128 0x3
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
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
