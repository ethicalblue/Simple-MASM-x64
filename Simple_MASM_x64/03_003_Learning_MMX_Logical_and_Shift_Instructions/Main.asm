.data
mem64a qword 0FF00FF0000FF00FFh
mem64b qword 000FF00FF00FFFF00h

.code
Main proc
    movq mm0, mem64a
    movq mm1, mem64b

    ;Logical AND
    ;MM0 = 0xff00ff0000ff00ff
    ;MM1 = 0x00ff00ff00ffff00
    ;------------------------
    ;MM0 = 0x0000000000ff0000
    pand mm0, mm1

    ;------------------------------------------------

    ;Logical AND NOT
    ;MM0 = 0xff00ff0000ff00ff
    ;MM1 = 0x00ff00ff00ffff00
    ;------------------------
    ;MM0 = 0x00ff00ff0000ff00
    pandn mm0, mm1

    ;------------------------------------------------

    movq mm0, mem64a
    movq mm1, mem64b

    ;Logical OR
    ;MM0 = 0xff00ff0000ff00ff
    ;MM1 = 0x00ff00ff00ffff00
    ;------------------------
    ;MM0 = 0xffffffff00ffffff
    por mm0, mm1

    ;------------------------------------------------

    movq mm0, mem64a
    movq mm1, mem64b

    ;Logical exclusive OR
    ;MM0 = 0xff00ff0000ff00ff
    ;MM1 = 0x00ff00ff00ffff00
    ;------------------------
    ;MM0 = 0xffffffff0000ffff
    pxor mm0, mm1

    ;------------------------------------------------

    mov rax, 00000001000000010000000100000001b
    movq mm0, rax ;MOVQ - Move Quadword

    ;Shift packed words left logical
    ;MM0 = 0...00000001000000010000000100000001b
    ;Counter = 2 bits
    ;------------------------
    ;MM0 = 0...00000100000001000000010000000100b
    psllw mm0, 2

    ret
Main endp
end
