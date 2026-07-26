package modelo;


public class Locacion {
    private int codigoLocacion;
    private String direccion;
    private String departamento;
    private String municipio;
    private String referencia;
    private int codigoPropiedad;

    public Locacion() {
    }

    public Locacion(int codigoLocacion, String direccion, String departamento, String municipio, String referencia, int codigoPropiedad) {
        this.codigoLocacion = codigoLocacion;
        this.direccion = direccion;
        this.departamento = departamento;
        this.municipio = municipio;
        this.referencia = referencia;
        this.codigoPropiedad = codigoPropiedad;
    }

    public int getCodigoLocacion() {
        return codigoLocacion;
    }

    public void setCodigoLocacion(int codigoLocacion) {
        this.codigoLocacion = codigoLocacion;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    public int getCodigoPropiedad() {
        return codigoPropiedad;
    }

    public void setCodigoPropiedad(int codigoPropiedad) {
        this.codigoPropiedad = codigoPropiedad;
    }
    
}
