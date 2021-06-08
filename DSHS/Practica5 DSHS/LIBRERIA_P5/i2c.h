/* libreria para manejo del bus I2C */

//retardo para operaciones I2C
void i2c_delay(void);
//genera una condicion de start
void i2c_start(void);
// genera una condición de parada
void i2c_stop(void);
// devuelve verdadero si hay reconocimiento
unsigned char i2c_ack(void);
// reinicia bus para hacer otra operacion
void i2c_restart(void);
// envia un byte
void i2c_write(unsigned char x);
// recibe un byte
unsigned char i2c_read(void);
// envia ack
void i2c_send_ack(unsigned char valor);

