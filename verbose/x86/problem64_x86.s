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
	subq	$424, %rsp	#,
	.cfi_def_cfa_offset 432
# eval/problem64/code.c:3: int func0(int n) {
	movslq	%edi, %r8	# tmp114,
# eval/problem64/code.c:4:     int ff[100] = {0};
	movl	$50, %ecx	#, tmp102
# eval/problem64/code.c:3: int func0(int n) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	movq	%rax, 408(%rsp)	# tmp115, D.2581
	xorl	%eax, %eax	# tmp115
# eval/problem64/code.c:4:     int ff[100] = {0};
	movq	%rsp, %rdi	#, tmp100
	rep stosq
# eval/problem64/code.c:6:     ff[2] = 1;
	movl	$1, 8(%rsp)	#, ff[2]
# eval/problem64/code.c:7:     for (int i = 3; i <= n; ++i) {
	cmpl	$2, %r8d	#, n
	jle	.L2	#,
	leal	-3(%r8), %edx	#, tmp105
	leaq	4(%rsp), %rax	#, ivtmp.12
	xorl	%esi, %esi	# pretmp_34
	leaq	8(%rsp,%rdx,4), %rdi	#, _37
	movl	$1, %edx	#, pretmp_28
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem64/code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	movl	4(%rax), %edx	# MEM[(int *)_20 + 4B], pretmp_28
# eval/problem64/code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	movl	(%rax), %ecx	# MEM[(int *)_20], pretmp_31
# eval/problem64/code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	movl	-4(%rax), %esi	# MEM[(int *)_20 + -4B], pretmp_34
.L3:
# eval/problem64/code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	addl	%ecx, %edx	# pretmp_31, tmp109
# eval/problem64/code.c:7:     for (int i = 3; i <= n; ++i) {
	addq	$4, %rax	#, ivtmp.12
# eval/problem64/code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	addl	%esi, %edx	# pretmp_34, tmp110
	movl	%edx, 4(%rax)	# tmp110, MEM[(int *)_24 + 8B]
# eval/problem64/code.c:7:     for (int i = 3; i <= n; ++i) {
	cmpq	%rdi, %rax	# _37, ivtmp.12
	jne	.L7	#,
.L2:
# eval/problem64/code.c:10:     return ff[n];
	movl	(%rsp,%r8,4), %eax	# ff[n_14(D)], <retval>
# eval/problem64/code.c:11: }
	movq	408(%rsp), %rdx	# D.2581, tmp116
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	jne	.L8	#,
	addq	$424, %rsp	#,
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
