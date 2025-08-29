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
	stp	x29, x30, [sp, -32]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
; GuessSketchFlow/eval/problem26/code.c:4: int* func0(int n, int* size) {
	mov	x20, x1	; size, size
	mov	w19, w0	; n, n
; GuessSketchFlow/eval/problem26/code.c:5:     int* out = malloc(sizeof(int) * 64);
	mov	x0, 256	;,
	bl	_malloc		;
; GuessSketchFlow/eval/problem26/code.c:6:     *size = 0;
	str	wzr, [x20]	;, *size_22(D)
	mov	w3, 2	; i,
; GuessSketchFlow/eval/problem26/code.c:7:     for (int i = 2; i * i <= n; i++) {
	cmp	w19, 3	; n,
	ble	L3		;,
	.p2align 5,,15
L2:
; GuessSketchFlow/eval/problem26/code.c:8:         while (n % i == 0) {
	udiv	w2, w19, w3	; tmp148, n, i
	msub	w2, w2, w3, w19	; _37, tmp148, i, n
; GuessSketchFlow/eval/problem26/code.c:8:         while (n % i == 0) {
	cbnz	w2, L6	; _37,
	sdiv	w4, w19, w3	; n, n, i
	ldrsw	x2, [x20]	; ivtmp.9, *size_22(D)
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem26/code.c:9:             n = n / i;
	mov	w19, w4	; n, n
; GuessSketchFlow/eval/problem26/code.c:10:             out[(*size)++] = i;
	str	w3, [x0, x2, lsl 2]	; i, MEM[(int *)out_21 + ivtmp.9_49 * 4]
	mov	x6, x2	; ivtmp.9, ivtmp.9
; GuessSketchFlow/eval/problem26/code.c:8:         while (n % i == 0) {
	add	x2, x2, 1	; ivtmp.9, ivtmp.9,
; GuessSketchFlow/eval/problem26/code.c:8:         while (n % i == 0) {
	sdiv	w4, w4, w3	; n, n, i
	msub	w5, w4, w3, w19	; _6, n, i, n
; GuessSketchFlow/eval/problem26/code.c:8:         while (n % i == 0) {
	cbz	w5, L4	; _6,
; GuessSketchFlow/eval/problem26/code.c:10:             out[(*size)++] = i;
	add	w6, w6, 1	; _31, ivtmp.9,
	str	w6, [x20]	; _31, *size_22(D)
L6:
; GuessSketchFlow/eval/problem26/code.c:7:     for (int i = 2; i * i <= n; i++) {
	add	w3, w3, 1	; i, i,
; GuessSketchFlow/eval/problem26/code.c:7:     for (int i = 2; i * i <= n; i++) {
	mul	w1, w3, w3	; _7, i, i
; GuessSketchFlow/eval/problem26/code.c:7:     for (int i = 2; i * i <= n; i++) {
	cmp	w1, w19	; _7, n
	ble	L2		;,
L3:
; GuessSketchFlow/eval/problem26/code.c:13:     if (n > 1) {
	cmp	w19, 1	; n,
	ble	L1		;,
; GuessSketchFlow/eval/problem26/code.c:14:         out[(*size)++] = n;
	ldr	w1, [x20]	;, *size_22(D)
; GuessSketchFlow/eval/problem26/code.c:14:         out[(*size)++] = n;
	add	w2, w1, 1	; _9, _8,
; GuessSketchFlow/eval/problem26/code.c:14:         out[(*size)++] = n;
	str	w19, [x0, w1, sxtw 2]	; n, *_12
; GuessSketchFlow/eval/problem26/code.c:14:         out[(*size)++] = n;
	str	w2, [x20]	; _9, *size_22(D)
L1:
; GuessSketchFlow/eval/problem26/code.c:17: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 32	;,,,
LCFI3:
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
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0x2
	.byte	0x94
	.uleb128 0x1
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
