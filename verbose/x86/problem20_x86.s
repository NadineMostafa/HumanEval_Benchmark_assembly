	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"zero"
.LC1:
	.string	"one"
.LC2:
	.string	"two"
.LC3:
	.string	"three"
.LC4:
	.string	"four"
.LC5:
	.string	"five"
.LC6:
	.string	"six"
.LC7:
	.string	"seven"
.LC8:
	.string	"eight"
.LC9:
	.string	"nine"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB35:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# eval/problem20/code.c:5:     int count[10] = {0};
	pxor	%xmm0, %xmm0	# tmp163
	xorl	%r10d, %r10d	# pretmp_108
# eval/problem20/code.c:4: const char* func0(const char* numbers) {
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp	#,
	.cfi_def_cfa_offset 208
# eval/problem20/code.c:4: const char* func0(const char* numbers) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp167
	movq	%rax, 136(%rsp)	# tmp167, D.2900
	xorl	%eax, %eax	# tmp167
# eval/problem20/code.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	leaq	.LC0(%rip), %rax	#, tmp170
# eval/problem20/code.c:5:     int count[10] = {0};
	movaps	%xmm0, (%rsp)	# tmp163, count
# eval/problem20/code.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	movq	%rax, 48(%rsp)	# tmp170, numto[0]
	leaq	.LC1(%rip), %rax	#, tmp171
	movq	%rax, 56(%rsp)	# tmp171, numto[1]
	leaq	.LC2(%rip), %rax	#, tmp172
	movq	%rax, 64(%rsp)	# tmp172, numto[2]
	leaq	.LC3(%rip), %rax	#, tmp173
	movq	%rax, 72(%rsp)	# tmp173, numto[3]
	leaq	.LC4(%rip), %rax	#, tmp174
	movq	%rax, 80(%rsp)	# tmp174, numto[4]
	leaq	.LC5(%rip), %rax	#, tmp175
	movq	%rax, 88(%rsp)	# tmp175, numto[5]
	leaq	.LC6(%rip), %rax	#, tmp176
	movq	%rax, 96(%rsp)	# tmp176, numto[6]
	leaq	.LC7(%rip), %rax	#, tmp177
	movq	%rax, 104(%rsp)	# tmp177, numto[7]
	leaq	.LC8(%rip), %rax	#, tmp178
	movq	%rax, 112(%rsp)	# tmp178, numto[8]
	leaq	.LC9(%rip), %rax	#, tmp179
	movq	%rax, 120(%rsp)	# tmp179, numto[9]
# eval/problem20/code.c:12:     if (*numbers) {
	movzbl	(%rdi), %eax	# *numbers_57(D), _7
# eval/problem20/code.c:5:     int count[10] = {0};
	movq	$0, 32(%rsp)	#, count
	movaps	%xmm0, 16(%rsp)	# tmp163, count
# eval/problem20/code.c:12:     if (*numbers) {
	testb	%al, %al	# _7
	je	.L2	#,
	movq	%rdi, %rbp	# tmp165, numbers
	leaq	130(%rsp), %r13	#, tmp154
# eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	movl	$1, %ebx	#, ivtmp.61
	leaq	129(%rsp), %r14	#, tmp161
	testb	$-33, %al	#, _7
	je	.L21	#,
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem20/code.c:15:                 current[i] = numbers[i];
	movb	%al, (%r14,%rbx)	# _7, MEM[(char *)&current + -1B + ivtmp.61_4 * 1]
# eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	movzbl	0(%rbp,%rbx), %eax	# MEM[(const char *)numbers_28 + ivtmp.61_4 * 1], _7
# eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	movslq	%ebx, %rdx	# ivtmp.61,
# eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	addq	$1, %rbx	#, ivtmp.61
	testb	$-33, %al	#, _7
	jne	.L4	#,
.L3:
# eval/problem20/code.c:17:             current[i] = '\0';
	movb	$0, 130(%rsp,%rdx)	#, current[i_97]
	xorl	%r15d, %r15d	# ivtmp.43
	leaq	.LC0(%rip), %rsi	#, prephitmp_11
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L32:
# eval/problem20/code.c:19:                 if (strcmp(current, numto[j]) == 0) {
	movq	48(%rsp,%r15,8), %rsi	# MEM[(const char * *)&numto + ivtmp.43_10 * 8], prephitmp_11
.L7:
	movq	%r13, %rdi	# tmp154,
	movslq	%r15d, %r12	# ivtmp.43,
	call	strcmp@PLT	#
# eval/problem20/code.c:19:                 if (strcmp(current, numto[j]) == 0) {
	testl	%eax, %eax	# tmp166
	je	.L31	#,
# eval/problem20/code.c:18:             for (j = 0; j < 10; ++j) {
	addq	$1, %r15	#, ivtmp.43
	cmpq	$10, %r15	#, ivtmp.43
	jne	.L32	#,
# eval/problem20/code.c:24:             numbers += i + 1;
	addq	%rbx, %rbp	# ivtmp.61, numbers
