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
	.ascii "YES\0"
	.align	3
lC1:
	.ascii "NO\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB1:
; GuessSketchFlow/eval/problem111/code.c:5:     for (int i = 0; i < size1; i++)
	cmp	w1, 0	; size1,
	ble	L2		;,
; GuessSketchFlow/eval/problem111/code.c:4:     int num = 0;
	mov	w4, 0	; num,
	add	x6, x0, w1, uxtw 2	; _44, ivtmp.16, size1,
	.p2align 5,,15
L4:
; GuessSketchFlow/eval/problem111/code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	ldr	w5, [x0], 4	;, MEM[(int *)_7]
; GuessSketchFlow/eval/problem111/code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	tst	x5, 1	; MEM[(int *)_7],
	cinc	w4, w4, eq	; num, num,
; GuessSketchFlow/eval/problem111/code.c:5:     for (int i = 0; i < size1; i++)
	cmp	x0, x6	; ivtmp.16, _44
	bne	L4		;,
; GuessSketchFlow/eval/problem111/code.c:7:     for (int i = 0; i < size2; i++)
	cmp	w3, 0	; size2,
	ble	L8		;,
L6:
; GuessSketchFlow/eval/problem111/code.c:4:     int num = 0;
	mov	x0, 0	; ivtmp.8,
	.p2align 5,,15
L10:
; GuessSketchFlow/eval/problem111/code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	ldr	w5, [x2, x0, lsl 2]	;, MEM[(int *)lst2_21(D) + ivtmp.8_29 * 4]
; GuessSketchFlow/eval/problem111/code.c:7:     for (int i = 0; i < size2; i++)
	add	x0, x0, 1	; ivtmp.8, ivtmp.8,
; GuessSketchFlow/eval/problem111/code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	tst	x5, 1	; MEM[(int *)lst2_21(D) + ivtmp.8_29 * 4],
	cinc	w4, w4, eq	; num, num,
; GuessSketchFlow/eval/problem111/code.c:7:     for (int i = 0; i < size2; i++)
	cmp	w3, w0	; size2, ivtmp.8
	bgt	L10		;,
L8:
; GuessSketchFlow/eval/problem111/code.c:10:     return "NO";
	adrp	x2, lC1@PAGE	; tmp120,
	adrp	x0, lC0@PAGE	; tmp119,
	cmp	w1, w4	; size1, num
	add	x2, x2, lC1@PAGEOFF;	; tmp133, tmp120,
	add	x0, x0, lC0@PAGEOFF;	; tmp134, tmp119,
	csel	x0, x0, x2, le	; <retval>, tmp134, tmp133,
; GuessSketchFlow/eval/problem111/code.c:11: }
	ret	
	.p2align 2,,3
L2:
; GuessSketchFlow/eval/problem111/code.c:9:     if (num >= size1) return "YES";
	adrp	x0, lC0@PAGE	; tmp121,
; GuessSketchFlow/eval/problem111/code.c:4:     int num = 0;
	mov	w4, 0	; num,
; GuessSketchFlow/eval/problem111/code.c:9:     if (num >= size1) return "YES";
	add	x0, x0, lC0@PAGEOFF;	; <retval>, tmp121,
; GuessSketchFlow/eval/problem111/code.c:7:     for (int i = 0; i < size2; i++)
	cmp	w3, 0	; size2,
	bgt	L6		;,
; GuessSketchFlow/eval/problem111/code.c:11: }
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
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
