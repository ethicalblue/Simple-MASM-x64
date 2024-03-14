.data
mem128a dword 1.0, 2.0, 3.0, 4.0
mem128b qword 1.0, 2.0
mem128c qword 1, 2

.code
Main proc
    movups xmm0, mem128a

    movaps xmm1, xmm0

    movupd xmm0, mem128b

    movapd xmm1, xmm0

    mov rdx, offset mem128c
    movdqu xmm0, xmmword ptr [rdx]

    movdqa xmm1, xmm0

    ret
Main endp
end
