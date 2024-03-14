.data
myTbyte tbyte 1
myTbyte1 dt 1

.code
Main proc
    mov rdx, offset myTbyte
    
    ;sizeof myTbyte == 10 bytes == 80 bits
    mov r8, sizeof myTbyte

    ret
Main endp
end
