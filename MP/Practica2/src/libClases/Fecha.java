package libClases;

import java.util.Scanner;

public final class Fecha implements Cloneable, Proceso{
	
	private int dia;
	private int mes;
	private int anio;
	
	public void setFecha(int d, int m, int a) {
		int dmax, diaMes[] = {31,28,31,30,31,30,31,31,30,31,30,31};
		anio=a; //VIP debo asignar año para al llamar a bisiesto() tengo el año bien
		if(m<1)  //si el mes es incorrecto 
			m=1;
		else if(m>12) //si el mes es incorrecto 
			m=12;
		
		dmax=diaMes[m-1];
		if(m==2 && bisiesto())
			dmax++;
		if(d>dmax)
			d=dmax;
		else if(d<1)
			d=1;
		
		dia=d;
		mes=m;
	}
	
	public Fecha(int dia, int mes, int anio) {
		
		setFecha(dia, mes, anio);
		
	}
	
	public Fecha(Fecha f) {
		
		dia=f.dia;
		mes=f.mes;
		anio=f.anio;
		
	}
	
	public int getDia() { return dia; }
	public int getMes() { return mes; }
	public int getAnio() { return anio; }
	
	public String toString() {
		String s="";
		if(dia<10) 
			s=s+0;s=s+dia+"/";
			
		if(mes<10) 
			s=s+0;s=s+mes+"/"+anio;
			
		return s;
		//LO ANTERIOR SE PUEDE SUSTITUIR POR LO SIGUIENTE
		//return String.format("%02d/%02d/%02d", dia, mes, anio);
		
	}
	
	public boolean bisiesto() {
		
		boolean b=false;
		if(anio% 4 == 0) {
			
			b=true;
			
			if(anio%100 == 0 && anio%400 !=0 )
				b=false;
			
		}
		return b;
		
	}
	
	public void ver() {
		
		System.out.println(this/*.toString()*/);
		
	} 
	
	public static Fecha pedirFecha() {
        Scanner s = new Scanner(System.in);
        Fecha f = null;
        boolean valida;
        
        do{
            System.out.print("Introduce una fecha (dd/mm/aaaa): ");
            String[] datos = s.nextLine().split("/");
            if(datos.length != 3){
                valida = false;
            }else{
                int fDia = Integer.parseInt(datos[0]), fMes = Integer.parseInt(datos[1]), fAnio = Integer.parseInt(datos[2]);
                int maxDias[] = {0,31,(fAnio%400 == 0 || (fAnio%4 == 0 && fAnio%100 != 0))?29:28,31,30,31,30,31,31,30,31,30,31};
                valida = fMes >= 1 && fMes <= 12 && fDia >= 1 && fDia <= maxDias[fMes];
                if(valida)
                    f = new Fecha(fDia, fMes, fAnio);
            }
            if(!valida)
                System.out.println("Fecha no valida");
        }while(!valida);
        
        //s.close();
        return f;
        
    }
	
	static public boolean mayor(Fecha f1, Fecha f2) {
		/*boolean esmayor=false;
		 * if (f1.anio>f2.anio)
		 * esmayor= true;
		 * else if (f1.anio<f2.anio)
		 * esmayor= false;
		 * else {
		 * if (f1.mes>f2.mes)
		 * esmayor= true;
		 * else if (f1.mes<f2.mes)
		 * esmayor= false;
		 * else {
		 * if (f1.dia>f2.dia)
		 * esmayor= true;
		 * else esmayor= false;}
		 * }
		 * return esmayor;
		 * */
		if(f1.anio*10000+f1.mes*100+f1.dia>f2.anio*10000+f2.mes*100+f2.dia)
			return true;
		else return false;
		}
	/*
	  2011/11/10   * 2011*10000+11*100+10=20111110
	  2011/11/09* 2011*10000+11*100+9 =20111109
	*/
	
	public Object clone() {
		//return new Fecha(this);
		Object obj=null;
		
		try {
			
			obj=super.clone(); //sellamaalclone() delaclasebase (Object)
							   //quehacecopiabinariadelosatributos
			
			} catch(CloneNotSupportedException ex) { 				
				System.out.println(" no se puede duplicar");				
				}
		
		return obj;
		
}
	
	public boolean equals(Object obj) {  //true sin son iguales
		
		if(this== obj) 
			return true; //si apuntan al mismo sitio son iguales
		
		if(obj== null) 
			return false; 
		
		if(getClass() != obj.getClass())//if (!(objinstanceofCliente))
			return false; // si los 2 no son de la misma clase no son iguales
		
		Fecha c=(Fecha) obj;
		return(dia==c.dia && mes==c.mes && anio==c.anio);
		
}
	
	public Fecha diaSig() {
		
		Fecha f = (Fecha)clone();
		
		int diaMes[] = {0,31,28,31,30,31,30,31,31,30,31,30,31};
		
		if (bisiesto()) {
			
			diaMes[2]=29;
			
		}
		
		f.dia++;
		
		if (f.dia > diaMes[f.mes]) {
			
			f.dia=1;
			f.mes++;
			
		}else if (f.dia > diaMes[f.mes] && f.mes==12) {
				
				f.dia=1;
				f.mes=1;
				f.anio++; 
				
			}
		
		return f;		
	}
    
		
}
	