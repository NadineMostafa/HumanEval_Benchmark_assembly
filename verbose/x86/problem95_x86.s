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
.LFB23:
	.cfi_startproc
	endbr64	
# eval/problem95/code.c:6:     for (int i = 0; i < size; ++i) {
	testl	%esi, %esi	# size
	jle	.L9	#,
	leal	-1(%rsi), %eax	#, tmp102
# eval/problem95/code.c:4:     int largest = 0, sum = 0, num, temp;
	xorl	%r8d, %r8d	# largest
	leaq	4(%rdi,%rax,4), %r9	#, _37
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem95/code.c:6:     for (int i = 0; i < size; ++i) {
	addq	$4, %rdi	#, ivtmp.14
	cmpq	%r9, %rdi	# _37, ivtmp.14
	je	.L20	#,
.L7:
# eval/problem95/code.c:7:         num = lst[i];
	movl	(%rdi), %esi	# MEM[(int *)_9], num
# eval/problem95/code.c:8:         if (num > 1) {
	cmpl	$1, %esi	#, num
	jle	.L3	#,
# eval/problem95/code.c:10:             for (int j = 2; j * j <= num; ++j) {
	cmpl	$3, %esi	#, num
	jle	.L4	#,
# eval/problem95/code.c:11:                 if (num % j == 0) {
	testb	$1, %sil	#, num
	je	.L3	#,
# eval/problem95/code.c:10:             for (int j = 2; j * j <= num; ++j) {
	movl	$2, %ecx	#, j
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem95/code.c:11:                 if (num % j == 0) {
	movl	%esi, %eax	# num, tmp108
	cltd
	idivl	%ecx	# j
# eval/problem95/code.c:11:                 if (num % j == 0) {
	testl	%edx, %edx	# tmp107
	je	.L3	#,
.L5:
# eval/problem95/code.c:10:             for (int j = 2; j * j <= num; ++j) {
	addl	$1, %ecx	#, j
# eval/problem95/code.c:10:             for (int j = 2; j * j <= num; ++j) {
	movl	%ecx, %eax	# j, tmp109
	imull	%ecx, %eax	# j, tmp109
# eval/problem95/code.c:10:             for (int j = 2; j * j <= num; ++j) {
	cmpl	%esi, %eax	# num, tmp109
	jle	.L6	#,
.L4:
# eval/problem95/code.c:17:                 largest = num > largest ? num : largest;
	cmpl	%esi, %r8d	# num, largest
	cmovl	%esi, %r8d	# largest,, num, largest
# eval/problem95/code.c:6:     for (int i = 0; i < size; ++i) {
	addq	$4, %rdi	#, ivtmp.14
	cmpq	%r9, %rdi	# _37, ivtmp.14
	jne	.L7	#,
	.p2align 4,,10
	.p2align 3
.L20:
# eval/problem95/code.c:4:     int largest = 0, sum = 0, num, temp;
	xorl	%r9d, %r9d	# <retval>
# eval/problem95/code.c:22:     while (largest > 0) {
	testl	%r8d, %r8d	# largest
	je	.L1	#,
# eval/problem95/code.c:23:         sum += largest % 10;
	movl	$3435973837, %ecx	#, tmp113
	.p2align 4,,10
	.p2align 3
.L8:
	movl	%r8d, %eax	# largest, largest
	imulq	%rcx, %rax	# tmp113, tmp112
	shrq	$35, %rax	#, tmp110
	leal	(%rax,%rax,4), %edx	#, tmp117
	addl	%edx, %edx	# tmp118
	subl	%edx, %r8d	# tmp118, tmp119
# eval/problem95/code.c:23:         sum += largest % 10;
	addl	%r8d, %r9d	# tmp119, <retval>
# eval/problem95/code.c:24:         largest /= 10;
	movl	%eax, %r8d	# tmp110, largest
# eval/problem95/code.c:22:     while (largest > 0) {
	testl	%eax, %eax	# largest
	jne	.L8	#,
.L1:
# eval/problem95/code.c:28: }
	movl	%r9d, %eax	# <retval>,
	ret	
.L9:
# eval/problem95/code.c:4:     int largest = 0, sum = 0, num, temp;
	xorl	%r9d, %r9d	# <retval>
# eval/problem95/code.c:28: }
	movl	%r9d, %eax	# <retval>,
	ret	
	.cfi_endproc
.LFE23:
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
