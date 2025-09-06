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
	movl	%edi, %ebx	# tmp108, decimal
# eval/problem80/code.c:6:     char* out = malloc(64);
	movl	$64, %edi	#,
# eval/problem80/code.c:5: char* func0(int decimal) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# eval/problem80/code.c:6:     char* out = malloc(64);
	call	malloc@PLT	#
# eval/problem80/code.c:7:     if (!out) {
	testq	%rax, %rax	# out
	je	.L7	#,
# eval/problem80/code.c:11:     out[63] = '\0';
	movb	$0, 63(%rax)	#, MEM[(char *)out_22 + 63B]
	movq	%rax, %rbp	# tmp109, out
# eval/problem80/code.c:13:     if (decimal == 0) {
	testl	%ebx, %ebx	# decimal
	jne	.L14	#,
# eval/problem80/code.c:14:         out[index--] = '0';
	movb	$48, 62(%rax)	#, MEM[(char *)out_22 + 62B]
	movl	$5, %edi	#, _61
	movl	$60, %r13d	#, _57
	movl	$61, %eax	#, _53
.L5:
# eval/problem80/code.c:23:     out[index--] = 'd';
	addq	%rbp, %r13	# out, _10
# eval/problem80/code.c:22:     out[index--] = 'b';
	movb	$98, 0(%rbp,%rax)	#, *_8
# eval/problem80/code.c:23:     out[index--] = 'd';
	movb	$100, 0(%r13)	#, *_10
# eval/problem80/code.c:27:     char* formatted_out = malloc(len + 3);
	call	malloc@PLT	#
	movq	%rax, %r12	# tmp110, <retval>
# eval/problem80/code.c:28:     if (!formatted_out) {
	testq	%rax, %rax	# <retval>
	je	.L12	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%r13, %rsi	# _10,
	movq	%rax, %rdi	# <retval>,
	call	stpcpy@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:130:   return __builtin___strcat_chk (__dest, __src, __glibc_objsize (__dest));
	movl	$25188, %edx	#,
	movw	%dx, (%rax)	#, MEM <char[1:3]> [(void *)_15]
	movb	$0, 2(%rax)	#, MEM <char[1:3]> [(void *)_15]
.L12:
# eval/problem80/code.c:37:     free(out);
	movq	%rbp, %rdi	# out,
	call	free@PLT	#
.L1:
# eval/problem80/code.c:40: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r12, %rax	# <retval>,
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
.L14:
	.cfi_restore_state
# eval/problem80/code.c:16:         while (decimal > 0) {
	movl	$61, %eax	#, ivtmp.12
	jle	.L15	#,
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem80/code.c:17:             out[index--] = '0' + (decimal % 2);
	movl	%ebx, %edx	# decimal, tmp100
# eval/problem80/code.c:17:             out[index--] = '0' + (decimal % 2);
	movl	%eax, %ecx	# ivtmp.12, index
# eval/problem80/code.c:17:             out[index--] = '0' + (decimal % 2);
	andl	$1, %edx	#, tmp100
# eval/problem80/code.c:17:             out[index--] = '0' + (decimal % 2);
	addl	$48, %edx	#, tmp101
	movb	%dl, 1(%rbp,%rax)	# tmp101, MEM[(char *)out_22 + 1B + ivtmp.12_52 * 1]
# eval/problem80/code.c:16:         while (decimal > 0) {
	subq	$1, %rax	#, ivtmp.12
	sarl	%ebx	# decimal
	jne	.L4	#,
# eval/problem80/code.c:22:     out[index--] = 'b';
	movslq	%ecx, %rax	# index, _53
# eval/problem80/code.c:27:     char* formatted_out = malloc(len + 3);
	movl	$65, %edi	#, tmp103
# eval/problem80/code.c:22:     out[index--] = 'b';
	subl	$1, %ecx	#, _55
# eval/problem80/code.c:27:     char* formatted_out = malloc(len + 3);
	subl	%ecx, %edi	# _55, tmp102
# eval/problem80/code.c:23:     out[index--] = 'd';
	movslq	%ecx, %r13	# _55, _57
# eval/problem80/code.c:27:     char* formatted_out = malloc(len + 3);
	movslq	%edi, %rdi	# tmp102, _61
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L15:
# eval/problem80/code.c:16:         while (decimal > 0) {
	movl	$4, %edi	#, _61
	movl	$61, %r13d	#, _57
	movl	$62, %eax	#, _53
	jmp	.L5	#
.L7:
# eval/problem80/code.c:8:         return NULL;
	xorl	%r12d, %r12d	# <retval>
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
