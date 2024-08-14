	AREA ARMex, CODE, READONLY			;Assignment3 using Loop
	ENTRY
	
	MOV r0, #1
	LDR r1, Address1		;Address to store
	
	MOV r2, r0				;r2 = 0001
	ADD r2, r2, r0, LSL #1	;r2 = 0001 + 0010 = 0011
	ADD r2, r2, r0, LSL #3	;r2 = 0001 + 0010 + 1000 = 1011 


	MOV r4, r0				;r4 = 00001
	ADD r4, r4, r0, LSL #2	;r4 = 00001 + 00100 = 00101
	ADD r4, r4, r0, LSL #3	;r4 = 00001 + 00100 + 01000 = 01101
	ADD r4, r4, r0, LSL #4	;r4 = 00001 + 00100 + 01000 + 10000 = 11101
	
	MOV r3, #0

Loop
	ADD r3, r2				;r3 = r3 + r2
	
	CMP r2, r4					;if(r2 != 29) r2 = r2+2 and Loop / else goto Endline
	ADDNE r2, r0, LSL #1
	BNE Loop
	BEQ Endline
	

Endline
	STR r3, [r1]					;Store Data
	MOV pc, lr
	
Address1 DCD &4000				;Address to store array

	END