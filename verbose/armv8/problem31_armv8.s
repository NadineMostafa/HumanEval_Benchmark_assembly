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
; GuessSketchFlow/eval/problem31/code.c:5:     float* out = (float*)malloc(count * sizeof(float));
	sbfiz	x20, x1, 2, 32	; _2, count,,
; GuessSketchFlow/eval/problem31/code.c:4: float* func0(const float* l, int count, int* out_count) {
	mov	x19, x2	; out_count, out_count
	str	x21, [sp, 32]	;,
LCFI3:
; GuessSketchFlow/eval/problem31/code.c:4: float* func0(const float* l, int count, int* out_count) {
	mov	x21, x0	; l, l
; GuessSketchFlow/eval/problem31/code.c:5:     float* out = (float*)malloc(count * sizeof(float));
	mov	x0, x20	;, _2
; GuessSketchFlow/eval/problem31/code.c:5:     float* out = (float*)malloc(count * sizeof(float));
	str	w1, [x29, 60]	; count, %sfp
; GuessSketchFlow/eval/problem31/code.c:5:     float* out = (float*)malloc(count * sizeof(float));
	bl	_malloc		;
; GuessSketchFlow/eval/problem31/code.c:8:     for (int i = 0; i < count; i++) {
	ldr	w1, [x29, 60]	;, %sfp
; GuessSketchFlow/eval/problem31/code.c:6:     *out_count = 0;
	str	wzr, [x19]	;, *out_count_19(D)
; GuessSketchFlow/eval/problem31/code.c:8:     for (int i = 0; i < count; i++) {
	cmp	w1, 0	; count,
	ble	L1		;,
	mov	x1, x21	; ivtmp.7, l
	add	x2, x21, x20	; _34, ivtmp.7, _2
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem31/code.c:9:         if (l[i] > 0) {
	ldr	s31, [x1]	;, MEM[(const float *)_30]
; GuessSketchFlow/eval/problem31/code.c:9:         if (l[i] > 0) {
	fcmpe	s31, #0.0	;
	bgt	L6		;,
L3:
; GuessSketchFlow/eval/problem31/code.c:8:     for (int i = 0; i < count; i++) {
	add	x1, x1, 4	; ivtmp.7, ivtmp.7,
	cmp	x1, x2	; ivtmp.7, _34
	bne	L5		;,
L1:
; GuessSketchFlow/eval/problem31/code.c:15: }
	ldr	x21, [sp, 32]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI4:
	ret	
	.p2align 2,,3
L6:
LCFI5:
; GuessSketchFlow/eval/problem31/code.c:10:             out[(*out_count)++] = l[i];
	ldr	w3, [x19]	;, *out_count_19(D)
; GuessSketchFlow/eval/problem31/code.c:10:             out[(*out_count)++] = l[i];
	add	w4, w3, 1	; _8, _7,
; GuessSketchFlow/eval/problem31/code.c:10:             out[(*out_count)++] = l[i];
	str	s31, [x0, w3, sxtw 2]	;, *_11
; GuessSketchFlow/eval/problem31/code.c:10:             out[(*out_count)++] = l[i];
	str	w4, [x19]	; _8, *out_count_19(D)
	b	L3		;
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
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
