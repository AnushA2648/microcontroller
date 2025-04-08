	AREA PROG3,CODE,READONLY
START
	LDR     R0, MEMORY          ; NUMBER IS MOVED FROM MEMORY TO R0
	MOV     R1, #0                  ; R1 will hold the sum of squares
	MOV     R2, #5                  ; Loop counter = 5 numbers
LOOP    
	LDR     R3, [R0], #4            ; Load number from memory, post-increment R0
	MUL     R4, R3, R3              ; R4 = R3 * R3 
	ADD     R1, R1, R4              ; R1 = R1 + R4 
	SUBS    R2, R2, #1              ; Decrement loop counter
	BNE     LOOP                    ; If R2 != 0, continue loop
	STR     R1, [R5]                ; Store final sum of squares to memory
MEMORY DCD 0x40000000;
                  
HERE B HERE                       
	END

                
