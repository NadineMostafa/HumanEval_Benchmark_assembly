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
; GuessSketchFlow/eval/problem4/code.c:5:     for (int i = 0; i < size; i++) {
	cmp	w1, 0	; size,
	ble	L4		;,
; GuessSketchFlow/eval/problem4/code.c:4:     int num = 0;
	mov	w2, 0	; num,
	add	x1, x0, w1, uxtw 2	; _20, ivtmp.7, size,
	b	L3		;
	.p2align 2,,3
L8:
; GuessSketchFlow/eval/problem4/code.c:5:     for (int i = 0; i < size; i++) {
	add	x0, x0, 4	; ivtmp.7, ivtmp.7,
	cmp	x0, x1	; ivtmp.7, _20
	beq	L4		;,
L3:
; GuessSketchFlow/eval/problem4/code.c:6:         num += operations[i];
	ldr	w3, [x0]	;, MEM[(int *)_17]
; GuessSketchFlow/eval/problem4/code.c:7:         if (num < 0) return 1;
	adds	w2, w2, w3	; num, num, MEM[(int *)_17]
	bpl	L8		;,
; GuessSketchFlow/eval/problem4/code.c:7:         if (num < 0) return 1;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem4/code.c:10: }
	ret	
	.p2align 2,,3
L4:
; GuessSketchFlow/eval/problem4/code.c:9:     return 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem4/code.c:10: }
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
