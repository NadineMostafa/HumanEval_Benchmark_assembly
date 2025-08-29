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
	stp	x29, x30, [sp, -64]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
; GuessSketchFlow/eval/problem125/code.c:5: int func0(const char *date) {
	mov	x19, x0	; date, date
; GuessSketchFlow/eval/problem125/code.c:8:     if (strlen(date) != 10) return 0;
	bl	_strlen		;
; GuessSketchFlow/eval/problem125/code.c:8:     if (strlen(date) != 10) return 0;
	cmp	x0, 10	; tmp158,
	bne	L5		;,
	mov	x0, 0	; ivtmp.9,
; GuessSketchFlow/eval/problem125/code.c:10:         if (i == 2 || i == 5) {
	mov	x3, 36	; tmp131,
	b	L2		;
	.p2align 2,,3
L19:
; GuessSketchFlow/eval/problem125/code.c:11:             if (date[i] != '-') return 0;
	cmp	w1, 45	; pretmp_3,
	bne	L5		;,
L6:
; GuessSketchFlow/eval/problem125/code.c:9:     for (int i = 0; i < 10; i++) {
	add	x0, x0, 1	; ivtmp.9, ivtmp.9,
	cmp	x0, 10	; ivtmp.9,
	beq	L18		;,
L2:
; GuessSketchFlow/eval/problem125/code.c:10:         if (i == 2 || i == 5) {
	lsr	x2, x3, x0	; _32, tmp131, ivtmp.9
; GuessSketchFlow/eval/problem125/code.c:11:             if (date[i] != '-') return 0;
	ldrsb	w1, [x19, x0]	; pretmp_3, MEM[(const char *)date_36(D) + ivtmp.9_9 * 1]
; GuessSketchFlow/eval/problem125/code.c:10:         if (i == 2 || i == 5) {
	tbnz	x2, 0, L19	; _32,,
; GuessSketchFlow/eval/problem125/code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	sub	w1, w1, #48	; tmp134, pretmp_3,
; GuessSketchFlow/eval/problem125/code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	and	w1, w1, 255	; tmp135, tmp134
	cmp	w1, 9	; tmp135,
	bls	L6		;,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem125/code.c:8:     if (strlen(date) != 10) return 0;
	mov	w0, 0	; <retval>,
L1:
; GuessSketchFlow/eval/problem125/code.c:31: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI3:
	ret	
	.p2align 2,,3
L18:
LCFI4:
; GuessSketchFlow/eval/problem125/code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	ldrh	w0, [x19]	;, MEM <unsigned short> [(const char *)date_36(D)]
	strb	wzr, [x29, 42]	;, str_month[2]
; GuessSketchFlow/eval/problem125/code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	strb	wzr, [x29, 50]	;, str_day[2]
; GuessSketchFlow/eval/problem125/code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	strb	wzr, [x29, 60]	;, str_year[4]
; GuessSketchFlow/eval/problem125/code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	strh	w0, [x29, 40]	; MEM <unsigned short> [(const char *)date_36(D)], MEM <unsigned short> [(char *)&str_month]
; GuessSketchFlow/eval/problem125/code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	ldrh	w0, [x19, 3]	;, MEM <unsigned short> [(const char *)date_36(D) + 3B]
	strh	w0, [x29, 48]	; MEM <unsigned short> [(const char *)date_36(D) + 3B], MEM <unsigned short> [(char *)&str_day]
; GuessSketchFlow/eval/problem125/code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ldr	w0, [x19, 6]	;, MEM <unsigned int> [(const char *)date_36(D) + 6B]
	str	w0, [x29, 56]	; MEM <unsigned int> [(const char *)date_36(D) + 6B], MEM <vector(4) char> [(char *)&str_year]
; GuessSketchFlow/eval/problem125/code.c:21:     mm = atoi(str_month);
	add	x0, x29, 40	;,,
	bl	_atoi		;
	mov	w19, w0	; mm,
; GuessSketchFlow/eval/problem125/code.c:22:     dd = atoi(str_day);
	add	x0, x29, 48	;,,
	bl	_atoi		;
	mov	w20, w0	; dd,
; GuessSketchFlow/eval/problem125/code.c:23:     yy = atoi(str_year);
	add	x0, x29, 56	;,,
	bl	_atoi		;
; GuessSketchFlow/eval/problem125/code.c:25:     if (mm < 1 || mm > 12) return 0;
	sub	w0, w19, #1	; _23, mm,
; GuessSketchFlow/eval/problem125/code.c:25:     if (mm < 1 || mm > 12) return 0;
	cmp	w0, 11	; _23,
	bhi	L5		;,
; GuessSketchFlow/eval/problem125/code.c:26:     if (dd < 1 || dd > 31) return 0;
	sub	w0, w20, #1	; _25, dd,
; GuessSketchFlow/eval/problem125/code.c:26:     if (dd < 1 || dd > 31) return 0;
	cmp	w0, 30	; _25,
	bhi	L5		;,
	cmp	w19, 12	; mm,
	beq	L7		;,
	mov	x0, 2640	; tmp145,
	lsr	x0, x0, x19	; _2, tmp145, mm
	tbz	x0, 0, L7	; _2,,
; GuessSketchFlow/eval/problem125/code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	cmp	w20, 31	; dd,
	cset	w0, ne	; <retval>,
	b	L1		;
	.p2align 2,,3
L7:
; GuessSketchFlow/eval/problem125/code.c:28:     if (mm == 2 && dd > 29) return 0;
	cmp	w19, 2	; mm,
	ccmp	w20, 29, 4, eq	; dd,,,
; GuessSketchFlow/eval/problem125/code.c:28:     if (mm == 2 && dd > 29) return 0;
	cset	w0, le	; <retval>,
	b	L1		;
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
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
