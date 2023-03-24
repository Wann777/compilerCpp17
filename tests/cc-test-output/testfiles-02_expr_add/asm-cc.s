.globl main
main:
	pushq	%rbp
	movq	%rsp, %rbp

	movl	$5, -4(%rbp)

	movl	$4, -8(%rbp)

	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)

	movl	-12(%rbp), %eax
	popq	%rbp
	ret
