	AREA ARMex, CODE, READONLY
	ENTRY
	
	LDR r0, =Value1		;Load Value1's address at  r0
	LDR r1, =Value2		;Load Value2's address at  r1
	LDR r4, Address1		;Address to store state(is same)
	MOV r5, #0x0A			;state
	
Main	
	LDRB r2, [r0], #1		;load 1bit char from Value1
	LDRB r3, [r1], #1 	;load 1bit char from Value2
	
	CMP r2, r3				;compare r2, r3
	MOVNE r5, #0x0B		;if r2 != r3, r5 = 0x0B 

	CMP r2, #0				;compare r2, 0
	BEQ Endline 			;if r2 == 0, goto Endline
	B		Main				;else goto Main

Endline
	STR r5, [r4]				;store state at Address1
	MOV pc, lr
	
	
Value1 DCB "Hello_world",0			;Compare String
Value2 DCB "Hello_world",0			;CompareString

Address1 DCD &4000

	END