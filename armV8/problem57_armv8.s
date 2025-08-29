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
; GuessSketchFlow/eval/problem57/code.c:8:     while (brackets[i]) {
	ldrsb	w1, [x0]	; _3, *brackets_9(D)
; GuessSketchFlow/eval/problem57/code.c:8:     while (brackets[i]) {
	cbz	w1, L7	; _3,
	add	x0, x0, 1	; ivtmp.7, brackets,
; GuessSketchFlow/eval/problem57/code.c:6:     int level = 0;
	mov	w2, 0	; level,
	b	L6		;
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem57/code.c:10:         if (brackets[i] == '>') level--;
	cmp	w1, 62	; _3,
	bne	L4		;,
; GuessSketchFlow/eval/problem57/code.c:10:         if (brackets[i] == '>') level--;
	sub	w2, w2, #1	; level, level,
; GuessSketchFlow/eval/problem57/code.c:11:         if (level < 0) return false;
	cmn	w2, #1	; level,
	beq	L8		;,
L4:
; GuessSketchFlow/eval/problem57/code.c:8:     while (brackets[i]) {
	ldrsb	w1, [x0], 1	; _3, MEM[(const char *)_17 + -1B]
; GuessSketchFlow/eval/problem57/code.c:8:     while (brackets[i]) {
	cbz	w1, L11	; _3,
L6:
; GuessSketchFlow/eval/problem57/code.c:9:         if (brackets[i] == '<') level++;
	cmp	w1, 60	; _3,
	bne	L3		;,
; GuessSketchFlow/eval/problem57/code.c:8:     while (brackets[i]) {
	ldrsb	w1, [x0], 1	; _3, MEM[(const char *)_17 + -1B]
; GuessSketchFlow/eval/problem57/code.c:9:         if (brackets[i] == '<') level++;
	add	w2, w2, 1	; level, level,
; GuessSketchFlow/eval/problem57/code.c:8:     while (brackets[i]) {
	cbnz	w1, L6	; _3,
L11:
; GuessSketchFlow/eval/problem57/code.c:14:     if (level != 0) return false;
	cmp	w2, 0	; level,
	cset	w0, eq	; <retval>,
; GuessSketchFlow/eval/problem57/code.c:16: }
	ret	
	.p2align 2,,3
L8:
; GuessSketchFlow/eval/problem57/code.c:11:         if (level < 0) return false;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem57/code.c:16: }
	ret	
L7:
; GuessSketchFlow/eval/problem57/code.c:8:     while (brackets[i]) {
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem57/code.c:16: }
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
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
