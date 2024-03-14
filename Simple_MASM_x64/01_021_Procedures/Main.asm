extrn MessageBoxA : proc
extrn ExitProcess : proc

.data
szCaption db "ethical.blue", 0
szText db "Calling procedure example.", 0

.code

SampleProcedure proc
    push rbp
    mov rbp, rsp
    sub rsp, 20h

    xor r9, r9
    lea r8, szCaption
    lea rdx, szText
    xor rcx, rcx
    call MessageBoxA

    add rsp, 20h
    leave
    ret
SampleProcedure endp

Main proc
    sub rsp, 28h
    call SampleProcedure
    
    xor rcx, rcx
    call ExitProcess
Main endp
end