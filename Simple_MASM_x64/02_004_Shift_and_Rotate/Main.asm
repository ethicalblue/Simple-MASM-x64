.code
Main proc
    ;debug me!
    mov r10, 1
    shl r10, 5

    mov r10, 1
    sal r10, 5

    mov r10, 010000000b
    shr r10, 2

    mov r10, 010000000b
    sar r10, 2 ;zachowuje bit znaku

    mov r10, 000000000000000Fh
    rol r10, 10h

    mov r10, 0F000000000000000h
    rcl r10, 011h

    mov r10, 000000000000000Fh
    ror r10, 10h

    mov r10, 000000000000000Fh
    rcr r10, 11h

    xor r9, r9
    xor rax, rax
    not rax
    shld r9, rax, 3

    xor r9, r9
    xor rax, rax
    not rax
    shrd r9, rax, 3

    ret
Main endp
end