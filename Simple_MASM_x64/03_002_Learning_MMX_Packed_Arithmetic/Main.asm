.data
mem64a qword 0FEFFFFFFFFFFFEFDh
mem64b qword 00101010101010101h

.code
Main proc
    movq mm0, mem64a
    movq mm1, mem64b
    paddb mm0, mm1

    mov rax, 0FFFEFFFDFFFEFFFFh
    movq mm0, rax
    mov rax, 00001000100010001h
    movq mm1, rax
    paddw mm0, mm1

    mov rax, 0FFFFFFFAFFFFFFFFh
    movq mm0, rax
    mov rax, 00000000100000001h
    movq mm1, rax
    paddd mm0, mm1

    movq mm0, mem64a
    movq mm1, mem64b
    psubb mm0, mm1

    ret
Main endp
end
