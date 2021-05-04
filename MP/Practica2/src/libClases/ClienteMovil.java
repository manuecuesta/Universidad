package libClases;

public class ClienteMovil extends Cliente {
	
    private Fecha fechaPermanencia;
    private float minutosHablados, precioMinuto;
	
	public ClienteMovil(String NIF, String nom, Fecha fNac, Fecha fAlta, Fecha Perman, float minutosHablados, float precioMinuto) {
		
		super(NIF, nom, fNac, fAlta);
		this.fechaPermanencia=Perman;
		this.minutosHablados=minutosHablados;
		this.precioMinuto=precioMinuto;
		
	}
	
    public ClienteMovil(String NIF, String nom, Fecha fNac, Fecha fAlta, float minutosHablados, float precioMinuto) {
    	
        this(NIF, nom, fNac, fAlta, new Fecha(fAlta.getDia(), fAlta.getMes(), fAlta.getAnio()+1), minutosHablados, precioMinuto);
        
    }
    
    public ClienteMovil(String NIF, String nom, Fecha fNac, float minutosHablados, float precioMinuto) {
    	
        this(NIF, nom, fNac, getFechaPorDefecto() , minutosHablados, precioMinuto);
        
    }
    
    public ClienteMovil(ClienteMovil CM) {
    	
        super(CM);
        this.minutosHablados = CM.minutosHablados;
        this.precioMinuto = CM.precioMinuto;
        this.fechaPermanencia = (Fecha)fechaPermanencia.clone();
        
    }
    

    
    public float Factura() {
    	
    	return this.precioMinuto*this.minutosHablados;
    	
    }
    
    public void setFPermanencia(Fecha f) {
    	
    	this.fechaPermanencia.setFecha(f.getDia(), f.getMes(), f.getAnio()); 
    	   	
    }
    
    public Fecha getFPermanencia() {
    	
    	return fechaPermanencia;
    	
    }
    
    public float getMinutos(){
    	
        return minutosHablados;
        
    }
    
    public void setMinutos(float minutos){
    	
        minutosHablados = minutos;
        
    }
    
    public float getPrecioMinuto(){
    	
        return precioMinuto;
        
    }
    
    public void setPrecioMinuto(float minutos){
    	
        precioMinuto = minutos;
        
    }
    
    public String toString(){
    	
        return super.toString()+" "+fechaPermanencia+" "+minutosHablados+" x "+precioMinuto+" ---> "+Factura();
        
    }
    
    public Object clone() {
		
    	return new ClienteMovil(getNif(), getNombre(), getFechaNac(), getFechaAlta(), getFPermanencia(), getMinutos(), getPrecioMinuto());
		
	}
    
    public boolean equals(Object o){
    	
        return o instanceof ClienteMovil && getNif().equals(((Cliente)o).getNif());
        
    }
    
}
