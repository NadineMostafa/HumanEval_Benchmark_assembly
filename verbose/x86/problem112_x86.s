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
.LFB35:
	.cfi_startproc
	endbr64	
	subq	$120, %rsp	#,
	.cfi_def_cfa_offset 128
# eval/problem112/code.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	movq	%rdi, %r8	# tmp117, test
	movq	%rcx, %r10	# tmp120, letters
# eval/problem112/code.c:5:     int local_freq[26] = {0}; // for 'a' to 'z'
	movl	$13, %ecx	#, tmp106
# eval/problem112/code.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	movq	%rax, 104(%rsp)	# tmp121, D.2849
	xorl	%eax, %eax	# tmp121
# eval/problem112/code.c:5:     int local_freq[26] = {0}; // for 'a' to 'z'
	movq	%rsp, %r9	#, tmp116
# eval/problem112/code.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	movq	%rdx, %r11	# tmp119, max_count
# eval/problem112/code.c:5:     int local_freq[26] = {0}; // for 'a' to 'z'
	movq	%r9, %rdi	# tmp116, tmp104
	rep stosq
# eval/problem112/code.c:10:     while (*ptr) {
	movsbl	(%r8), %eax	# *test_31(D),
	testb	%al, %al	# _6
	je	.L9	#,
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem112/code.c:11:         if (*ptr != ' ') {
	cmpb	$32, %al	#, _6
	je	.L3	#,
# eval/problem112/code.c:12:             int letter_index = *ptr - 'a';
	subl	$97, %eax	#, letter_index
# eval/problem112/code.c:13:             local_freq[letter_index]++;
	cltq
# eval/problem112/code.c:13:             local_freq[letter_index]++;
	movl	(%rsp,%rax,4), %edi	# local_freq[letter_index_42], tmp125
	leal	1(%rdi), %edx	#, _5
	cmpl	%edx, %ecx	# _5, local_max
	movl	%edx, (%rsp,%rax,4)	# _5, local_freq[letter_index_42]
	cmovl	%edx, %ecx	# local_max,, _5, local_max
.L3:
# eval/problem112/code.c:10:     while (*ptr) {
	movsbl	1(%r8), %eax	# MEM[(const char *)ptr_44],
# eval/problem112/code.c:18:         ptr++;
	addq	$1, %r8	#, test
# eval/problem112/code.c:10:     while (*ptr) {
	testb	%al, %al	# _6
	jne	.L4	#,
# eval/problem112/code.c:22:         freq[i] = local_freq[i];
	movl	(%rsp), %edx	# local_freq[0], pretmp_45
.L2:
# eval/problem112/code.c:6:     int local_max = 0;
	xorl	%eax, %eax	# ivtmp.7
# eval/problem112/code.c:8:     int idx = 0;
	xorl	%edi, %edi	# idx
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L16:
# eval/problem112/code.c:22:         freq[i] = local_freq[i];
	movl	(%r9,%rax,4), %edx	# MEM[(int *)&local_freq + ivtmp.7_10 * 4], pretmp_45
.L7:
# eval/problem112/code.c:22:         freq[i] = local_freq[i];
	movl	%edx, (%rsi,%rax,4)	# pretmp_45, MEM[(int *)freq_37(D) + ivtmp.7_11 * 4]
# eval/problem112/code.c:23:         if (local_freq[i] == local_max) {
	cmpl	%edx, %ecx	# pretmp_45, local_max
	jne	.L5	#,
# eval/problem112/code.c:24:             letters[idx++] = 'a' + i;
	movslq	%edi, %rdx	# idx, idx
# eval/problem112/code.c:24:             letters[idx++] = 'a' + i;
	leal	97(%rax), %r8d	#, tmp112
# eval/problem112/code.c:24:             letters[idx++] = 'a' + i;
	addl	$1, %edi	#, idx
# eval/problem112/code.c:24:             letters[idx++] = 'a' + i;
	movb	%r8b, (%r10,%rdx)	# tmp112, *_57
.L5:
# eval/problem112/code.c:21:     for (int i = 0; i < 26; i++) {
	addq	$1, %rax	#, ivtmp.7
	cmpq	$26, %rax	#, ivtmp.7
	jne	.L16	#,
# eval/problem112/code.c:29:     letters[idx] = '\0';
	movslq	%edi, %rdi	# idx, idx
# eval/problem112/code.c:28:     *max_count = local_max;
	movl	%ecx, (%r11)	# local_max, *max_count_32(D)
# eval/problem112/code.c:29:     letters[idx] = '\0';
	movb	$0, (%r10,%rdi)	#, *_18
# eval/problem112/code.c:30: }
	movq	104(%rsp), %rax	# D.2849, tmp122
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp122
	jne	.L17	#,
	addq	$120, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
.L9:
	.cfi_restore_state
# eval/problem112/code.c:10:     while (*ptr) {
	xorl	%edx, %edx	# pretmp_45
# eval/problem112/code.c:6:     int local_max = 0;
	xorl	%ecx, %ecx	# local_max
	jmp	.L2	#
.L17:
# eval/problem112/code.c:30: }
	call	__stack_chk_fail@PLT	#
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
