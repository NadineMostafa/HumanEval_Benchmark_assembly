	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB23:
	.cfi_startproc
	endbr64	
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# eval/problem93/code.c:4: int func0(float a, float b, float c) {
	movss	%xmm1, 4(%rsp)	# tmp104, %sfp
	movss	%xmm2, 12(%rsp)	# tmp105, %sfp
# eval/problem93/code.c:5:     if (roundf(a) != a) return 0;
	movss	%xmm0, 8(%rsp)	# a, %sfp
	call	roundf@PLT	#
# eval/problem93/code.c:5:     if (roundf(a) != a) return 0;
	ucomiss	8(%rsp), %xmm0	# %sfp, tmp106
	jp	.L10	#,
	jne	.L10	#,
# eval/problem93/code.c:6:     if (roundf(b) != b) return 0;
	movss	4(%rsp), %xmm0	# %sfp,
	call	roundf@PLT	#
# eval/problem93/code.c:6:     if (roundf(b) != b) return 0;
	ucomiss	4(%rsp), %xmm0	# %sfp, tmp107
	jp	.L10	#,
	jne	.L10	#,
# eval/problem93/code.c:7:     if (roundf(c) != c) return 0;
	movss	12(%rsp), %xmm0	# %sfp,
	call	roundf@PLT	#
# eval/problem93/code.c:7:     if (roundf(c) != c) return 0;
	movss	12(%rsp), %xmm5	# %sfp, c
	ucomiss	%xmm5, %xmm0	# c, tmp108
	jp	.L10	#,
	jne	.L10	#,
# eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	movss	8(%rsp), %xmm0	# %sfp, tmp93
	addss	4(%rsp), %xmm0	# %sfp, tmp93
# eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ucomiss	%xmm5, %xmm0	# c, tmp93
	jp	.L16	#,
# eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	movl	$1, %eax	#, <retval>
# eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	je	.L1	#,
.L16:
# eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	movss	8(%rsp), %xmm0	# %sfp, tmp94
	addss	12(%rsp), %xmm0	# %sfp, tmp94
# eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ucomiss	4(%rsp), %xmm0	# %sfp, tmp94
	jp	.L17	#,
# eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	movl	$1, %eax	#, <retval>
# eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	je	.L1	#,
.L17:
# eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	movss	4(%rsp), %xmm0	# %sfp, b
# eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	xorl	%eax, %eax	# tmp99
	movl	$0, %edx	#, tmp101
# eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	addss	12(%rsp), %xmm0	# %sfp, b
# eval/problem93/code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ucomiss	8(%rsp), %xmm0	# %sfp, tmp95
	setnp	%al	#, tmp99
	cmovne	%edx, %eax	# tmp99,, tmp101, <retval>
# eval/problem93/code.c:10: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
# eval/problem93/code.c:5:     if (roundf(a) != a) return 0;
	xorl	%eax, %eax	# <retval>
.L1:
# eval/problem93/code.c:10: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE23:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
