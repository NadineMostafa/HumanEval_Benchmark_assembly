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
.LFB35:
	.cfi_startproc
	endbr64	
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# eval/problem83/code.c:6:     int l = strlen(str);
	call	strlen@PLT	#
# eval/problem83/code.c:7:     if (l < 2) return false;
	xorl	%r8d, %r8d	# <retval>
# eval/problem83/code.c:7:     if (l < 2) return false;
	cmpl	$1, %eax	#, tmp92
	jle	.L1	#,
# eval/problem83/code.c:8:     for (int i = 2; i * i <= l; i++) {
	cmpl	$3, %eax	#, tmp92
	jle	.L6	#,
# eval/problem83/code.c:9:         if (l % i == 0) return false;
	testb	$1, %al	#, tmp92
	je	.L1	#,
	movl	%eax, %esi	# tmp92, l
# eval/problem83/code.c:8:     for (int i = 2; i * i <= l; i++) {
	movl	$2, %ecx	#, i
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem83/code.c:9:         if (l % i == 0) return false;
	movl	%esi, %eax	# l, tmp97
	cltd
	idivl	%ecx	# i
# eval/problem83/code.c:9:         if (l % i == 0) return false;
	testl	%edx, %edx	# tmp96
	je	.L8	#,
.L3:
# eval/problem83/code.c:8:     for (int i = 2; i * i <= l; i++) {
	addl	$1, %ecx	#, i
# eval/problem83/code.c:8:     for (int i = 2; i * i <= l; i++) {
	movl	%ecx, %eax	# i, tmp98
	imull	%ecx, %eax	# i, tmp98
# eval/problem83/code.c:8:     for (int i = 2; i * i <= l; i++) {
	cmpl	%esi, %eax	# l, tmp98
	jle	.L4	#,
.L6:
# eval/problem83/code.c:11:     return true;
	movl	$1, %r8d	#, <retval>
.L1:
# eval/problem83/code.c:12: }
	movl	%r8d, %eax	# <retval>,
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L8:
	.cfi_restore_state
# eval/problem83/code.c:7:     if (l < 2) return false;
	xorl	%r8d, %r8d	# <retval>
# eval/problem83/code.c:12: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	movl	%r8d, %eax	# <retval>,
	ret	
	.cfi_endproc
.LFE35:
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
