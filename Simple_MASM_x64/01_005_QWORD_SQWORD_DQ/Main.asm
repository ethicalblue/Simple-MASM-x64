.data
myQword qword 1
mySQword1 sqword -1
mySQword2 sqword +1
myQwordA dq 1

.code
Main proc
    mov myQword, 7
    mov rax, myQword
    mov rdx, offset myQword
    mov qword ptr [rdx], 5
    
    ;sizeof myQword == 8 bytes == 64 bits
    mov r8, sizeof myQword

    ret
Main endp
end
