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
.LFB39:
	.cfi_startproc
	endbr64	
# eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movl	%edi, %eax	# tmp134, tmp136
	negl	%eax	# tmp136
	cmovs	%edi, %eax	# tmp136,, tmp134, tmp90
# eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movl	$3435973837, %edi	#, tmp94
	movl	%eax, %edx	# tmp90, tmp92
	imulq	%rdi, %rdx	# tmp94, tmp93
	shrq	$35, %rdx	#, tmp91
	leal	(%rdx,%rdx,4), %edx	#, tmp98
	addl	%edx, %edx	# tmp99
	subl	%edx, %eax	# tmp99, tmp100
# eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movl	%esi, %edx	# tmp135, tmp137
	negl	%edx	# tmp137
	cmovs	%esi, %edx	# tmp137,, tmp135, tmp112
# eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movl	%edx, %ecx	# tmp112, tmp114
	imulq	%rdi, %rcx	# tmp94, tmp115
	shrq	$35, %rcx	#, tmp113
	leal	(%rcx,%rcx,4), %ecx	#, tmp120
	addl	%ecx, %ecx	# tmp121
	subl	%ecx, %edx	# tmp121, tmp122
# eval/problem98/code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	imull	%edx, %eax	# tmp122, tmp89
# eval/problem98/code.c:6: }
	ret	
	.cfi_endproc
.LFE39:
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
