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
	stp	x29, x30, [sp, -32]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
; GuessSketchFlow/eval/problem28/code.c:4: void func0(const char* str, char* out) {
	mov	x20, x0	; str, str
	mov	x19, x1	; out, out
; GuessSketchFlow/eval/problem28/code.c:5:     int length = strlen(str);
	bl	_strlen		;
; GuessSketchFlow/eval/problem28/code.c:6:     for (int i = 0; i < length; i++) {
	cmp	w0, 0	; tmp115,
	ble	L2		;,
	mov	x3, 0	; ivtmp.10,
	b	L5		;
	.p2align 2,,3
L9:
; GuessSketchFlow/eval/problem28/code.c:9:             w -= 32;
	sub	w2, w2, #32	; tmp118, w,
	sxtb	w2, w2	; w, tmp118
; GuessSketchFlow/eval/problem28/code.c:13:         out[i] = w;
	strb	w2, [x19, x3]	; w, MEM[(char *)out_18(D) + ivtmp.10_36 * 1]
; GuessSketchFlow/eval/problem28/code.c:6:     for (int i = 0; i < length; i++) {
	add	x3, x3, 1	; ivtmp.10, ivtmp.10,
	cmp	w0, w3	; tmp115, ivtmp.10
	ble	L2		;,
L5:
; GuessSketchFlow/eval/problem28/code.c:7:         char w = str[i];
	ldrsb	w2, [x20, x3]	; w, MEM[(const char *)str_16(D) + ivtmp.10_36 * 1]
; GuessSketchFlow/eval/problem28/code.c:8:         if (w >= 'a' && w <= 'z') {
	sub	w4, w2, #97	; tmp116, w,
; GuessSketchFlow/eval/problem28/code.c:8:         if (w >= 'a' && w <= 'z') {
	and	w4, w4, 255	; tmp117, tmp116
	cmp	w4, 25	; tmp117,
	bls	L9		;,
; GuessSketchFlow/eval/problem28/code.c:10:         } else if (w >= 'A' && w <= 'Z') {
	sub	w5, w2, #65	; tmp119, w,
; GuessSketchFlow/eval/problem28/code.c:11:             w += 32;
	add	w4, w2, 32	; tmp121, w,
; GuessSketchFlow/eval/problem28/code.c:10:         } else if (w >= 'A' && w <= 'Z') {
	and	w5, w5, 255	; tmp120, tmp119
; GuessSketchFlow/eval/problem28/code.c:11:             w += 32;
	sxtb	w4, w4	; tmp126, tmp121
	cmp	w5, 25	; tmp120,
	csel	w2, w4, w2, ls	; w, tmp126, w,
; GuessSketchFlow/eval/problem28/code.c:13:         out[i] = w;
	strb	w2, [x19, x3]	; w, MEM[(char *)out_18(D) + ivtmp.10_36 * 1]
; GuessSketchFlow/eval/problem28/code.c:6:     for (int i = 0; i < length; i++) {
	add	x3, x3, 1	; ivtmp.10, ivtmp.10,
	cmp	w0, w3	; tmp115, ivtmp.10
	bgt	L5		;,
L2:
; GuessSketchFlow/eval/problem28/code.c:15:     out[length] = '\0';
	strb	wzr, [x19, w0, sxtw]	;, *_11
; GuessSketchFlow/eval/problem28/code.c:16: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 32	;,,,
LCFI3:
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
