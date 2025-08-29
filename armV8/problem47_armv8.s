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
LFB1:
; GuessSketchFlow/eval/problem47/code.c:5:     f[0] = 0;
	adrp	x1, lC0@PAGE	; tmp128,
; GuessSketchFlow/eval/problem47/code.c:3: int func0(int n) {
	sub	sp, sp, #400	;,,
LCFI0:
	mov	x7, sp	; tmp125,
; GuessSketchFlow/eval/problem47/code.c:5:     f[0] = 0;
	ldr	q31, [x1, #lC0@PAGEOFF]	; tmp114,
	str	q31, [sp]	; tmp114, MEM <vector(4) int> [(int *)&f]
; GuessSketchFlow/eval/problem47/code.c:9:     for (int i = 4; i <= n; i++) {
	cmp	w0, 3	; n,
	ble	L2		;,
	sub	w8, w0, #3	; _9, n,
	mov	x2, 0	; ivtmp.12,
	mov	w1, 0	; f_I_lsm3.7,
	mov	w4, 2	; f_I_lsm2.6,
	mov	w3, 0	; f_I_lsm1.5,
	mov	w6, 0	; f_I_lsm0.4,
	.p2align 5,,15
L3:
	mov	w5, w1	; f_I_lsm3.7, f_I_lsm3.7
; GuessSketchFlow/eval/problem47/code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	add	w1, w1, w4	; _5, f_I_lsm3.7, f_I_lsm2.6
; GuessSketchFlow/eval/problem47/code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	add	w1, w1, w3	; _8, _5, f_I_lsm1.5
; GuessSketchFlow/eval/problem47/code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	add	w1, w1, w6	; f_I_lsm3.7, _8, f_I_lsm0.4
; GuessSketchFlow/eval/problem47/code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	add	x6, x7, x2, lsl 2	; tmp119, tmp125, ivtmp.12,
; GuessSketchFlow/eval/problem47/code.c:9:     for (int i = 4; i <= n; i++) {
	add	x2, x2, 1	; ivtmp.12, ivtmp.12,
; GuessSketchFlow/eval/problem47/code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	str	w1, [x6, 16]	; f_I_lsm3.7, MEM[(int *)&f + 16B + ivtmp.12_18 * 4]
	mov	w6, w3	; f_I_lsm0.4, f_I_lsm1.5
	mov	w3, w4	; f_I_lsm1.5, f_I_lsm2.6
	mov	w4, w5	; f_I_lsm2.6, f_I_lsm3.7
; GuessSketchFlow/eval/problem47/code.c:9:     for (int i = 4; i <= n; i++) {
	cmp	x8, x2	; _9, ivtmp.12
	bne	L3		;,
L2:
; GuessSketchFlow/eval/problem47/code.c:13: }
	ldr	w0, [x7, w0, sxtw 2]	;, f[n_19(D)]
	add	sp, sp, 400	;,,
LCFI1:
	ret	
LFE1:
	.literal16
	.align	4
lC0:
	.word	0
	.word	0
	.word	2
	.word	0
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
	.quad	LFB1-.
	.set L$set$2,LFE1-LFB1
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB1
	.long L$set$3
	.byte	0xe
	.uleb128 0x190
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
