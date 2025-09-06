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
	.ascii "A+\0"
	.align	3
lC1:
	.ascii "A\0"
	.align	3
lC2:
	.ascii "A-\0"
	.align	3
lC3:
	.ascii "B+\0"
	.align	3
lC4:
	.ascii "B\0"
	.align	3
lC5:
	.ascii "B-\0"
	.align	3
lC6:
	.ascii "C+\0"
	.align	3
lC7:
	.ascii "C\0"
	.align	3
lC8:
	.ascii "C-\0"
	.align	3
lC9:
	.ascii "D+\0"
	.align	3
lC10:
	.ascii "D\0"
	.align	3
lC11:
	.ascii "D-\0"
	.align	3
lC12:
	.ascii "E\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB4:
	stp	x29, x30, [sp, -48]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	stp	x19, x20, [sp, 16]	;,,
LCFI2:
; GuessSketchFlow/eval/problem82/code.c:4: char** func0(float* grades, int size) {
	mov	x20, x0	; grades, grades
; GuessSketchFlow/eval/problem82/code.c:5:     char** out = malloc(size * sizeof(char*));
	sbfiz	x0, x1, 3, 32	;, size,,
	sxtw	x19, w1	; _1, size
	str	w1, [x29, 44]	; size, %sfp
	bl	_malloc		;
; GuessSketchFlow/eval/problem82/code.c:6:     for (int i = 0; i < size; ++i) {
	ldr	w1, [x29, 44]	;, %sfp
	cmp	w1, 0	; size,
	ble	L1		;,
; GuessSketchFlow/eval/problem82/code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	adrp	x1, lC13@PAGE	; tmp155,
	mov	x2, 0	; ivtmp.5,
	adrp	x3, lC0@PAGE	; tmp142,
	adrp	x4, lC1@PAGE	; tmp145,
	ldr	d31, [x1, #lC13@PAGEOFF]	;,
; GuessSketchFlow/eval/problem82/code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	adrp	x1, lC14@PAGE	; tmp156,
	adrp	x5, lC2@PAGE	; tmp148,
	ldr	d30, [x1, #lC14@PAGEOFF]	;,
; GuessSketchFlow/eval/problem82/code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	adrp	x1, lC15@PAGE	; tmp157,
	ldr	d29, [x1, #lC15@PAGEOFF]	;,
; GuessSketchFlow/eval/problem82/code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	adrp	x1, lC16@PAGE	; tmp158,
	ldr	d28, [x1, #lC16@PAGEOFF]	;,
	.p2align 5,,15
L2:
	add	x1, x3, lC0@PAGEOFF;	; _60, tmp142,
; GuessSketchFlow/eval/problem82/code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	ldr	s27, [x20, x2, lsl 2]	;, MEM[(float *)grades_41(D) + ivtmp.5_42 * 4]
	fcvt	d27, s27	;,
; GuessSketchFlow/eval/problem82/code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	fcmpe	d27, d31	;,
	bge	L3		;,
; GuessSketchFlow/eval/problem82/code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	fcmpe	d27, d30	;,
	add	x1, x4, lC1@PAGEOFF;	; _60, tmp145,
	bgt	L3		;,
; GuessSketchFlow/eval/problem82/code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	fcmpe	d27, d29	;,
	add	x1, x5, lC2@PAGEOFF;	; _60, tmp148,
	bgt	L3		;,
; GuessSketchFlow/eval/problem82/code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	fcmpe	d27, d28	;,
	bgt	L9		;,
; GuessSketchFlow/eval/problem82/code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	adrp	x1, lC17@PAGE	; tmp159,
	ldr	d6, [x1, #lC17@PAGEOFF]	;,
	fcmpe	d27, d6	;,
	bgt	L10		;,
; GuessSketchFlow/eval/problem82/code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	adrp	x1, lC18@PAGE	; tmp160,
	ldr	d5, [x1, #lC18@PAGEOFF]	;,
	fcmpe	d27, d5	;,
	bgt	L11		;,
; GuessSketchFlow/eval/problem82/code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	adrp	x1, lC19@PAGE	; tmp161,
	ldr	d4, [x1, #lC19@PAGEOFF]	;,
	fcmpe	d27, d4	;,
	bgt	L12		;,
; GuessSketchFlow/eval/problem82/code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	adrp	x1, lC20@PAGE	; tmp162,
	ldr	d3, [x1, #lC20@PAGEOFF]	;,
	fcmpe	d27, d3	;,
	bgt	L13		;,
; GuessSketchFlow/eval/problem82/code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	adrp	x1, lC21@PAGE	; tmp163,
	ldr	d2, [x1, #lC21@PAGEOFF]	;,
	fcmpe	d27, d2	;,
	bgt	L14		;,
; GuessSketchFlow/eval/problem82/code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	adrp	x1, lC22@PAGE	; tmp164,
	ldr	d1, [x1, #lC22@PAGEOFF]	;,
	fcmpe	d27, d1	;,
	bgt	L15		;,
; GuessSketchFlow/eval/problem82/code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	adrp	x1, lC23@PAGE	; tmp165,
	ldr	d0, [x1, #lC23@PAGEOFF]	;,
	fcmpe	d27, d0	;,
	bgt	L16		;,
; GuessSketchFlow/eval/problem82/code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	adrp	x1, lC24@PAGE	; tmp166,
	adrp	x6, lC12@PAGE	; tmp122,
	add	x6, x6, lC12@PAGEOFF;	; tmp140, tmp122,
	ldr	d26, [x1, #lC24@PAGEOFF]	;,
	adrp	x1, lC11@PAGE	; tmp121,
	add	x1, x1, lC11@PAGEOFF;	; tmp141, tmp121,
	fcmpe	d27, d26	;,
	csel	x1, x1, x6, gt	; _60, tmp141, tmp140,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem82/code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	str	x1, [x0, x2, lsl 3]	; _60, MEM[(char * *)out_40 + ivtmp.5_42 * 8]
; GuessSketchFlow/eval/problem82/code.c:6:     for (int i = 0; i < size; ++i) {
	add	x2, x2, 1	; ivtmp.5, ivtmp.5,
	cmp	x19, x2	; _1, ivtmp.5
	bne	L2		;,
L1:
; GuessSketchFlow/eval/problem82/code.c:22: }
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x29, x30, [sp], 48	;,,,
LCFI3:
	ret	
	.p2align 2,,3
L9:
LCFI4:
	adrp	x1, lC3@PAGE	; tmp113,
	add	x1, x1, lC3@PAGEOFF;	; _60, tmp113,
; GuessSketchFlow/eval/problem82/code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	str	x1, [x0, x2, lsl 3]	; _60, MEM[(char * *)out_40 + ivtmp.5_42 * 8]
; GuessSketchFlow/eval/problem82/code.c:6:     for (int i = 0; i < size; ++i) {
	add	x2, x2, 1	; ivtmp.5, ivtmp.5,
	cmp	x19, x2	; _1, ivtmp.5
	bne	L2		;,
	b	L1		;
	.p2align 2,,3
L10:
	adrp	x1, lC4@PAGE	; tmp114,
	add	x1, x1, lC4@PAGEOFF;	; _60, tmp114,
; GuessSketchFlow/eval/problem82/code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	str	x1, [x0, x2, lsl 3]	; _60, MEM[(char * *)out_40 + ivtmp.5_42 * 8]
; GuessSketchFlow/eval/problem82/code.c:6:     for (int i = 0; i < size; ++i) {
	add	x2, x2, 1	; ivtmp.5, ivtmp.5,
	cmp	x19, x2	; _1, ivtmp.5
	bne	L2		;,
	b	L1		;
	.p2align 2,,3
L11:
	adrp	x1, lC5@PAGE	; tmp115,
	add	x1, x1, lC5@PAGEOFF;	; _60, tmp115,
; GuessSketchFlow/eval/problem82/code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	str	x1, [x0, x2, lsl 3]	; _60, MEM[(char * *)out_40 + ivtmp.5_42 * 8]
; GuessSketchFlow/eval/problem82/code.c:6:     for (int i = 0; i < size; ++i) {
	add	x2, x2, 1	; ivtmp.5, ivtmp.5,
	cmp	x19, x2	; _1, ivtmp.5
	bne	L2		;,
	b	L1		;
L12:
	adrp	x1, lC6@PAGE	; tmp116,
	add	x1, x1, lC6@PAGEOFF;	; _60, tmp116,
	b	L3		;
L13:
	adrp	x1, lC7@PAGE	; tmp117,
	add	x1, x1, lC7@PAGEOFF;	; _60, tmp117,
	b	L3		;
L14:
	adrp	x1, lC8@PAGE	; tmp118,
	add	x1, x1, lC8@PAGEOFF;	; _60, tmp118,
	b	L3		;
L15:
	adrp	x1, lC9@PAGE	; tmp119,
	add	x1, x1, lC9@PAGEOFF;	; _60, tmp119,
	b	L3		;
L16:
	adrp	x1, lC10@PAGE	; tmp120,
	add	x1, x1, lC10@PAGEOFF;	; _60, tmp120,
	b	L3		;
LFE4:
	.literal8
	.align	3
lC13:
	.word	-1841681977
	.word	1074790347
	.align	3
lC14:
	.word	123695058
	.word	1074633166
	.align	3
lC15:
	.word	-735298401
	.word	1074423450
	.align	3
lC16:
	.word	1841681977
	.word	1074266164
	.align	3
lC17:
	.word	123695058
	.word	1074108878
	.align	3
lC18:
	.word	-735298401
	.word	1073899162
	.align	3
lC19:
	.word	1841681977
	.word	1073741876
	.align	3
lC20:
	.word	247390116
	.word	1073427356
	.align	3
lC21:
	.word	-1470596802
	.word	1073007925
	.align	3
lC22:
	.word	-611603343
	.word	1072693352
	.align	3
lC23:
	.word	494780232
	.word	1072064312
	.align	3
lC24:
	.word	-350469331
	.word	1058682594
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
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
