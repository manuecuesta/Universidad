/* Para la placa de SURE ELECTRONICS */
#include "pic.h"

#define SCL RC3
#define SDA RC4
//retardo para operaciones I2C
void i2c_delay(void) {
unsigned char delay;
	for(delay=0;delay<30;delay++);
}

void i2c_start(void) {
	TRISC3 = 0;
	TRISC4 = 0; /* configura SCL y SDA como salidas */
	SDA = 0;
	i2c_delay(); /* retardo */
	SCL = 1;
	i2c_delay();
	SDA = 1;
	i2c_delay();
	SDA=0;
	i2c_delay(); /* condicion de Start */
}

// genera una condición de parada
void i2c_stop(void) {
	SCL=0;
	i2c_delay();
	SDA=0; /* condicion de Stop */
	TRISC4=0; /* SDA SALIDA */
	i2c_delay();
	SCL = 1;
	i2c_delay();
	SDA = 1;
}

// devuelve verdadero si hay reconocimiento
unsigned char i2c_ack(void) {
	SCL=0; /* Acknowledge */
	i2c_delay();
	TRISC4=1; /* SDA Input */
	i2c_delay();
	SCL=1;
	i2c_delay(); /* Test Acknowledge */
	return(SDA);
}

// envia reconocimiento
void i2c_send_ack(unsigned char valor) {
	SCL=0; /* Acknowledge */
	i2c_delay();
	TRISC4=0; /* SDA Output */
	SDA=valor;
	i2c_delay();
	SCL=1;
	i2c_delay(); /* Test Acknowledge */
}


// reinicia bus para hacer otra operacion
void i2c_restart(void) {
 SCL=0;
 i2c_delay();
 SCL=1;
 i2c_delay();
 SDA=0;                  	/* Condicion de Inicio */
 TRISC4=0;		 			/* Salida SDA */
 i2c_delay();             
}

// envia un byte
void i2c_write(unsigned char x){
unsigned char i;
	i=0x80;
	do {
		SCL=0;
		TRISC4 =0; /* SDA SALIDA */
		i2c_delay();
		if (x&i) SDA=1;
		else SDA=0;
		i2c_delay();
		SCL=1;
		i2c_delay();
		i>>=1;
	} while(i!=0);
}

// recibe un byte
unsigned char i2c_read(void) {
unsigned char i,x;

 TRISC4=1;		/* SDA ENTRADA */
 x=0;
 i=0x80;
 do
  {
   SCL=0;
   i2c_delay();
   SCL=1;
   i2c_delay();
   if (SDA) x=x|i;
   i>>=1;
  } while(i!=0);
 return x;
}