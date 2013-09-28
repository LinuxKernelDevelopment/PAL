.section .text
.type areafunc, @function
.globl areafunc
areafunc:
   pushl %ebp
   movl %esp, %ebp

   fldpi
   filds 8(%ebp)
   fmul %st(0), %st(1)
   fmul %st(1), %st(0)
   movl %ebp, %esp
   popl %ebp
   ret
