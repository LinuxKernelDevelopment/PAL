	.file	"memtest.c"
	.section	.rodata
.LC0:
	.string	"The result is %d\n"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	movl	$20, 28(%esp)
	movl	$5, 24(%esp)
	movl	28(%esp), %eax
#APP
# 9 "memtest.c" 1
	divb 24(%esp)
	movl %eax, 20(%esp)
# 0 "" 2
#NO_APP
	movl	20(%esp), %edx
	movl	$.LC0, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.4 20100726 (Red Hat 4.4.4-13)"
	.section	.note.GNU-stack,"",@progbits
