#ORG 7000
LDA 7501H
LHLD 7503
MVI C, 00H

MAIN: 
	CMP L
	JC EXIT
	SUB L
	INR C	
	JNC MAIN
EXIT: 	
	HLT

#ORG 7501H
#DB 04H,00H,03H