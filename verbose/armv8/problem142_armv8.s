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
	.ascii "No\0"
	.align	3
lC1:
	.ascii "Yes\0"
	.align	3
lC2:
	.ascii ".txt\0"
	.align	3
lC3:
	.ascii ".exe\0"
	.align	3
lC4:
	.ascii ".dll\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB1:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
; GuessSketchFlow/eval/problem142/code.c:4: const char* func0(const char* file_name) {
	mov	x19, x0	; file_name, file_name
; GuessSketchFlow/eval/problem142/code.c:6:     int length = strlen(file_name);
	bl	_strlen		;
; GuessSketchFlow/eval/problem142/code.c:7:     if (length < 5) return "No";
	cmp	w0, 4	; tmp180,
	ble	L11		;,
	mov	x5, x0	; tmp180, tmp238
; GuessSketchFlow/eval/problem142/code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	ldrb	w0, [x19]	; _45, *file_name_27(D)
; GuessSketchFlow/eval/problem142/code.c:7:     if (length < 5) return "No";
	adrp	x2, lC0@PAGE	; tmp177,
	add	x2, x2, lC0@PAGEOFF;	; <retval>, tmp177,
; GuessSketchFlow/eval/problem142/code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	sub	w1, w0, #65	; tmp186, _45,
; GuessSketchFlow/eval/problem142/code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	sub	w0, w0, #91	; tmp188, _45,
; GuessSketchFlow/eval/problem142/code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	and	w1, w1, 255	; tmp187, tmp186
	and	w0, w0, 255	; tmp189, tmp188
	cmp	w1, 57	; tmp187,
	ccmp	w0, 5, 0, ls	; tmp189,,,
	bhi	L30		;,
L1:
; GuessSketchFlow/eval/problem142/code.c:18: }
	ldp	x19, x20, [sp, 16]	;,,
	mov	x0, x2	;, <retval>
	ldp	x29, x30, [sp], 48	;,,,
LCFI3:
	ret	
	.p2align 2,,3
L30:
LCFI4:
; GuessSketchFlow/eval/problem142/code.c:10:     const char* last = file_name + length - 4;
	sxtw	x20, w5	; _7, tmp180
; GuessSketchFlow/eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	adrp	x1, lC2@PAGE	; tmp197,
	stp	x2, x5, [x29, 32]	; <retval>, tmp180,
; GuessSketchFlow/eval/problem142/code.c:10:     const char* last = file_name + length - 4;
	sub	x20, x20, #4	; _8, _7,
; GuessSketchFlow/eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	add	x1, x1, lC2@PAGEOFF;	;, tmp197,
	add	x0, x19, x20	;, file_name, _8
	bl	_strcmp		;
; GuessSketchFlow/eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	ldr	x5, [x29, 40]	; tmp180, %sfp
	cbnz	w0, L31	; tmp239,
L3:
	sub	w0, w5, #1	; _89, tmp180,
	cmp	w0, 14	; _89,
	bls	L14		;,
