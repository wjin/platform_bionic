/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

    .hidden __set_errno

ENTRY(sched_setaffinity)
    mov     x8, __NR_sched_setaffinity
    svc     #0

    cmn     x0, #(MAX_ERRNO + 1)
    cneg    x0, x0, hi
    b.hi    __set_errno

    ret
END(sched_setaffinity)
