	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB39:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %r8d	# N, tmp130
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	leaq	.LC0(%rip), %rcx	#, tmp116
	movl	$6, %edx	#,
	movl	$1, %esi	#,
# eval/problem85/code.c:4: char* func0(int N) {
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
# eval/problem85/code.c:4: char* func0(int N) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp133
	movq	%rax, 8(%rsp)	# tmp133, D.3246
	xorl	%eax, %eax	# tmp133
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	leaq	2(%rsp), %rbx	#, tmp115
	movq	%rbx, %rdi	# tmp115,
	call	__sprintf_chk@PLT	#
# eval/problem85/code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	movsbl	2(%rsp), %eax	# str[0],
# eval/problem85/code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	testb	%al, %al	# _3
	je	.L2	#,
	movq	%rbx, %rdx	# tmp115, ivtmp.26
# eval/problem85/code.c:7:     int sum = 0;
	xorl	%ebx, %ebx	# sum
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem85/code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	addq	$1, %rdx	#, ivtmp.26
# eval/problem85/code.c:9:         sum += str[i] - '0';
	leal	-48(%rbx,%rax), %ebx	#, sum
# eval/problem85/code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	movsbl	(%rdx), %eax	# MEM[(char *)_86],
# eval/problem85/code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	testb	%al, %al	# _3
	jne	.L3	#,
# eval/problem85/code.c:11:     char* bi = malloc(33);
	movl	$33, %edi	#,
	call	malloc@PLT	#
	movq	%rax, %r8	# tmp132, <retval>
# eval/problem85/code.c:13:     if (sum == 0) {
	testl	%ebx, %ebx	# sum
	je	.L5	#,
# eval/problem85/code.c:16:         while (sum > 0) {
	movl	$1, %eax	#, ivtmp.19
	jle	.L25	#,
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem85/code.c:17:             bi[index++] = (sum % 2) + '0';
	movl	%ebx, %edx	# sum, tmp121
# eval/problem85/code.c:17:             bi[index++] = (sum % 2) + '0';
	movl	%eax, %ecx	# ivtmp.19, index
# eval/problem85/code.c:17:             bi[index++] = (sum % 2) + '0';
	andl	$1, %edx	#, tmp121
# eval/problem85/code.c:17:             bi[index++] = (sum % 2) + '0';
	addl	$48, %edx	#, tmp122
	movb	%dl, -1(%r8,%rax)	# tmp122, MEM[(char *)bi_33 + -1B + ivtmp.19_51 * 1]
# eval/problem85/code.c:16:         while (sum > 0) {
	addq	$1, %rax	#, ivtmp.19
	sarl	%ebx	# sum
	jne	.L6	#,
# eval/problem85/code.c:21:     bi[index] = '\0';
	movslq	%ecx, %rsi	# index, _10
# eval/problem85/code.c:23:     for (int i = 0; i < index / 2; i++) {
	sarl	%ecx	# _48
# eval/problem85/code.c:21:     bi[index] = '\0';
	movb	$0, (%r8,%rsi)	#, *_11
# eval/problem85/code.c:23:     for (int i = 0; i < index / 2; i++) {
	je	.L1	#,
	leaq	-2(%r8,%rsi), %rdi	#, tmp125
	subl	$1, %ecx	#, tmp127
	leaq	-1(%r8,%rsi), %rax	#, ivtmp.13
	movq	%r8, %rdx	# <retval>, ivtmp.12
	subq	%rcx, %rdi	# tmp127, _47
	.p2align 4,,10
	.p2align 3
.L9:
# eval/problem85/code.c:24:         char temp = bi[i];
	movzbl	(%rdx), %ecx	# MEM[(char *)_67], temp
# eval/problem85/code.c:25:         bi[i] = bi[index - i - 1];
	movzbl	(%rax), %esi	# MEM[(char *)_57], _19
# eval/problem85/code.c:23:     for (int i = 0; i < index / 2; i++) {
	subq	$1, %rax	#, ivtmp.13
	addq	$1, %rdx	#, ivtmp.12
# eval/problem85/code.c:25:         bi[i] = bi[index - i - 1];
	movb	%sil, -1(%rdx)	# _19, MEM[(char *)_67]
# eval/problem85/code.c:26:         bi[index - i - 1] = temp;
	movb	%cl, 1(%rax)	# temp, MEM[(char *)_57]
# eval/problem85/code.c:23:     for (int i = 0; i < index / 2; i++) {
	cmpq	%rax, %rdi	# ivtmp.13, _47
	jne	.L9	#,
.L1:
# eval/problem85/code.c:30: }
	movq	8(%rsp), %rax	# D.3246, tmp134
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp134
	jne	.L26	#,
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movq	%r8, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
# eval/problem85/code.c:11:     char* bi = malloc(33);
	movl	$33, %edi	#,
	call	malloc@PLT	#
	movq	%rax, %r8	# tmp131, <retval>
.L5:
# eval/problem85/code.c:14:         bi[index++] = '0';
	movb	$48, (%r8)	#, *bi_24
# eval/problem85/code.c:21:     bi[index] = '\0';
	leaq	1(%r8), %rax	#, _79
.L7:
# eval/problem85/code.c:21:     bi[index] = '\0';
	movb	$0, (%rax)	#, *prephitmp_80
	jmp	.L1	#
.L25:
# eval/problem85/code.c:11:     char* bi = malloc(33);
	movq	%r8, %rax	# <retval>, _79
	jmp	.L7	#
.L26:
# eval/problem85/code.c:30: }
	call	__stack_chk_fail@PLT	#
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
