.data
myFword fword 1
myFword1 df 1

.code
Main proc
    mov rdx, offset myFword
    
    ;sizeof myFword == 6 bytes == 48 bits
    mov r8, sizeof myFword

    ret
Main endp
end
