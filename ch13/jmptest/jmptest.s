	.file	"jmptest.c"
	.section	.rodata
.LC0:
	.string	"The larger value is %d\n"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	movl	$10, 20(%esp)
	movl	$20, 24(%esp)
	movl	20(%esp), %eax
	movl	24(%esp), %edx
#APP
# 9 "jmptest.c" 1
	cmp %eax, %edx
	jge greater
	movl %eax, %eax
	jmp end
greater:
	movl %edx, %eax
end:
# 0 "" 2
#NO_APP
	movl	%eax, 28(%esp)
	movl	$.LC0, %eax
	movl	28(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.4 20100726 (Red Hat 4.4.4-13)"
	.section	.note.GNU-stack,"",@progbits
