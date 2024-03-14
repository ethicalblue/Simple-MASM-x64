.data
mem64 mmword 1.25
;mem64_2 mmword 6     ;wrong initializer
;mem64_3 mmword 0BADh ;wrong initializer

.code
Main proc
    mov rax, 7

    movq mm0, rax
    movq mm1, mem64

    mov r8, sizeof mmword ;8 bytes = 64 bits

    ret
Main endp
end
