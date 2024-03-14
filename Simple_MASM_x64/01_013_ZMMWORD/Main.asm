.data
mem512 dword 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0,\
           9.0, 10.0, 11.0, 12.0, 13.0, 14.0, 15.0, 16.0
mem512b dword 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16

.code
Main proc
    mov rdx, offset mem512
    vmovups zmm0, zmmword ptr [rdx]

    vmovaps zmm1, zmm0
    
    mov rdx, offset mem512b
    vmovdqu64 zmm0, zmmword ptr [rdx]

    vmovdqa64 zmm1, zmm0
    
    mov r8, sizeof zmmword ;512 bits == 64 bytes

    ret
Main endp
end
