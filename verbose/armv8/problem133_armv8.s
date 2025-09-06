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
	str	x19, [sp, 16]	;,
LCFI2:
; GuessSketchFlow/eval/problem133/code.c:4: int func0(const char *str) {
	mov	x19, x0	; str, str
; GuessSketchFlow/eval/problem133/code.c:6:     for (int i = 0; i < strlen(str); i++) {
	bl	_strlen		;
	mov	x2, x19	; ivtmp.9, str
	add	x0, x19, x0	; _19, ivtmp.9, tmp123
; GuessSketchFlow/eval/problem133/code.c:5:     int count = 0, maxcount = 0;
	mov	w3, 0	; maxcount,
; GuessSketchFlow/eval/problem133/code.c:5:     int count = 0, maxcount = 0;
	mov	w1, 0	; count,
; GuessSketchFlow/eval/problem133/code.c:6:     for (int i = 0; i < strlen(str); i++) {
	b	L2		;
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem133/code.c:8:         if (str[i] == ']') count -= 1;
	cmp	w4, 93	; _3,
	cset	w4, eq	; tmp121,
	sub	w1, w1, w4	; count, count, tmp121
; GuessSketchFlow/eval/problem133/code.c:9:         if (count < 0) count = 0;
	bic	w1, w1, w1, asr #31	; count, count
; GuessSketchFlow/eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	add	x2, x2, 1	; ivtmp.9, ivtmp.9,
; GuessSketchFlow/eval/problem133/code.c:10:         if (count > maxcount) maxcount = count;
	cmp	w3, w1	; maxcount, count
	csel	w3, w3, w1, ge	; maxcount, maxcount, count,
; GuessSketchFlow/eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	sub	w4, w3, #1	; _5, maxcount,
; GuessSketchFlow/eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	cmp	w1, w4	; count, _5
	blt	L7		;,
L2:
; GuessSketchFlow/eval/problem133/code.c:6:     for (int i = 0; i < strlen(str); i++) {
	cmp	x0, x2	; _19, ivtmp.9
	beq	L10		;,
; GuessSketchFlow/eval/problem133/code.c:7:         if (str[i] == '[') count += 1;
	ldrsb	w4, [x2]	; _3, MEM[(const char *)_8]
; GuessSketchFlow/eval/problem133/code.c:7:         if (str[i] == '[') count += 1;
	cmp	w4, 91	; _3,
	bne	L3		;,
; GuessSketchFlow/eval/problem133/code.c:7:         if (str[i] == '[') count += 1;
	add	w1, w1, 1	; count, count,
; GuessSketchFlow/eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	add	x2, x2, 1	; ivtmp.9, ivtmp.9,
; GuessSketchFlow/eval/problem133/code.c:9:         if (count < 0) count = 0;
	bic	w1, w1, w1, asr #31	; count, count
; GuessSketchFlow/eval/problem133/code.c:10:         if (count > maxcount) maxcount = count;
	cmp	w3, w1	; maxcount, count
	csel	w3, w3, w1, ge	; maxcount, maxcount, count,
; GuessSketchFlow/eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	sub	w4, w3, #1	; _5, maxcount,
; GuessSketchFlow/eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	cmp	w1, w4	; count, _5
	bge	L2		;,
L7:
; GuessSketchFlow/eval/problem133/code.c:14: }
	ldr	x19, [sp, 16]	;,
; GuessSketchFlow/eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem133/code.c:14: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI3:
	ret	
	.p2align 2,,3
L10:
LCFI4:
	ldr	x19, [sp, 16]	;,
; GuessSketchFlow/eval/problem133/code.c:13:     return 0;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem133/code.c:14: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI5:
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
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
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
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
