/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

    .hidden __set_errno

ENTRY(sendfile)
    mov     ip, r7
    ldr     r7, =__NR_sendfile
    swi     #0
    mov     r7, ip
    cmn     r0, #(MAX_ERRNO + 1)
    bxls    lr
    neg     r0, r0
    b       __set_errno
END(sendfile)
