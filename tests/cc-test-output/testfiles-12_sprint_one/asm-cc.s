.globl main
main:
	pushq	%rbp
	movq	%rsp, %rbp

	movl	$17, -16(%rbp)

	movl	-16(%rbp), %eax
	movl	 %eax, -4(%rbp)
	movl	$42, -20(%rbp)

	movl	-20(%rbp), %eax
	movl	 %eax, -8(%rbp)
	movl	-4(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	%eax, -24(%rbp)

	movl	-8(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -28(%rbp)

	movl	-24(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)

	movl	$1, -36(%rbp)

	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%rbp)

	movl	-40(%rbp), %eax
	movl	 %eax, -12(%rbp)
	movl	-12(%rbp), %eax
	popq	%rbp
	ret
