.type square, @function
.globl square
square:
  pushl %ebp
  movl %esp, %ebp
  movl 8(%ebp), %eax
  imull %eax, %eax
  movl %ebp, %esp
  popl %ebp
  ret
