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
	.ascii "-1\0"
	.text
	.align	2
	.p2align 5,,15
	.globl _func0
_func0:
LFB4:
; GuessSketchFlow/eval/problem104/code.c:5:     if (n > m) return "-1";
	cmp	w0, w1	; n, m
	ble	L11		;,
; GuessSketchFlow/eval/problem104/code.c:5:     if (n > m) return "-1";
	adrp	x0, lC0@PAGE	; tmp114,
	add	x0, x0, lC0@PAGEOFF;	; <retval>, tmp114,
; GuessSketchFlow/eval/problem104/code.c:19: }
	ret	
	.p2align 2,,3
L11:
; GuessSketchFlow/eval/problem104/code.c:6:     int num = (m + n) / 2;
	add	w1, w0, w1	; _1, n, m
; GuessSketchFlow/eval/problem104/code.c:4: char* func0(int n, int m) {
	stp	x29, x30, [sp, -32]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
; GuessSketchFlow/eval/problem104/code.c:6:     int num = (m + n) / 2;
	add	w1, w1, w1, lsr 31	; tmp117, _1, _1,
; GuessSketchFlow/eval/problem104/code.c:4: char* func0(int n, int m) {
; GuessSketchFlow/eval/problem104/code.c:7:     char* out = (char*)malloc(33);
	mov	x0, 33	;,
; GuessSketchFlow/eval/problem104/code.c:6:     int num = (m + n) / 2;
	asr	w1, w1, 1	; num, tmp117,
	str	w1, [x29, 28]	; num, %sfp
; GuessSketchFlow/eval/problem104/code.c:7:     char* out = (char*)malloc(33);
	bl	_malloc		;
	ldr	w1, [x29, 28]	;, %sfp
	add	x3, x0, 31	; ivtmp.10, tmp119,
; GuessSketchFlow/eval/problem104/code.c:8:     out[0] = '\0';
	strb	wzr, [x0]	;, *out_18
; GuessSketchFlow/eval/problem104/code.c:11:     out[index--] = '\0';
	strb	wzr, [x0, 32]	;, MEM[(char *)out_18 + 32B]
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem104/code.c:14:         out[index--] = '0' + num % 2;
	cmp	w1, 0	; num,
	and	w2, w1, 1	; tmp122, num,
	csneg	w2, w2, w2, ge	; _2, tmp122, tmp122,
; GuessSketchFlow/eval/problem104/code.c:14:         out[index--] = '0' + num % 2;
	add	w2, w2, 48	; tmp124, _2,
; GuessSketchFlow/eval/problem104/code.c:14:         out[index--] = '0' + num % 2;
	mov	x0, x3	; <retval>, ivtmp.10
; GuessSketchFlow/eval/problem104/code.c:14:         out[index--] = '0' + num % 2;
	strb	w2, [x3], -1	; tmp124, MEM[(char *)_6]
	mov	w2, w1	; num, num
; GuessSketchFlow/eval/problem104/code.c:15:         num /= 2;
	add	w1, w1, w1, lsr 31	; tmp128, num, num,
	asr	w1, w1, 1	; num, tmp128,
; GuessSketchFlow/eval/problem104/code.c:16:     } while (num > 0);
	cmp	w2, 1	; num,
	bgt	L3		;,
; GuessSketchFlow/eval/problem104/code.c:19: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI2:
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
	.byte	0x4
	.set L$set$3,LCFI0-LFB4
	.long L$set$3
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
