/*
 *	LCD interface example
 *
 *
 */


#include <p18f4520.h>
#include "delay.h"
#include "pic.h"

#define DATA_PORT 		PORTD
#define TRIS_DATA_PORT	TRISD

#define RW_PIN	RA2	// puerto para RW
#define TRIS_RW	RA2	// TRIS para RW
#define RS_PIN	RA3
#define	TRIS_RS	RA3
#define E_PIN	RA1
#define TRIS_E	RA1

#define DON			0x0F
#define DOFF		0x0B
#define CURSOR_ON	0x0F
#define	CURSOR_OFF	0x0D
#define BLINK_ON	0x0F
#define BLINK_OFF	0x0E

#define SHIFT_CUR_LEFT		0x13
#define SHIFT_CUR_RIGHT		0x17
#define	SHIFT_DISP_LEFT		0x1B
#define SHIFT_DISP_RIGHT	0x1F

#define FOUR_BIT	0x2F
#define EIGHT_BIT	0x3F
#define LINE_5X7	0x33
#define LINE_5X10	0x37
#define LINES_5X7	0x3B

#define PARAM_SCLASS auto
#define MEM_MODEL far

void OpenXLCD(unsigned char PARAMSCLASS );
void SetCGRamAddr(unsigned char PARAMSCLASS );
void SetDDRamAddr(unsigned char PARAMSCLASS );
unsigned char BusyXLCD(void);
unsigned char ReadAddrXLCD(void);
char ReadDataXLCD(void);
void WriteDataXLCD(unsigned char PARAMSCLASS );
void DelayFor18TCY(void);


unsigned char BusyXLCD(void) {
	RW_PIN=1;
	RS_PIN=0;
	DelayFor18TCY();
	E_PIN=1;
	DelayFor18TCY();
	if (DATA_PORT&0x80) {
		E_PIN=0;
		RW_PIN=0;
		return 1;
	} else {
		E_PIN=0;
		RW_PIN=0;
		return 0;
	}
}


unsigned char ReadAddrXLCD(void) {
char data;

	RW_PIN=1;
	RS_PIN=0;
	DelayFor18TCY();
	E_PIN=1;
	DelayFor18TCY();
	data=DATA_PORT;
	E_PIN=0;
	RW_PIN=0;	

	return (data&0x7f);
}

char ReadDataXLCD(void) {
char data;
	RW_PIN=1;
	RS_PIN=1;
	DelayFor18TCY();
	E_PIN=1;
	DelayFor18TCY();
	data=DATA_PORT;
	E_PIN=0;
	RW_PIN=0;
	RS_PIN=0;	

return (data);
}

void SetCGRamAddr(unsigned char CGaddr) {
	TRIS_DATA_PORT=0;
	DATA_PORT=CGaddr|0x40;
	RW_PIN=0;
	RS_PIN=0;
	DelayFor18TCY();
	E_PIN=1;
	DelayFor18TCY();
	E_PIN=0;
	DelayFor18TCY();
	TRIS_DATA_PORT=0xff;
}

void SetDDRamAddr(unsigned char DDaddr) {
	TRIS_DATA_PORT=0;
	DATA_PORT=DDaddr|0x80;
	RW_PIN=0;
	RS_PIN=0;
	DelayFor18TCY();
	E_PIN=1;
	DelayFor18TCY();
	E_PIN=0;
	DelayFor18TCY();
	TRIS_DATA_PORT=0xff;
}

void WriteCmdXLCD(unsigned char cmd){
	TRIS_DATA_PORT&=0;
	DATA_PORT&=0;
	DATA_PORT|=cmd;
	RW_PIN=0;
	RS_PIN=0;
	DelayFor18TCY();
	E_PIN=1;
	DelayFor18TCY();
	E_PIN=0;
	DelayFor18TCY();
	TRIS_DATA_PORT|=0xff;
}

void WriteDataXLCD(unsigned char cmd){
	TRIS_DATA_PORT&=0;
	DATA_PORT=cmd;
	RS_PIN=1;
	RW_PIN=0;
	DelayFor18TCY();
	E_PIN=1;
	DelayFor18TCY();
	E_PIN=0;
	DelayFor18TCY();
	TRIS_DATA_PORT=0xff;
}

