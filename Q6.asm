        AREA PROG6, CODE, READONLY
START
        LDR     R0, MEMORY          ; Load the address of the MEMRORY into R0
        LDR     R1, [R0]               ; Load the 32-bit number into R1 (this is the number whose bits we want to count)
        MOV     R2, #0                 ; Initialize counter (R2) to 0
COUNT_LOOP
        CMP     R1, #0                 ; Compare number with 0
        BEQ     END_COUNT              ; If number is 0, we are done
        SUBS    R1, R1, #1             ; Subtract 1 from the number (R1 - 1)
        ADD     R2, R2, #1             ; Increment the counter (R2)
        B       COUNT_LOOP             ; Repeat the loop
END_COUNT
        MOV     R0, R2                 ; Store the result (the count of set bits) in R0
        
HERE B HERE        
MEMORY  DCD   0x40000000  ;     

        END