# eval/problem20/code.c:25:         } while (numbers[-1]);
	cmpb	$0, -1(%rbp)	#, MEM[(const char *)numbers_61 + -1B]
	je	.L33	#,
.L8:
# eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	movzbl	0(%rbp), %eax	# *numbers_61, _7
# eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	movl	$1, %ebx	#, ivtmp.61
	testb	$-33, %al	#, _7
	jne	.L4	#,
.L21:
# eval/problem20/code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	xorl	%edx, %edx	#
	jmp	.L3	#
.L31:
# eval/problem20/code.c:24:             numbers += i + 1;
	addq	%rbx, %rbp	# ivtmp.61, numbers
# eval/problem20/code.c:20:                     count[j]++;
	addl	$1, (%rsp,%r12,4)	#, count[j_91]
# eval/problem20/code.c:25:         } while (numbers[-1]);
	cmpb	$0, -1(%rbp)	#, MEM[(const char *)numbers_61 + -1B]
	jne	.L8	#,
.L33:
# eval/problem20/code.c:29:         for (j = 0; j < count[i]; ++j) {
	movl	(%rsp), %r10d	# count[0], pretmp_108
.L2:
	leaq	out.0(%rip), %r11	#, <retval>
	xorl	%ebp, %ebp	# ivtmp.39
	xorl	%esi, %esi	# index
	leaq	-1(%r11), %rdi	#, tmp158
	.p2align 4,,10
	.p2align 3
.L15:
# eval/problem20/code.c:29:         for (j = 0; j < count[i]; ++j) {
	testl	%r10d, %r10d	# pretmp_108
	jle	.L11	#,
# eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	movq	48(%rsp,%rbp,2), %rbx	# MEM[(const char * *)&numto + ivtmp.39_26 * 2], _43
# eval/problem20/code.c:29:         for (j = 0; j < count[i]; ++j) {
	xorl	%r8d, %r8d	# j
# eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	movzbl	(%rbx), %r9d	# *_43, _34
	.p2align 4,,10
	.p2align 3
.L16:
# eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	movslq	%esi, %rcx	# index,
	testb	%r9b, %r9b	# _34
	je	.L13	#,
	leal	1(%rsi), %eax	#, tmp136
	movslq	%esi, %rcx	# index, index
# eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	movq	%rbx, %rsi	# _43, tmp139
# eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	movl	%r9d, %edx	# _34, _21
	cltq
# eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	subq	%rcx, %rsi	# index, tmp139
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem20/code.c:31:                 out[index] = numto[i][k];
	movb	%dl, (%rdi,%rax)	# _21, MEM[(char *)&out + -1B + ivtmp.11_42 * 1]
# eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	movslq	%eax, %rcx	# ivtmp.11,
# eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	addq	$1, %rax	#, ivtmp.11
# eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	movzbl	-1(%rsi,%rax), %edx	# MEM[(const char *)_29 + -1B + ivtmp.11_41 * 1], _21
# eval/problem20/code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	testb	%dl, %dl	# _21
	jne	.L10	#,
.L13:
# eval/problem20/code.c:29:         for (j = 0; j < count[i]; ++j) {
	addl	$1, %r8d	#, j
# eval/problem20/code.c:33:             out[index++] = ' '; 
	movb	$32, (%r11,%rcx)	#, out[index_93]
# eval/problem20/code.c:33:             out[index++] = ' '; 
	leal	1(%rcx), %esi	#, index
# eval/problem20/code.c:29:         for (j = 0; j < count[i]; ++j) {
	cmpl	%r10d, %r8d	# pretmp_108, j
	jne	.L16	#,
.L11:
# eval/problem20/code.c:28:     for (i = 0; i < 10; ++i) {
	addq	$4, %rbp	#, ivtmp.39
	cmpq	$40, %rbp	#, ivtmp.39
	je	.L14	#,
# eval/problem20/code.c:29:         for (j = 0; j < count[i]; ++j) {
	movl	(%rsp,%rbp), %r10d	# MEM[(int *)&count + ivtmp.39_13 * 1], pretmp_108
	jmp	.L15	#
.L14:
# eval/problem20/code.c:37:     if (index > 0) {
	testl	%esi, %esi	# index
	je	.L17	#,
# eval/problem20/code.c:38:         out[index - 1] = '\0'; 
	leal	-1(%rsi), %eax	#, tmp145
# eval/problem20/code.c:38:         out[index - 1] = '\0'; 
	cltq
	movb	$0, (%r11,%rax)	#, out[_27]
.L18:
# eval/problem20/code.c:44: }
	movq	136(%rsp), %rax	# D.2900, tmp168
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp168
	jne	.L34	#,
	addq	$152, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r11, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L17:
	.cfi_restore_state
# eval/problem20/code.c:40:         out[0] = '\0';
	movb	$0, out.0(%rip)	#, out[0]
	jmp	.L18	#
.L34:
# eval/problem20/code.c:44: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE35:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,1000,32
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
