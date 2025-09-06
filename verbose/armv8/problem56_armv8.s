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
	sub	sp, sp, #4032	;,,
LCFI0:
; GuessSketchFlow/eval/problem56/code.c:4:     int f[1000] = {0};
	mov	x2, 4000	;,
	mov	w1, 0	;,
; GuessSketchFlow/eval/problem56/code.c:3: int func0(int n) {
	stp	x29, x30, [sp]	;,,
LCFI1:
	mov	x29, sp	;,
LCFI2:
	str	x19, [sp, 16]	;,
LCFI3:
; GuessSketchFlow/eval/problem56/code.c:3: int func0(int n) {
	mov	w19, w0	; n, n
; GuessSketchFlow/eval/problem56/code.c:4:     int f[1000] = {0};
	add	x0, x29, 32	;,,
	bl	_memset		;
	mov	x4, x0	; tmp122,
; GuessSketchFlow/eval/problem56/code.c:6:     f[1] = 1;
	mov	w0, 1	; tmp113,
	str	w0, [x29, 36]	; tmp113, f[1]
; GuessSketchFlow/eval/problem56/code.c:7:     for (int i = 2; i <= n; i++)
	cmp	w19, w0	; n,
	ble	L2		;,
	sub	w5, w19, #1	; _6, n,
	mov	x1, 0	; ivtmp.8,
	mov	w2, 0	; f_I_lsm0.4,
	.p2align 5,,15
L3:
	mov	w3, w0	; f_I_lsm1.5, f_I_lsm1.5
; GuessSketchFlow/eval/problem56/code.c:8:         f[i] = f[i - 1] + f[i - 2];
	add	w0, w0, w2	; f_I_lsm1.5, f_I_lsm1.5, f_I_lsm0.4
; GuessSketchFlow/eval/problem56/code.c:8:         f[i] = f[i - 1] + f[i - 2];
	add	x2, x4, x1, lsl 2	; tmp116, tmp122, ivtmp.8,
; GuessSketchFlow/eval/problem56/code.c:7:     for (int i = 2; i <= n; i++)
	add	x1, x1, 1	; ivtmp.8, ivtmp.8,
; GuessSketchFlow/eval/problem56/code.c:8:         f[i] = f[i - 1] + f[i - 2];
	str	w0, [x2, 8]	; f_I_lsm1.5, MEM[(int *)&f + 8B + ivtmp.8_1 * 4]
	mov	w2, w3	; f_I_lsm0.4, f_I_lsm1.5
; GuessSketchFlow/eval/problem56/code.c:7:     for (int i = 2; i <= n; i++)
	cmp	x1, x5	; ivtmp.8, _6
	bne	L3		;,
L2:
; GuessSketchFlow/eval/problem56/code.c:10: }
	ldr	w0, [x4, w19, sxtw 2]	;, f[n_11(D)]
	ldp	x29, x30, [sp]	;,,
	ldr	x19, [sp, 16]	;,
	add	sp, sp, 4032	;,,
LCFI4:
	ret	
LFE1:
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
	.uleb128 0xfc0
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0x9d
	.uleb128 0x1f8
	.byte	0x9e
	.uleb128 0x1f7
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x93
	.uleb128 0x1f6
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xd3
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
