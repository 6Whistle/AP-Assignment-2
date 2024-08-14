	AREA ARMex, CODE, READONLY			;Assignment3 using unRolling
	ENTRY
	
	LDR r1, Address1		;Address to store
	
	MOV r0, #11				;ADD 11 ~ 29
	ADD r0, #13
	ADD r0, #15
	ADD r0, #17
	ADD r0, #19
	ADD r0, #21
	ADD r0, #23
	ADD r0, #25
	ADD r0, #27
	ADD r0, #29
	
	STR r0, [r1]					;Store Data
	MOV pc, lr
	
Address1 DCD &4000				;Address to store array

	END