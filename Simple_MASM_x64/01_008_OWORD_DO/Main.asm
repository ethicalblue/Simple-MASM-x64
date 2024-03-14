.data
myOword oword 1

.code
Main proc
    mov rdx, offset myOword
    
    ;sizeof myOword == 16 bytes == 128 bits
    mov r8, sizeof myOword
    
    ret
Main endp
end