; GuessSketchFlow/eval/problem142/code.c:4: const char* func0(const char* file_name) {
	movi	v30.4s, 0	; vect_num_digit_42.28
; GuessSketchFlow/eval/problem142/code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	movi	v23.16b, 0xd0	; tmp210
	mov	x0, x19	; ivtmp.41, file_name
; GuessSketchFlow/eval/problem142/code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	movi	v25.16b, 0x9	; tmp211
; GuessSketchFlow/eval/problem142/code.c:14:         if (file_name[i] == '.') num_dot++;
	movi	v24.16b, 0x2e	; tmp217
	lsr	w1, w5, 4	; bnd.7_93, tmp180,
	add	x1, x19, w1, uxtw 4	; _23, file_name, bnd.7_93,
; GuessSketchFlow/eval/problem142/code.c:4: const char* func0(const char* file_name) {
	mov	v29.16b, v30.16b	; vect_num_dot_44.21, vect_num_digit_42.28
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem142/code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	ldr	q31, [x0], 16	; MEM <const vector(16) char> [(const char *)_15], MEM <const vector(16) char> [(const char *)_15]
; GuessSketchFlow/eval/problem142/code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	add	v27.16b, v31.16b, v23.16b	; vect__16.15, MEM <const vector(16) char> [(const char *)_15], tmp210
; GuessSketchFlow/eval/problem142/code.c:14:         if (file_name[i] == '.') num_dot++;
	cmeq	v31.16b, v31.16b, v24.16b	; mask__23.13_99, MEM <const vector(16) char> [(const char *)_15], tmp217
; GuessSketchFlow/eval/problem142/code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	cmhs	v28.16b, v25.16b, v27.16b	; mask__41.24, tmp211, vect__16.15
	cmhi	v27.16b, v27.16b, v25.16b	; mask__36.16_102, vect__16.15, tmp211
	sxtl	v26.8h, v28.8b	; mask_patt_40.26, mask__41.24
	and	v31.16b, v31.16b, v27.16b	; mask__21.17, mask__23.13_99, mask__36.16_102
	sxtl2	v28.8h, v28.16b	; mask_patt_40.26, mask__41.24
	ssubw	v30.4s, v30.4s, v26.4h	; vect__63.29, vect_num_digit_42.28, mask_patt_40.26
	ssubw2	v30.4s, v30.4s, v26.8h	; vect__63.29, vect__63.29, mask_patt_40.26
	ssubw	v30.4s, v30.4s, v28.4h	; vect__63.29, vect__63.29, mask_patt_40.26
	ssubw2	v30.4s, v30.4s, v28.8h	; vect_num_digit_42.28, vect__63.29, mask_patt_40.26
	sxtl	v28.8h, v31.8b	; mask_patt_48.19, mask__21.17
	sxtl2	v31.8h, v31.16b	; mask_patt_48.19, mask__21.17
	ssubw	v29.4s, v29.4s, v28.4h	; vect__61.22, vect_num_dot_44.21, mask_patt_48.19
	ssubw2	v29.4s, v29.4s, v28.8h	; vect__61.22, vect__61.22, mask_patt_48.19
	ssubw	v29.4s, v29.4s, v31.4h	; vect__61.22, vect__61.22, mask_patt_48.19
	ssubw2	v29.4s, v29.4s, v31.8h	; vect_num_dot_44.21, vect__61.22, mask_patt_48.19
	cmp	x0, x1	; ivtmp.41, _23
	bne	L5		;,
	addv	s31, v30.4s	; num_digit, vect_num_digit_42.28
	fmov	w1, s31	; num_digit, num_digit
	addv	s31, v29.4s	; num_dot, vect_num_dot_44.21
	fmov	w2, s31	; num_dot, num_dot
	tst	x5, 15	; tmp180,
	beq	L6		;,
	and	w3, w5, -16	; tmp.9, tmp180,
L4:
	sxtw	x3, w3	; ivtmp.34, tmp.9
	b	L9		;
	.p2align 2,,3
L7:
; GuessSketchFlow/eval/problem142/code.c:12:     for (int i = 0; i < length; i++) {
	add	x3, x3, 1	; ivtmp.34, ivtmp.34,
; GuessSketchFlow/eval/problem142/code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	add	w1, w1, 1	; num_digit, num_digit,
; GuessSketchFlow/eval/problem142/code.c:12:     for (int i = 0; i < length; i++) {
	cmp	w5, w3	; tmp180, ivtmp.34
	ble	L6		;,
L9:
; GuessSketchFlow/eval/problem142/code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	ldrsb	w0, [x19, x3]	; _77, MEM[(const char *)file_name_27(D) + ivtmp.34_50 * 1]
; GuessSketchFlow/eval/problem142/code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	sub	w4, w0, #48	; tmp226, _77,
; GuessSketchFlow/eval/problem142/code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	and	w4, w4, 255	; tmp227, tmp226
	cmp	w4, 9	; tmp227,
	bls	L7		;,
; GuessSketchFlow/eval/problem142/code.c:14:         if (file_name[i] == '.') num_dot++;
	cmp	w0, 46	; _77,
; GuessSketchFlow/eval/problem142/code.c:12:     for (int i = 0; i < length; i++) {
	add	x3, x3, 1	; ivtmp.34, ivtmp.34,
; GuessSketchFlow/eval/problem142/code.c:14:         if (file_name[i] == '.') num_dot++;
	cinc	w2, w2, eq	; num_dot, num_dot,
; GuessSketchFlow/eval/problem142/code.c:12:     for (int i = 0; i < length; i++) {
	cmp	w5, w3	; tmp180, ivtmp.34
	bgt	L9		;,
L6:
; GuessSketchFlow/eval/problem142/code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	cmp	w1, 3	; num_digit,
; GuessSketchFlow/eval/problem142/code.c:17:     return "Yes";
	adrp	x0, lC0@PAGE	; tmp179,
; GuessSketchFlow/eval/problem142/code.c:18: }
	ldp	x19, x20, [sp, 16]	;,,
; GuessSketchFlow/eval/problem142/code.c:17:     return "Yes";
	adrp	x1, lC1@PAGE	; tmp176,
	ccmp	w2, 1, 0, le	; num_dot,,,
; GuessSketchFlow/eval/problem142/code.c:18: }
; GuessSketchFlow/eval/problem142/code.c:17:     return "Yes";
	add	x1, x1, lC1@PAGEOFF;	; tmp235, tmp176,
	add	x2, x0, lC0@PAGEOFF;	; tmp236, tmp179,
	csel	x2, x2, x1, ne	; <retval>, tmp236, tmp235,
; GuessSketchFlow/eval/problem142/code.c:18: }
	ldp	x29, x30, [sp], 48	;,,,
LCFI5:
	mov	x0, x2	;, <retval>
	ret	
	.p2align 2,,3
L11:
LCFI6:
; GuessSketchFlow/eval/problem142/code.c:7:     if (length < 5) return "No";
	adrp	x2, lC0@PAGE	; tmp175,
; GuessSketchFlow/eval/problem142/code.c:18: }
	ldp	x19, x20, [sp, 16]	;,,
; GuessSketchFlow/eval/problem142/code.c:7:     if (length < 5) return "No";
	add	x2, x2, lC0@PAGEOFF;	; <retval>, tmp175,
; GuessSketchFlow/eval/problem142/code.c:18: }
	mov	x0, x2	;, <retval>
	ldp	x29, x30, [sp], 48	;,,,
LCFI7:
	ret	
	.p2align 2,,3
L31:
LCFI8:
; GuessSketchFlow/eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	adrp	x1, lC3@PAGE	; tmp200,
	add	x0, x19, x20	;, file_name, _8
	add	x1, x1, lC3@PAGEOFF;	;, tmp200,
	bl	_strcmp		;
; GuessSketchFlow/eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	ldr	x5, [x29, 40]	; tmp180, %sfp
	cbz	w0, L3	; tmp240,
; GuessSketchFlow/eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	adrp	x1, lC4@PAGE	; tmp203,
	add	x0, x19, x20	;, file_name, _8
	add	x1, x1, lC4@PAGEOFF;	;, tmp203,
	bl	_strcmp		;
; GuessSketchFlow/eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	ldp	x2, x5, [x29, 32]	; <retval>, tmp180,
	cbz	w0, L3	; tmp241,
	b	L1		;
	.p2align 2,,3
L14:
; GuessSketchFlow/eval/problem142/code.c:4: const char* func0(const char* file_name) {
	mov	w3, 0	; tmp.9,
	mov	w2, 0	; num_dot,
	mov	w1, 0	; num_digit,
	b	L4		;
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
	.uleb128 0x30
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x3
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
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xb
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
