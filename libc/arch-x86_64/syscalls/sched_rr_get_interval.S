/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

    .hidden __set_errno

ENTRY(sched_rr_get_interval)
    movl    $__NR_sched_rr_get_interval, %eax
    syscall
    cmpq    $-MAX_ERRNO, %rax
    jb      1f
    negl    %eax
    movl    %eax, %edi
    call    __set_errno
1:
    ret
END(sched_rr_get_interval)