void DelayFor18TCY(void) {
	Nop();
	Nop();	
	Nop();
	Nop();	
	Nop();	
	Nop();	
	Nop();	
	Nop();	
	Nop();	
	Nop();	
	Nop();	
	Nop();	
}	

void OpenXLCD(unsigned char lcdtype) {

	DATA_PORT&=0;
	TRIS_DATA_PORT|=0xff;
	TRIS_RW=0;
	TRIS_RS=0;
	TRIS_E=0;
	RW_PIN=0;
	RS_PIN=0;
	E_PIN=0;

	DelayMs(15);
	TRIS_DATA_PORT &=0;
	DATA_PORT&=0;
	DATA_PORT|=0x30;
	E_PIN=1;
	DelayUs(15);
	E_PIN=0;

	DelayMs(4);
	DATA_PORT&=0;
	DATA_PORT|=0x30;
	E_PIN=1;
	DelayFor18TCY();
	E_PIN=0;
	DelayUs(100);
	DATA_PORT&=0;
	DATA_PORT|=0x30;
	E_PIN=1;
	DelayFor18TCY();
	E_PIN=0;

	TRIS_DATA_PORT|=0xff;
	while(BusyXLCD());
	WriteCmdXLCD(lcdtype);
	while(BusyXLCD());
	WriteCmdXLCD(DOFF);
	while(BusyXLCD());
	WriteCmdXLCD(DON);
	while(BusyXLCD());
	WriteCmdXLCD(BLINK_ON&CURSOR_ON);
	
	//Borra Display
	while(BusyXLCD());
	WriteCmdXLCD(0x01);

	//Set entry mode
	while(BusyXLCD());
	WriteCmdXLCD(SHIFT_CUR_LEFT);
	//Set DD Ram address a 0
	while(BusyXLCD());
	SetDDRamAddr(0);
}

/*
 * 	Clear and home the LCD
 */

void lcd_clear(void)
{
	//Borra Display
	while(BusyXLCD());
	WriteCmdXLCD(0x01);
}

/* write a string of chars to the LCD */

void lcd_puts(char * buffer)
{
	while (*buffer) {
		while(BusyXLCD());
		WriteDataXLCD(*buffer);
		buffer++;
	}
}


void lcd_putsram(char * buffer)
{
	while (*buffer) {
		while(BusyXLCD());
		WriteDataXLCD(*buffer);
		buffer++;
	}
}


/*
 * Go to the specified position
 */

void lcd_goto(unsigned char fil, unsigned char col)
{
	while(BusyXLCD());	
	if (fil >1) fil=1;  // Solo funciona con display de dos lineas
	// Comandos diferentes para primera o segunda linea
	if (fil > 0) 	WriteCmdXLCD(0xC0+col);
	else WriteCmdXLCD(0x80+col);
}

/* initialise the LCD - put into 4 bit mode */

void lcd_init(void)
{
	//Inicialización general del hardware
	TRISA=0x10;
	TRISB=0x01;  //Salidas para LEDS********
	PORTB=0xFF;  //Apago leds
	TRISC=0xC0;
	TRISD=0x00;
	TRISE=0x08;
	
	PORTA=0x00;
	PORTD=0xFF;
	ADCON1=0x0F; //Desactiva entradas analógicas
	RBPU=0;		 //Pullup para teclado

	OpenXLCD(EIGHT_BIT&LINES_5X7);
	
}
	
void lcd_putch(char c)
{
	while(BusyXLCD());
	WriteDataXLCD(c);
}


void ScrollMessage(unsigned char row,const char Message[])
{
 unsigned int  MHead=0,Done=0,count;

 while(Done==0)
 {
  lcd_goto(row,0);
  for(count=0;count<16;count++)
  {
	  lcd_putch(Message[MHead+count]);
	  if(Message[MHead+count+1]==0) Done=1;
	 }
  MHead++;
  DelayMs(60);
 }
}


