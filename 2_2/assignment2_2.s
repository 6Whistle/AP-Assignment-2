	AREA ARMex, CODE, READONLY
	ENTRY
	
	LDR r0, =Value1		;Load Value1's address at  r0
	LDR r1, Address1		;Address to store
	
Main	
	LDR r2, [r0], #4		;load int data from Value1(order)
	STR r2, [r1], #-4		;Store int data at Address1(revarse order)
	
	CMP r2, #1
	BEQ Endline				;if r2 == 1, goto Endline
	B		Main				;else goto Main
	
Endline
	MOV pc, lr
	
	
Value1 DCD 10, 9, 8, 7, 6, 5, 4, 3, 2, 1			;Compare String

Address1 DCD &4024				;Address to store array

	END