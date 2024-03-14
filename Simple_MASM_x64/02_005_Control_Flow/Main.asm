.code
Main proc
    xor rax, rax
    mov rcx, 13
@@:
    inc rax
loop @b

    mov rax, 1
    mov rcx, 2
    add rax, rcx
    cmp rax, 3
    je _seven
    jmp _eight

_seven:
    mov rax, 7
    ret

_eight:
    mov rax, 8
    ret
Main endp
end