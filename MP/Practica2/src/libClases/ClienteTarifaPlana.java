package libClases;

public class ClienteTarifaPlana extends Cliente {
	
    private static float tarifa = 20f;
    private static int limiteMinutos = 300;
    private static float exceso = 0.15f;
    
    private float minutosHablados;
    private String nacionalidad;
	
	public ClienteTarifaPlana(String NIF, String nombre, Fecha fechaNac, Fecha fechaAlta, float minutosHablados, String nacionalidad) {
		
		super(NIF, nombre, fechaNac, fechaAlta);
		this.minutosHablados=minutosHablados;
		this.nacionalidad=nacionalidad;		
		
	}
	
    public ClienteTarifaPlana(String NIF, String nombre, Fecha fechaNac, float minutosHablados, String nacionalidad) {
    	
        super(NIF, nombre, fechaNac);
        this.minutosHablados = minutosHablados;
        this.nacionalidad = nacionalidad;
        
    }
    
    public ClienteTarifaPlana(ClienteTarifaPlana ct){
    	
        super(ct);
        this.minutosHablados = ct.minutosHablados;
        this.nacionalidad = ct.nacionalidad;
        
    }
    
    public float getMinutos(){
    	
        return minutosHablados;
        
    }
    
    public String getNacionalidad(){
    	
        return nacionalidad;
        
    }
    
    public void setMinutos(float minutos){
    	
        minutosHablados = minutos;
        
    }
    
    public void setNacionalidad(String nacionalidad){
    	
        this.nacionalidad = nacionalidad;
        
    }
    
    public float Factura() {
    	
    	if (minutosHablados-limiteMinutos>0) {
    		
    		return tarifa + (minutosHablados-limiteMinutos)*exceso;
    		
    	} else return tarifa;
    	
    }
    
    public static void setTarifa(int minutos, float precio) {
    	
    	limiteMinutos=minutos;
    	tarifa=precio;
    	
    }
    
    public static float getTarifa() {
    	
        return tarifa;
        
    }
    public static int getLimite() {
    	
        return limiteMinutos;
        
    }
    
    public String toString(){
    	
        return super.toString()+" "+nacionalidad+" ["+limiteMinutos+" por "+tarifa+"] "+minutosHablados+" ---> "+Factura();
        
    }
    
    public Object clone() {
    	
        return new ClienteTarifaPlana(getNif(), getNombre(), getFechaNac(), getFechaAlta(), getMinutos(), getNacionalidad());
        
    }
    
    public boolean equals(Object o){
    	
        return o instanceof ClienteTarifaPlana && getNif().equals(((Cliente)o).getNif());
        
    }
    
}
