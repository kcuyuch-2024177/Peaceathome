package modelo;

public class Propiedad {
    private int codigoPropiedad;
    private String titulo;
    private String descripcion;
    private String tipoPropiedad;
    private int numHabitaciones;
    private int maxHusped;
    private String correoUsuario;

    public Propiedad() {}
    public Propiedad(int codigoPropiedad, String titulo, String descripcion, String tipoPropiedad, int numHabitaciones, int maxHusped, String correoUsuario) {
        this.codigoPropiedad = codigoPropiedad;
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.tipoPropiedad = tipoPropiedad;
        this.numHabitaciones = numHabitaciones;
        this.maxHusped = maxHusped;
        this.correoUsuario = correoUsuario;
    }

    public int getCodigoPropiedad() {
        return codigoPropiedad;
    }
    public void setCodigoPropiedad(int codigoPropiedad) {
        this.codigoPropiedad = codigoPropiedad;
    }

    public String getTitulo() {
        return titulo;
    }
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getTipoPropiedad() {
        return tipoPropiedad;
    }
    public void setTipoPropiedad(String tipoPropiedad) {
        this.tipoPropiedad = tipoPropiedad;
    }

    public int getNumHabitaciones() {
        return numHabitaciones;
    }
    public void setNumHabitaciones(int numHabitaciones) {
        this.numHabitaciones = numHabitaciones;
    }

    public int getMaxHusped() {
        return maxHusped;
    }
    public void setMaxHusped(int maxHusped) {
        this.maxHusped = maxHusped;
    }

    public String getCorreoUsuario() {
        return correoUsuario;
    }
    public void setCorreoUsuario(String correoUsuario) {
        this.correoUsuario = correoUsuario;
    }
    
    
}
