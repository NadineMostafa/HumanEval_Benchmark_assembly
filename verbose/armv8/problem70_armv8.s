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
; GuessSketchFlow/eval/problem70/code.c:4: int func0(int *lst, int size) {
	mov	x20, x0	; lst, lst
; GuessSketchFlow/eval/problem70/code.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	add	w0, w1, 1	; _1, size,
; GuessSketchFlow/eval/problem70/code.c:4: int func0(int *lst, int size) {
	mov	w19, w1	; size, size
; GuessSketchFlow/eval/problem70/code.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	sxtw	x0, w0	;, _1
	mov	x1, 4	;,
	bl	_calloc		;
; GuessSketchFlow/eval/problem70/code.c:8:     for (int i = 0; i < size; i++) {
	cmp	w19, 0	; size,
	ble	L5		;,
	add	x1, x20, w19, uxtw 2	; _6, ivtmp.8, size,
	mov	x3, x20	; ivtmp.8, lst
; GuessSketchFlow/eval/problem70/code.c:6:     int max = -1;
	mov	w19, -1	; <retval>,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem70/code.c:9:         freq[lst[i]]++;
	ldr	w4, [x3]	;, MEM[(int *)_30]
; GuessSketchFlow/eval/problem70/code.c:9:         freq[lst[i]]++;
	sbfiz	x5, x4, 2, 32	; _40, _15,,
; GuessSketchFlow/eval/problem70/code.c:9:         freq[lst[i]]++;
	ldr	w2, [x0, x5]	;, *_41
	add	w2, w2, 1	; _43, *_41,
	str	w2, [x0, x5]	; _43, *_41
; GuessSketchFlow/eval/problem70/code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	cmp	w4, w2	; _15, _43
	bgt	L3		;,
; GuessSketchFlow/eval/problem70/code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	cmp	w19, w4	; <retval>, _15
	csel	w19, w19, w4, ge	; <retval>, <retval>, _15,
L3:
; GuessSketchFlow/eval/problem70/code.c:8:     for (int i = 0; i < size; i++) {
	add	x3, x3, 4	; ivtmp.8, ivtmp.8,
	cmp	x3, x1	; ivtmp.8, _6
	bne	L4		;,
; GuessSketchFlow/eval/problem70/code.c:15:     free(freq);
	bl	_free		;
; GuessSketchFlow/eval/problem70/code.c:17: }
	mov	w0, w19	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 32	;,,,
LCFI3:
	ret	
	.p2align 2,,3
L5:
LCFI4:
; GuessSketchFlow/eval/problem70/code.c:15:     free(freq);
	bl	_free		;
; GuessSketchFlow/eval/problem70/code.c:6:     int max = -1;
	mov	w19, -1	; <retval>,
; GuessSketchFlow/eval/problem70/code.c:17: }
	mov	w0, w19	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 32	;,,,
LCFI5:
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
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xb
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
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
