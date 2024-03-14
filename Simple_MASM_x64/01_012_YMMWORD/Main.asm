.data
mem256 dword 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0
mem256b dword 1, 2, 3, 4, 5, 6, 7, 8

.code
Main proc
    mov rdx, offset mem256
    vmovups ymm0, ymmword ptr [rdx]

    vmovaps ymm1, ymm0
    
    mov rdx, offset mem256b
    vmovdqu ymm0, ymmword ptr [rdx]

    vmovdqa ymm1, ymm0
    
    mov r8, sizeof ymmword ;256 bits == 32 bytes

    ret
Main endp
end
