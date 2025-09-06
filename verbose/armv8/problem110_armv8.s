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
; GuessSketchFlow/eval/problem110/code.c:6:     if (size == 0) return true;
	cbz	w1, L7	; size,
; GuessSketchFlow/eval/problem110/code.c:7:     for (int i = 1; i < size; i++)
	cmp	w1, 1	; size,
	ble	L8		;,
	mov	x2, x0	; ivtmp.12, arr
	add	x4, x0, 8	; _37, arr,
	ldr	w7, [x2], 4	;, *arr_19(D)
	sub	w6, w1, #2	; _2, size,
	add	x6, x4, w6, uxtw 2	; _6, _37, _2,
; GuessSketchFlow/eval/problem110/code.c:5:     int num = 0;
	mov	w4, 0	; num,
	mov	w3, w7	; D__lsm0.5, *arr_19(D)
	.p2align 5,,15
L5:
	mov	w5, w3	; D__lsm0.5, D__lsm0.5
; GuessSketchFlow/eval/problem110/code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	ldr	w3, [x2], 4	;, MEM[(int *)_41]
; GuessSketchFlow/eval/problem110/code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	cmp	w3, w5	; D__lsm0.5, D__lsm0.5
	cinc	w4, w4, lt	; num, num,
; GuessSketchFlow/eval/problem110/code.c:7:     for (int i = 1; i < size; i++)
	cmp	x6, x2	; _6, ivtmp.12
	bne	L5		;,
L3:
; GuessSketchFlow/eval/problem110/code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	add	x1, x0, w1, sxtw 2	; tmp127, arr, size,
; GuessSketchFlow/eval/problem110/code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ldr	w0, [x1, -4]	;, *_10
; GuessSketchFlow/eval/problem110/code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	cmp	w0, w7	; *_10, *arr_19(D)
	cinc	w4, w4, gt	; num, num,
; GuessSketchFlow/eval/problem110/code.c:10:     if (num < 2) return true;
	cmp	w4, 1	; num,
	cset	w0, le	; <retval>,
; GuessSketchFlow/eval/problem110/code.c:12: }
	ret	
	.p2align 2,,3
L7:
; GuessSketchFlow/eval/problem110/code.c:6:     if (size == 0) return true;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem110/code.c:12: }
	ret	
	.p2align 2,,3
L8:
	ldr	w7, [x0]	;, *arr_19(D)
; GuessSketchFlow/eval/problem110/code.c:5:     int num = 0;
	mov	w4, 0	; num,
	b	L3		;
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
