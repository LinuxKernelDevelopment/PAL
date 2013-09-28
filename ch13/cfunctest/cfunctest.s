	.file	"cfunctest.c"
	.text
.globl circumf
	.type	circumf, @function
circumf:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -8(%ebp)
	fildl	-8(%ebp)
	fldl	.LC0
	fmulp	%st, %st(1)
	fstps	-4(%ebp)
	flds	-4(%ebp)
	leave
	ret
	.size	circumf, .-circumf
.globl area
	.type	area, @function
area:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	imull	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	fildl	-8(%ebp)
	fldl	.LC0
	fmulp	%st, %st(1)
	fstps	-4(%ebp)
	flds	-4(%ebp)
	leave
	ret
	.size	area, .-area
	.section	.rodata
.LC2:
	.string	"Radius: %d\n"
.LC3:
	.string	"Circumference: %f\n"
.LC4:
	.string	"Area: %f\n"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	movl	$10, 28(%esp)
	movl	$.LC2, %eax
	movl	28(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	circumf
	movl	$.LC3, %eax
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	area
	movl	$.LC4, %eax
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	-266631570
	.long	1074340345
	.ident	"GCC: (GNU) 4.4.4 20100726 (Red Hat 4.4.4-13)"
	.section	.note.GNU-stack,"",@progbits
