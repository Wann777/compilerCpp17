.globl main
main:
	pushq	%rbp
	movq	%rsp, %rbp

	movl	$1, -4(%rbp)

	movl	$2, -8(%rbp)

	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)

	movl	$3, -16(%rbp)

	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)

	movl	$4, -24(%rbp)

	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%rbp)

	movl	$5, -32(%rbp)

	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)

	movl	$6, -40(%rbp)

	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)

	movl	$7, -48(%rbp)

	movl	-44(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)

	movl	$8, -56(%rbp)

	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%rbp)

	movl	$9, -64(%rbp)

	movl	-60(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)

	movl	$10, -72(%rbp)

	movl	-68(%rbp), %edx
	movl	-72(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -76(%rbp)

	movl	-76(%rbp), %eax
	popq	%rbp
	ret
