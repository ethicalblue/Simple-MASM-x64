
public my_procedure

.code
my_procedure proc

    push rbp
    mov rbp, rsp

    mov rax, 07h

    leave
    ret

my_procedure endp
end