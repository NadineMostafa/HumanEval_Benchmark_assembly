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
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	mov	x19, x0	; str, str
	stp	x21, x22, [sp, 32]	;,,
	str	x23, [sp, 48]	;,
LCFI3:
; GuessSketchFlow/eval/problem19/code.c:4: int func0(const char *str, const char *substring) {
	mov	x23, x1	; substring, substring
; GuessSketchFlow/eval/problem19/code.c:6:     int str_len = strlen(str);
	bl	_strlen		;
; GuessSketchFlow/eval/problem19/code.c:6:     int str_len = strlen(str);
	mov	w21, w0	; <retval>, tmp115
; GuessSketchFlow/eval/problem19/code.c:8:     if (str_len == 0) return 0;
	cbz	w0, L1	; tmp115,
; GuessSketchFlow/eval/problem19/code.c:7:     int sub_len = strlen(substring);
	mov	x0, x23	;, substring
	bl	_strlen		;
; GuessSketchFlow/eval/problem19/code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	subs	w20, w21, w0	; _21, tmp115, tmp126
	bmi	L5		;,
; GuessSketchFlow/eval/problem19/code.c:5:     int out = 0;
	mov	w21, 0	; <retval>,
; GuessSketchFlow/eval/problem19/code.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	sxtw	x22, w0	; _9, tmp126
	add	x0, x19, 1	; _10, ivtmp.7,
	add	x20, x0, w20, sxtw	; _27, _10, _21
	.p2align 5,,15
L4:
	mov	x0, x19	;, ivtmp.7
	mov	x2, x22	;, _9
	mov	x1, x23	;, substring
; GuessSketchFlow/eval/problem19/code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	add	x19, x19, 1	; ivtmp.7, ivtmp.7,
; GuessSketchFlow/eval/problem19/code.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	bl	_strncmp		;
; GuessSketchFlow/eval/problem19/code.c:11:             out++;
	cmp	w0, 0	; tmp127,
	cinc	w21, w21, eq	; <retval>, <retval>,
; GuessSketchFlow/eval/problem19/code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	cmp	x19, x20	; ivtmp.7, _27
	bne	L4		;,
L1:
; GuessSketchFlow/eval/problem19/code.c:14: }
	ldr	x23, [sp, 48]	;,
	mov	w0, w21	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI4:
	ret	
	.p2align 2,,3
L5:
LCFI5:
; GuessSketchFlow/eval/problem19/code.c:8:     if (str_len == 0) return 0;
	mov	w21, 0	; <retval>,
	b	L1		;
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
	.byte	0x93
	.uleb128 0x6
	.byte	0x94
	.uleb128 0x5
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x97
	.uleb128 0x2
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
