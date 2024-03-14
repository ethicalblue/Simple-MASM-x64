extrn MessageBoxW : proc
extrn MultiByteToWideChar : proc
extrn ExitProcess : proc

.const
CP_UTF8 equ 65001

.data
multibyteText db "Мова Aсемблера (Mova Asemblera)", 0
wideText db 512 dup(0)

.code
Main proc
    sub rsp, 38h

    mov qword ptr [rsp+28h], sizeof wideText
    lea rdx, wideText
    mov qword ptr [rsp+20h], rdx
    mov r9, sizeof multibyteText
    lea r8, multibyteText
    xor rdx, rdx
    mov rcx, CP_UTF8
    call MultiByteToWideChar

    xor r9, r9
    lea r8, wideText
    lea rdx, wideText
    xor rcx, rcx
    call MessageBoxW

    xor rcx, rcx
    call ExitProcess
Main endp
end
