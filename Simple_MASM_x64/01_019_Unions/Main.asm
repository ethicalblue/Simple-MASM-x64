myUnion union
    var1 dword 0
    var2 qword 0
    var3 qword 0
myUnion ends

.data
union1 myUnion <7>

.code
Main proc
    mov r8d, union1.var1
    mov r9, union1.var2
    mov r10, union1.var3
    
    ;sizeof myUnion == sizeof qword == 8 bytes
    mov r8, sizeof myUnion

    ret
Main endp
end
