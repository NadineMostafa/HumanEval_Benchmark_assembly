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
# eval/problem76/code.c:5:     if (a < 2) return 0;
	xorl	%eax, %eax	# <retval>
# eval/problem76/code.c:5:     if (a < 2) return 0;
	cmpl	$1, %edi	#, a
	jle	.L1	#,
# eval/problem76/code.c:7:     for (int i = 2; i * i <= a; i++) {
	movl	$2, %ecx	#, i
# eval/problem76/code.c:6:     int num = 0;
	xorl	%esi, %esi	# num
# eval/problem76/code.c:7:     for (int i = 2; i * i <= a; i++) {
	cmpl	$3, %edi	#, a
	jle	.L19	#,
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem76/code.c:8:         while (a % i == 0) {
	movl	%edi, %eax	# a, tmp102
	cltd
	idivl	%ecx	# i
# eval/problem76/code.c:8:         while (a % i == 0) {
	testl	%edx, %edx	# tmp101
	jne	.L7	#,
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem76/code.c:9:             a = a / i;
	movl	%edi, %eax	# a, a
# eval/problem76/code.c:10:             num++;
	addl	$1, %esi	#, num
# eval/problem76/code.c:9:             a = a / i;
	cltd
	idivl	%ecx	# i
# eval/problem76/code.c:8:         while (a % i == 0) {
	cltd
# eval/problem76/code.c:9:             a = a / i;
	movl	%eax, %edi	# a, a
# eval/problem76/code.c:8:         while (a % i == 0) {
	idivl	%ecx	# i
# eval/problem76/code.c:8:         while (a % i == 0) {
	testl	%edx, %edx	# tmp94
	je	.L5	#,
.L7:
# eval/problem76/code.c:7:     for (int i = 2; i * i <= a; i++) {
	addl	$1, %ecx	#, i
# eval/problem76/code.c:7:     for (int i = 2; i * i <= a; i++) {
	movl	%ecx, %eax	# i, tmp96
	imull	%ecx, %eax	# i, tmp96
# eval/problem76/code.c:7:     for (int i = 2; i * i <= a; i++) {
	cmpl	%edi, %eax	# a, tmp96
	jle	.L3	#,
# eval/problem76/code.c:13:     if (a > 1) num++;
	cmpl	$1, %edi	#, a
	jle	.L20	#,
# eval/problem76/code.c:14:     return num == 3;
	xorl	%eax, %eax	# <retval>
	cmpl	$2, %esi	#, num
	sete	%al	#, <retval>
.L1:
# eval/problem76/code.c:15: }
	ret	
.L20:
# eval/problem76/code.c:14:     return num == 3;
	xorl	%eax, %eax	# <retval>
	cmpl	$3, %esi	#, num
	sete	%al	#, <retval>
	ret	
.L19:
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
