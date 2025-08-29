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
LCFI2:
	mov	x19, x0	; strings, strings
; GuessSketchFlow/eval/problem30/code.c:6:     int prefix_length = strlen(prefix);
	mov	x0, x2	;, prefix
; GuessSketchFlow/eval/problem30/code.c:5: int func0(char** strings, int count, const char* prefix, char*** out) {
	mov	x20, x3	; out, out
	stp	x21, x22, [sp, 32]	;,,
LCFI3:
	mov	w21, w1	; count, count
	stp	x23, x24, [sp, 48]	;,,
LCFI4:
	mov	x24, x2	; prefix, prefix
; GuessSketchFlow/eval/problem30/code.c:6:     int prefix_length = strlen(prefix);
	bl	_strlen		;
	mov	x23, x0	; tmp133,
; GuessSketchFlow/eval/problem30/code.c:7:     *out = (char**)malloc(count * sizeof(char*));
	sbfiz	x0, x21, 3, 32	;, count,,
	bl	_malloc		;
; GuessSketchFlow/eval/problem30/code.c:7:     *out = (char**)malloc(count * sizeof(char*));
	str	x0, [x20]	; _4, *out_24(D)
; GuessSketchFlow/eval/problem30/code.c:10:     for (int i = 0; i < count; i++) {
	cmp	w21, 0	; count,
	ble	L5		;,
	add	x22, x19, w21, sxtw 3	; _41, ivtmp.8, count,
; GuessSketchFlow/eval/problem30/code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	sxtw	x23, w23	; _31, tmp133
; GuessSketchFlow/eval/problem30/code.c:8:     int out_count = 0;
	mov	w21, 0	; <retval>,
	str	x25, [x29, 64]	;,
LCFI5:
	mov	x25, x0	; _4, _4
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem30/code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	ldr	x20, [x19]	; _8, MEM[(char * *)_9]
	mov	x2, x23	;, _31
	mov	x1, x24	;, prefix
	mov	x0, x20	;, _8
	bl	_strncmp		;
; GuessSketchFlow/eval/problem30/code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	cbnz	w0, L3	; tmp135,
; GuessSketchFlow/eval/problem30/code.c:12:             (*out)[out_count++] = strings[i];
	str	x20, [x25, w21, uxtw 3]	; _8, *_13
; GuessSketchFlow/eval/problem30/code.c:12:             (*out)[out_count++] = strings[i];
	add	w21, w21, 1	; <retval>, <retval>,
L3:
; GuessSketchFlow/eval/problem30/code.c:10:     for (int i = 0; i < count; i++) {
	add	x19, x19, 8	; ivtmp.8, ivtmp.8,
	cmp	x19, x22	; ivtmp.8, _41
	bne	L4		;,
	ldr	x25, [x29, 64]	;,
LCFI6:
; GuessSketchFlow/eval/problem30/code.c:17: }
	mov	w0, w21	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI7:
	ret	
	.p2align 2,,3
L5:
LCFI8:
; GuessSketchFlow/eval/problem30/code.c:8:     int out_count = 0;
	mov	w21, 0	; <retval>,
; GuessSketchFlow/eval/problem30/code.c:17: }
	ldp	x19, x20, [sp, 16]	;,,
	mov	w0, w21	;, <retval>
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI9:
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
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0x6
	.byte	0x96
	.uleb128 0x5
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x97
	.uleb128 0x4
	.byte	0x98
	.uleb128 0x3
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x99
	.uleb128 0x2
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xd9
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
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
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x50
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
	.byte	0x9d
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x9
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
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
