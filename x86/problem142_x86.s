	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"No"
.LC1:
	.string	"Yes"
.LC2:
	.string	".txt"
.LC3:
	.string	".exe"
.LC4:
	.string	".dll"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB35:
	.cfi_startproc
	endbr64	
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
# eval/problem142/code.c:7:     if (length < 5) return "No";
	leaq	.LC0(%rip), %r12	#, <retval>
# eval/problem142/code.c:4: const char* func0(const char* file_name) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
# eval/problem142/code.c:4: const char* func0(const char* file_name) {
	movq	%rdi, %rbx	# tmp139, file_name
# eval/problem142/code.c:6:     int length = strlen(file_name);
	call	strlen@PLT	#
# eval/problem142/code.c:7:     if (length < 5) return "No";
	cmpl	$4, %eax	#, tmp113
	jle	.L1	#,
# eval/problem142/code.c:8:     char w = file_name[0];
	movzbl	(%rbx), %r13d	# *file_name_31(D), w
	movq	%rax, %rbp	# tmp140, tmp113
# eval/problem142/code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	leal	-91(%r13), %eax	#, tmp115
# eval/problem142/code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	cmpb	$5, %al	#, tmp115
	jbe	.L10	#,
# eval/problem142/code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	leal	-65(%r13), %eax	#, tmp118
# eval/problem142/code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	cmpb	$57, %al	#, tmp118
	ja	.L10	#,
# eval/problem142/code.c:10:     const char* last = file_name + length - 4;
	movslq	%ebp, %rax	# tmp113, length
# eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	leaq	.LC2(%rip), %rsi	#, tmp124
# eval/problem142/code.c:10:     const char* last = file_name + length - 4;
	leaq	-4(%rbx,%rax), %r14	#, last
# eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	movq	%r14, %rdi	# last,
	call	strcmp@PLT	#
# eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	testl	%eax, %eax	# tmp141
	jne	.L23	#,
.L3:
	leal	-1(%rbp), %ecx	#, tmp130
	movq	%rbx, %rax	# file_name, ivtmp.13
# eval/problem142/code.c:4: const char* func0(const char* file_name) {
	xorl	%edi, %edi	# num_dot
	xorl	%esi, %esi	# num_digit
	addq	%rbx, %rcx	# ivtmp.13, _25
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L24:
# eval/problem142/code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	addl	$1, %esi	#, num_digit
# eval/problem142/code.c:12:     for (int i = 0; i < length; i++) {
	cmpq	%rax, %rcx	# ivtmp.13, _25
	je	.L6	#,
.L25:
# eval/problem142/code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	movzbl	1(%rax), %r13d	# MEM[(const char *)_54 + 1B], w
	addq	$1, %rax	#, ivtmp.13
.L7:
# eval/problem142/code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	leal	-48(%r13), %edx	#, tmp131
# eval/problem142/code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	cmpb	$9, %dl	#, tmp131
	jbe	.L24	#,
# eval/problem142/code.c:14:         if (file_name[i] == '.') num_dot++;
	xorl	%edx, %edx	# tmp137
	cmpb	$46, %r13b	#, w
	sete	%dl	#, tmp137
	addl	%edx, %edi	# tmp137, num_dot
# eval/problem142/code.c:12:     for (int i = 0; i < length; i++) {
	cmpq	%rax, %rcx	# ivtmp.13, _25
	jne	.L25	#,
.L6:
# eval/problem142/code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	cmpl	$3, %esi	#, num_digit
	jg	.L10	#,
# eval/problem142/code.c:17:     return "Yes";
	leaq	.LC1(%rip), %r12	#, <retval>
# eval/problem142/code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	cmpl	$1, %edi	#, num_dot
	jne	.L10	#,
.L1:
# eval/problem142/code.c:18: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r12, %rax	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
# eval/problem142/code.c:7:     if (length < 5) return "No";
	leaq	.LC0(%rip), %r12	#, <retval>
# eval/problem142/code.c:18: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	movq	%r12, %rax	# <retval>,
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_restore_state
# eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	leaq	.LC3(%rip), %rsi	#, tmp126
	movq	%r14, %rdi	# last,
	call	strcmp@PLT	#
# eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	testl	%eax, %eax	# tmp142
	je	.L3	#,
# eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	leaq	.LC4(%rip), %rsi	#, tmp128
	movq	%r14, %rdi	# last,
	call	strcmp@PLT	#
# eval/problem142/code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	testl	%eax, %eax	# tmp143
	je	.L3	#,
	jmp	.L1	#
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
