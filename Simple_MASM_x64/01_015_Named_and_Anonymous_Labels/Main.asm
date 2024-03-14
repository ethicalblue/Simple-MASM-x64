.code
Main proc

    mov rax, 3
@@:
    dec rax
    test rax, rax
    jne @b

    mov rax, 9
    jmp @f
    mov rax, 5
@@:
    sub rax, rax
    jmp _exit
    
_exit:
    ret
Main endp
end