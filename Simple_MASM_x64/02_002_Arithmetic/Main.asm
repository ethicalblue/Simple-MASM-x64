.data
var2 qword 3

.code
Main proc
    mov rax, 1
    add rax, 7

    mov rax, 8
    mov rcx, 1
    sub rax, rcx

    mov rax, 4
    mov r8, -4
    imul r8

    mov rax, 2
    mov rcx, 4
    mul rcx

    ;RAX = -5 = 0xfffffffffffffffb
    mov rax, -5
    cqo
    idiv var2

    mov rax, 5
    cqo
    mov rcx, 2
    div rcx

    mov r8, 1
    inc r8
    inc r8
    inc r8

    dec r8
    dec r8
    dec r8
    dec r8

    mov r9, 7
    neg r9

    ret
Main endp
end