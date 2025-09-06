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
; GuessSketchFlow/eval/problem91/code.c:5:     if (size < 2) return -1;
	cmp	w1, 1	; size,
	ble	L5		;,
	mov	x2, x0	; ivtmp.8, lst
	add	x1, x0, w1, uxtw 2	; _4, ivtmp.8, size,
; GuessSketchFlow/eval/problem91/code.c:7:     int first = INT_MAX, second = INT_MAX;
	mov	w0, 2147483647	; <retval>,
; GuessSketchFlow/eval/problem91/code.c:7:     int first = INT_MAX, second = INT_MAX;
	mov	w4, w0	; first, <retval>
	b	L4		;
	.p2align 2,,3
L12:
; GuessSketchFlow/eval/problem91/code.c:13:             second = lst[i];
	ccmp	w0, w3, 4, ne	; <retval>, _35,,
; GuessSketchFlow/eval/problem91/code.c:8:     for (int i = 0; i < size; ++i) {
	add	x2, x2, 4	; ivtmp.8, ivtmp.8,
; GuessSketchFlow/eval/problem91/code.c:13:             second = lst[i];
	csel	w0, w0, w3, le	; <retval>, <retval>, _35,
; GuessSketchFlow/eval/problem91/code.c:8:     for (int i = 0; i < size; ++i) {
	cmp	x1, x2	; _4, ivtmp.8
	beq	L11		;,
L4:
; GuessSketchFlow/eval/problem91/code.c:9:         if (lst[i] < first) {
	ldr	w3, [x2]	;, MEM[(int *)_21]
; GuessSketchFlow/eval/problem91/code.c:9:         if (lst[i] < first) {
	cmp	w4, w3	; first, _35
	ble	L12		;,
; GuessSketchFlow/eval/problem91/code.c:8:     for (int i = 0; i < size; ++i) {
	add	x2, x2, 4	; ivtmp.8, ivtmp.8,
; GuessSketchFlow/eval/problem91/code.c:10:             second = first;
	mov	w0, w4	; <retval>, first
; GuessSketchFlow/eval/problem91/code.c:11:             first = lst[i];
	mov	w4, w3	; first, _35
; GuessSketchFlow/eval/problem91/code.c:8:     for (int i = 0; i < size; ++i) {
	cmp	x1, x2	; _4, ivtmp.8
	bne	L4		;,
L11:
; GuessSketchFlow/eval/problem91/code.c:17:     if (second == INT_MAX) return -1;
	mov	w1, 2147483647	; tmp121,
; GuessSketchFlow/eval/problem91/code.c:5:     if (size < 2) return -1;
	cmp	w0, w1	; <retval>, tmp121
	csinv	w0, w0, wzr, ne	; <retval>, <retval>,
; GuessSketchFlow/eval/problem91/code.c:19: }
	ret	
L5:
; GuessSketchFlow/eval/problem91/code.c:5:     if (size < 2) return -1;
	mov	w0, -1	; <retval>,
; GuessSketchFlow/eval/problem91/code.c:19: }
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
