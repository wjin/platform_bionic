/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

    .hidden __set_errno

ENTRY(nanosleep)
    movl    $__NR_nanosleep, %eax
    syscall
    cmpq    $-MAX_ERRNO, %rax
    jb      1f
    negl    %eax
    movl    %eax, %edi
    call    __set_errno
1:
    ret
END(nanosleep)
