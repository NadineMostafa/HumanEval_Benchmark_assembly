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
; GuessSketchFlow/eval/problem112/code.c:5:     int local_freq[26] = {0}; // for 'a' to 'z'
	movi	v31.4s, 0	; tmp123
; GuessSketchFlow/eval/problem112/code.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	sub	sp, sp, #112	;,,
LCFI0:
; GuessSketchFlow/eval/problem112/code.c:6:     int local_max = 0;
	mov	w5, 0	; local_max,
; GuessSketchFlow/eval/problem112/code.c:5:     int local_freq[26] = {0}; // for 'a' to 'z'
	add	x6, sp, 8	; tmp147,,
	str	xzr, [x6, 96]	;, local_freq
	stp	q31, q31, [x6]	; tmp123, tmp123,
	stp	q31, q31, [x6, 32]	; tmp123, tmp123,
	stp	q31, q31, [x6, 64]	; tmp123, tmp123,
; GuessSketchFlow/eval/problem112/code.c:10:     while (*ptr) {
	ldrsb	w4, [x0]	; _4, *test_28(D)
	cbz	w4, L2	; _4,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem112/code.c:11:         if (*ptr != ' ') {
	cmp	w4, 32	; _4,
	beq	L3		;,
; GuessSketchFlow/eval/problem112/code.c:12:             int letter_index = *ptr - 'a';
	sub	w4, w4, #97	; letter_index, _4,
; GuessSketchFlow/eval/problem112/code.c:13:             local_freq[letter_index]++;
	sbfiz	x4, x4, 2, 32	; tmp126, letter_index,,
; GuessSketchFlow/eval/problem112/code.c:13:             local_freq[letter_index]++;
	ldr	w7, [x6, x4]	;, local_freq[letter_index_39]
	add	w7, w7, 1	; _3, local_freq[letter_index_39],
; GuessSketchFlow/eval/problem112/code.c:14:             if (local_freq[letter_index] > local_max) {
	cmp	w5, w7	; local_max, _3
	csel	w5, w5, w7, ge	; local_max, local_max, _3,
; GuessSketchFlow/eval/problem112/code.c:13:             local_freq[letter_index]++;
	str	w7, [x6, x4]	; _3, local_freq[letter_index_39]
L3:
; GuessSketchFlow/eval/problem112/code.c:10:     while (*ptr) {
	ldrsb	w4, [x0, 1]!	; _4, MEM[(const char *)ptr_42]
	cbnz	w4, L4	; _4,
L2:
; GuessSketchFlow/eval/problem112/code.c:6:     int local_max = 0;
	mov	x0, 1	; ivtmp.11,
; GuessSketchFlow/eval/problem112/code.c:8:     int idx = 0;
	mov	w7, 0	; idx,
	sub	x1, x1, #4	; _47, freq,
	.p2align 5,,15
L6:
; GuessSketchFlow/eval/problem112/code.c:22:         freq[i] = local_freq[i];
	add	x4, x6, x0, lsl 2	; tmp139, tmp147, ivtmp.11,
	ldr	w4, [x4, -4]	;, MEM[(int *)&local_freq + -4B + ivtmp.11_61 * 4]
; GuessSketchFlow/eval/problem112/code.c:22:         freq[i] = local_freq[i];
	str	w4, [x1, x0, lsl 2]	; _8, MEM[(int *)_47 + ivtmp.11_61 * 4]
; GuessSketchFlow/eval/problem112/code.c:23:         if (local_freq[i] == local_max) {
	cmp	w4, w5	; _8, local_max
	bne	L5		;,
; GuessSketchFlow/eval/problem112/code.c:24:             letters[idx++] = 'a' + i;
	sxtw	x4, w7	; _48, idx
; GuessSketchFlow/eval/problem112/code.c:24:             letters[idx++] = 'a' + i;
	add	w8, w0, 96	; tmp144, ivtmp.11,
; GuessSketchFlow/eval/problem112/code.c:24:             letters[idx++] = 'a' + i;
	add	w7, w7, 1	; idx, idx,
	strb	w8, [x3, x4]	; tmp144, *_46
L5:
; GuessSketchFlow/eval/problem112/code.c:21:     for (int i = 0; i < 26; i++) {
	add	x0, x0, 1	; ivtmp.11, ivtmp.11,
	cmp	x0, 27	; ivtmp.11,
	bne	L6		;,
; GuessSketchFlow/eval/problem112/code.c:28:     *max_count = local_max;
	str	w5, [x2]	; local_max, *max_count_29(D)
; GuessSketchFlow/eval/problem112/code.c:29:     letters[idx] = '\0';
	strb	wzr, [x3, w7, sxtw]	;, *_15
; GuessSketchFlow/eval/problem112/code.c:30: }
	add	sp, sp, 112	;,,
LCFI1:
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
	.uleb128 0x70
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
