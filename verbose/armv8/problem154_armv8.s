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
	.ascii "%s.%s\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB1:
	sub	sp, sp, #32	;,,
LCFI0:
	mov	x11, x0	; class_name, class_name
	mov	x0, x3	; output, output
	stp	x29, x30, [sp, 16]	;,,
LCFI1:
	add	x29, sp, 16	;,,
LCFI2:
; GuessSketchFlow/eval/problem154/code.c:7:     for (int i = 0; i < ext_count; i++) {
	cmp	w2, 0	; ext_count,
	ble	L9		;,
; GuessSketchFlow/eval/problem154/code.c:6:     const char* strongest = NULL;
	mov	x9, 0	; strongest,
; GuessSketchFlow/eval/problem154/code.c:5:     int max_strength = -1000;
	mov	w8, -1000	; max_strength,
	add	x10, x1, w2, uxtw 3	; _29, ivtmp.17, ext_count,
	.p2align 5,,15
L8:
; GuessSketchFlow/eval/problem154/code.c:8:         const char* extension = extensions[i];
	ldr	x7, [x1]	; extension, MEM[(const char * *)_28]
; GuessSketchFlow/eval/problem154/code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	ldrsb	w2, [x7]	; _10, *extension_26
; GuessSketchFlow/eval/problem154/code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	cbz	w2, L10	; _10,
	add	x6, x7, 1	; ivtmp.11, extension,
; GuessSketchFlow/eval/problem154/code.c:9:         int strength = 0;
	mov	w5, 0	; strength,
	b	L6		;
	.p2align 2,,3
L16:
; GuessSketchFlow/eval/problem154/code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	ldrsb	w2, [x6], 1	; _10, MEM[(const char *)_4 + -1B]
; GuessSketchFlow/eval/problem154/code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	add	w5, w5, 1	; strength, strength,
; GuessSketchFlow/eval/problem154/code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	cbz	w2, L3	; _10,
L6:
; GuessSketchFlow/eval/problem154/code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	sub	w4, w2, #65	; tmp124, _10,
; GuessSketchFlow/eval/problem154/code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	and	w4, w4, 255	; tmp125, tmp124
	cmp	w4, 25	; tmp125,
	bls	L16		;,
; GuessSketchFlow/eval/problem154/code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	sub	w2, w2, #97	; tmp126, _10,
; GuessSketchFlow/eval/problem154/code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	and	w2, w2, 255	; tmp127, tmp126
; GuessSketchFlow/eval/problem154/code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	cmp	w2, 26	; tmp127,
; GuessSketchFlow/eval/problem154/code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	ldrsb	w2, [x6], 1	; _10, MEM[(const char *)_4 + -1B]
; GuessSketchFlow/eval/problem154/code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	sbc	w5, w5, wzr	; strength, strength
; GuessSketchFlow/eval/problem154/code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	cbnz	w2, L6	; _10,
L3:
; GuessSketchFlow/eval/problem154/code.c:16:             max_strength = strength;
	cmp	w8, w5	; max_strength, strength
; GuessSketchFlow/eval/problem154/code.c:7:     for (int i = 0; i < ext_count; i++) {
	add	x1, x1, 8	; ivtmp.17, ivtmp.17,
; GuessSketchFlow/eval/problem154/code.c:16:             max_strength = strength;
	csel	x9, x7, x9, lt	; strongest, extension, strongest,
	csel	w8, w5, w8, lt	; max_strength, strength, max_strength,
; GuessSketchFlow/eval/problem154/code.c:7:     for (int i = 0; i < ext_count; i++) {
	cmp	x10, x1	; _29, ivtmp.17
	bne	L8		;,
L2:
; GuessSketchFlow/eval/problem154/code.c:20:     sprintf(output, "%s.%s", class_name, strongest);
	adrp	x1, lC0@PAGE	; tmp129,
	stp	x11, x9, [sp]	; class_name, strongest,
	add	x1, x1, lC0@PAGEOFF;	;, tmp129,
	bl	_sprintf		;
; GuessSketchFlow/eval/problem154/code.c:21: }
	ldp	x29, x30, [sp, 16]	;,,
	add	sp, sp, 32	;,,
LCFI3:
	ret	
	.p2align 2,,3
L10:
LCFI4:
; GuessSketchFlow/eval/problem154/code.c:9:         int strength = 0;
	mov	w5, 0	; strength,
; GuessSketchFlow/eval/problem154/code.c:7:     for (int i = 0; i < ext_count; i++) {
	add	x1, x1, 8	; ivtmp.17, ivtmp.17,
; GuessSketchFlow/eval/problem154/code.c:16:             max_strength = strength;
	cmp	w8, w5	; max_strength, strength
	csel	x9, x7, x9, lt	; strongest, extension, strongest,
	csel	w8, w5, w8, lt	; max_strength, strength, max_strength,
; GuessSketchFlow/eval/problem154/code.c:7:     for (int i = 0; i < ext_count; i++) {
	cmp	x10, x1	; _29, ivtmp.17
	bne	L8		;,
	b	L2		;
L9:
; GuessSketchFlow/eval/problem154/code.c:6:     const char* strongest = NULL;
	mov	x9, 0	; strongest,
; GuessSketchFlow/eval/problem154/code.c:20:     sprintf(output, "%s.%s", class_name, strongest);
	adrp	x1, lC0@PAGE	; tmp129,
	add	x1, x1, lC0@PAGEOFF;	;, tmp129,
	stp	x11, x9, [sp]	; class_name, strongest,
	bl	_sprintf		;
; GuessSketchFlow/eval/problem154/code.c:21: }
	ldp	x29, x30, [sp, 16]	;,,
	add	sp, sp, 32	;,,
LCFI5:
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
	.uleb128 0x20
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x10
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xa
	.byte	0xdd
	.byte	0xde
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
	.byte	0xdd
	.byte	0xde
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
