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
; GuessSketchFlow/eval/problem143/code.c:3: int func0(int* lst, int size) {
	mov	x5, x0	; lst, lst
; GuessSketchFlow/eval/problem143/code.c:5:     for (int i = 0; i < size; i++) {
	cmp	w1, 0	; size,
	ble	L7		;,
; GuessSketchFlow/eval/problem143/code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	mov	w7, 43691	; tmp123,
	sxtw	x1, w1	; _31, size
; GuessSketchFlow/eval/problem143/code.c:5:     for (int i = 0; i < size; i++) {
	mov	x2, 0	; ivtmp.7,
; GuessSketchFlow/eval/problem143/code.c:4:     int sum = 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem143/code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	movk	w7, 0xaaaa, lsl 16	; tmp123,,
; GuessSketchFlow/eval/problem143/code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	mov	w6, 1431655765	; tmp124,
	b	L6		;
	.p2align 2,,3
L10:
; GuessSketchFlow/eval/problem143/code.c:5:     for (int i = 0; i < size; i++) {
	add	x2, x2, 1	; ivtmp.7, ivtmp.7,
; GuessSketchFlow/eval/problem143/code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	madd	w0, w3, w3, w0	; <retval>, pretmp_4, pretmp_4, <retval>
; GuessSketchFlow/eval/problem143/code.c:5:     for (int i = 0; i < size; i++) {
	cmp	x1, x2	; _31, ivtmp.7
	beq	L1		;,
L6:
; GuessSketchFlow/eval/problem143/code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	mul	w4, w7, w2	; tmp122, tmp123, ivtmp.7
	ldr	w3, [x5, x2, lsl 2]	;, MEM[(int *)lst_24(D) + ivtmp.7_37 * 4]
; GuessSketchFlow/eval/problem143/code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	cmp	w4, w6	; tmp122, tmp124
	bls	L10		;,
; GuessSketchFlow/eval/problem143/code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	mul	w4, w3, w3	; _42, pretmp_4, pretmp_4
	tst	x2, 3	; ivtmp.7,
; GuessSketchFlow/eval/problem143/code.c:5:     for (int i = 0; i < size; i++) {
	add	x2, x2, 1	; ivtmp.7, ivtmp.7,
; GuessSketchFlow/eval/problem143/code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	madd	w4, w4, w3, w0	; tmp131, _42, pretmp_4, <retval>
	add	w3, w0, w3	; tmp130, <retval>, pretmp_4
	csel	w0, w3, w4, ne	; <retval>, tmp130, tmp131,
; GuessSketchFlow/eval/problem143/code.c:5:     for (int i = 0; i < size; i++) {
	cmp	x1, x2	; _31, ivtmp.7
	bne	L6		;,
L1:
; GuessSketchFlow/eval/problem143/code.c:11: }
	ret	
	.p2align 2,,3
L7:
; GuessSketchFlow/eval/problem143/code.c:4:     int sum = 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem143/code.c:11: }
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
