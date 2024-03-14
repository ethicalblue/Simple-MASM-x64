.data
var1 byte 1, 2, 3, 4, 5, 6, 7
var2 word 1, 2, 3, 4, 5, 6, 7
var3 dword 1, 2, 3, 4, 5, 6, 7
var4 qword 1, 2, 3, 4, 5, 6, 7

bigArray1 qword 2048 dup(0)

bigArray2 byte 512 dup('a')

;multiline arrays
payload byte 090h, 090h, 090h, 090h, 090h, 090h
        byte 090h, 090h, 090h, 090h, 090h
        byte 090h, 090h, 090h, 0C3h
        
payload2 byte 090h, 090h, 090h, 090h, 090h, 090h, \
         090h, 090h, 090h, 090h, 090h, 090h, \
         090h, 090h, 090h, 090h, 0C3h

.code
Main proc
    xor rax, rax
    lea rdx, var1
    mov rcx, 4
    mov al, byte ptr [rdx + rcx * sizeof byte]
    
    xor rax, rax
    lea rdx, var2
    mov rcx, 3
    mov ax, word ptr [rdx + rcx * sizeof word]
    
    xor rax, rax
    lea rdx, var3
    mov rcx, 2
    mov eax, dword ptr [rdx + rcx * sizeof dword]
    
    xor rax, rax
    lea rdx, var4
    mov rcx, 1
    mov rax, qword ptr [rdx + rcx * sizeof qword]
    
    ret
Main endp
end
