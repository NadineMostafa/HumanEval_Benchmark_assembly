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
# eval/problem47/code.c:3: int func0(int n) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	movq	%rax, 408(%rsp)	# tmp115, D.2581
	xorl	%eax, %eax	# tmp115
# eval/problem47/code.c:5:     f[0] = 0;
	movq	$0, (%rsp)	#, MEM <unsigned long> [(int *)&f]
# eval/problem47/code.c:7:     f[2] = 2;
	movq	$2, 8(%rsp)	#, MEM <unsigned long> [(int *)&f + 8B]
# eval/problem47/code.c:9:     for (int i = 4; i <= n; i++) {
	cmpl	$3, %edi	#, n
	jle	.L2	#,
	leal	-4(%rdi), %eax	#, tmp104
	leaq	4(%rsp), %rdx	#, ivtmp.12
	xorl	%r8d, %r8d	# pretmp_45
	xorl	%esi, %esi	# pretmp_42
	leaq	8(%rsp,%rax,4), %r9	#, _2
	movl	$2, %ecx	#, pretmp_39
	xorl	%eax, %eax	# pretmp_36
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem47/code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	8(%rdx), %eax	# MEM[(int *)_31 + 8B], pretmp_36
# eval/problem47/code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	4(%rdx), %ecx	# MEM[(int *)_31 + 4B], pretmp_39
# eval/problem47/code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	(%rdx), %esi	# MEM[(int *)_31], pretmp_42
# eval/problem47/code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	-4(%rdx), %r8d	# MEM[(int *)_31 + -4B], pretmp_45
.L3:
# eval/problem47/code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addl	%ecx, %eax	# pretmp_39, tmp108
# eval/problem47/code.c:9:     for (int i = 4; i <= n; i++) {
	addq	$4, %rdx	#, ivtmp.12
# eval/problem47/code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addl	%esi, %eax	# pretmp_42, tmp109
# eval/problem47/code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addl	%r8d, %eax	# pretmp_45, tmp110
	movl	%eax, 8(%rdx)	# tmp110, MEM[(int *)_32 + 12B]
# eval/problem47/code.c:9:     for (int i = 4; i <= n; i++) {
	cmpq	%rdx, %r9	# ivtmp.12, _2
	jne	.L7	#,
.L2:
# eval/problem47/code.c:12:     return f[n];
	movslq	%edi, %rdi	# n, n
	movl	(%rsp,%rdi,4), %eax	# f[n_19(D)], <retval>
# eval/problem47/code.c:13: }
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
