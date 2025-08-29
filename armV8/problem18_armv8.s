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
	stp	x29, x30, [sp, -128]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	mov	x19, x0	; music_string, music_string
	stp	x21, x22, [sp, 32]	;,,
	stp	x25, x26, [sp, 64]	;,,
	str	x1, [x29, 104]	; count, %sfp
; GuessSketchFlow/eval/problem18/code.c:10:     char current[3] = "";
	strh	wzr, [x29, 120]	;, current
	strb	wzr, [x29, 122]	;, current
LCFI3:
; GuessSketchFlow/eval/problem18/code.c:11:     int music_string_length = strlen(music_string) + 1;
	bl	_strlen		;
	mov	x20, x0	; tmp144, tmp196
; GuessSketchFlow/eval/problem18/code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	add	w0, w0, 2	; _88, tmp144,
; GuessSketchFlow/eval/problem18/code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	sxtw	x0, w0	;, _88
	bl	_malloc		;
; GuessSketchFlow/eval/problem18/code.c:13:     strcpy(temp_music_string, music_string);
	mov	x2, x20	;, tmp144
	mov	x1, x19	;, music_string
; GuessSketchFlow/eval/problem18/code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	mov	x22, x0	; temp_music_string, temp_music_string
; GuessSketchFlow/eval/problem18/code.c:13:     strcpy(temp_music_string, music_string);
	bl	_memcpy		;
; GuessSketchFlow/eval/problem18/code.c:14:     strcat(temp_music_string, " ");
	mov	w0, 32	; tmp153,
	strh	w0, [x22, x20]	; tmp153, MEM <char[1:2]> [(void *)_97]
; GuessSketchFlow/eval/problem18/code.c:11:     int music_string_length = strlen(music_string) + 1;
	add	w0, w20, 1	; _3, tmp144,
