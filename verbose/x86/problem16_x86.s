	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" %d"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB39:
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
# eval/problem16/code.c:6:     for (int i = 1; i <= n; ++i) {
	testl	%edi, %edi	# n
	jle	.L2	#,
	leal	1(%rdi), %ebp	#, _39
# eval/problem16/code.c:6:     for (int i = 1; i <= n; ++i) {
	movl	$1, %ebx	#, i
# eval/problem16/code.c:5:     int len = 2; 
	movl	$2, %r12d	#, len
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:71:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	leaq	.LC0(%rip), %r13	#, tmp102
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%ebx, %r9d	# i,
	movq	%r13, %r8	# tmp102,
	movq	$-1, %rcx	#,
	xorl	%esi, %esi	#
	movl	$1, %edx	#,
	xorl	%edi, %edi	#
	xorl	%eax, %eax	#
# eval/problem16/code.c:6:     for (int i = 1; i <= n; ++i) {
	addl	$1, %ebx	#, i
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:71:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	call	__snprintf_chk@PLT	#
# eval/problem16/code.c:7:         len += snprintf(NULL, 0, " %d", i);
	addl	%eax, %r12d	# tmp104, len
# eval/problem16/code.c:6:     for (int i = 1; i <= n; ++i) {
	cmpl	%ebp, %ebx	# _39, i
	jne	.L3	#,
# eval/problem16/code.c:10:     char *out = malloc(len);
	movslq	%r12d, %rdi	# len, len
	call	malloc@PLT	#
	movq	%rax, %r13	# tmp107, <retval>
# eval/problem16/code.c:11:     if (!out) {
	testq	%rax, %rax	# <retval>
	je	.L8	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movl	$48, %eax	#,
# eval/problem16/code.c:16:     ptr += sprintf(ptr, "0");
	leaq	1(%r13), %r14	#, ptr
	movl	$1, %ebx	#, i
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movw	%ax, 0(%r13)	#, MEM <char[1:2]> [(void *)out_33]
	leaq	.LC0(%rip), %r12	#, tmp101
	.p2align 4,,10
	.p2align 3
.L7:
	movl	%ebx, %r8d	# i,
	movq	%r14, %rdi	# ptr,
	movq	%r12, %rcx	# tmp101,
	movq	$-1, %rdx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
# eval/problem16/code.c:17:     for (int i = 1; i <= n; ++i) {
	addl	$1, %ebx	#, i
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	call	__sprintf_chk@PLT	#
# eval/problem16/code.c:18:         ptr += sprintf(ptr, " %d", i);
	cltq
# eval/problem16/code.c:18:         ptr += sprintf(ptr, " %d", i);
	addq	%rax, %r14	# _27, ptr
# eval/problem16/code.c:17:     for (int i = 1; i <= n; ++i) {
	cmpl	%ebp, %ebx	# _39, i
	jne	.L7	#,
.L1:
# eval/problem16/code.c:21: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r13, %rax	# <retval>,
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
.L2:
	.cfi_restore_state
# eval/problem16/code.c:10:     char *out = malloc(len);
	movl	$2, %edi	#,
	call	malloc@PLT	#
	movq	%rax, %r13	# tmp105, <retval>
# eval/problem16/code.c:11:     if (!out) {
	testq	%rax, %rax	# <retval>
	je	.L8	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movl	$48, %edx	#,
	movw	%dx, (%rax)	#, MEM <char[1:2]> [(void *)out_15]
# eval/problem16/code.c:21: }
	movq	%r13, %rax	# <retval>,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
.L8:
	.cfi_restore_state
# eval/problem16/code.c:12:         return NULL;
	xorl	%r13d, %r13d	# <retval>
	jmp	.L1	#
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
