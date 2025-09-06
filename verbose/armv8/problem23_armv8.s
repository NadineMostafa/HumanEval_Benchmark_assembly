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
LFB30:
	stp	x29, x30, [sp, -80]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	adrp	x20, _out.0@PAGE	; tmp169,
	stp	x21, x22, [sp, 32]	;,,
LCFI3:
	mov	x21, x1	; size, size
	str	x23, [sp, 48]	;,
LCFI4:
; GuessSketchFlow/eval/problem23/code.c:8:     int count = 0;
	mov	w23, 0	; count,
; GuessSketchFlow/eval/problem23/code.c:11:     while (*start) {
	ldrsb	w2, [x0]	; prephitmp_37, *values_27(D)
	cbz	w2, L3	; prephitmp_37,
	mov	x19, x0	; values, values
; GuessSketchFlow/eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	sub	w0, w2, #48	; tmp165, prephitmp_37,
; GuessSketchFlow/eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	and	w0, w0, 255	; tmp166, tmp165
	mov	w23, 0	; count,
	adrp	x20, _out.0@PAGE	; tmp169,
	cmp	w0, 9	; tmp166,
	bhi	L14		;,
	b	L13		;
	.p2align 2,,3
L5:
; GuessSketchFlow/eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	ldrsb	w2, [x19, 1]!	; prephitmp_37, MEM[(const char *)start_29]
; GuessSketchFlow/eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	sub	w3, w2, #48	; tmp135, prephitmp_37,
	cmp	w2, 0	; prephitmp_37,
	and	w3, w3, 255	; tmp136, tmp135
; GuessSketchFlow/eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	ccmp	w3, 9, 0, ne	; tmp136,,,
	bls	L4		;,
L14:
; GuessSketchFlow/eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	cmp	w2, 45	; prephitmp_37,
	bne	L5		;,
L13:
; GuessSketchFlow/eval/problem23/code.c:18:         int val = (int) strtol(start, &end, 10);
	add	x1, x29, 72	;,,
	mov	w2, 10	;,
	mov	x0, x19	;, values
	bl	_strtol		;
; GuessSketchFlow/eval/problem23/code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ldr	x3, [x29, 72]	; end.0_10, end
; GuessSketchFlow/eval/problem23/code.c:22:             while (*end && *end != ',') {
	ldrsb	w1, [x3]	; pretmp_73, *end.0_10
; GuessSketchFlow/eval/problem23/code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	cmp	x3, x19	; end.0_10, values
	beq	L33		;,
L7:
; GuessSketchFlow/eval/problem23/code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	cmp	w1, 44	; pretmp_73,
; GuessSketchFlow/eval/problem23/code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ccmp	w1, 0, 4, ne	; pretmp_73,,,
	bne	L8		;,
; GuessSketchFlow/eval/problem23/code.c:20:             out[count++] = val;
	add	x1, x20, _out.0@PAGEOFF;	; tmp152, tmp169,
	mov	x19, x3	; values, end.0_10
; GuessSketchFlow/eval/problem23/code.c:18:         int val = (int) strtol(start, &end, 10);
	str	w0, [x1, w23, sxtw 2]	; _9, out[count_74]
; GuessSketchFlow/eval/problem23/code.c:20:             out[count++] = val;
	add	w23, w23, 1	; count, count,
; GuessSketchFlow/eval/problem23/code.c:11:     while (*start) {
	ldrsb	w2, [x3]	; prephitmp_37, MEM[(const char *)end.0_10]
	cbz	w2, L3	; prephitmp_37,
L35:
; GuessSketchFlow/eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	sub	w0, w2, #48	; tmp162, prephitmp_37,
; GuessSketchFlow/eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	and	w0, w0, 255	; tmp163, tmp162
	cmp	w0, 9	; tmp163,
	bhi	L14		;,
; GuessSketchFlow/eval/problem23/code.c:18:         int val = (int) strtol(start, &end, 10);
	add	x1, x29, 72	;,,
	mov	w2, 10	;,
	mov	x0, x19	;, values
	bl	_strtol		;
; GuessSketchFlow/eval/problem23/code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ldr	x3, [x29, 72]	; end.0_10, end
; GuessSketchFlow/eval/problem23/code.c:22:             while (*end && *end != ',') {
	ldrsb	w1, [x3]	; pretmp_73, *end.0_10
; GuessSketchFlow/eval/problem23/code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	cmp	x3, x19	; end.0_10, values
	bne	L7		;,
	.p2align 5,,15
L33:
; GuessSketchFlow/eval/problem23/code.c:22:             while (*end && *end != ',') {
	cmp	w1, 44	; pretmp_73,
	ccmp	w1, 0, 4, ne	; pretmp_73,,,
	beq	L34		;,
L8:
	add	x0, x3, 1	; ivtmp.14, end.0_10,
	.p2align 5,,15
L11:
; GuessSketchFlow/eval/problem23/code.c:23:                 end++;
	mov	x19, x0	; values, ivtmp.14
	str	x0, [x29, 72]	; ivtmp.14, end
; GuessSketchFlow/eval/problem23/code.c:22:             while (*end && *end != ',') {
	ldrsb	w2, [x0], 1	; prephitmp_37, MEM[(char *)_14]
; GuessSketchFlow/eval/problem23/code.c:22:             while (*end && *end != ',') {
	cmp	w2, 44	; prephitmp_37,
	ccmp	w2, 0, 4, ne	; prephitmp_37,,,
	bne	L11		;,
; GuessSketchFlow/eval/problem23/code.c:11:     while (*start) {
	cbnz	w2, L35	; prephitmp_37,
L3:
; GuessSketchFlow/eval/problem23/code.c:28:     *size = count;
	str	w23, [x21]	; count, *size_38(D)
; GuessSketchFlow/eval/problem23/code.c:29:     return out;
	add	x0, x20, _out.0@PAGEOFF;	; <retval>, tmp169,
; GuessSketchFlow/eval/problem23/code.c:30: }
	ldr	x23, [sp, 48]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI5:
	ret	
	.p2align 2,,3
L4:
LCFI6:
; GuessSketchFlow/eval/problem23/code.c:15:         if (!*start) {
	cbnz	w2, L13	; prephitmp_37,
; GuessSketchFlow/eval/problem23/code.c:28:     *size = count;
	str	w23, [x21]	; count, *size_38(D)
; GuessSketchFlow/eval/problem23/code.c:29:     return out;
	add	x0, x20, _out.0@PAGEOFF;	; <retval>, tmp169,
; GuessSketchFlow/eval/problem23/code.c:30: }
	ldr	x23, [sp, 48]	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI7:
	ret	
L34:
LCFI8:
; GuessSketchFlow/eval/problem23/code.c:11:     while (*start) {
	cbnz	w1, L5	; pretmp_73,
	b	L3		;
LFE30:
	.zerofill __DATA,__bss,_out.0,1024,2
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
	.quad	LFB30-.
	.set L$set$2,LFE30-LFB30
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB30
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
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
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
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xb
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
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
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
