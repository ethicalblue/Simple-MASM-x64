.data
sampleVar1 word 1010110001110111b
sampleVar2 word 0111101110110110b
beef qword 0BEEFh

.code
Main proc
    movzx r8d, sampleVar1 ;1010110001110111b
    movzx r9d, sampleVar2 ;0111101110110110b
    and r8d, r9d          ;0010100000110110b

    movzx r8d, sampleVar1
    movzx r9d, sampleVar2
    or r8d, r9d

    movzx r8d, sampleVar1
    movzx r9d, sampleVar2
    xor r8d, r9d

    mov rax, beef
    xor rax, rax

    movzx r8d, sampleVar1
    not r8d

    movzx r8d, sampleVar1
    movzx r9d, sampleVar2
    andn r8d, r8d, r9d

    mov rax, 3
    sub rax, 3
    test rax, rax

    ret
Main endp
end