.globl main
main:
	pushq	%rbp
	movq	%rsp, %rbp

	movl	$5, -4(%rbp)

	movl	$3, -8(%rbp)

	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -12(%rbp)

	movl	-12(%rbp), %eax
	popq	%rbp
	ret
