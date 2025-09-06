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
; GuessSketchFlow/eval/problem41/code.c:5:     for (int i = 0; i < size; i++)
	cmp	w1, 0	; size,
	ble	L8		;,
	mov	x8, 1	; ivtmp.30,
; GuessSketchFlow/eval/problem41/code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	sub	x11, x0, #4	; _57, l,
	sub	w10, w1, #1	; _30, size,
	add	x9, x0, 4	; _28, l,
L4:
; GuessSketchFlow/eval/problem41/code.c:6:         for (int j = i + 1; j < size; j++)
	cmp	w1, w8	; size, ivtmp.30
	ble	L8		;,
; GuessSketchFlow/eval/problem41/code.c:6:         for (int j = i + 1; j < size; j++)
	mov	w6, w8	; k, ivtmp.30
	mov	x7, x8	; ivtmp.25, ivtmp.30
; GuessSketchFlow/eval/problem41/code.c:7:             for (int k = j + 1; k < size; k++)
	add	w6, w6, 1	; k, k,
; GuessSketchFlow/eval/problem41/code.c:7:             for (int k = j + 1; k < size; k++)
	cmp	w1, w6	; size, k
	beq	L12		;,
L3:
; GuessSketchFlow/eval/problem41/code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	ldr	w2, [x0, x7, lsl 2]	;, MEM[(int *)l_22(D) + ivtmp.25_43 * 4]
	sub	w4, w10, w6	; _25, _30, k
	add	x4, x4, x7	; _17, _25, ivtmp.25
	ldr	w5, [x11, x8, lsl 2]	;, MEM[(int *)_57 + ivtmp.30_53 * 4]
	add	x4, x9, x4, lsl 2	; _42, _28, _17,
	add	w5, w5, w2	; _9, MEM[(int *)_57 + ivtmp.30_53 * 4], MEM[(int *)l_22(D) + ivtmp.25_43 * 4]
	add	x2, x0, x7, lsl 2	; ivtmp.11, l, ivtmp.25,
	b	L5		;
	.p2align 2,,3
L14:
; GuessSketchFlow/eval/problem41/code.c:7:             for (int k = j + 1; k < size; k++)
	add	x2, x2, 4	; ivtmp.11, ivtmp.11,
	cmp	x2, x4	; ivtmp.11, _42
	beq	L13		;,
L5:
; GuessSketchFlow/eval/problem41/code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	ldr	w3, [x2, 4]	;, MEM[(int *)_36 + 4B]
; GuessSketchFlow/eval/problem41/code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	cmn	w5, w3	; _9, MEM[(int *)_36 + 4B]
	bne	L14		;,
; GuessSketchFlow/eval/problem41/code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem41/code.c:10: }
	ret	
	.p2align 2,,3
L13:
; GuessSketchFlow/eval/problem41/code.c:7:             for (int k = j + 1; k < size; k++)
	add	w6, w6, 1	; k, k,
	add	x7, x7, 1	; ivtmp.25, ivtmp.25,
; GuessSketchFlow/eval/problem41/code.c:7:             for (int k = j + 1; k < size; k++)
	cmp	w1, w6	; size, k
	bne	L3		;,
L12:
	add	x8, x8, 1	; ivtmp.30, ivtmp.30,
	b	L4		;
L8:
; GuessSketchFlow/eval/problem41/code.c:9:     return false;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem41/code.c:10: }
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
