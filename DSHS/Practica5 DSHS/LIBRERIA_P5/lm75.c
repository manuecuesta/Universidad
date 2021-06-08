#include "pic.h"
#include "i2c.h"

// inicializa sensor de temperatura
unsigned char lm75_init(void) {
	i2c_start();
	i2c_write(0x90); //Byte de control
	if (i2c_ack()) return (1);
	i2c_write(0x01); //Configura registro
	if (i2c_ack()) return (2);
	i2c_write(0x18); //Configura byte
	if (i2c_ack()) return (3);
	i2c_stop();
	return (0);
}

//lee temperatura en grados*100
signed int lm75_read(void) {
signed int tmp;
unsigned char tmp1,tmp2,decimal;
signed char negativo;

	i2c_start();
	i2c_write(0x90); //Byte de control
	i2c_ack();
	i2c_write(0x00); //Direccion registro
	i2c_ack();
	i2c_restart();
	i2c_write(0x91); //Byte de control
	i2c_ack();
	tmp1=i2c_read(); //Leer temperatura
	i2c_send_ack(1);
	tmp2=i2c_read(); //Leer temperatura
	i2c_send_ack(0);
	i2c_stop();
	// calculo de grados centigrados
	negativo=1;
	if (tmp1&0x80) {
		tmp1=~tmp1+1;   
		negativo=-1;
	}
	decimal=(tmp2&0x80)? 1:0;
	tmp=tmp1;
	return (tmp*10*negativo)+(5*decimal);
}