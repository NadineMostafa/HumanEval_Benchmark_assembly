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
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# eval/problem121/code.c:4: void func0(int* arr, int arr_size, int k, int* out) {
	movl	%edx, %ebx	# tmp115, k
# eval/problem121/code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	leal	-1(%rsi), %edx	#, _40
# eval/problem121/code.c:4: void func0(int* arr, int arr_size, int k, int* out) {
	movq	%rdi, %r8	# tmp113, arr
	movl	%esi, %r11d	# tmp114, arr_size
	movq	%rcx, %r9	# tmp116, out
# eval/problem121/code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	testl	%edx, %edx	# _40
	jle	.L2	#,
	leaq	4(%rdi), %r10	#, tmp112
	.p2align 4,,10
	.p2align 3
.L3:
	subl	$1, %edx	#,
	movq	%r8, %rax	# arr, ivtmp.17
	movq	%rdx, %rdi	#,
	leaq	(%r10,%rdx,4), %rsi	#, _9
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem121/code.c:7:             if (arr[j] > arr[j + 1]) {
	movl	(%rax), %edx	# MEM[(int *)_27], _4
# eval/problem121/code.c:7:             if (arr[j] > arr[j + 1]) {
	movl	4(%rax), %ecx	# MEM[(int *)_27 + 4B], _8
# eval/problem121/code.c:7:             if (arr[j] > arr[j + 1]) {
	cmpl	%ecx, %edx	# _8, _4
	jle	.L4	#,
# eval/problem121/code.c:9:                 arr[j] = arr[j + 1];
	movl	%ecx, (%rax)	# _8, MEM[(int *)_27]
# eval/problem121/code.c:10:                 arr[j + 1] = temp;
	movl	%edx, 4(%rax)	# _4, MEM[(int *)_27 + 4B]
.L4:
# eval/problem121/code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	addq	$4, %rax	#, ivtmp.17
	cmpq	%rax, %rsi	# ivtmp.17, _9
	jne	.L5	#,
# eval/problem121/code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	movl	%edi, %edx	# ivtmp.24, ivtmp.24
	testl	%edi, %edi	# ivtmp.24
	jne	.L3	#,
.L2:
# eval/problem121/code.c:15:     for (int i = 0; i < k; i++) {
	testl	%ebx, %ebx	# k
	jle	.L1	#,
# eval/problem121/code.c:16:         out[i] = arr[arr_size - k + i];
	subl	%ebx, %r11d	# k, tmp108
	movslq	%ebx, %rsi	# k, _43
	movslq	%r11d, %rax	# tmp108, tmp109
	leaq	(%r8,%rax,4), %rcx	#, _58
	xorl	%eax, %eax	# ivtmp.7
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem121/code.c:16:         out[i] = arr[arr_size - k + i];
	movl	(%rcx,%rax,4), %edx	# MEM[(int *)_58 + ivtmp.7_56 * 4], _20
# eval/problem121/code.c:16:         out[i] = arr[arr_size - k + i];
	movl	%edx, (%r9,%rax,4)	# _20, MEM[(int *)out_32(D) + ivtmp.7_56 * 4]
# eval/problem121/code.c:15:     for (int i = 0; i < k; i++) {
	addq	$1, %rax	#, ivtmp.7
	cmpq	%rax, %rsi	# ivtmp.7, _43
	jne	.L7	#,
.L1:
# eval/problem121/code.c:18: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
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
