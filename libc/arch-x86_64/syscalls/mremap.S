/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

    .hidden __set_errno

ENTRY(mremap)
    movq    %rcx, %r10
    movl    $__NR_mremap, %eax
    syscall
    cmpq    $-MAX_ERRNO, %rax
    jb      1f
    negl    %eax
    movl    %eax, %edi
    call    __set_errno
1:
    ret
END(mremap)
