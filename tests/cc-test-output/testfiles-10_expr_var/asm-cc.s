.globl main
main:
	pushq	%rbp
	movq	%rsp, %rbp

	movl	$3, -8(%rbp)

	movl	$4, -12(%rbp)

	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)

	movl	$2, -20(%rbp)

	movl	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, -24(%rbp)

	movl	-24(%rbp), %eax
	movl	 %eax, -4(%rbp)
	movl	$30, -32(%rbp)

	movl	-32(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -36(%rbp)

	movl	$4, -40(%rbp)

	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)

	movl	-44(%rbp), %eax
	movl	 %eax, -28(%rbp)
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%rbp)

	movl	-48(%rbp), %eax
	popq	%rbp
	ret
