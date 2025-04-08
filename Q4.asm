        AREA PROG4,CODE,READONLY
START
        LDR     R1, MEMORY        ; Load the address of the number into R1
        LDR     R1, [R1]          ; Load the actual number into R1

        MOV     R2, #2            ; Start checking from divisor 2
        MOV     R3, #1            ; Assume number is prime (1 = prime)

CHECK_LOOP
        CMP     R2, R1            ; Compare divisor with the number
        BGE     IS_PRIME          ; If divisor >= number, it's prime (end of loop)

        MOV     R4, R1            ; Copy the number into R4
        MOV     R5, R2            ; Copy the divisor into R5
        MOV     R6, #0            ; Initialize remainder to 0

DIVIDE_LOOP
        SUB     R4, R4, R5        ; Subtract divisor from the number
        ADD     R6, R6, #1        ; Increment remainder (counter of subtractions)
        CMP     R4, R5            ; Compare remainder with divisor
        BLT     CHECK_NEXT_DIVISOR ; If remainder < divisor, continue checking next divisor
        MOV     R3, #0            ; Set R3 to 0 (not prime)
        B       END_CHECK

CHECK_NEXT_DIVISOR
        ADD     R2, R2, #1        ; Increment divisor by 1
        B       CHECK_LOOP        ; Continue the loop

IS_PRIME
        MOV     R0, #1            ; Set R0 to 1 (prime)

END_CHECK
        MOV     R0, R3            ; Store result in R0 (1 = prime, 0 = not prime)

MEMORY DCD     0x40000000             

HERE B  HERE             
		END
