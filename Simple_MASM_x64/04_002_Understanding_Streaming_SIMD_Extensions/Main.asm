.data
mem128a dword 1.0, 2.0, 3.0, 4.0
mem128b dword 1.0, 2.0, 3.0, 4.0
mem128c dword 10.0, 5.0, 8.0, 2.0
mem128d dword 1.0, 2.0, 4.0, 3.0
mem128e dword 1.0, 0.0, 0.0, 1.0
mem128f dword 1.0, 0.0, 1.0, 0.0

mem128g dword 0, 0, 1, 1
mem128h dword 0, 1, 0, 1

.code
Main proc
    movups xmm0, mem128a
    movups xmm1, mem128b
    addps xmm0, xmm1

    movups xmm0, mem128c
    movups xmm1, mem128d
    subps xmm0, xmm1

    movups xmm0, mem128e
    movups xmm1, mem128f
    xorps xmm0, xmm1

    mov rdx, offset mem128g
    movdqu xmm1, xmmword ptr [rdx]
    mov rdx, offset mem128h
    movdqu xmm2, xmmword ptr [rdx]
    pxor xmm1, xmm2

    ret
Main endp
end
