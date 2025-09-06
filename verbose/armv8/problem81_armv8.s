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
LFB0:
	stp	x29, x30, [sp, -32]!	;,,,
LCFI0:
	mov	x29, sp	;,
LCFI1:
	str	x19, [sp, 16]	;,
LCFI2:
; GuessSketchFlow/eval/problem81/code.c:4: bool func0(const char* s) {
	mov	x19, x0	; s, s
; GuessSketchFlow/eval/problem81/code.c:5:     if (strlen(s) < 3) return false;
	bl	_strlen		;
; GuessSketchFlow/eval/problem81/code.c:5:     if (strlen(s) < 3) return false;
	cmp	x0, 2	; tmp117,
	bls	L6		;,
	sub	x2, x19, #2	; _19, ivtmp.11,
	mov	x1, x19	; ivtmp.11, s
	add	x0, x2, x0	; _21, _19, tmp117
	.p2align 5,,15
L3:
; GuessSketchFlow/eval/problem81/code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	ldrsb	w2, [x1, 2]	; _3, MEM[(const char *)_16 + 2B]
; GuessSketchFlow/eval/problem81/code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	ldrsb	w3, [x1, 1]	; MEM[(const char *)_16 + 1B], MEM[(const char *)_16 + 1B]
	cmp	w3, w2	; MEM[(const char *)_16 + 1B], _3
	beq	L6		;,
; GuessSketchFlow/eval/problem81/code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	ldrsb	w3, [x1]	; MEM[(const char *)_16], MEM[(const char *)_16]
	cmp	w3, w2	; MEM[(const char *)_16], _3
	beq	L6		;,
; GuessSketchFlow/eval/problem81/code.c:6:     for (int i = 2; i < strlen(s); i++)
	add	x1, x1, 1	; ivtmp.11, ivtmp.11,
	cmp	x0, x1	; _21, ivtmp.11
	bne	L3		;,
; GuessSketchFlow/eval/problem81/code.c:9: }
	ldr	x19, [sp, 16]	;,
; GuessSketchFlow/eval/problem81/code.c:8:     return true;
	mov	w0, 1	; <retval>,
; GuessSketchFlow/eval/problem81/code.c:9: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI3:
	ret	
	.p2align 2,,3
L6:
LCFI4:
	ldr	x19, [sp, 16]	;,
; GuessSketchFlow/eval/problem81/code.c:5:     if (strlen(s) < 3) return false;
	mov	w0, 0	; <retval>,
; GuessSketchFlow/eval/problem81/code.c:9: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI5:
	ret	
LFE0:
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
	.quad	LFB0-.
	.set L$set$2,LFE0-LFB0
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB0
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
	.byte	0x93
	.uleb128 0x2
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xa
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
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
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 15.1.0) 15.1.0"
	.subsections_via_symbols
