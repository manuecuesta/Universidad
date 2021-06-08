/*
 *	LCD interface header file
 *	See lcd.c for more info
 */

/* write a byte to the LCD in 4 bit mode */

extern void lcd_write(unsigned char);

/* Clear and home the LCD */

extern void lcd_clear(void);

/* write a string of characters to the LCD */

extern void lcd_puts(char * s);

extern void lcd_putsram(char * s);

/* Go to the specified position */

extern void lcd_goto(unsigned char x, unsigned char y);

/* intialize the LCD - call before anything else */

extern void lcd_init(void);

extern void ScrollMessage(unsigned char row,const char Message[]);

extern void lcd_putch(char c);

