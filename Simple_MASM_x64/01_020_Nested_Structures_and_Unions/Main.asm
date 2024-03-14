Weapon struct
    nameEN byte 128 dup(0)
    price real4 0.0
    union
        meleeDamage qword 0
        rangedDamage qword 0
    ends
    weight qword 0
    struct
        poisoned byte 0
        holy byte 0
    ends
Weapon ends

.data
steelAxe Weapon <"Steel Axe", 449.99, <8>, 300, <0,1>>

.code
Main proc

    ;150 bajtów == 128 (nameEN) + 4 (price) + 8 (union) + + 8 (weight) + 1 (poisoned) + 1 (holy)
    mov r8, sizeof steelAxe

    ret
Main endp
end