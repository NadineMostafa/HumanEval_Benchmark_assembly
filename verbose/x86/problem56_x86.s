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
	subq	$4024, %rsp	#,
	.cfi_def_cfa_offset 4032
# eval/problem56/code.c:3: int func0(int n) {
	movslq	%edi, %r8	# tmp108,
# eval/problem56/code.c:4:     int f[1000] = {0};
	movl	$500, %ecx	#, tmp98
# eval/problem56/code.c:3: int func0(int n) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	movq	%rax, 4008(%rsp)	# tmp109, D.2583
	xorl	%eax, %eax	# tmp109
# eval/problem56/code.c:4:     int f[1000] = {0};
	movq	%rsp, %rdi	#, tmp96
	rep stosq
# eval/problem56/code.c:6:     f[1] = 1;
	movl	$1, 4(%rsp)	#, f[1]
# eval/problem56/code.c:7:     for (int i = 2; i <= n; i++)
	cmpl	$1, %r8d	#, n
	jle	.L2	#,
	leal	-2(%r8), %edx	#, tmp101
	leaq	8(%rsp), %rax	#, ivtmp.19
	leaq	(%rax,%rdx,4), %rsi	#, _30
	movl	$1, %edx	#, _5
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem56/code.c:8:         f[i] = f[i - 1] + f[i - 2];
	movl	-4(%rax), %ecx	# MEM[(int *)_31 + -4B], pretmp_25
	addq	$4, %rax	#, ivtmp.19
.L3:
# eval/problem56/code.c:8:         f[i] = f[i - 1] + f[i - 2];
	addl	%ecx, %edx	# pretmp_25, _5
# eval/problem56/code.c:8:         f[i] = f[i - 1] + f[i - 2];
	movl	%edx, (%rax)	# _5, MEM[(int *)_31]
# eval/problem56/code.c:7:     for (int i = 2; i <= n; i++)
	cmpq	%rsi, %rax	# _30, ivtmp.19
	jne	.L7	#,
.L2:
# eval/problem56/code.c:9:     return f[n];
	movl	(%rsp,%r8,4), %eax	# f[n_11(D)], <retval>
# eval/problem56/code.c:10: }
	movq	4008(%rsp), %rdx	# D.2583, tmp110
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp110
	jne	.L8	#,
	addq	$4024, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
.L8:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
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
