.const
SEVEN equ 07h

.data
var1 qword SEVEN
var2 qword 03h
var3 byte "Hello!", 0
var4 dword 01h, 02h, 03h, 04h
var5 byte 10001110b ;08Eh

.code
Main proc
    mov rax, 02h
    mov rcx, rax
    mov var1, rcx

    ;error
    ;mov var2, var1

    mov rax, var1
    mov var2, rax

    mov rbx, offset var3
    mov byte ptr [rbx + 1], 'a'

    mov rbx, offset var4
    mov dword ptr [rbx + 2], 0FFh

    movzx rax, var5

    movsx rax, var5

    lahf
    sahf

    mov rax, 01h
    mov rcx, 02h
    xchg rax, rcx

    mov rax, "GO BLUE!"

    bswap rax
    bswap rax

    xor rax, rax
    cmovz rcx, var1

    ret
Main endp
end