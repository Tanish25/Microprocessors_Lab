org 0H
ljmp main
org 100H

main: 
	mov p1, #010H
	acall delay 
	mov P1, #020H
	acall delay
	mov P1, #040H
	acall delay
	mov P1, #080H
	acall delay
	sjmp main
delay:
	mov R2, #255
	delay1: 
		mov R1, #255
		here: djnz R1, here
		djnz R2, delay1
	ret
end