	.arch armv8.5-a
	.build_version macos,  15, 0
; GNU C11 (Homebrew GCC 15.1.0) version 15.1.0 (aarch64-apple-darwin24)
;	compiled by GNU C version 15.1.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed: -fPIC -mmacosx-version-min=15.0.0 -mcpu=apple-m1 -mlittle-endian -mabi=lp64 -O2 -std=c11
	.text
	.cstring
	.align	3
lC0:
	.ascii "\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB1:
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x21, x22, [sp, 32]	;,,
; GuessSketchFlow/eval/problem13/code.c:7:     for (int i = 0; i < count; i++) {
	cmp	w1, 0	; count,
LCFI2:
	ble	L5		;,
; GuessSketchFlow/eval/problem13/code.c:5:     char *out = "";
	adrp	x22, lC0@PAGE	; tmp114,
	add	x22, x22, lC0@PAGEOFF;	; <retval>, tmp114,
	stp	x19, x20, [x29, 16]	;,,
LCFI3:
	mov	x19, x0	; ivtmp.7, strings
; GuessSketchFlow/eval/problem13/code.c:6:     int longest_length = 0;
	mov	w20, 0	; longest_length,
	str	x23, [x29, 48]	;,
LCFI4:
	add	x23, x0, w1, uxtw 3	; _25, ivtmp.7, count,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem13/code.c:8:         int current_length = strlen(strings[i]);
	ldr	x21, [x19], 8	; _4, MEM[(char * *)_10]
	mov	x0, x21	;, _4
	bl	_strlen		;
; GuessSketchFlow/eval/problem13/code.c:10:             out = strings[i];
	cmp	w20, w0	; longest_length, tmp124
	csel	x22, x21, x22, lt	; <retval>, _4, <retval>,
	csel	w20, w0, w20, lt	; longest_length, tmp124, longest_length,
; GuessSketchFlow/eval/problem13/code.c:7:     for (int i = 0; i < count; i++) {
	cmp	x19, x23	; ivtmp.7, _25
	bne	L4		;,
	ldr	x23, [x29, 48]	;,
LCFI5:
; GuessSketchFlow/eval/problem13/code.c:15: }
	mov	x0, x22	;, <retval>
	ldp	x19, x20, [x29, 16]	;,,
LCFI6:
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI7:
	ret	
	.p2align 2,,3
L5:
LCFI8:
; GuessSketchFlow/eval/problem13/code.c:5:     char *out = "";
	adrp	x22, lC0@PAGE	; tmp115,
	add	x22, x22, lC0@PAGEOFF;	; <retval>, tmp115,
; GuessSketchFlow/eval/problem13/code.c:15: }
	mov	x0, x22	;, <retval>
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI9:
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
	.uleb128 0x40
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x94
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x6
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x97
	.uleb128 0x2
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xd7
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xd4
	.byte	0xd3
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x40
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x9d
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x7
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xde
	.byte	0xdd
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
