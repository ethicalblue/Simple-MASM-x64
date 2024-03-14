.data
myByte byte 1
mySByte1 sbyte -1
mySByte2 sbyte +1
myByteA db 1

.code
Main proc
    mov myByte, 7
    mov al, myByte
    mov rdx, offset myByte
    mov byte ptr [rdx], 5
    
    ;sizeof myByte == 1 byte
    mov r8, sizeof myByte

    ret
Main endp
end
