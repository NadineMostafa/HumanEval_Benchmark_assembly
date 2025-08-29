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
; GuessSketchFlow/eval/problem24/code.c:5:     while (str[length] != '\0') {
	ldrsb	w1, [x0]	; *str_5(D), *str_5(D)
	cbz	w1, L3	; *str_5(D),
; GuessSketchFlow/eval/problem24/code.c:3: int func0(const char *str) {
	stp	x29, x30, [sp, -16]!	;,,,
LCFI0:
; GuessSketchFlow/eval/problem24/code.c:5:     while (str[length] != '\0') {
	add	x0, x0, 1	;, str,
; GuessSketchFlow/eval/problem24/code.c:3: int func0(const char *str) {
	mov	x29, sp	;,
LCFI1:
; GuessSketchFlow/eval/problem24/code.c:5:     while (str[length] != '\0') {
	bl	_strlen		;
	add	w0, w0, 1	; <retval>, tmp112,
; GuessSketchFlow/eval/problem24/code.c:9: }
	ldp	x29, x30, [sp], 16	;,,,
LCFI2:
	ret	
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem24/code.c:4:     int length = 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem24/code.c:9: }
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
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
