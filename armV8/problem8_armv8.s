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
	stp	x29, x30, [sp, -80]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
	stp	x23, x24, [sp, 48]	;,,
LCFI2:
	mov	x24, x3	; out_size, out_size
	stp	x25, x26, [sp, 64]	;,,
; GuessSketchFlow/eval/problem8/code.c:8:     for (int i = 0; i < size; i++) {
	cmp	w1, 0	; size,
LCFI3:
	ble	L5		;,
	mov	x23, x2	; substring, substring
	mov	x19, x0	; ivtmp.7, strings
	add	x26, x0, w1, uxtw 3	; _42, ivtmp.7, size,
; GuessSketchFlow/eval/problem8/code.c:7:     int count = 0;
	mov	w25, 0	; count,
; GuessSketchFlow/eval/problem8/code.c:6:     char **out = NULL;
	mov	x20, 0	; <retval>,
	stp	x21, x22, [x29, 32]	;,,
LCFI4:
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem8/code.c:9:         if (strstr(strings[i], substring) != NULL) {
	mov	x1, x23	;, substring
	ldr	x22, [x19]	; _4, MEM[(char * *)_29]
	mov	x0, x22	;, _4
	bl	_strstr		;
; GuessSketchFlow/eval/problem8/code.c:9:         if (strstr(strings[i], substring) != NULL) {
	cbz	x0, L3	; _5,
; GuessSketchFlow/eval/problem8/code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	add	w25, w25, 1	; count, count,
; GuessSketchFlow/eval/problem8/code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	mov	x0, x20	;, <retval>
	ubfiz	x1, x25, 3, 32	;, count,,
	bl	_realloc		;
; GuessSketchFlow/eval/problem8/code.c:11:             out[count] = strings[i];
	add	x21, x0, w25, uxtw 3	; tmp124, <retval>, count,,
; GuessSketchFlow/eval/problem8/code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	mov	x20, x0	; <retval>, <retval>
; GuessSketchFlow/eval/problem8/code.c:11:             out[count] = strings[i];
	str	x22, [x21, -8]	; _4, *_11
L3:
; GuessSketchFlow/eval/problem8/code.c:8:     for (int i = 0; i < size; i++) {
	add	x19, x19, 8	; ivtmp.7, ivtmp.7,
	cmp	x19, x26	; ivtmp.7, _42
	bne	L4		;,
	ldp	x21, x22, [x29, 32]	;,,
LCFI5:
; GuessSketchFlow/eval/problem8/code.c:17: }
	mov	x0, x20	;, <retval>
; GuessSketchFlow/eval/problem8/code.c:15:     *out_size = count;
	str	w25, [x24]	; count, *out_size_21(D)
; GuessSketchFlow/eval/problem8/code.c:17: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI6:
	ret	
	.p2align 2,,3
L5:
LCFI7:
; GuessSketchFlow/eval/problem8/code.c:7:     int count = 0;
	mov	w25, 0	; count,
; GuessSketchFlow/eval/problem8/code.c:6:     char **out = NULL;
	mov	x20, 0	; <retval>,
; GuessSketchFlow/eval/problem8/code.c:17: }
	mov	x0, x20	;, <retval>
; GuessSketchFlow/eval/problem8/code.c:15:     *out_size = count;
	str	w25, [x24]	; count, *out_size_21(D)
; GuessSketchFlow/eval/problem8/code.c:17: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI8:
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
	.uleb128 0x50
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0x8
	.byte	0x94
	.uleb128 0x7
	.byte	0x97
	.uleb128 0x4
	.byte	0x98
	.uleb128 0x3
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x99
	.uleb128 0x2
	.byte	0x9a
	.uleb128 0x1
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x96
	.uleb128 0x5
	.byte	0x95
	.uleb128 0x6
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xd6
	.byte	0xd5
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x50
	.byte	0x93
	.uleb128 0x8
	.byte	0x94
	.uleb128 0x7
	.byte	0x97
	.uleb128 0x4
	.byte	0x98
	.uleb128 0x3
	.byte	0x99
	.uleb128 0x2
	.byte	0x9a
	.uleb128 0x1
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
