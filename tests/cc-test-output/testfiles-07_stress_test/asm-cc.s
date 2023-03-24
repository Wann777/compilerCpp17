.globl main
main:
	pushq	%rbp
	movq	%rsp, %rbp

	movl	$9, -4(%rbp)

	movl	$3, -8(%rbp)

	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)

	movl	$6, -16(%rbp)

	movl	-12(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)

	movl	$7, -24(%rbp)

	movl	$3, -28(%rbp)

	movl	-24(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -32(%rbp)

	movl	-20(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	%eax, -36(%rbp)

	movl	$8, -40(%rbp)

	movl	$4, -44(%rbp)

	movl	-40(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)

	movl	$4, -52(%rbp)

	movl	$2, -56(%rbp)

	movl	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	movl	%eax, -60(%rbp)

	movl	$9, -64(%rbp)

	movl	-60(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)

	movl	-48(%rbp), %eax
	imull	-68(%rbp), %eax
	movl	%eax, -72(%rbp)

	movl	$7, -76(%rbp)

	movl	-72(%rbp), %eax
	cltd
	idivl	-76(%rbp)
	movl	%eax, -80(%rbp)

	movl	-36(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -84(%rbp)

	movl	-84(%rbp), %eax
	popq	%rbp
	ret
