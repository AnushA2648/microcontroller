        AREA PROG9, CODE, READONLY
START
        LDR     R2,=0x40000000     ; Load memory address into R2 (memory address 0x40000000)
        LDR     R1, =0x11112222      ; Load value 0x11112222 into R1 (value to write to memory)
        LDR     R0, =0x00000000      ; Load value 0x00000000 into R0 (initial value)
        LDR     R3, =0x12341234      ; Initialize memory with value 0x12341234 (this is the value at 0x40000000)
        SWP     R0, R1, [R2]        ; Swap values: R1 -> memory, memory -> R0
HERE B HERE
        END
