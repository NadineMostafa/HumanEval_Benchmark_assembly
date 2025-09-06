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
# eval/problem67/code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	movsbl	(%rdi), %eax	# *s_11(D),
# eval/problem67/code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	testb	%al, %al	# _7
	je	.L5	#,
	addq	$1, %rdi	#, ivtmp.7
# eval/problem67/code.c:5:     int sum = 0;
	xorl	%r8d, %r8d	# <retval>
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem67/code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	leal	-65(%rax), %edx	#, tmp91
# eval/problem67/code.c:8:             sum += s[i];
	addl	%r8d, %eax	# <retval>, tmp95
	cmpb	$26, %dl	#, tmp91
	cmovb	%eax, %r8d	# tmp95,, <retval>
# eval/problem67/code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	movsbl	(%rdi), %eax	# MEM[(const char *)_1 + -1B],
# eval/problem67/code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	addq	$1, %rdi	#, ivtmp.7
	testb	%al, %al	# _7
	jne	.L4	#,
# eval/problem67/code.c:10: }
	movl	%r8d, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem67/code.c:5:     int sum = 0;
	xorl	%r8d, %r8d	# <retval>
# eval/problem67/code.c:10: }
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