; GuessSketchFlow/eval/problem18/code.c:16:     for (int i = 0; i < music_string_length; i++) {
	cmp	w0, 0	; _3,
	ble	L19		;,
	add	x0, x22, 1	; _99, temp_music_string,
	mov	x19, x22	; ivtmp.10, temp_music_string
	add	x20, x0, w20, uxtw	; _127, _99, tmp144
; GuessSketchFlow/eval/problem18/code.c:7:     int size = 0;
	mov	w25, 0	; size,
; GuessSketchFlow/eval/problem18/code.c:6:     int *out = NULL;
	mov	x21, 0	; <retval>,
	stp	x23, x24, [x29, 48]	;,,
LCFI4:
	add	x26, x29, 120	; tmp189,,
; GuessSketchFlow/eval/problem18/code.c:8:     int capacity = 0;
	mov	w23, 0	; capacity,
; GuessSketchFlow/eval/problem18/code.c:44:                 current[len + 1] = '\0';
	add	x24, x29, 121	; tmp190,,
	stp	x27, x28, [x29, 80]	;,,
LCFI5:
; GuessSketchFlow/eval/problem18/code.c:37:                 out[size++] = 1;
	mov	w28, 1	; tmp191,
	b	L18		;
	.p2align 2,,3
L3:
; GuessSketchFlow/eval/problem18/code.c:41:             size_t len = strlen(current);
	mov	x0, x26	;, tmp189
	bl	_strlen		;
; GuessSketchFlow/eval/problem18/code.c:42:             if (len < sizeof(current) - 1) {
	cmp	x0, 2	; tmp184,
	beq	L16		;,
; GuessSketchFlow/eval/problem18/code.c:43:                 current[len] = temp_music_string[i];
	strb	w27, [x26, x0]	; _9, current[len_75]
; GuessSketchFlow/eval/problem18/code.c:44:                 current[len + 1] = '\0';
	strb	wzr, [x24, x0]	;, current[_29]
L16:
; GuessSketchFlow/eval/problem18/code.c:16:     for (int i = 0; i < music_string_length; i++) {
	add	x19, x19, 1	; ivtmp.10, ivtmp.10,
	cmp	x20, x19	; _127, ivtmp.10
	beq	L29		;,
L18:
; GuessSketchFlow/eval/problem18/code.c:17:         if (temp_music_string[i] == ' ') {
	ldrsb	w27, [x19]	; _9, MEM[(char *)_132]
; GuessSketchFlow/eval/problem18/code.c:17:         if (temp_music_string[i] == ' ') {
	cmp	w27, 32	; _9,
	bne	L3		;,
; GuessSketchFlow/eval/problem18/code.c:18:             if (strcmp(current, "o") == 0) {
	ldrb	w0, [x26]	; MEM <char[1:2]> [(void *)&current], MEM <char[1:2]> [(void *)&current]
	cmp	w0, 111	; MEM <char[1:2]> [(void *)&current],
	bne	L5		;,
	ldrb	w0, [x26, 1]	; MEM <char[1:2]> [(void *)&current], MEM <char[1:2]> [(void *)&current]
; GuessSketchFlow/eval/problem18/code.c:18:             if (strcmp(current, "o") == 0) {
	cbnz	w0, L5	; MEM <char[1:2]> [(void *)&current],
; GuessSketchFlow/eval/problem18/code.c:19:                 if (size == capacity) {
	cmp	w25, w23	; size, capacity
	beq	L30		;,
L6:
; GuessSketchFlow/eval/problem18/code.c:23:                 out[size++] = 4;
	mov	w0, 4	; tmp203,
	str	w0, [x21, w25, sxtw 2]	; tmp203, *_15
; GuessSketchFlow/eval/problem18/code.c:23:                 out[size++] = 4;
	add	w25, w25, 1	; size, size,
L5:
; GuessSketchFlow/eval/problem18/code.c:25:             if (strcmp(current, "o|") == 0) {
	ldrb	w0, [x26]	; MEM <char[1:3]> [(void *)&current], MEM <char[1:3]> [(void *)&current]
	cmp	w0, 111	; MEM <char[1:3]> [(void *)&current],
	bne	L9		;,
	ldrb	w0, [x26, 1]	; MEM <char[1:3]> [(void *)&current], MEM <char[1:3]> [(void *)&current]
	cmp	w0, 124	; MEM <char[1:3]> [(void *)&current],
	bne	L9		;,
	ldrb	w0, [x26, 2]	; MEM <char[1:3]> [(void *)&current], MEM <char[1:3]> [(void *)&current]
; GuessSketchFlow/eval/problem18/code.c:25:             if (strcmp(current, "o|") == 0) {
	cbnz	w0, L9	; MEM <char[1:3]> [(void *)&current],
; GuessSketchFlow/eval/problem18/code.c:26:                 if (size == capacity) {
	cmp	w25, w23	; size, capacity
	beq	L31		;,
L10:
; GuessSketchFlow/eval/problem18/code.c:30:                 out[size++] = 2;
	mov	w0, 2	; tmp204,
	str	w0, [x21, w25, sxtw 2]	; tmp204, *_21
; GuessSketchFlow/eval/problem18/code.c:30:                 out[size++] = 2;
	add	w25, w25, 1	; size, size,
L9:
; GuessSketchFlow/eval/problem18/code.c:32:             if (strcmp(current, ".|") == 0) {
	ldrb	w0, [x26]	; MEM <char[1:3]> [(void *)&current], MEM <char[1:3]> [(void *)&current]
	cmp	w0, 46	; MEM <char[1:3]> [(void *)&current],
	bne	L13		;,
	ldrb	w0, [x26, 1]	; MEM <char[1:3]> [(void *)&current], MEM <char[1:3]> [(void *)&current]
	cmp	w0, 124	; MEM <char[1:3]> [(void *)&current],
	bne	L13		;,
	ldrb	w0, [x26, 2]	; MEM <char[1:3]> [(void *)&current], MEM <char[1:3]> [(void *)&current]
; GuessSketchFlow/eval/problem18/code.c:32:             if (strcmp(current, ".|") == 0) {
	cbnz	w0, L13	; MEM <char[1:3]> [(void *)&current],
; GuessSketchFlow/eval/problem18/code.c:33:                 if (size == capacity) {
	cmp	w25, w23	; size, capacity
	beq	L32		;,
L14:
; GuessSketchFlow/eval/problem18/code.c:37:                 out[size++] = 1;
	str	w28, [x21, w25, sxtw 2]	; tmp191, *_27
; GuessSketchFlow/eval/problem18/code.c:37:                 out[size++] = 1;
	add	w25, w25, 1	; size, size,
L13:
; GuessSketchFlow/eval/problem18/code.c:16:     for (int i = 0; i < music_string_length; i++) {
	add	x19, x19, 1	; ivtmp.10, ivtmp.10,
; GuessSketchFlow/eval/problem18/code.c:39:             strcpy(current, "");
	strb	wzr, [x29, 120]	;, MEM[(char * {ref-all})&current]
; GuessSketchFlow/eval/problem18/code.c:16:     for (int i = 0; i < music_string_length; i++) {
	cmp	x20, x19	; _127, ivtmp.10
	bne	L18		;,
L29:
	ldp	x23, x24, [x29, 48]	;,,
LCFI6:
	ldp	x27, x28, [x29, 80]	;,,
LCFI7:
L2:
; GuessSketchFlow/eval/problem18/code.c:48:     free(temp_music_string);
	mov	x0, x22	;, temp_music_string
	bl	_free		;
; GuessSketchFlow/eval/problem18/code.c:49:     *count = size;
	ldr	x0, [x29, 104]	; count, %sfp
	str	w25, [x0]	; size, *count_72(D)
; GuessSketchFlow/eval/problem18/code.c:51: }
	mov	x0, x21	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 128	;,,,
LCFI8:
	ret	
	.p2align 2,,3
L30:
LCFI9:
; GuessSketchFlow/eval/problem18/code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	cmp	w25, 0	; size,
	ble	L20		;,
; GuessSketchFlow/eval/problem18/code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lsl	w23, w25, 1	; capacity, size,
; GuessSketchFlow/eval/problem18/code.c:21:                     out = realloc(out, capacity * sizeof(int));
	ubfiz	x1, x25, 3, 31	; _112, size,,
L7:
; GuessSketchFlow/eval/problem18/code.c:21:                     out = realloc(out, capacity * sizeof(int));
	mov	x0, x21	;, <retval>
	bl	_realloc		;
	mov	x21, x0	; <retval>, <retval>
	b	L6		;
	.p2align 2,,3
L32:
; GuessSketchFlow/eval/problem18/code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	cmp	w25, 0	; size,
	ble	L22		;,
; GuessSketchFlow/eval/problem18/code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lsl	w23, w25, 1	; capacity, size,
; GuessSketchFlow/eval/problem18/code.c:35:                     out = realloc(out, capacity * sizeof(int));
	ubfiz	x1, x25, 3, 31	; _120, size,,
L15:
; GuessSketchFlow/eval/problem18/code.c:35:                     out = realloc(out, capacity * sizeof(int));
	mov	x0, x21	;, <retval>
	bl	_realloc		;
	mov	x21, x0	; <retval>, <retval>
	b	L14		;
	.p2align 2,,3
L31:
; GuessSketchFlow/eval/problem18/code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	cmp	w25, 0	; size,
	ble	L21		;,
; GuessSketchFlow/eval/problem18/code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lsl	w23, w25, 1	; capacity, size,
; GuessSketchFlow/eval/problem18/code.c:28:                     out = realloc(out, capacity * sizeof(int));
	ubfiz	x1, x25, 3, 31	; _116, size,,
L11:
; GuessSketchFlow/eval/problem18/code.c:28:                     out = realloc(out, capacity * sizeof(int));
	mov	x0, x21	;, <retval>
	bl	_realloc		;
	mov	x21, x0	; <retval>, <retval>
	b	L10		;
	.p2align 2,,3
L20:
	mov	x1, 16	; _112,
; GuessSketchFlow/eval/problem18/code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w23, 4	; capacity,
	b	L7		;
	.p2align 2,,3
L21:
	mov	x1, 16	; _116,
; GuessSketchFlow/eval/problem18/code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w23, 4	; capacity,
	b	L11		;
	.p2align 2,,3
L22:
	mov	x1, 16	; _120,
; GuessSketchFlow/eval/problem18/code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w23, 4	; capacity,
	b	L15		;
	.p2align 2,,3
L19:
LCFI10:
; GuessSketchFlow/eval/problem18/code.c:7:     int size = 0;
	mov	w25, 0	; size,
; GuessSketchFlow/eval/problem18/code.c:6:     int *out = NULL;
	mov	x21, 0	; <retval>,
	b	L2		;
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
	.uleb128 0x80
	.byte	0x9d
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xf
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x93
	.uleb128 0xe
	.byte	0x94
	.uleb128 0xd
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x95
	.uleb128 0xc
	.byte	0x96
	.uleb128 0xb
	.byte	0x99
	.uleb128 0x8
	.byte	0x9a
	.uleb128 0x7
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0x98
	.uleb128 0x9
	.byte	0x97
	.uleb128 0xa
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0x9c
	.uleb128 0x5
	.byte	0x9b
	.uleb128 0x6
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xd8
	.byte	0xd7
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xdc
	.byte	0xdb
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xda
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x80
	.byte	0x93
	.uleb128 0xe
	.byte	0x94
	.uleb128 0xd
	.byte	0x95
	.uleb128 0xc
	.byte	0x96
	.uleb128 0xb
	.byte	0x97
	.uleb128 0xa
	.byte	0x98
	.uleb128 0x9
	.byte	0x99
	.uleb128 0x8
	.byte	0x9a
	.uleb128 0x7
	.byte	0x9b
	.uleb128 0x6
	.byte	0x9c
	.uleb128 0x5
	.byte	0x9d
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xf
	.byte	0x4
	.set L$set$13,LCFI10-LCFI9
	.long L$set$13
	.byte	0xd7
	.byte	0xd8
	.byte	0xdb
	.byte	0xdc
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
