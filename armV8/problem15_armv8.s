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
	stp	x21, x22, [sp, 32]	;,,
	stp	x23, x24, [sp, 48]	;,,
LCFI2:
	mov	x24, x1	; count, count
	mov	x23, x0	; str, str
; GuessSketchFlow/eval/problem15/code.c:6:     int len = strlen(str);
	bl	_strlen		;
	mov	x20, x0	; tmp122, tmp144
; GuessSketchFlow/eval/problem15/code.c:6:     int len = strlen(str);
	mov	w22, w0	; len, tmp122
; GuessSketchFlow/eval/problem15/code.c:7:     char **out = malloc(len * sizeof(char *));
	sbfiz	x0, x0, 3, 32	;, tmp122,,
	bl	_malloc		;
	mov	x21, x0	; <retval>, <retval>
; GuessSketchFlow/eval/problem15/code.c:9:     char *current = malloc(len + 1);
	add	w0, w20, 1	; _4, tmp122,
; GuessSketchFlow/eval/problem15/code.c:9:     char *current = malloc(len + 1);
	sxtw	x0, w0	;, _4
	bl	_malloc		;
; GuessSketchFlow/eval/problem15/code.c:10:     current[0] = '\0';
	strb	wzr, [x0]	;, *current_28
; GuessSketchFlow/eval/problem15/code.c:9:     char *current = malloc(len + 1);
	mov	x19, x0	; current, current
; GuessSketchFlow/eval/problem15/code.c:12:     for (int i = 0; i < len; ++i) {
	cmp	w20, 0	; tmp122,
	ble	L2		;,
	str	x25, [x29, 64]	;,
LCFI3:
; GuessSketchFlow/eval/problem15/code.c:12:     for (int i = 0; i < len; ++i) {
	mov	x25, 0	; ivtmp.5,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem15/code.c:13:         size_t current_len = strlen(current);
	mov	x0, x19	;, current
	bl	_strlen		;
	mov	x20, x0	; tmp129, tmp147
; GuessSketchFlow/eval/problem15/code.c:14:         current = realloc(current, current_len + 2);
	add	x1, x0, 2	;, tmp129,
	mov	x0, x19	;, current
	bl	_realloc		;
; GuessSketchFlow/eval/problem15/code.c:15:         current[current_len] = str[i];
	ldrb	w1, [x23, x25]	;, MEM[(const char *)str_23(D) + ivtmp.5_54 * 1]
; GuessSketchFlow/eval/problem15/code.c:14:         current = realloc(current, current_len + 2);
	mov	x19, x0	; current, current
; GuessSketchFlow/eval/problem15/code.c:15:         current[current_len] = str[i];
	strb	w1, [x0, x20]	; MEM[(const char *)str_23(D) + ivtmp.5_54 * 1], *_9
; GuessSketchFlow/eval/problem15/code.c:16:         current[current_len + 1] = '\0';
	add	x20, x0, x20	; tmp132, current, tmp129
	strb	wzr, [x20, 1]	;, *_12
; GuessSketchFlow/eval/problem15/code.c:18:         out[i] = malloc(strlen(current) + 1);
	bl	_strlen		;
; GuessSketchFlow/eval/problem15/code.c:18:         out[i] = malloc(strlen(current) + 1);
	add	x20, x0, 1	; _14, tmp149,
	mov	x0, x20	;, _14
	bl	_malloc		;
; GuessSketchFlow/eval/problem15/code.c:19:         strcpy(out[i], current);
	mov	x2, x20	;, _14
	mov	x1, x19	;, current
; GuessSketchFlow/eval/problem15/code.c:18:         out[i] = malloc(strlen(current) + 1);
	str	x0, [x21, x25, lsl 3]	; tmp150, MEM[(char * *)out_26 + ivtmp.5_54 * 8]
; GuessSketchFlow/eval/problem15/code.c:19:         strcpy(out[i], current);
	bl	_memcpy		;
; GuessSketchFlow/eval/problem15/code.c:12:     for (int i = 0; i < len; ++i) {
	add	x25, x25, 1	; ivtmp.5, ivtmp.5,
	cmp	w22, w25	; len, ivtmp.5
	bgt	L3		;,
	ldr	x25, [x29, 64]	;,
LCFI4:
L2:
; GuessSketchFlow/eval/problem15/code.c:21:     free(current);
	mov	x0, x19	;, current
	bl	_free		;
; GuessSketchFlow/eval/problem15/code.c:25: }
	mov	x0, x21	;, <retval>
; GuessSketchFlow/eval/problem15/code.c:23:     *count = len;
	str	w22, [x24]	; len, *count_31(D)
; GuessSketchFlow/eval/problem15/code.c:25: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 80	;,,,
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
	.byte	0x95
	.uleb128 0x6
	.byte	0x96
	.uleb128 0x5
	.byte	0x97
	.uleb128 0x4
	.byte	0x98
	.uleb128 0x3
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x99
	.uleb128 0x2
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xd9
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
