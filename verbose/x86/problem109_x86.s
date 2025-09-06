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
.LFB39:
	.cfi_startproc
	endbr64	
# eval/problem109/code.c:6:     for (int i = 0; i < size; i++) {
	testl	%esi, %esi	# size
	jle	.L7	#,
	leal	-1(%rsi), %eax	#, tmp100
# eval/problem109/code.c:5:     int num = 0;
	xorl	%r9d, %r9d	# <retval>
# eval/problem109/code.c:13:                 sum += w % 10;
	movl	$3435973837, %r10d	#, tmp138
	leaq	4(%rdi,%rax,4), %r11	#, _35
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L11:
# eval/problem109/code.c:8:             num += 1;
	addl	$1, %r9d	#, <retval>
.L4:
# eval/problem109/code.c:6:     for (int i = 0; i < size; i++) {
	addq	$4, %rdi	#, ivtmp.8
	cmpq	%r11, %rdi	# _35, ivtmp.8
	je	.L1	#,
.L6:
# eval/problem109/code.c:7:         if (n[i] > 0) {
	movl	(%rdi), %eax	# MEM[(int *)_10], _4
# eval/problem109/code.c:7:         if (n[i] > 0) {
	testl	%eax, %eax	# _4
	jg	.L11	#,
# eval/problem109/code.c:11:             int w = abs(n[i]);
	movl	%eax, %edx	# _4, w
	negl	%edx	# w
# eval/problem109/code.c:12:             while (w >= 10) {
	cmpl	$-9, %eax	#, _4
	jge	.L4	#,
# eval/problem109/code.c:10:             int sum = 0;
	xorl	%esi, %esi	# sum
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem109/code.c:13:                 sum += w % 10;
	movl	%edx, %eax	# w, w
	movl	%edx, %r8d	# w, tmp112
	imulq	%r10, %rax	# tmp138, tmp105
	shrq	$35, %rax	#, tmp103
	leal	(%rax,%rax,4), %ecx	#, tmp110
	addl	%ecx, %ecx	# tmp111
	subl	%ecx, %r8d	# tmp111, tmp112
	movl	%edx, %ecx	# w, w
# eval/problem109/code.c:14:                 w = w / 10;
	movl	%eax, %edx	# tmp103, w
# eval/problem109/code.c:13:                 sum += w % 10;
	addl	%r8d, %esi	# tmp112, sum
# eval/problem109/code.c:12:             while (w >= 10) {
	cmpl	$99, %ecx	#, w
	jg	.L5	#,
# eval/problem109/code.c:17:             if (sum > 0) num += 1;
	xorl	%eax, %eax	# tmp136
	cmpl	%edx, %esi	# w, sum
	setg	%al	#, tmp136
# eval/problem109/code.c:6:     for (int i = 0; i < size; i++) {
	addq	$4, %rdi	#, ivtmp.8
# eval/problem109/code.c:17:             if (sum > 0) num += 1;
	addl	%eax, %r9d	# tmp136, <retval>
# eval/problem109/code.c:6:     for (int i = 0; i < size; i++) {
	cmpq	%r11, %rdi	# _35, ivtmp.8
	jne	.L6	#,
.L1:
# eval/problem109/code.c:21: }
	movl	%r9d, %eax	# <retval>,
	ret	
.L7:
# eval/problem109/code.c:5:     int num = 0;
	xorl	%r9d, %r9d	# <retval>
# eval/problem109/code.c:21: }
	movl	%r9d, %eax	# <retval>,
	ret	
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
