#include <AT89C513xA.h>

void delay1(void);
void delay2(void);
void main(void)
{
	while(1)
	{
		P1 = 0x10;
		delay1();
		P1 = 0x00;
		delay2();
		delay2();
	}
}

void delay1(void)
{
	int i,j;
	for(i=0;i<0xFF;i++)
		for(j=0;j<0xFF;j++);
}
void delay2(void)
{
	int i,j;
	for(i=0;i<0xE8;i++)
		for(j=0;j<0xE8;j++);
}