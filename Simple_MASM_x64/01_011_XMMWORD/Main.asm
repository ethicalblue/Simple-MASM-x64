.data
mem128 dword 1.0, 2.0, 3.0, 4.0
mem128b qword 1, 2

.code
Main proc
    mov rdx, offset mem128
    movups xmm0, xmmword ptr [rdx]

    movaps xmm1, xmm0
    
    mov rdx, offset mem128b
    movdqu xmm0, xmmword ptr [rdx]

    movdqa xmm1, xmm0
    
    mov r8, sizeof xmmword ;128 bits = 16 bytes
    
    ret
Main endp
end
