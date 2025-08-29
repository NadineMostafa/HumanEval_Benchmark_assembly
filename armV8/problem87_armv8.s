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
	stp	x29, x30, [sp, -144]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x21, x22, [sp, 32]	;,,
LCFI2:
	mov	x21, x0	; s, s
	stp	x23, x24, [sp, 48]	;,,
	stp	x25, x26, [sp, 64]	;,,
LCFI3:
; GuessSketchFlow/eval/problem87/code.c:6:     int len = strlen(s);
	bl	_strlen		;
	mov	x24, x0	; tmp198,
; GuessSketchFlow/eval/problem87/code.c:7:     char* out = malloc(len + 2); 
	add	w0, w0, 2	; _2, tmp198,
; GuessSketchFlow/eval/problem87/code.c:7:     char* out = malloc(len + 2); 
	sxtw	x0, w0	;, _2
	bl	_malloc		;
	mov	x26, x0	; <retval>, <retval>
; GuessSketchFlow/eval/problem87/code.c:11:     for (int i = 0; i <= len; i++) {
	tbnz	w24, #31, L19	; tmp198,
	add	x0, x21, 1	; _36, ivtmp.29,
; GuessSketchFlow/eval/problem87/code.c:9:     int out_index = 0, current_index = 0;
	mov	w22, 0	; out_index,
	add	x24, x0, w24, uxtw	; _108, _36, tmp198
	stp	x19, x20, [x29, 16]	;,,
LCFI4:
; GuessSketchFlow/eval/problem87/code.c:9:     int out_index = 0, current_index = 0;
	mov	w19, 0	; current_index,
; GuessSketchFlow/eval/problem87/code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	mov	w20, 32	; tmp196,
	b	L18		;
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem87/code.c:11:     for (int i = 0; i <= len; i++) {
	add	x21, x21, 1	; ivtmp.29, ivtmp.29,
; GuessSketchFlow/eval/problem87/code.c:28:             current[current_index++] = s[i];
	strb	w2, [x23, w3, sxtw]	; _6, current[current_index_118]
; GuessSketchFlow/eval/problem87/code.c:28:             current[current_index++] = s[i];
	add	w19, w3, 1	; current_index, current_index,
; GuessSketchFlow/eval/problem87/code.c:11:     for (int i = 0; i <= len; i++) {
	cmp	x21, x24	; ivtmp.29, _108
	beq	L15		;,
L18:
; GuessSketchFlow/eval/problem87/code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	ldrsb	w2, [x21]	; _6, MEM[(const char *)_103]
	mov	w3, w19	; current_index, current_index
	add	x23, x29, 88	; tmp191,,
; GuessSketchFlow/eval/problem87/code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	tst	w2, -33	; _6,
	bne	L3		;,
; GuessSketchFlow/eval/problem87/code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	cmp	w19, 1	; current_index,
	ble	L17		;,
	add	x5, x29, 89	; ivtmp.22,,
	sub	w9, w19, #1	; _92, current_index,
; GuessSketchFlow/eval/problem87/code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	mov	w7, 0	; j,
	.p2align 5,,15
L8:
; GuessSketchFlow/eval/problem87/code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	add	w7, w7, 1	; j, j,
	add	x8, x5, 1	; ivtmp.22, ivtmp.22,
	sub	w6, w9, w7	; _84, _92, j
; GuessSketchFlow/eval/problem87/code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	mov	x2, x5	; ivtmp.14, ivtmp.22
	add	x6, x8, x6	; _86, ivtmp.22, _84
	cmp	w7, w19	; j, current_index
	bge	L13		;,
	.p2align 5,,15
L12:
; GuessSketchFlow/eval/problem87/code.c:15:                     if (current[j] > current[k]) {
	ldrsb	w3, [x5, -1]	; _10, MEM[(char *)_94 + -1B]
; GuessSketchFlow/eval/problem87/code.c:15:                     if (current[j] > current[k]) {
	ldrsb	w4, [x2]	; _11, MEM[(char *)_49]
; GuessSketchFlow/eval/problem87/code.c:15:                     if (current[j] > current[k]) {
	cmp	w3, w4	; _10, _11
	ble	L11		;,
; GuessSketchFlow/eval/problem87/code.c:17:                         current[j] = current[k];
	strb	w4, [x5, -1]	; _11, MEM[(char *)_94 + -1B]
; GuessSketchFlow/eval/problem87/code.c:18:                         current[k] = temp;
	strb	w3, [x2]	; _10, MEM[(char *)_49]
L11:
; GuessSketchFlow/eval/problem87/code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	add	x2, x2, 1	; ivtmp.14, ivtmp.14,
	cmp	x2, x6	; ivtmp.14, _86
	bne	L12		;,
L13:
; GuessSketchFlow/eval/problem87/code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	mov	x5, x8	; ivtmp.22, ivtmp.22
	cmp	w7, w9	; j, _92
	bne	L8		;,
; GuessSketchFlow/eval/problem87/code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	cmp	w22, 0	; out_index,
	ble	L10		;,
; GuessSketchFlow/eval/problem87/code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	sxtw	x1, w22	; _71, out_index
; GuessSketchFlow/eval/problem87/code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	add	w22, w22, 1	; out_index, out_index,
	strb	w20, [x26, x1]	; tmp196, *_48
L10:
; GuessSketchFlow/eval/problem87/code.c:24:                 out[out_index++] = current[j];
	uxtw	x2, w19	;, current_index
	add	x1, x29, 88	;,,
	add	x0, x26, w22, sxtw	;, <retval>, out_index
; GuessSketchFlow/eval/problem87/code.c:11:     for (int i = 0; i <= len; i++) {
	add	x21, x21, 1	; ivtmp.29, ivtmp.29,
; GuessSketchFlow/eval/problem87/code.c:24:                 out[out_index++] = current[j];
	add	x23, x29, 88	; tmp191,,
	bl	_memcpy		;
	add	w22, w22, w19	; out_index, out_index, current_index
; GuessSketchFlow/eval/problem87/code.c:11:     for (int i = 0; i <= len; i++) {
	cmp	x21, x24	; ivtmp.29, _108
	beq	L15		;,
; GuessSketchFlow/eval/problem87/code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	ldrsb	w2, [x21]	; _6, MEM[(const char *)_95]
; GuessSketchFlow/eval/problem87/code.c:26:             current_index = 0;
	mov	w3, 0	; current_index,
; GuessSketchFlow/eval/problem87/code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	tst	w2, -33	; _6,
	bne	L3		;,
L17:
; GuessSketchFlow/eval/problem87/code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	cmp	w22, 0	; out_index,
	ble	L6		;,
; GuessSketchFlow/eval/problem87/code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	sxtw	x0, w22	; _68, out_index
; GuessSketchFlow/eval/problem87/code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	mov	w1, 32	; tmp169,
	add	w22, w22, 1	; out_index, out_index,
	strb	w1, [x26, x0]	; tmp169, *_18
L6:
; GuessSketchFlow/eval/problem87/code.c:23:             for (int j = 0; j < current_index; j++) {
	cmp	w3, 1	; current_index,
	beq	L21		;,
L14:
; GuessSketchFlow/eval/problem87/code.c:11:     for (int i = 0; i <= len; i++) {
	add	x21, x21, 1	; ivtmp.29, ivtmp.29,
	cmp	x21, x24	; ivtmp.29, _108
	beq	L15		;,
; GuessSketchFlow/eval/problem87/code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	ldrsb	w2, [x21]	; _6, MEM[(const char *)_55]
; GuessSketchFlow/eval/problem87/code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	tst	w2, -33	; _6,
	beq	L27		;,
	add	x23, x29, 88	; tmp191,,
; GuessSketchFlow/eval/problem87/code.c:11:     for (int i = 0; i <= len; i++) {
	add	x21, x21, 1	; ivtmp.29, ivtmp.29,
; GuessSketchFlow/eval/problem87/code.c:28:             current[current_index++] = s[i];
	add	w19, w3, 1	; current_index, current_index,
; GuessSketchFlow/eval/problem87/code.c:28:             current[current_index++] = s[i];
	strb	w2, [x23, w3, sxtw]	; _6, current[current_index_118]
; GuessSketchFlow/eval/problem87/code.c:11:     for (int i = 0; i <= len; i++) {
	cmp	x21, x24	; ivtmp.29, _108
	bne	L18		;,
L15:
	ldp	x19, x20, [x29, 16]	;,,
LCFI5:
; GuessSketchFlow/eval/problem87/code.c:32:     out[out_index] = '\0';
	add	x22, x26, w22, sxtw	; prephitmp_29, <retval>, out_index
; GuessSketchFlow/eval/problem87/code.c:34: }
	mov	x0, x26	;, <retval>
; GuessSketchFlow/eval/problem87/code.c:32:     out[out_index] = '\0';
	strb	wzr, [x22]	;, *prephitmp_29
; GuessSketchFlow/eval/problem87/code.c:34: }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 144	;,,,
LCFI6:
	ret	
L19:
LCFI7:
; GuessSketchFlow/eval/problem87/code.c:11:     for (int i = 0; i <= len; i++) {
	mov	x22, x0	; prephitmp_29, <retval>
; GuessSketchFlow/eval/problem87/code.c:34: }
	mov	x0, x26	;, <retval>
; GuessSketchFlow/eval/problem87/code.c:32:     out[out_index] = '\0';
	strb	wzr, [x22]	;, *prephitmp_29
; GuessSketchFlow/eval/problem87/code.c:34: }
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 144	;,,,
LCFI8:
	ret	
L27:
LCFI9:
; GuessSketchFlow/eval/problem87/code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	cmp	w22, 0	; out_index,
	ble	L14		;,
; GuessSketchFlow/eval/problem87/code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	sxtw	x0, w22	; _99, out_index
; GuessSketchFlow/eval/problem87/code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	mov	w1, 32	; tmp174,
	add	w22, w22, 1	; out_index, out_index,
	strb	w1, [x26, x0]	; tmp174, *_23
	b	L14		;
L21:
; GuessSketchFlow/eval/problem87/code.c:23:             for (int j = 0; j < current_index; j++) {
	mov	w19, w3	; current_index, current_index
	b	L10		;
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
	.uleb128 0x90
	.byte	0x9d
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x11
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x95
	.uleb128 0xe
	.byte	0x96
	.uleb128 0xd
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x97
	.uleb128 0xc
	.byte	0x98
	.uleb128 0xb
	.byte	0x99
	.uleb128 0xa
	.byte	0x9a
	.uleb128 0x9
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x94
	.uleb128 0xf
	.byte	0x93
	.uleb128 0x10
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xd4
	.byte	0xd3
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x90
	.byte	0x95
	.uleb128 0xe
	.byte	0x96
	.uleb128 0xd
	.byte	0x97
	.uleb128 0xc
	.byte	0x98
	.uleb128 0xb
	.byte	0x99
	.uleb128 0xa
	.byte	0x9a
	.uleb128 0x9
	.byte	0x9d
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x11
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xda
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x90
	.byte	0x93
	.uleb128 0x10
	.byte	0x94
	.uleb128 0xf
	.byte	0x95
	.uleb128 0xe
	.byte	0x96
	.uleb128 0xd
	.byte	0x97
	.uleb128 0xc
	.byte	0x98
	.uleb128 0xb
	.byte	0x99
	.uleb128 0xa
	.byte	0x9a
	.uleb128 0x9
	.byte	0x9d
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x11
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
