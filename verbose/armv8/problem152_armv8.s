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
LFB20:
; GuessSketchFlow/eval/problem152/code.c:4: long long func0(float lst[], int lst_size) {
	mov	x4, x0	; lst, lst
; GuessSketchFlow/eval/problem152/code.c:6:     for (int i = 0; i < lst_size; i++) {
	cmp	w1, 0	; lst_size,
	ble	L11		;,
	sub	w0, w1, #1	; _93, lst_size,
	cmp	w0, 2	; _93,
	bls	L12		;,
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	adrp	x0, lC0@PAGE	; tmp217,
; GuessSketchFlow/eval/problem152/code.c:6:     for (int i = 0; i < lst_size; i++) {
	movi	v26.4s, 0	; vect_sum_24.35
; GuessSketchFlow/eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	movi	v24.4s, 0x1	; tmp188
	mov	x2, x4	; ivtmp.48, lst
	lsr	w3, w1, 2	; bnd.6_96, lst_size,
	add	x3, x4, w3, uxtw 4	; _31, lst, bnd.6_96,
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	ldr	q23, [x0, #lC0@PAGEOFF]	; tmp177,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	ldr	q30, [x2], 16	; MEM <vector(4) float> [(float *)_5], MEM <vector(4) float> [(float *)_5]
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	frinta	v29.4s, v30.4s	; vect__17.12, MEM <vector(4) float> [(float *)_5]
; GuessSketchFlow/eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcmgt	v22.4s, v30.4s, 0	; mask__32.20, MEM <vector(4) float> [(float *)_5]
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fcvtl	v31.2d, v30.2s	; vect__5.21, MEM <vector(4) float> [(float *)_5]
	fcvtl2	v28.2d, v30.4s	; vect__5.21, MEM <vector(4) float> [(float *)_5]
; GuessSketchFlow/eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvtzs	v30.4s, v29.4s	; vect__9.13, vect__17.12
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fcvtl	v21.2d, v29.2s	; vect__6.22_113, vect__17.12
	fcvtl2	v29.2d, v29.4s	; vect__6.22_114, vect__17.12
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fabd	v31.2d, v31.2d, v21.2d	; vect__8.24_117, vect__5.21, vect__6.22_113
	ushr	v25.4s, v30.4s, 31	; _32, vect__9.13,
; GuessSketchFlow/eval/problem152/code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	mul	v27.4s, v30.4s, v30.4s	; vect__59.31_127, vect__9.13, vect__9.13
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fabd	v29.2d, v28.2d, v29.2d	; vect__8.24_118, vect__5.21, vect__6.22_114
; GuessSketchFlow/eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	add	v30.4s, v30.4s, v25.4s	; vect_patt_33.16_106, vect__9.13, _32
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fcmgt	v31.2d, v23.2d, v31.2d	; mask__34.25_119, tmp177, vect__8.24_117
; GuessSketchFlow/eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	and	v30.16b, v30.16b, v24.16b	; vect_patt_30.17_107, vect_patt_33.16_106, tmp188
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fcmgt	v29.2d, v23.2d, v29.2d	; mask__34.25_120, tmp177, vect__8.24_118
; GuessSketchFlow/eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	sub	v30.4s, v30.4s, v25.4s	; vect_patt_58.18_108, vect_patt_30.17_107, _32
	uzp1	v31.4s, v31.4s, v29.4s	; mask_patt_22.26_121, mask__34.25_119, mask__34.25_120
	cmeq	v30.4s, v30.4s, v24.4s	; mask__27.19_109, vect_patt_58.18_108, tmp188
; GuessSketchFlow/eval/problem152/code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	sxtl	v29.2d, v27.2s	; vect__12.33_129, vect__59.31_127
	sxtl2	v27.2d, v27.4s	; vect__12.33_130, vect__59.31_127
	and	v31.16b, v31.16b, v30.16b	; _136, mask_patt_22.26_121, mask__27.19_109
	and	v31.16b, v31.16b, v22.16b	; mask__23.28, _136, mask__32.20
	sxtl	v30.2d, v31.2s	; mask_patt_20.29_124, mask__23.28
	sxtl2	v31.2d, v31.4s	; mask_patt_20.29_125, mask__23.28
	and	v30.16b, v30.16b, v29.16b	; vect_patt_60.34_131, mask_patt_20.29_124, vect__12.33_129
	and	v31.16b, v31.16b, v27.16b	; vect_patt_60.34_132, mask_patt_20.29_125, vect__12.33_130
	add	v26.2d, v30.2d, v26.2d	; vect__56.36, vect_patt_60.34_131, vect_sum_24.35
	add	v26.2d, v31.2d, v26.2d	; vect_sum_24.35, vect_patt_60.34_132, vect__56.36
	cmp	x2, x3	; ivtmp.48, _31
	bne	L4		;,
	addp	d31, v26.2d	; <retval>, vect_sum_24.35
	and	w2, w1, -4	; i, lst_size,
	fmov	x0, d31	; <retval>, <retval>
	cmp	w1, w2	; lst_size, i
	beq	L1		;,
L3:
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	adrp	x3, lC1@PAGE	; tmp219,
	sxtw	x2, w2	; ivtmp.41, i
	ldr	d27, [x3, #lC1@PAGEOFF]	; tmp203,
L8:
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	ldr	s29, [x4, x2, lsl 2]	; _77, MEM[(float *)lst_19(D) + ivtmp.41_36 * 4]
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	frinta	s31, s29	; _79, _77
	fcvt	d28, s31	; _80, _79
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fcvt	d30, s29	; _78, _77
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fabd	d30, d30, d28	; _82, _78, _80
; GuessSketchFlow/eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fcmpe	d30, d27	; _82, tmp203
	bmi	L7		;,
L9:
; GuessSketchFlow/eval/problem152/code.c:6:     for (int i = 0; i < lst_size; i++) {
	add	x2, x2, 1	; ivtmp.41, ivtmp.41,
	cmp	w1, w2	; lst_size, ivtmp.41
	bgt	L8		;,
L1:
; GuessSketchFlow/eval/problem152/code.c:14: }
	ret	
	.p2align 2,,3
L7:
; GuessSketchFlow/eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcmpe	s29, #0.0	; _77
	bgt	L13		;,
	b	L9		;
	.p2align 2,,3
L13:
; GuessSketchFlow/eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvtzs	w3, s31	; _85, _79
; GuessSketchFlow/eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	cmp	w3, 0	; _85,
	and	w5, w3, 1	; tmp206, _85,
; GuessSketchFlow/eval/problem152/code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	mul	w3, w3, w3	; _87, _85, _85
; GuessSketchFlow/eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	csneg	w5, w5, w5, ge	; _86, tmp206, tmp206,
; GuessSketchFlow/eval/problem152/code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	add	x3, x0, w3, sxtw	; tmp212, <retval>, _87
	cmp	w5, 1	; _86,
	csel	x0, x3, x0, eq	; <retval>, tmp212, <retval>,
	b	L9		;
	.p2align 2,,3
L11:
; GuessSketchFlow/eval/problem152/code.c:5:     long long sum = 0;
	mov	x0, 0	; <retval>,
; GuessSketchFlow/eval/problem152/code.c:14: }
	ret	
L12:
; GuessSketchFlow/eval/problem152/code.c:6:     for (int i = 0; i < lst_size; i++) {
	mov	w2, 0	; i,
; GuessSketchFlow/eval/problem152/code.c:5:     long long sum = 0;
	mov	x0, 0	; <retval>,
	b	L3		;
LFE20:
	.literal16
	.align	4
lC0:
	.word	-350469331
	.word	1058682594
	.word	-350469331
	.word	1058682594
	.literal8
	.align	3
lC1:
	.word	-350469331
	.word	1058682594
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
	.quad	LFB20-.
	.set L$set$2,LFE20-LFB20
	.quad L$set$2
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
