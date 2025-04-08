        AREA PROG10, CODE, READONLY
START
        LDR     R0, SOURCE         ; R0 points to source address
        LDR     R1, DESTINATION    ; R1 points to destination address
        LDM     R0!, {R2-R3}       ; Load 2 words from SOURCE into R2 and R3 (post-increment R0)
        STM     R1!, {R2-R3}       ; Store 2 words from R2 and R3 into DESTINATION (post-increment R1)

SOURCE   
		DCD     0x40000000 
DESTINATION 
		DCD     0x40000015 
HERE B HERE
		END
