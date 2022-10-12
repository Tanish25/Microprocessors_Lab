org 0H
ljmp main
org 100H

main: 
	mov p1, #010H
	acall delay1 
	mov P1, #000H
	acall delay2
	sjmp main
delay1:
	mov R2, #255
	delay1i: 
		mov R1, #255
		here1: djnz R1, here1
		djnz R2, delay1i
	ret
delay2:
	mov R2, #50
	delay2i: 
		mov R1, #50
		here2: djnz R1, here2
		djnz R2, delay2i
	ret

end
