extrn MessageBoxA : proc
extrn ExitProcess : proc

.data
szText db "ethical.blue", 0

.code
Main proc
    sub rsp, 28h

    xor r9, r9
    lea r8, szText
    lea rdx, szText
    xor rcx, rcx
    call MessageBoxA

    xor rcx, rcx
    call ExitProcess
Main endp
end