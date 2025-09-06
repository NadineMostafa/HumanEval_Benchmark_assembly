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
	str	x23, [sp, 48]	;,
LCFI2:
	mov	x23, x0	; l1, l1
; GuessSketchFlow/eval/problem59/code.c:5:     int *out = malloc(size1 * sizeof(int));
	sbfiz	x0, x1, 2, 32	;, size1,,
; GuessSketchFlow/eval/problem59/code.c:4: int *func0(int *l1, int size1, int *l2, int size2, int *out_size) {
	stp	x19, x20, [sp, 16]	;,,
LCFI3:
	mov	w20, w3	; size2, size2
	stp	x21, x22, [sp, 32]	;,,
LCFI4:
; GuessSketchFlow/eval/problem59/code.c:4: int *func0(int *l1, int size1, int *l2, int size2, int *out_size) {
	mov	w22, w1	; size1, size1
	mov	x21, x4	; out_size, out_size
	str	x2, [x29, 72]	; l2, %sfp
; GuessSketchFlow/eval/problem59/code.c:5:     int *out = malloc(size1 * sizeof(int));
	bl	_malloc		;
; GuessSketchFlow/eval/problem59/code.c:8:     for (i = 0; i < size1; i++) {
	cmp	w22, 0	; size1,
	ble	L26		;,
	ldr	x2, [x29, 72]	; l2, %sfp
	mov	x8, x23	; ivtmp.36, l1
	add	x11, x23, w22, sxtw 2	; _112, ivtmp.36, size1,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem59/code.c:17:             for (j = 0; j < size2; j++) {
	cmp	w20, 0	; size2,
	ble	L45		;,
	mov	w10, 0	; k,
	add	x9, x2, w20, sxtw 2	; _97, l2, size2,
L13:
; GuessSketchFlow/eval/problem59/code.c:18:                 if (l1[i] == l2[j]) {
	ldr	w6, [x8]	;, MEM[(int *)_114]
	mov	x1, x2	; ivtmp.25, l2
	b	L11		;
	.p2align 2,,3
L9:
; GuessSketchFlow/eval/problem59/code.c:17:             for (j = 0; j < size2; j++) {
	add	x1, x1, 4	; ivtmp.25, ivtmp.25,
	cmp	x1, x9	; ivtmp.25, _97
	beq	L46		;,
L11:
; GuessSketchFlow/eval/problem59/code.c:18:                 if (l1[i] == l2[j]) {
	ldr	w5, [x1]	;, MEM[(int *)_40]
	cmp	w6, w5	; _14, MEM[(int *)_40]
	bne	L9		;,
; GuessSketchFlow/eval/problem59/code.c:8:     for (i = 0; i < size1; i++) {
	add	x8, x8, 4	; ivtmp.36, ivtmp.36,
; GuessSketchFlow/eval/problem59/code.c:19:                     out[k++] = l1[i];
	str	w6, [x0, w10, uxtw 2]	; _14, *_21
; GuessSketchFlow/eval/problem59/code.c:19:                     out[k++] = l1[i];
	add	w10, w10, 1	; k, k,
; GuessSketchFlow/eval/problem59/code.c:8:     for (i = 0; i < size1; i++) {
	cmp	x8, x11	; ivtmp.36, _112
	beq	L8		;,
L12:
	add	x7, x0, w10, uxtw 2	; _105, <retval>, k,
L10:
; GuessSketchFlow/eval/problem59/code.c:11:             if (out[m] == l1[i]) {
	ldr	w6, [x8]	;, MEM[(int *)_113]
	mov	x1, x0	; ivtmp.30, <retval>
	b	L5		;
	.p2align 2,,3
L48:
; GuessSketchFlow/eval/problem59/code.c:10:         for (m = 0; m < k; m++) {
	add	x1, x1, 4	; ivtmp.30, ivtmp.30,
	cmp	x1, x7	; ivtmp.30, _105
	beq	L47		;,
L5:
; GuessSketchFlow/eval/problem59/code.c:11:             if (out[m] == l1[i]) {
	ldr	w5, [x1]	;, MEM[(int *)_101]
	cmp	w5, w6	; MEM[(int *)_101], _10
	bne	L48		;,
; GuessSketchFlow/eval/problem59/code.c:8:     for (i = 0; i < size1; i++) {
	add	x8, x8, 4	; ivtmp.36, ivtmp.36,
	cmp	x11, x8	; _112, ivtmp.36
	bne	L10		;,
L8:
; GuessSketchFlow/eval/problem59/code.c:26:     for (i = 0; i < k - 1; i++) {
	cmp	w10, 1	; k,
	ble	L2		;,
	mov	w6, w10	; ivtmp.20, k
	add	x7, x0, 4	; _84, <retval>,
	.p2align 5,,15
L17:
	sub	w5, w6, #2	; _90, ivtmp.20,
	mov	x1, x0	; ivtmp.12, <retval>
	add	x5, x7, w5, uxtw 2	; _65, _84, _90,
; GuessSketchFlow/eval/problem59/code.c:27:         for (j = 0; j < k - i - 1; j++) {
	cmp	w6, 1	; ivtmp.20,
	ble	L49		;,
	.p2align 5,,15
L19:
; GuessSketchFlow/eval/problem59/code.c:28:             if (out[j] > out[j + 1]) {
	ldp	w3, w2, [x1]	; _26, _30,* ivtmp.12
; GuessSketchFlow/eval/problem59/code.c:28:             if (out[j] > out[j + 1]) {
	cmp	w3, w2	; _26, _30
	ble	L18		;,
; GuessSketchFlow/eval/problem59/code.c:30:                 out[j] = out[j + 1];
	stp	w2, w3, [x1]	; _30, _26,* ivtmp.12
L18:
; GuessSketchFlow/eval/problem59/code.c:27:         for (j = 0; j < k - i - 1; j++) {
	add	x1, x1, 4	; ivtmp.12, ivtmp.12,
	cmp	x5, x1	; _65, ivtmp.12
	bne	L19		;,
; GuessSketchFlow/eval/problem59/code.c:26:     for (i = 0; i < k - 1; i++) {
	sub	w6, w6, #1	; ivtmp.20, ivtmp.20,
	cmp	w6, 1	; ivtmp.20,
	bne	L17		;,
L2:
; GuessSketchFlow/eval/problem59/code.c:38: }
	ldr	x23, [sp, 48]	;,
; GuessSketchFlow/eval/problem59/code.c:36:     *out_size = k;
	str	w10, [x21]	; k, *out_size_51(D)
; GuessSketchFlow/eval/problem59/code.c:38: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI5:
	ret	
	.p2align 2,,3
L45:
LCFI6:
; GuessSketchFlow/eval/problem59/code.c:8:     for (i = 0; i < size1; i++) {
	add	x8, x8, 4	; ivtmp.36, ivtmp.36,
	cmp	x8, x11	; ivtmp.36, _112
	bne	L3		;,
L26:
; GuessSketchFlow/eval/problem59/code.c:6:     int k = 0, i, j, m;
	mov	w10, 0	; k,
; GuessSketchFlow/eval/problem59/code.c:38: }
	ldr	x23, [sp, 48]	;,
; GuessSketchFlow/eval/problem59/code.c:36:     *out_size = k;
	str	w10, [x21]	; k, *out_size_51(D)
; GuessSketchFlow/eval/problem59/code.c:38: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI7:
	ret	
	.p2align 2,,3
L47:
LCFI8:
; GuessSketchFlow/eval/problem59/code.c:17:             for (j = 0; j < size2; j++) {
	cmp	w20, 0	; size2,
	bgt	L13		;,
; GuessSketchFlow/eval/problem59/code.c:8:     for (i = 0; i < size1; i++) {
	add	x8, x8, 4	; ivtmp.36, ivtmp.36,
	cmp	x8, x11	; ivtmp.36, _112
	bne	L10		;,
	b	L8		;
	.p2align 2,,3
L46:
	add	x8, x8, 4	; ivtmp.36, ivtmp.36,
	cmp	x8, x11	; ivtmp.36, _112
	beq	L8		;,
; GuessSketchFlow/eval/problem59/code.c:10:         for (m = 0; m < k; m++) {
	cbnz	w10, L12	; k,
	b	L13		;
	.p2align 2,,3
L49:
; GuessSketchFlow/eval/problem59/code.c:26:     for (i = 0; i < k - 1; i++) {
	sub	w6, w6, #1	; ivtmp.20, ivtmp.20,
	b	L17		;
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
	.byte	0x97
	.uleb128 0x4
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x93
	.uleb128 0x8
	.byte	0x94
	.uleb128 0x7
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x95
	.uleb128 0x6
	.byte	0x96
	.uleb128 0x5
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xb
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd5
	.byte	0xd6
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
