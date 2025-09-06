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
; GuessSketchFlow/eval/problem35/code.c:5:     int *out = malloc(size * sizeof(int));
	sbfiz	x19, x1, 2, 32	; _2, size,,
; GuessSketchFlow/eval/problem35/code.c:4: int *func0(int *l, int size, int *out_size) {
	mov	x20, x2	; out_size, out_size
	str	x21, [sp, 32]	;,
LCFI3:
; GuessSketchFlow/eval/problem35/code.c:4: int *func0(int *l, int size, int *out_size) {
	mov	x21, x0	; l, l
; GuessSketchFlow/eval/problem35/code.c:5:     int *out = malloc(size * sizeof(int));
	mov	x0, x19	;, _2
; GuessSketchFlow/eval/problem35/code.c:5:     int *out = malloc(size * sizeof(int));
	str	w1, [x29, 60]	; size, %sfp
; GuessSketchFlow/eval/problem35/code.c:5:     int *out = malloc(size * sizeof(int));
	bl	_malloc		;
; GuessSketchFlow/eval/problem35/code.c:7:     for (i = 0; i < size; i++) {
	ldr	w1, [x29, 60]	;, %sfp
	cmp	w1, 0	; size,
	ble	L14		;,
	mov	x6, x21	; ivtmp.34, l
	add	x7, x21, x19	; _106, ivtmp.34, _2
	mov	w8, 0	; out_count,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem35/code.c:16:             out[out_count++] = l[i];
	ldr	w2, [x6], 4	;, MEM[(int *)_107]
	mov	w1, w8	; out_count, out_count
; GuessSketchFlow/eval/problem35/code.c:16:             out[out_count++] = l[i];
	add	w8, w8, 1	; out_count, out_count,
	str	w2, [x0, w1, uxtw 2]	; _17, *_16
; GuessSketchFlow/eval/problem35/code.c:7:     for (i = 0; i < size; i++) {
	cmp	x6, x7	; ivtmp.34, _106
	beq	L13		;,
	add	x5, x0, w8, uxtw 2	; _99, <retval>, out_count,
L6:
; GuessSketchFlow/eval/problem35/code.c:16:             out[out_count++] = l[i];
	ldr	w4, [x6]	;, MEM[(int *)_108]
	mov	x1, x0	; ivtmp.28, <retval>
	b	L5		;
	.p2align 2,,3
L26:
; GuessSketchFlow/eval/problem35/code.c:9:         for (j = 0; j < out_count; j++) {
	add	x1, x1, 4	; ivtmp.28, ivtmp.28,
	cmp	x1, x5	; ivtmp.28, _99
	beq	L3		;,
L5:
; GuessSketchFlow/eval/problem35/code.c:10:             if (l[i] == out[j]) {
	ldr	w3, [x1]	;, MEM[(int *)_95]
	cmp	w3, w4	; MEM[(int *)_95], pretmp_82
	bne	L26		;,
; GuessSketchFlow/eval/problem35/code.c:7:     for (i = 0; i < size; i++) {
	add	x6, x6, 4	; ivtmp.34, ivtmp.34,
	cmp	x6, x7	; ivtmp.34, _106
	bne	L6		;,
L13:
; GuessSketchFlow/eval/problem35/code.c:20:     for (i = 0; i < out_count - 1; i++) {
	cmp	w8, 1	; out_count,
	beq	L2		;,
	sub	w10, w8, #1	; _84, out_count,
	mov	x5, x0	; ivtmp.21, <retval>
	mov	x9, 0	; ivtmp.18,
; GuessSketchFlow/eval/problem35/code.c:20:     for (i = 0; i < out_count - 1; i++) {
	mov	w7, 0	; i,
	add	x11, x0, 4	; _78, <retval>,
	.p2align 5,,15
L9:
; GuessSketchFlow/eval/problem35/code.c:21:         for (j = i + 1; j < out_count; j++) {
	add	w7, w7, 1	; i, i,
; GuessSketchFlow/eval/problem35/code.c:21:         for (j = i + 1; j < out_count; j++) {
	cmp	w8, w7	; out_count, i
	ble	L12		;,
	sub	w6, w10, w7	; _61, _84, i
	mov	x1, x5	; ivtmp.13, ivtmp.21
	add	x6, x6, x9	; _3, _61, ivtmp.18
	add	x6, x11, x6, lsl 2	; _62, _78, _3,
	.p2align 5,,15
L11:
; GuessSketchFlow/eval/problem35/code.c:22:             if (out[i] > out[j]) {
	ldr	w4, [x1, 4]	;, MEM[(int *)_58 + 4B]
; GuessSketchFlow/eval/problem35/code.c:22:             if (out[i] > out[j]) {
	ldr	w3, [x5]	;, MEM[(int *)_86]
; GuessSketchFlow/eval/problem35/code.c:22:             if (out[i] > out[j]) {
	cmp	w3, w4	; _21, _25
	ble	L10		;,
; GuessSketchFlow/eval/problem35/code.c:24:                 out[i] = out[j];
	str	w4, [x5]	; _25, MEM[(int *)_86]
; GuessSketchFlow/eval/problem35/code.c:25:                 out[j] = temp;
	str	w3, [x1, 4]	; _21, MEM[(int *)_58 + 4B]
L10:
; GuessSketchFlow/eval/problem35/code.c:21:         for (j = i + 1; j < out_count; j++) {
	add	x1, x1, 4	; ivtmp.13, ivtmp.13,
	cmp	x1, x6	; ivtmp.13, _62
	bne	L11		;,
L12:
; GuessSketchFlow/eval/problem35/code.c:20:     for (i = 0; i < out_count - 1; i++) {
	add	x9, x9, 1	; ivtmp.18, ivtmp.18,
	add	x5, x5, 4	; ivtmp.21, ivtmp.21,
	cmp	w7, w10	; i, _84
	bne	L9		;,
L2:
; GuessSketchFlow/eval/problem35/code.c:32: }
	ldr	x21, [sp, 32]	;,
; GuessSketchFlow/eval/problem35/code.c:30:     *out_size = out_count;
	str	w8, [x20]	; out_count, *out_size_43(D)
; GuessSketchFlow/eval/problem35/code.c:32: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI4:
	ret	
L14:
LCFI5:
; GuessSketchFlow/eval/problem35/code.c:6:     int found, out_count = 0, i, j;
	mov	w8, 0	; out_count,
; GuessSketchFlow/eval/problem35/code.c:32: }
	ldr	x21, [sp, 32]	;,
; GuessSketchFlow/eval/problem35/code.c:30:     *out_size = out_count;
	str	w8, [x20]	; out_count, *out_size_43(D)
; GuessSketchFlow/eval/problem35/code.c:32: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI6:
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
	.byte	0x95
	.uleb128 0x4
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
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
