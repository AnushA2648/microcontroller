		AREA PROG5,CODE,READONLY
START
        LDR     R1,MEMORY1       ; Load address of MEMORY1 into R1
        LDR     R2,MEMORY2         ; Load address of MEMORY2 into R2
        LDR     R3, [R1]             ; Load the value of NUM1 into R3
        LDR     R4, [R2]             ; Load the value of NUM2 into R4
        ADD     R3, R3, R4           ; R3 = NUM1 + NUM2
        SUB     R4, R3, R4           ; R4 = NUM1 (R3 - NUM2)
        SUB     R3, R3, R4           ; R3 = NUM2 (R3 - NUM1)

        STR     R3, [R1]             ; Store the value of NUM2 (in R3) into NUM1
        STR     R4, [R2]             ; Store the value of NUM1 (in R4) into NUM2
HERE B HERE                 
MEMORY1 DCD  0x40000000  ;               
MEMORY2 DCD  0x40000004  ;               
		END
