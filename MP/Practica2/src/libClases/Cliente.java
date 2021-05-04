package libClases;

public class Cliente implements Cloneable, Proceso {
	
	private final String nif;		//dni del cliente (letra incluida) (NO puede cambiar)     
	private final int codCliente;   //codigo único (y fijo) generado por la aplicación   
	private String nombre;          //nombre completo del cliente (SI se puede modificar)   
	private final Fecha fechaNac;   //fecha nacimiento del cliente (NO se puede cambiar)   
	private final Fecha fechaAlta;  //fecha de alta del cliente (SI se puede modificar)  
	
	private static int contador = 1;
	private final static Fecha FECHA_DEFECTO = new Fecha(1, 1, 2018);
	
    public Cliente(String NIF, String nom, Fecha fNac, Fecha fAlta){
    	
        this.nif = NIF;
        this.nombre = nom;
        this.fechaNac = (Fecha)fNac.clone();
        this.fechaAlta = (Fecha)fAlta.clone();
        this.codCliente = contador++;
        
    }
    
    public Cliente(String NIF, String nom, Fecha fNac) {
    	
        this(NIF, nom, fNac, (Fecha)FECHA_DEFECTO.clone());
        
    }
    
    public Cliente(Cliente c) {
    	
        this(c.nif, c.nombre, (Fecha)c.fechaNac.clone(), (Fecha)c.fechaAlta.clone());
        
    }
	
	public Fecha getFechaNac() {
		
		//return this.fechaNac; ¡¡¡MAL PORQUE FECHA ES MUTABLE!!!!
		return new Fecha(fechaNac.getDia(), fechaNac.getMes(), fechaNac.getAnio());
		
	}
	
	public void ver() {
		
		System.out.println(this);
		
	}
	
	public Fecha getFechaAlta() {
		
		return (Fecha)fechaAlta.clone();	
		
	}
	
	public final static void setFechaPorDefecto(Fecha f) {
		
		FECHA_DEFECTO.setFecha(f.getDia(), f.getMes(), f.getAnio());

	}
	
	public final static Fecha getFechaPorDefecto() {
		
		return FECHA_DEFECTO;

	}
	
	public void setFechaAlta (Fecha f) {
		
		this.fechaAlta.setFecha(f.getDia(), f.getMes(), f.getAnio());
		
	}
	
	public void setFechaNac(Fecha f) {
		
		this.fechaNac.setFecha(f.getDia(), f.getMes(), f.getAnio());
		
	}
	
	public void setNombre(String Nom) {
		
		this.nombre=Nom;
		
	}
	
	public final String getNombre() {
		
        return nombre;
        
    }
	
	public final String getNif() {
		
		return nif;

	}
	
	public final int getCodCliente() {
		
		return codCliente;
		
	}
	
	public float Factura() {
		
        throw new UnsupportedOperationException("No se puede faacturar un cliente sin tipo.");
        
    }
	
    public String toString(){
    	
        return nif+" "+fechaNac+": "+nombre+" ("+codCliente+" - "+fechaAlta+")";
        
    }
	
	public Object clone() {
		
		return new Cliente(this);
		
	}
	
    public boolean equals(Object o){
    	
        return o instanceof Cliente && nif.equals(((Cliente)o).nif);
        
    }
	
}


