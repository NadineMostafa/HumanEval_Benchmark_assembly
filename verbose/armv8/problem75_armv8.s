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
	stp	x21, x22, [sp, 32]	;,,
LCFI2:
	mov	x22, x2	; arr2, arr2
	stp	x23, x24, [sp, 48]	;,,
LCFI3:
; GuessSketchFlow/eval/problem75/code.c:5: char** func0(char** arr1, int n1, char** arr2, int n2){
	mov	x24, x0	; arr1, arr1
	mov	w23, w3	; n2, n2
; GuessSketchFlow/eval/problem75/code.c:9:   for(i=0; i<n1; i++){
	cmp	w1, 0	; n1,
	ble	L2		;,
	mov	x19, x0	; ivtmp.16, arr1
; GuessSketchFlow/eval/problem75/code.c:7:   int i, sum1 = 0, sum2 = 0;
	mov	w20, 0	; sum1,
	add	x21, x0, w1, uxtw 3	; _43, arr1, n1,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem75/code.c:10:     sum1 += strlen(arr1[i]);
	ldr	x0, [x19], 8	;, MEM[(char * *)_47]
	bl	_strlen		;
; GuessSketchFlow/eval/problem75/code.c:10:     sum1 += strlen(arr1[i]);
	add	w20, w20, w0	; sum1, sum1, tmp139
; GuessSketchFlow/eval/problem75/code.c:9:   for(i=0; i<n1; i++){
	cmp	x21, x19	; _43, ivtmp.16
	bne	L3		;,
; GuessSketchFlow/eval/problem75/code.c:13:   for(i=0; i<n2; i++){
	cmp	w23, 0	; n2,
	ble	L10		;,
L5:
; GuessSketchFlow/eval/problem75/code.c:7:   int i, sum1 = 0, sum2 = 0;
	mov	x19, 0	; ivtmp.8,
; GuessSketchFlow/eval/problem75/code.c:7:   int i, sum1 = 0, sum2 = 0;
	mov	w21, 0	; sum2,
	.p2align 5,,15
L8:
; GuessSketchFlow/eval/problem75/code.c:14:     sum2 += strlen(arr2[i]); 
	ldr	x0, [x22, x19, lsl 3]	;, MEM[(char * *)arr2_25(D) + ivtmp.8_48 * 8]
; GuessSketchFlow/eval/problem75/code.c:13:   for(i=0; i<n2; i++){
	add	x19, x19, 1	; ivtmp.8, ivtmp.8,
; GuessSketchFlow/eval/problem75/code.c:14:     sum2 += strlen(arr2[i]); 
	bl	_strlen		;
; GuessSketchFlow/eval/problem75/code.c:14:     sum2 += strlen(arr2[i]); 
	add	w21, w21, w0	; sum2, sum2, tmp140
; GuessSketchFlow/eval/problem75/code.c:13:   for(i=0; i<n2; i++){
	cmp	w23, w19	; n2, ivtmp.8
	bgt	L8		;,
L7:
; GuessSketchFlow/eval/problem75/code.c:18:     return arr1;
	cmp	w20, w21	; sum1, sum2
	csel	x22, x22, x24, gt	; arr2, arr2, arr1,
L6:
; GuessSketchFlow/eval/problem75/code.c:27: }
	mov	x0, x22	;, arr2
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	x29, x30, [sp], 64	;,,,
LCFI4:
	ret	
	.p2align 2,,3
L2:
LCFI5:
; GuessSketchFlow/eval/problem75/code.c:7:   int i, sum1 = 0, sum2 = 0;
	mov	w20, 0	; sum1,
; GuessSketchFlow/eval/problem75/code.c:13:   for(i=0; i<n2; i++){
	cmp	w3, 0	; n2,
	bgt	L5		;,
; GuessSketchFlow/eval/problem75/code.c:18:     return arr1;
	mov	x22, x0	; arr2, arr1
	b	L6		;
	.p2align 2,,3
L10:
; GuessSketchFlow/eval/problem75/code.c:7:   int i, sum1 = 0, sum2 = 0;
	mov	w21, 0	; sum2,
	b	L7		;
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
	.byte	0x95
	.uleb128 0x4
	.byte	0x96
	.uleb128 0x3
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0x97
	.uleb128 0x2
	.byte	0x98
	.uleb128 0x1
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xa
	.byte	0xde
	.byte	0xdd
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
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xb
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
