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
# eval/problem115/code.c:4:     long long current = nums[0];
	movq	(%rdi), %rax	# *nums_13(D), current
# eval/problem115/code.c:6:     for (int i = 1; i < size; i++) {
	cmpl	$1, %esi	#, size
	jle	.L5	#,
	leal	-2(%rsi), %ecx	#, tmp98
	leaq	8(%rdi), %rdx	#, ivtmp.9
# eval/problem115/code.c:5:     long long min = nums[0];
	movq	%rax, %r8	# current, <retval>
	leaq	16(%rdi,%rcx,8), %rdi	#, _29
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem115/code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	movq	(%rdx), %rcx	# MEM[(long long int *)_6], pretmp_28
# eval/problem115/code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	testq	%rax, %rax	# current
	leaq	(%rax,%rcx), %rsi	#, tmp102
	movq	%rcx, %rax	# pretmp_28, pretmp_28
	cmovs	%rsi, %rax	# tmp102,, pretmp_28
	cmpq	%rax, %r8	# current, <retval>
	cmovg	%rax, %r8	# <retval>,, current, <retval>
# eval/problem115/code.c:6:     for (int i = 1; i < size; i++) {
	addq	$8, %rdx	#, ivtmp.9
	cmpq	%rdi, %rdx	# _29, ivtmp.9
	jne	.L4	#,
# eval/problem115/code.c:11: }
	movq	%r8, %rax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem115/code.c:5:     long long min = nums[0];
	movq	%rax, %r8	# current, <retval>
# eval/problem115/code.c:11: }
	movq	%r8, %rax	# <retval>,
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
