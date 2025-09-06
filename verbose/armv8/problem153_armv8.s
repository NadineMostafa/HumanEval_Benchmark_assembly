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
; GuessSketchFlow/eval/problem153/code.c:5:     for (int i = 0; i < length; i++) {
	cmp	w3, 0	; length,
	ble	L1		;,
	ubfiz	x3, x3, 2, 32	; _28, length,,
	mov	x5, 0	; ivtmp.11,
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem153/code.c:6:         out[i] = abs(game[i] - guess[i]);
	ldr	w4, [x0, x5]	;, MEM[(int *)game_14(D) + ivtmp.11_25 * 1]
	ldr	w6, [x1, x5]	;, MEM[(int *)guess_15(D) + ivtmp.11_25 * 1]
; GuessSketchFlow/eval/problem153/code.c:6:         out[i] = abs(game[i] - guess[i]);
	subs	w4, w4, w6	; _7, MEM[(int *)game_14(D) + ivtmp.11_25 * 1], MEM[(int *)guess_15(D) + ivtmp.11_25 * 1]
	csneg	w4, w4, w4, pl	; _9, _7, _7,
; GuessSketchFlow/eval/problem153/code.c:6:         out[i] = abs(game[i] - guess[i]);
	str	w4, [x2, x5]	; _9, MEM[(int *)out_16(D) + ivtmp.11_25 * 1]
; GuessSketchFlow/eval/problem153/code.c:5:     for (int i = 0; i < length; i++) {
	add	x5, x5, 4	; ivtmp.11, ivtmp.11,
	cmp	x5, x3	; ivtmp.11, _28
	bne	L3		;,
L1:
; GuessSketchFlow/eval/problem153/code.c:8: }
	ret	
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
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
