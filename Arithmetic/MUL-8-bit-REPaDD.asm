#ORG 7000
LHLD 7501H
XCHG
LDA 7503H
//INR A
MAIN:
	CPI 00H
	JZ STOP
	DAD D
	DCR A
	JMP MAIN
STOP:
	SHLD 7504
	HLT
		
	

#ORG 7501H
#DB FFH,00H,FFH