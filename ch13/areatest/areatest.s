	.file	"areatest.c"
	.section	.rodata
.LC0:
	.string	"The result is %f\n"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	movl	$10, 24(%esp)
#APP
# 8 "areatest.c" 1
	fild 24(%esp)
	fimul 24(%esp)
	fldpi
	fmul %st(1), %st(0)
# 0 "" 2
#NO_APP
	fstps	28(%esp)
	flds	28(%esp)
	movl	$.LC0, %eax
	fstpl	4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.4 20100726 (Red Hat 4.4.4-13)"
	.section	.note.GNU-stack,"",@progbits
