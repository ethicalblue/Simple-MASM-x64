extrn MessageBoxA : proc
extrn ExitProcess : proc

ItemStructure struct
    titleEN byte 128 dup(0)
    price real4 0.0
ItemStructure ends

.data
sampleItem ItemStructure <"This is sample item.", 9.99>

.code
Main proc
    sub rsp, 28h
    xor r9, r9
    lea r8, sampleItem.titleEN
    lea rdx, sampleItem.titleEN
    xor rcx, rcx
    call MessageBoxA
    
    xor rcx, rcx
    call ExitProcess
Main endp
end