int64 typedef sqword
int32 typedef sdword
signed typedef sdword
unsigned typedef dword
float typedef real4
bool typedef byte

.const
FALSE equ 0
TRUE equ 1

.data
check bool FALSE
half float 0.5
num1 int64 12345

.code
Main proc
    mov rdx, offset num1
    mov rax, int64 ptr [rdx]
    
    mov r8, sizeof int64
    mov r9, sizeof bool

    ret
Main endp
end
