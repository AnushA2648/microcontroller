        AREA PROG8,CODE, READONLY
START
        LDR     R1, =0x40000000     ; Load the base address (0x40000000) into r1
        LDR     R5, [R1]            ; Load value at address 0x40000000 into r5 (10)
        LDR     R6, [R1, #4]        ; Load value at address 0x40000004 into r6 (20)
        LDR     R7, [R1, #8]        ; Load value at address 0x40000008 into r7 (30)
        ADD     R2, R5, R6          ; R2 = R5+R6
        SUB     R2, R2, R7          ; R2 = R2-R7
HERE B HERE
		END