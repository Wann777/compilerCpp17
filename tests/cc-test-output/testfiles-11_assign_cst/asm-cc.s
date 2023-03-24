.globl main
main:
	pushq	%rbp
	movq	%rsp, %rbp

	movl	$4, -8(%rbp)

	movl	$5, -12(%rbp)

	movl	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -16(%rbp)

	movl	-16(%rbp), %eax
	movl	 %eax, -4(%rbp)
	movl	$3, -20(%rbp)

	movl	$8, -24(%rbp)

	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, -28(%rbp)

	movl	$6, -32(%rbp)

	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)

	movl	-36(%rbp), %eax
	movl	 %eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
