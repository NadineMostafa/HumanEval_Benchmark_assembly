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
	stp	x29, x30, [sp, -16]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
; GuessSketchFlow/eval/problem83/code.c:6:     int l = strlen(str);
	bl	_strlen		;
; GuessSketchFlow/eval/problem83/code.c:7:     if (l < 2) return false;
	cmp	w0, 1	; tmp108,
	ble	L6		;,
; GuessSketchFlow/eval/problem83/code.c:8:     for (int i = 2; i * i <= l; i++) {
	cmp	w0, 3	; tmp108,
	ble	L5		;,
; GuessSketchFlow/eval/problem83/code.c:8:     for (int i = 2; i * i <= l; i++) {
	mov	w1, 2	; i,
	b	L3		;
	.p2align 2,,3
L10:
; GuessSketchFlow/eval/problem83/code.c:8:     for (int i = 2; i * i <= l; i++) {
	add	w1, w1, 1	; i, i,
; GuessSketchFlow/eval/problem83/code.c:8:     for (int i = 2; i * i <= l; i++) {
	mul	w2, w1, w1	; _3, i, i
; GuessSketchFlow/eval/problem83/code.c:8:     for (int i = 2; i * i <= l; i++) {
	cmp	w2, w0	; _3, tmp108
	bgt	L5		;,
L3:
; GuessSketchFlow/eval/problem83/code.c:9:         if (l % i == 0) return false;
	sdiv	w2, w0, w1	; tmp122, tmp108, i
	msub	w2, w2, w1, w0	; _2, tmp122, i, tmp108
; GuessSketchFlow/eval/problem83/code.c:9:         if (l % i == 0) return false;
	cbnz	w2, L10	; _2,
L6:
; GuessSketchFlow/eval/problem83/code.c:7:     if (l < 2) return false;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem83/code.c:12: }
	ldp	x29, x30, [sp], 16	;,,,
LCFI2:
	ret	
	.p2align 2,,3
L5:
LCFI3:
; GuessSketchFlow/eval/problem83/code.c:11:     return true;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem83/code.c:12: }
	ldp	x29, x30, [sp], 16	;,,,
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
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xb
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
