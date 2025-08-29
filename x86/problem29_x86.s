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
.LFB51:
	.cfi_startproc
	endbr64	
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# eval/problem29/code.c:7:     for (int i = 0; i < count; i++) {
	testl	%esi, %esi	# count
	jle	.L2	#,
	leal	-1(%rsi), %eax	#, tmp105
	movq	%rdi, %rbx	# strings, ivtmp.10
	movq	%rdi, %rbp	# ivtmp.10, ivtmp.16
# eval/problem29/code.c:6:     int length = 0;
	xorl	%r12d, %r12d	# length
	leaq	8(%rdi,%rax,8), %r13	#, _57
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem29/code.c:8:         length += strlen(strings[i]);
	movq	0(%rbp), %rdi	# MEM[(char * *)_17],
# eval/problem29/code.c:7:     for (int i = 0; i < count; i++) {
	addq	$8, %rbp	#, ivtmp.16
# eval/problem29/code.c:8:         length += strlen(strings[i]);
	call	strlen@PLT	#
# eval/problem29/code.c:8:         length += strlen(strings[i]);
	addl	%eax, %r12d	# tmp118, length
# eval/problem29/code.c:7:     for (int i = 0; i < count; i++) {
	cmpq	%r13, %rbp	# _57, ivtmp.16
	jne	.L3	#,
# eval/problem29/code.c:11:     char* out = (char*)malloc(length + 1);
	leal	1(%r12), %edi	#, tmp113
# eval/problem29/code.c:11:     char* out = (char*)malloc(length + 1);
	movslq	%edi, %rdi	# tmp113, tmp114
	call	malloc@PLT	#
	movq	%rax, %r8	# tmp120, <retval>
# eval/problem29/code.c:12:     if (!out) {
	testq	%rax, %rax	# <retval>
	je	.L8	#,
# eval/problem29/code.c:16:     out[0] = '\0';
	movb	$0, (%r8)	#, *out_34
	.p2align 4,,10
	.p2align 3
.L7:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:130:   return __builtin___strcat_chk (__dest, __src, __glibc_objsize (__dest));
	movq	(%rbx), %rsi	# MEM[(char * *)_49],
	movq	%r8, %rdi	# <retval>,
# eval/problem29/code.c:18:     for (int i = 0; i < count; i++) {
	addq	$8, %rbx	#, ivtmp.10
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:130:   return __builtin___strcat_chk (__dest, __src, __glibc_objsize (__dest));
	call	strcat@PLT	#
	movq	%rax, %r8	#, <retval>
# eval/problem29/code.c:18:     for (int i = 0; i < count; i++) {
	cmpq	%r13, %rbx	# _57, ivtmp.10
	jne	.L7	#,
.L1:
# eval/problem29/code.c:23: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r8, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
# eval/problem29/code.c:11:     char* out = (char*)malloc(length + 1);
	movl	$1, %edi	#,
	call	malloc@PLT	#
	movq	%rax, %r8	# tmp119, <retval>
# eval/problem29/code.c:12:     if (!out) {
	testq	%rax, %rax	# <retval>
	je	.L8	#,
# eval/problem29/code.c:16:     out[0] = '\0';
	movb	$0, (%rax)	#, *out_24
# eval/problem29/code.c:23: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r8, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
.L8:
	.cfi_restore_state
# eval/problem29/code.c:13:         return NULL; 
	xorl	%r8d, %r8d	# <retval>
	jmp	.L1	#
	.cfi_endproc
.LFE51:
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
