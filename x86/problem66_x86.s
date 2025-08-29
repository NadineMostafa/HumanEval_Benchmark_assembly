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
.LFB51:
	.cfi_startproc
	endbr64	
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	leaq	xs.0(%rip), %r13	#, <retval>
# eval/problem66/code.c:5: char* func0(int x, int shift) {
	movl	%edi, %r8d	# x, tmp130
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	leaq	.LC0(%rip), %rcx	#, tmp106
# eval/problem66/code.c:5: char* func0(int x, int shift) {
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movq	%r13, %rdi	# <retval>,
	movl	$50, %edx	#,
# eval/problem66/code.c:5: char* func0(int x, int shift) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movslq	%esi, %rbx	# tmp131,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movl	$1, %esi	#,
# eval/problem66/code.c:5: char* func0(int x, int shift) {
	subq	$64, %rsp	#,
	.cfi_def_cfa_offset 96
# eval/problem66/code.c:5: char* func0(int x, int shift) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp133
	movq	%rax, 56(%rsp)	# tmp133, D.3486
	xorl	%eax, %eax	# tmp133
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	call	__sprintf_chk@PLT	#
# eval/problem66/code.c:8:     int len = strlen(xs);
	movq	%r13, %rdi	# <retval>,
	call	strlen@PLT	#
# eval/problem66/code.c:10:     if (len < shift) {
	cmpl	%ebx, %eax	# shift, tmp110
	jge	.L2	#,
# eval/problem66/code.c:11:         for (int i = 0; i < len / 2; i++) {
	movl	%eax, %ecx	# tmp110, _27
	sarl	%ecx	# _27
	je	.L4	#,
	leal	-1(%rcx), %edi	#, tmp116
	cltq
	leaq	1(%r13), %rcx	#, tmp117
	movq	%r13, %rdx	# <retval>, ivtmp.10
	leaq	-1(%r13,%rax), %rax	#, ivtmp.11
	addq	%rcx, %rdi	# tmp117, _46
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem66/code.c:13:             xs[i] = xs[len - 1 - i];
	movzbl	(%rax), %esi	# MEM[(char *)_39], _4
# eval/problem66/code.c:12:             char temp = xs[i];
	movzbl	(%rdx), %ecx	# MEM[(char *)_37], temp
# eval/problem66/code.c:11:         for (int i = 0; i < len / 2; i++) {
	addq	$1, %rdx	#, ivtmp.10
	subq	$1, %rax	#, ivtmp.11
# eval/problem66/code.c:13:             xs[i] = xs[len - 1 - i];
	movb	%sil, -1(%rdx)	# _4, MEM[(char *)_37]
# eval/problem66/code.c:14:             xs[len - 1 - i] = temp;
	movb	%cl, 1(%rax)	# temp, MEM[(char *)_39]
# eval/problem66/code.c:11:         for (int i = 0; i < len / 2; i++) {
	cmpq	%rdi, %rdx	# _46, ivtmp.10
	jne	.L5	#,
.L4:
# eval/problem66/code.c:25: }
	movq	56(%rsp), %rax	# D.3486, tmp134
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp134
	jne	.L11	#,
	addq	$64, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%r13, %rax	# <retval>,
	popq	%rbx	#
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
# eval/problem66/code.c:18:         strcpy(temp, xs + len - shift);
	subq	%rbx, %rax	# shift, tmp110
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%rsp, %r8	#, tmp121
	movl	$50, %edx	#,
	movq	%r8, %rdi	# tmp121,
# eval/problem66/code.c:18:         strcpy(temp, xs + len - shift);
	leaq	0(%r13,%rax), %rsi	#, tmp119
# eval/problem66/code.c:18:         strcpy(temp, xs + len - shift);
	movq	%rax, %r12	# tmp110, _8
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	call	__strcpy_chk@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:138:   return __builtin___strncat_chk (__dest, __src, __len,
	movq	%r12, %rdx	# _8,
	movq	%r13, %rsi	# <retval>,
	movl	$50, %ecx	#,
	movq	%rax, %rdi	# tmp121,
# eval/problem66/code.c:19:         temp[shift] = '\0';
	movb	$0, (%rsp,%rbx)	#, temp[shift_16(D)]
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:138:   return __builtin___strncat_chk (__dest, __src, __len,
	call	__strncat_chk@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movl	$50, %edx	#,
	movq	%r13, %rdi	# <retval>,
	movq	%rax, %rsi	# tmp121,
	call	__strcpy_chk@PLT	#
	jmp	.L4	#
.L11:
# eval/problem66/code.c:25: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE51:
	.size	func0, .-func0
	.local	xs.0
	.comm	xs.0,50,32
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
