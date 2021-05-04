package libClases;

import java.util.Scanner;

public class Empresa implements Cloneable, Proceso{
	
    private Cliente[] clientes;
    private int nClientes;
    private final int INCREMENTO = 2;
    
    public Empresa() {
    	
        this.clientes = new Cliente[INCREMENTO];
        this.nClientes = 0;
        
    }
    
    public void alta (Cliente c) {
    	
    	int i=0;
    	boolean encontrado=false;
    	
    	while (i<nClientes && encontrado==false) {
    		
    		if (clientes[i].getNif().equals(c.getNif())) {
    			
    			encontrado=true;
    			
    		}
    		
    		i++;
    		
    	}
    		
    	if (encontrado==false) {
    			
    		if (nClientes<clientes.length) {
    				
    			clientes[nClientes]=c;	
    			nClientes++;
    				
    		} else {
    				
    			Cliente[] temp = new Cliente[clientes.length+INCREMENTO];
    				
    			for (int j=0; j<clientes.length; j++) {
    					
    				temp[j]=clientes[j];
    					
    			}
    				
    			clientes = temp;
    			clientes[nClientes]=c;	
    			nClientes++;
    				
    		}
    			
    	}

    }
    
    public void alta () {
    	
    	String dni, nombre;
    	Fecha fechaNac, fechaAlta;
    	float minutosHablados;
    	Cliente c;
    	Scanner cin = new Scanner(System.in);
    	
    	System.out.println("Introduce el dni: ");
    	dni = cin.nextLine();
    	
    	int i=0;
    	boolean encontrado=false;
    	
    	while (i<nClientes && encontrado==false) {
    		
    		if (clientes[i].getNif().equals(dni)) {
    			
    			encontrado=true;
    			
    		} else i++;
    		
    	}
    	
    	if (encontrado==true) {
    		
    		System.out.println("Ya existe un cliente con ese dni\n"+clientes[i]+"\n");
    		
    	}
    		
    	if (encontrado==false) {
    		
    		System.out.print("Introduce el nombre: ");
            nombre = cin.nextLine();
            System.out.println("Introduce la fecha de nacimiento: ");
            fechaNac = Fecha.pedirFecha();
            System.out.println("Introduce la fecha de alta: ");
            fechaAlta = Fecha.pedirFecha();
            System.out.print("Introduce los minutos que habla al mes: ");
            minutosHablados = cin.nextFloat();

            System.out.print("Indique el tipo de contrato del cliente (1-Contrato Movil, 2-Tarifa Plana): ");
            
            if(cin.nextInt() == 1){
                float precioMinuto;
                Fecha Permanencia;
                System.out.print("Precio por minuto: ");
                precioMinuto = cin.nextFloat();
                System.out.println("Fecha fin permanencia:");
                Permanencia = Fecha.pedirFecha();

                c = new ClienteMovil(dni, nombre, fechaNac, fechaAlta, Permanencia, minutosHablados, precioMinuto);
                
            }else{
            	
                String nacionalidad;
                System.out.print("Nacionalidad: ");
                nacionalidad = cin.nextLine();

                c = new ClienteTarifaPlana(dni, nombre, fechaNac, fechaAlta, minutosHablados, nacionalidad);
                
            }
    			
    		alta(c);
    			
    	}
    	//cin.close();

    }
    	
    
    public void baja (String codigo) {
 
    	int i=0;
    	boolean encontrado=false;
    	
    	while (i<nClientes && encontrado==false) {
    		
    		if (clientes[i].getNif().equals(codigo)) {
    			
    			encontrado=true;
    			
    		} else i++;
    		
    	}	
    	if (encontrado==true) {
    	
    	for (int j=i; j<nClientes-1; j++) {
    		
    		clientes[j]=clientes[j+1];
    		
    	}
    	
    	nClientes--;
    		
    	}
    	
    }
    
    
    public void baja() {
    	
    	String dni;
    	Scanner cin = new Scanner(System.in);
    	
    	System.out.println("Introduzca el dni del cliente al que desea dar de baja: ");
    	
    	dni = cin.nextLine();
    	
    	boolean encontrado=false;
    	int z = 0;
    	while (z<nClientes && encontrado==false) {
    		
    		if (clientes[z].getNif().equals(dni)) {
    			
    			encontrado=true;
    			
    		} else z++;
    		
    	}
    	
    	System.out.println("Desea dar de baja al cliente (S/N)");
    	System.out.println("Cliente:"+clientes[z]+"\n");
    	
    	if (cin.nextLine().equals("s")) {
    		
    	
    	System.out.println("Cliente: "+clientes[z]+"\nHa sido eliminado");
    	baja(dni);
    	
    	} else System.out.println("El cliente no ha sido eliminado");
    	
    	//cin.close();
    	
    	
    }
    
    public float factura() {
    	
    	float total=0;
    	
    	for (int i=0; i<nClientes; i++) {
    		
    		total=total+clientes[i].Factura();
    		
    	}
    	
    	return total;
    	
    }
    
    public void descuento(int dto) {
    	
    	float descuento = (100-dto)/100f;
    	
        for(int i = 0; i < nClientes; i++) {
        	
            if(clientes[i] instanceof ClienteMovil){
            	
                ClienteMovil c = (ClienteMovil)clientes[i];
                c.setPrecioMinuto(c.getPrecioMinuto()*descuento);
                
            }
            
        }
    	
    }
    
    public int getN(){
    	
        return nClientes;
        
    }
    
    public int nClienteMovil(){
    	
        int numero = 0;
        
        for(int i = 0; i < nClientes; i++) {
        	
            if(clientes[i] instanceof ClienteMovil)
                numero++;
            
        }
        
        return numero;
        
    }
    
    public int getClienteTarifaPlana(){
    	
        int numero = 0;
        
        for(int j = 0; j < nClientes; j++) {
        	
            if(clientes[j] instanceof ClienteTarifaPlana)
                numero++;
            
        }
        
        return numero;
        
    }
    
    public void ver() {
    	
        System.out.println(this);
        
    }
    
    public Object clone(){
    	
        Empresa obj=null;
        try{
            obj= (Empresa)super.clone();
            obj.clientes = clientes.clone();
            
            for(int i = 0; i < nClientes; i++) {
            	
                obj.clientes[i] = (Cliente)clientes[i].clone();
                
            }
            
        }catch(CloneNotSupportedException ex){
            
        }
        
        return (Object)obj;
        
    }
    
    public String toString(){
    	
        String texto = "";
        
        for(int i = 0; i < nClientes; i++)
            texto += clientes[i]+"\n";
        
        return texto;
        
    }
    
    
    
}
