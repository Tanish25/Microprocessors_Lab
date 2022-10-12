#include <AT89C513xA.h>

void delay1(void);

void main(void)
{
	while(1)
	{
		P1 = 0x10;
		delay1();
		P1 = 0x20;
		delay1();
		P1 = 0x40;
		delay1();
		P1 = 0x80;
		delay1();
	}
}

void delay1(void)
{
	int i,j;
	for(i=0;i<0xFF;i++)
		for(j=0;j<0xFF;j++);
}
