extrn MessageBoxA : proc
extrn ExitProcess : proc

msgbox macro text, caption
    xor r9, r9
    lea r8, caption
    lea rdx, text
    xor rcx, rcx
    call MessageBoxA
endm

bye macro
    xor rcx, rcx
    call ExitProcess
endm

.data
szCaption db "ethical.blue", 0
szText db "Welcome to Windows x64 Assembly Language world!", 0

.code
Main proc
    sub rsp, 28h
    msgbox szText, szCaption

    bye
Main endp
end