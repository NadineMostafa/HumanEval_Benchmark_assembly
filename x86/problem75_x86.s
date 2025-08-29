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
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14	# tmp121, arr1
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13	# tmp123, arr2
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%ecx, %r12d	# tmp124, n2
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
# eval/problem75/code.c:9:   for(i=0; i<n1; i++){
	testl	%esi, %esi	# n1
	jle	.L2	#,
	leal	-1(%rsi), %eax	#, tmp110
	movq	%rdi, %rbx	# arr1, ivtmp.16
# eval/problem75/code.c:7:   int i, sum1 = 0, sum2 = 0;
	xorl	%ebp, %ebp	# sum1
	leaq	8(%rdi,%rax,8), %r15	#, _38
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem75/code.c:10:     sum1 += strlen(arr1[i]);
	movq	(%rbx), %rdi	# MEM[(char * *)_47],
# eval/problem75/code.c:9:   for(i=0; i<n1; i++){
	addq	$8, %rbx	#, ivtmp.16
# eval/problem75/code.c:10:     sum1 += strlen(arr1[i]);
	call	strlen@PLT	#
# eval/problem75/code.c:10:     sum1 += strlen(arr1[i]);
	addl	%eax, %ebp	# tmp125, sum1
# eval/problem75/code.c:9:   for(i=0; i<n1; i++){
	cmpq	%rbx, %r15	# ivtmp.16, _38
	jne	.L3	#,
# eval/problem75/code.c:13:   for(i=0; i<n2; i++){
	testl	%r12d, %r12d	# n2
	jle	.L8	#,
.L7:
# eval/problem75/code.c:7:   int i, sum1 = 0, sum2 = 0;
	xorl	%ebx, %ebx	# ivtmp.8
# eval/problem75/code.c:7:   int i, sum1 = 0, sum2 = 0;
	xorl	%r15d, %r15d	# sum2
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem75/code.c:14:     sum2 += strlen(arr2[i]); 
	movq	0(%r13,%rbx,8), %rdi	# MEM[(char * *)arr2_27(D) + ivtmp.8_53 * 8], MEM[(char * *)arr2_27(D) + ivtmp.8_53 * 8]
# eval/problem75/code.c:13:   for(i=0; i<n2; i++){
	addq	$1, %rbx	#, ivtmp.8
# eval/problem75/code.c:14:     sum2 += strlen(arr2[i]); 
	call	strlen@PLT	#
# eval/problem75/code.c:14:     sum2 += strlen(arr2[i]); 
	addl	%eax, %r15d	# tmp126, sum2
# eval/problem75/code.c:13:   for(i=0; i<n2; i++){
	cmpl	%ebx, %r12d	# ivtmp.8, n2
	jg	.L5	#,
.L4:
# eval/problem75/code.c:20:   else if(sum1 > sum2){
	cmpl	%r15d, %ebp	# sum2, sum1
	movq	%r13, %rax	# arr2, arr2
	cmovle	%r14, %rax	# arr1,, arr2
.L1:
# eval/problem75/code.c:27: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
# eval/problem75/code.c:7:   int i, sum1 = 0, sum2 = 0;
	xorl	%ebp, %ebp	# sum1
# eval/problem75/code.c:13:   for(i=0; i<n2; i++){
	testl	%ecx, %ecx	# n2
	jg	.L7	#,
# eval/problem75/code.c:24:     return arr1;
	movq	%rdi, %rax	# arr1, <retval>
	jmp	.L1	#
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem75/code.c:7:   int i, sum1 = 0, sum2 = 0;
	xorl	%r15d, %r15d	# sum2
	jmp	.L4	#
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
