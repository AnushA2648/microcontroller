        AREA PROG7, CODE, READONLY
START   
    MRS r0, CPSR         ; Copy the Current Program Status Register (CPSR) to r0   
    MOV r1, r0           ; Copy the CPSR value into r1
    BIC r1, r1, #0x80000000    ; Clear the Negative flag (Bit 31) in r1  
    MSR CPSR_c, r1       ; Write the modified value to the CPSR (c = condition flags only)  
    MRS r2, CPSR         ; Copy the modified CPSR to r2
HERE  B  HERE               

        END
