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
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	mov	x20, x2	; out_array, out_array
; GuessSketchFlow/eval/problem89/code.c:5:     *out_size = size;
	str	w1, [x3]	; size, *out_size_41(D)
; GuessSketchFlow/eval/problem89/code.c:6:     if (size == 0) {
	cbnz	w1, L2	; size,
; GuessSketchFlow/eval/problem89/code.c:7:         *out_array = NULL;
	str	xzr, [x2]	;, *out_array_45(D)
; GuessSketchFlow/eval/problem89/code.c:39: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI3:
	ret	
	.p2align 2,,3
L2:
LCFI4:
	str	x21, [x29, 32]	;,
LCFI5:
	mov	x21, x0	; array, array
; GuessSketchFlow/eval/problem89/code.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	sbfiz	x0, x1, 2, 32	;, size,,
	mov	w19, w1	; size, size
	bl	_malloc		;
; GuessSketchFlow/eval/problem89/code.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	str	x0, [x20]	; tmp141, *out_array_45(D)
; GuessSketchFlow/eval/problem89/code.c:12:     if (*out_array == NULL) {
	cbz	x0, L4	; tmp141,
; GuessSketchFlow/eval/problem89/code.c:16:     for (int i = 0; i < size; i++) {
	cmp	w19, 0	; size,
	ble	L22		;,
; GuessSketchFlow/eval/problem89/code.c:17:         (*out_array)[i] = array[i];
	ubfiz	x2, x19, 2, 32	;, size,,
	mov	x1, x21	;, array
	str	x0, [x29, 56]	; tmp141, %sfp
	bl	_memcpy		;
; GuessSketchFlow/eval/problem89/code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	sub	w0, w19, #1	; _48, size,
; GuessSketchFlow/eval/problem89/code.c:17:         (*out_array)[i] = array[i];
	sub	w20, w19, #1	; _60, size,
; GuessSketchFlow/eval/problem89/code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	ldr	w2, [x21, x0, lsl 2]	;, *_11
	ldr	w0, [x21]	;, *array_47(D)
; GuessSketchFlow/eval/problem89/code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	adds	w1, w2, w0	; _13, *_11, *array_47(D)
	and	w1, w1, 1	; tmp155, _13,
	csneg	w1, w1, w1, pl	; _14, tmp155, tmp155,
; GuessSketchFlow/eval/problem89/code.c:22:     for (int i = 0; i < size - 1; i++) {
	cmp	w19, 1	; size,
	beq	L22		;,
	ldr	x4, [x29, 56]	; tmp141, %sfp
	mov	x8, 0	; ivtmp.16,
; GuessSketchFlow/eval/problem89/code.c:22:     for (int i = 0; i < size - 1; i++) {
	mov	w7, 0	; i,
	add	x9, x4, 4	; _64, ivtmp.19,
	.p2align 5,,15
L8:
; GuessSketchFlow/eval/problem89/code.c:23:         for (int j = i + 1; j < size; j++) {
	add	w7, w7, 1	; i, i,
; GuessSketchFlow/eval/problem89/code.c:23:         for (int j = i + 1; j < size; j++) {
	cmp	w19, w7	; size, i
	ble	L12		;,
	sub	w5, w20, w7	; _5, _60, i
; GuessSketchFlow/eval/problem89/code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ldp	w2, w3, [x4]	; pretmp_97, pretmp_101,* ivtmp.19
	mov	x6, x4	; _95, ivtmp.19
	add	x5, x5, x8	; _6, _5, ivtmp.16
	mov	x0, x4	; ivtmp.11, ivtmp.19
	add	x5, x9, x5, lsl 2	; _56, _64, _6,
; GuessSketchFlow/eval/problem89/code.c:24:             if (shouldSortAscending) {
	cmp	w1, 1	; _14,
	bne	L10		;,
	b	L9		;
	.p2align 2,,3
L29:
; GuessSketchFlow/eval/problem89/code.c:33:                     (*out_array)[i] = (*out_array)[j];
	str	w3, [x4]	; pretmp_101, MEM[(int *)_103]
; GuessSketchFlow/eval/problem89/code.c:23:         for (int j = i + 1; j < size; j++) {
	add	x0, x0, 4	; ivtmp.11, ivtmp.11,
; GuessSketchFlow/eval/problem89/code.c:34:                     (*out_array)[j] = temp;
	str	w2, [x6, 4]	; pretmp_97, MEM[(int *)_95 + 4B]
; GuessSketchFlow/eval/problem89/code.c:23:         for (int j = i + 1; j < size; j++) {
	cmp	x5, x0	; _56, ivtmp.11
	beq	L12		;,
L26:
; GuessSketchFlow/eval/problem89/code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ldr	w3, [x0, 4]	;,
	mov	x6, x0	; _95, ivtmp.11
; GuessSketchFlow/eval/problem89/code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ldr	w2, [x4]	;,* ivtmp.19
L10:
; GuessSketchFlow/eval/problem89/code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	cmp	w2, w3	; pretmp_97, pretmp_101
	blt	L29		;,
; GuessSketchFlow/eval/problem89/code.c:23:         for (int j = i + 1; j < size; j++) {
	add	x0, x0, 4	; ivtmp.11, ivtmp.11,
	cmp	x5, x0	; _56, ivtmp.11
	bne	L26		;,
L12:
; GuessSketchFlow/eval/problem89/code.c:22:     for (int i = 0; i < size - 1; i++) {
	add	x8, x8, 1	; ivtmp.16, ivtmp.16,
	add	x4, x4, 4	; ivtmp.19, ivtmp.19,
	cmp	w7, w20	; i, _60
	bne	L8		;,
L22:
	ldr	x21, [x29, 32]	;,
LCFI6:
; GuessSketchFlow/eval/problem89/code.c:39: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI7:
	ret	
	.p2align 2,,3
L30:
LCFI8:
; GuessSketchFlow/eval/problem89/code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ldr	w3, [x0, 4]	;,
	mov	x6, x0	; _95, ivtmp.11
; GuessSketchFlow/eval/problem89/code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ldr	w2, [x4]	;,* ivtmp.19
L9:
; GuessSketchFlow/eval/problem89/code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	cmp	w2, w3	; pretmp_97, pretmp_101
	ble	L25		;,
; GuessSketchFlow/eval/problem89/code.c:27:                     (*out_array)[i] = (*out_array)[j];
	str	w3, [x4]	; pretmp_101, MEM[(int *)_102]
; GuessSketchFlow/eval/problem89/code.c:28:                     (*out_array)[j] = temp;
	str	w2, [x6, 4]	; pretmp_97, MEM[(int *)_94 + 4B]
L25:
; GuessSketchFlow/eval/problem89/code.c:23:         for (int j = i + 1; j < size; j++) {
	add	x0, x0, 4	; ivtmp.11, ivtmp.11,
	cmp	x5, x0	; _56, ivtmp.11
	bne	L30		;,
; GuessSketchFlow/eval/problem89/code.c:22:     for (int i = 0; i < size - 1; i++) {
	add	x8, x8, 1	; ivtmp.16, ivtmp.16,
	add	x4, x4, 4	; ivtmp.19, ivtmp.19,
	cmp	w7, w20	; i, _60
	bne	L8		;,
	b	L22		;
L4:
; GuessSketchFlow/eval/problem89/code.c:13:         exit(1);
	mov	w0, 1	;,
	bl	_exit		;
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
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
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
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x95
	.uleb128 0x4
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xa
	.byte	0xd5
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
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
