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
	str	x19, [sp, 16]	;,
LCFI2:
; GuessSketchFlow/eval/problem131/code.c:4: int* func0(int n) {
	mov	w19, w0	; n, n
; GuessSketchFlow/eval/problem131/code.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	add	w0, w0, 1	; _1, n,
; GuessSketchFlow/eval/problem131/code.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	sbfiz	x0, x0, 2, 32	;, _1,,
	bl	_malloc		;
; GuessSketchFlow/eval/problem131/code.c:6:     out[0] = 1;
	mov	w1, 1	; tmp123,
	str	w1, [x0]	; tmp123, *out_30
; GuessSketchFlow/eval/problem131/code.c:7:     if (n == 0) return out;
	cbz	w19, L1	; n,
; GuessSketchFlow/eval/problem131/code.c:8:     out[1] = 3;
	mov	w1, 3	; tmp125,
	str	w1, [x0, 4]	; tmp125, MEM[(int *)out_30 + 4B]
; GuessSketchFlow/eval/problem131/code.c:9:     for (int i = 2; i <= n; i++) {
	cmp	w19, 1	; n,
	ble	L1		;,
	mov	x2, x0	; ivtmp.11, <retval>
; GuessSketchFlow/eval/problem131/code.c:9:     for (int i = 2; i <= n; i++) {
	mov	w1, 2	; i,
	b	L6		;
	.p2align 2,,3
L10:
; GuessSketchFlow/eval/problem131/code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	asr	w3, w4, 1	; _4, i,
; GuessSketchFlow/eval/problem131/code.c:9:     for (int i = 2; i <= n; i++) {
	add	x2, x2, 4	; ivtmp.11, ivtmp.11,
; GuessSketchFlow/eval/problem131/code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	add	w3, w3, 1	; _8, _4,
; GuessSketchFlow/eval/problem131/code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	str	w3, [x2, 4]	; _8,
; GuessSketchFlow/eval/problem131/code.c:9:     for (int i = 2; i <= n; i++) {
	cmp	w19, w4	; n, i
	beq	L1		;,
L6:
	and	w3, w1, 1	; _33, i,
	mov	w4, w1	; i, i
; GuessSketchFlow/eval/problem131/code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	add	w1, w1, 1	; i, i,
; GuessSketchFlow/eval/problem131/code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	cbz	w3, L10	; _33,
; GuessSketchFlow/eval/problem131/code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	ldp	w5, w3, [x2]	; MEM[(int *)_9], MEM[(int *)_9 + 4B],* ivtmp.11
; GuessSketchFlow/eval/problem131/code.c:9:     for (int i = 2; i <= n; i++) {
	add	x2, x2, 4	; ivtmp.11, ivtmp.11,
; GuessSketchFlow/eval/problem131/code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	add	w3, w3, w5	; _16, MEM[(int *)_9 + 4B], MEM[(int *)_9]
; GuessSketchFlow/eval/problem131/code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	add	w3, w3, 1	; _17, _16,
; GuessSketchFlow/eval/problem131/code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	add	w3, w3, w1, asr 1	; _22, _17, i,
; GuessSketchFlow/eval/problem131/code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	str	w3, [x2, 4]	; _22,
; GuessSketchFlow/eval/problem131/code.c:9:     for (int i = 2; i <= n; i++) {
	cmp	w19, w4	; n, i
	bne	L6		;,
L1:
; GuessSketchFlow/eval/problem131/code.c:14: }
	ldr	x19, [sp, 16]	;,
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
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
