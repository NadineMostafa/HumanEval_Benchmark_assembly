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
LFB23:
	stp	x29, x30, [sp, -80]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
	sxtw	x20, w3	;, operand_size
	stp	x21, x22, [sp, 32]	;,,
LCFI3:
	mov	x21, x0	; operato, operato
; GuessSketchFlow/eval/problem161/code.c:7:     int *num = (int*)malloc(operand_size * sizeof(int));
	sbfiz	x0, x20, 2, 32	;, operand_size,,
; GuessSketchFlow/eval/problem161/code.c:6: int func0(const char **operato, const int *operand, int operato_size, int operand_size) {
	stp	x23, x24, [sp, 48]	;,,
LCFI4:
	mov	x24, x1	; operand, operand
	stp	x25, x26, [sp, 64]	;,,
LCFI5:
; GuessSketchFlow/eval/problem161/code.c:6: int func0(const char **operato, const int *operand, int operato_size, int operand_size) {
	mov	w25, w2	; operato_size, operato_size
; GuessSketchFlow/eval/problem161/code.c:7:     int *num = (int*)malloc(operand_size * sizeof(int));
	bl	_malloc		;
	mov	x22, x0	; num, num
; GuessSketchFlow/eval/problem161/code.c:8:     int *posto = (int*)malloc(operand_size * sizeof(int));
	sbfiz	x0, x20, 2, 32	;, operand_size,,
	bl	_malloc		;
	mov	x19, x0	; posto, posto
; GuessSketchFlow/eval/problem161/code.c:9:     for (int i = 0; i < operand_size; i++) {
	cmp	w20, 0	; operand_size,
	ble	L6		;,
; GuessSketchFlow/eval/problem161/code.c:10:         num[i] = operand[i];
	mov	x1, x24	;, operand
	ubfiz	x2, x20, 2, 32	;, operand_size,,
	mov	x0, x22	;, num
	bl	_memcpy		;
	mov	x1, 0	; ivtmp.40,
	.p2align 5,,15
L5:
; GuessSketchFlow/eval/problem161/code.c:11:         posto[i] = i;
	str	w1, [x19, x1, lsl 2]	; ivtmp.40, MEM[(int *)posto_144 + ivtmp.40_238 * 4]
; GuessSketchFlow/eval/problem161/code.c:9:     for (int i = 0; i < operand_size; i++) {
	add	x1, x1, 1	; ivtmp.40, ivtmp.40,
	cmp	x20, x1	; _1, ivtmp.40
	bne	L5		;,
L6:
	sxtw	x23, w25	; _231, operato_size
; GuessSketchFlow/eval/problem161/code.c:13:     for (int i = 0; i < operato_size; i++) {
	mov	x20, 0	; ivtmp.32,
	add	x24, x19, 4	; _235, posto,
	cmp	w25, 0	; operato_size,
	ble	L4		;,
	.p2align 5,,15
L13:
; GuessSketchFlow/eval/problem161/code.c:14:         if (strcmp(operato[i], "**") == 0) {
	ldr	x0, [x21, x20, lsl 3]	; MEM[(const char * *)operato_149(D) + ivtmp.32_229 * 8], MEM[(const char * *)operato_149(D) + ivtmp.32_229 * 8]
	ldrb	w1, [x0]	; MEM <char[1:3]> [(void *)_13], MEM <char[1:3]> [(void *)_13]
	cmp	w1, 42	; MEM <char[1:3]> [(void *)_13],
	bne	L8		;,
	ldrb	w1, [x0, 1]	; MEM <char[1:3]> [(void *)_13], MEM <char[1:3]> [(void *)_13]
	cmp	w1, 42	; MEM <char[1:3]> [(void *)_13],
	bne	L8		;,
	ldrb	w0, [x0, 2]	; MEM <char[1:3]> [(void *)_13], MEM <char[1:3]> [(void *)_13]
; GuessSketchFlow/eval/problem161/code.c:14:         if (strcmp(operato[i], "**") == 0) {
	cbnz	w0, L8	; MEM <char[1:3]> [(void *)_13],
; GuessSketchFlow/eval/problem161/code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldr	w0, [x19, x20, lsl 2]	;, MEM[(int *)posto_144 + ivtmp.32_229 * 4]
; GuessSketchFlow/eval/problem161/code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldr	w1, [x19, w0, sxtw 2]	;, *_227
; GuessSketchFlow/eval/problem161/code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmp	w0, w1	; _224, _21
	beq	L12		;,
	.p2align 5,,15
L9:
	mov	w0, w1	; _225, _21
; GuessSketchFlow/eval/problem161/code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	str	w1, [x19, x20, lsl 2]	; _21, MEM[(int *)posto_144 + ivtmp.32_229 * 4]
; GuessSketchFlow/eval/problem161/code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldr	w1, [x19, w1, sxtw 2]	;, *_20
; GuessSketchFlow/eval/problem161/code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmp	w1, w0	; _21, _225
	bne	L9		;,
L12:
; GuessSketchFlow/eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldr	w0, [x24, x20, lsl 2]	;, MEM[(int *)_235 + ivtmp.32_229 * 4]
; GuessSketchFlow/eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	sbfiz	x2, x0, 2, 32	; _27, _216,,
	ldr	w1, [x19, x2]	;, *_219
; GuessSketchFlow/eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmp	w0, w1	; _216, _29
	beq	L11		;,
	.p2align 5,,15
L10:
; GuessSketchFlow/eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	sbfiz	x2, x1, 2, 32	; _27, _29,,
	mov	w3, w1	; _217, _29
; GuessSketchFlow/eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	str	w1, [x24, x20, lsl 2]	; _29, MEM[(int *)_235 + ivtmp.32_229 * 4]
; GuessSketchFlow/eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldr	w1, [x19, x2]	;, *_28
; GuessSketchFlow/eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmp	w1, w3	; _29, _217
	bne	L10		;,
L11:
; GuessSketchFlow/eval/problem161/code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	ldr	w25, [x19, x20, lsl 2]	;, MEM[(int *)posto_144 + ivtmp.32_229 * 4]
; GuessSketchFlow/eval/problem161/code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	ldr	w1, [x22, x2]	;, *_36
; GuessSketchFlow/eval/problem161/code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	sbfiz	x26, x25, 2, 32	; _32, _30,,
; GuessSketchFlow/eval/problem161/code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	ldr	w0, [x22, x26]	;, *_33
	scvtf	d1, w1	;, *_36
	scvtf	d0, w0	;, *_33
	bl	_pow		;
; GuessSketchFlow/eval/problem161/code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	fcvtzs	w0, d0	; tmp224, _39
; GuessSketchFlow/eval/problem161/code.c:18:             posto[i + 1] = posto[i];
	str	w25, [x24, x20, lsl 2]	; _30, MEM[(int *)_235 + ivtmp.32_229 * 4]
; GuessSketchFlow/eval/problem161/code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	str	w0, [x22, x26]	; tmp224, *_33
L8:
; GuessSketchFlow/eval/problem161/code.c:13:     for (int i = 0; i < operato_size; i++) {
	add	x20, x20, 1	; ivtmp.32, ivtmp.32,
	cmp	x20, x23	; ivtmp.32, _231
	bne	L13		;,
	mov	x2, 0	; ivtmp.24,
	add	x5, x19, 4	; _221, posto,
	.p2align 5,,15
L26:
; GuessSketchFlow/eval/problem161/code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	ldr	x6, [x21, x2, lsl 3]	; _44, MEM[(const char * *)operato_149(D) + ivtmp.24_193 * 8]
	ldrb	w0, [x6]	; MEM <char[1:2]> [(void *)_44], MEM <char[1:2]> [(void *)_44]
	cmp	w0, 42	; MEM <char[1:2]> [(void *)_44],
	bne	L15		;,
	ldrb	w1, [x6, 1]	; MEM <char[1:2]> [(void *)_44], MEM <char[1:2]> [(void *)_44]
; GuessSketchFlow/eval/problem161/code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	cbnz	w1, L15	; MEM <char[1:2]> [(void *)_44],
L20:
; GuessSketchFlow/eval/problem161/code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldr	w3, [x19, x2, lsl 2]	;, MEM[(int *)posto_144 + ivtmp.24_193 * 4]
; GuessSketchFlow/eval/problem161/code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldr	w1, [x19, w3, sxtw 2]	;, *_208
; GuessSketchFlow/eval/problem161/code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmp	w3, w1	; _205, _53
	beq	L22		;,
	.p2align 5,,15
L16:
	mov	w3, w1	; _18, _53
; GuessSketchFlow/eval/problem161/code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	str	w1, [x19, x2, lsl 2]	; _53, MEM[(int *)posto_144 + ivtmp.24_193 * 4]
; GuessSketchFlow/eval/problem161/code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldr	w1, [x19, w1, sxtw 2]	;, *_52
; GuessSketchFlow/eval/problem161/code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmp	w1, w3	; _53, _18
	bne	L16		;,
L22:
; GuessSketchFlow/eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldr	w4, [x5, x2, lsl 2]	;, MEM[(int *)_221 + ivtmp.24_193 * 4]
; GuessSketchFlow/eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	sbfiz	x3, x4, 2, 32	; _59, _197,,
	ldr	w1, [x19, x3]	;, *_200
; GuessSketchFlow/eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmp	w4, w1	; _197, _61
	beq	L18		;,
	.p2align 5,,15
L17:
; GuessSketchFlow/eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	sbfiz	x3, x1, 2, 32	; _59, _61,,
	mov	w4, w1	; _31, _61
; GuessSketchFlow/eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	str	w1, [x5, x2, lsl 2]	; _61, MEM[(int *)_221 + ivtmp.24_193 * 4]
; GuessSketchFlow/eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldr	w1, [x19, x3]	;, *_60
; GuessSketchFlow/eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmp	w1, w4	; _61, _31
	bne	L17		;,
L18:
; GuessSketchFlow/eval/problem161/code.c:25:             if (strcmp(operato[i], "*") == 0)
	subs	w0, w0, #42	; _62, MEM <char[1:2]> [(void *)_44],
	bne	L23		;,
	ldrb	w0, [x6, 1]	; _62, MEM <char[1:2]> [(void *)_44]
L23:
; GuessSketchFlow/eval/problem161/code.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	ldr	w4, [x19, x2, lsl 2]	;, MEM[(int *)posto_144 + ivtmp.24_193 * 4]
; GuessSketchFlow/eval/problem161/code.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	ldr	w3, [x22, x3]	;, *_345
; GuessSketchFlow/eval/problem161/code.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	sbfiz	x6, x4, 2, 32	; _342, pretmp_340,,
	ldr	w1, [x22, x6]	;, *_343
; GuessSketchFlow/eval/problem161/code.c:25:             if (strcmp(operato[i], "*") == 0)
	cbnz	w0, L24	; _62,
; GuessSketchFlow/eval/problem161/code.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	mul	w0, w1, w3	; _70, pretmp_344, pretmp_346
L25:
	str	w0, [x22, x6]	; _70, *_343
; GuessSketchFlow/eval/problem161/code.c:29:             posto[i + 1] = posto[i];
	str	w4, [x5, x2, lsl 2]	; pretmp_340, MEM[(int *)_221 + ivtmp.24_193 * 4]
L21:
; GuessSketchFlow/eval/problem161/code.c:21:     for (int i = 0; i < operato_size; i++) {
	add	x2, x2, 1	; ivtmp.24, ivtmp.24,
	cmp	x2, x23	; ivtmp.24, _231
	bne	L26		;,
	mov	x2, 0	; ivtmp.15,
	add	x5, x19, 4	; _192, posto,
	.p2align 5,,15
L39:
; GuessSketchFlow/eval/problem161/code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	ldr	x0, [x21, x2, lsl 3]	; _83, MEM[(const char * *)operato_149(D) + ivtmp.15_173 * 8]
	ldrb	w6, [x0]	; MEM <char[1:2]> [(void *)_83], MEM <char[1:2]> [(void *)_83]
	cmp	w6, 43	; MEM <char[1:2]> [(void *)_83],
	bne	L28		;,
	ldrb	w1, [x0, 1]	; _102, MEM <char[1:2]> [(void *)_83]
; GuessSketchFlow/eval/problem161/code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	cbnz	w1, L28	; _102,
L33:
; GuessSketchFlow/eval/problem161/code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldr	w0, [x19, x2, lsl 2]	;, MEM[(int *)posto_144 + ivtmp.15_173 * 4]
; GuessSketchFlow/eval/problem161/code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldr	w1, [x19, w0, sxtw 2]	;, *_185
; GuessSketchFlow/eval/problem161/code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmp	w0, w1	; _101, _92
	beq	L35		;,
	.p2align 5,,15
L29:
	mov	w3, w1	; _206, _92
; GuessSketchFlow/eval/problem161/code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	str	w1, [x19, x2, lsl 2]	; _92, MEM[(int *)posto_144 + ivtmp.15_173 * 4]
; GuessSketchFlow/eval/problem161/code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	ldr	w1, [x19, w1, sxtw 2]	;, *_91
; GuessSketchFlow/eval/problem161/code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmp	w1, w3	; _92, _206
	bne	L29		;,
L35:
; GuessSketchFlow/eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldr	w0, [x5, x2, lsl 2]	;, MEM[(int *)_192 + ivtmp.15_173 * 4]
; GuessSketchFlow/eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	sbfiz	x3, x0, 2, 32	; _98, _179,,
	ldr	w1, [x19, x3]	;, *_174
; GuessSketchFlow/eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmp	w0, w1	; _179, _100
	beq	L31		;,
	.p2align 5,,15
L30:
; GuessSketchFlow/eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	sbfiz	x3, x1, 2, 32	; _98, _100,,
	mov	w4, w1	; _26, _100
; GuessSketchFlow/eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	str	w1, [x5, x2, lsl 2]	; _100, MEM[(int *)_192 + ivtmp.15_173 * 4]
; GuessSketchFlow/eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	ldr	w1, [x19, x3]	;, *_99
; GuessSketchFlow/eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmp	w1, w4	; _100, _26
	bne	L30		;,
L31:
; GuessSketchFlow/eval/problem161/code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	ldr	w1, [x19, x2, lsl 2]	;, MEM[(int *)posto_144 + ivtmp.15_173 * 4]
; GuessSketchFlow/eval/problem161/code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	cmp	w6, 43	; MEM <char[1:2]> [(void *)_83],
; GuessSketchFlow/eval/problem161/code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	ldr	w3, [x22, x3]	;, *_338
; GuessSketchFlow/eval/problem161/code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	sbfiz	x4, x1, 2, 32	; _335, pretmp_333,,
	ldr	w0, [x22, x4]	;, *_336
; GuessSketchFlow/eval/problem161/code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	add	w7, w0, w3	; tmp258, pretmp_337, pretmp_339
	sub	w0, w0, w3	; tmp257, pretmp_337, pretmp_339
	csel	w0, w0, w7, ne	; _110, tmp257, tmp258,
	str	w0, [x22, x4]	; _110, *_336
; GuessSketchFlow/eval/problem161/code.c:40:             posto[i + 1] = posto[i];
	str	w1, [x5, x2, lsl 2]	; pretmp_333, MEM[(int *)_192 + ivtmp.15_173 * 4]
L34:
; GuessSketchFlow/eval/problem161/code.c:32:     for (int i = 0; i < operato_size; i++) {
	add	x2, x2, 1	; ivtmp.15, ivtmp.15,
	cmp	x2, x23	; ivtmp.15, _231
	bne	L39		;,
L4:
; GuessSketchFlow/eval/problem161/code.c:43:     int result = num[0];
	ldr	w20, [x22]	;, *num_142
; GuessSketchFlow/eval/problem161/code.c:44:     free(num);
	mov	x0, x22	;, num
	bl	_free		;
; GuessSketchFlow/eval/problem161/code.c:45:     free(posto);
	mov	x0, x19	;, posto
	bl	_free		;
; GuessSketchFlow/eval/problem161/code.c:47: }
	ldp	x21, x22, [sp, 32]	;,,
	mov	w0, w20	;, <retval>
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x25, x26, [sp, 64]	;,,
	ldp	x29, x30, [sp], 80	;,,,
LCFI6:
	ret	
	.p2align 2,,3
L28:
LCFI7:
; GuessSketchFlow/eval/problem161/code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	cmp	w6, 45	; MEM <char[1:2]> [(void *)_83],
	bne	L34		;,
	ldrb	w1, [x0, 1]	; _102, MEM <char[1:2]> [(void *)_83]
; GuessSketchFlow/eval/problem161/code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	cbz	w1, L33	; _102,
	b	L34		;
	.p2align 2,,3
L15:
; GuessSketchFlow/eval/problem161/code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	ldrb	w1, [x6]	; MEM <char[1:3]> [(void *)_44], MEM <char[1:3]> [(void *)_44]
	cmp	w1, 47	; MEM <char[1:3]> [(void *)_44],
	bne	L21		;,
	ldrb	w1, [x6, 1]	; MEM <char[1:3]> [(void *)_44], MEM <char[1:3]> [(void *)_44]
	cmp	w1, 47	; MEM <char[1:3]> [(void *)_44],
	bne	L21		;,
	ldrb	w1, [x6, 2]	; MEM <char[1:3]> [(void *)_44], MEM <char[1:3]> [(void *)_44]
; GuessSketchFlow/eval/problem161/code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	cbz	w1, L20	; MEM <char[1:3]> [(void *)_44],
	b	L21		;
	.p2align 2,,3
L24:
; GuessSketchFlow/eval/problem161/code.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	sdiv	w0, w1, w3	; _70, pretmp_344, pretmp_346
	b	L25		;
LFE23:
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
	.quad	LFB23-.
	.set L$set$2,LFE23-LFB23
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB23
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
	.byte	0x9a
	.uleb128 0x1
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd9
	.byte	0xda
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
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
