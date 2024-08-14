	AREA ARMex, CODE, READONLY			;Assignment3 using n(n+10)
	ENTRY
	
	MOV r0, #1
	LDR r1, Address1		;Address to store
	
	MOV r2, r0, LSL #1	;r2 = 0010
	ADD r2, r0, LSL #3	;r2 = 0010 + 1000 = 1010

	MOV r3, #10				;n
	
	MOV r4, r2		;r4 = 10
	ADD r4, r3		;r4 = 10 + n
	MUL r5, r4, r3		;r4 = (10 + n)n
	
	STR r5, [r1]					;Store Data(r5)
	MOV pc, lr
	
Address1 DCD &4000				;Address to store array

	END