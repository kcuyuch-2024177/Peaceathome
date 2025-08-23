package modelo;

import java.util.Date;

/**
 *
 * @author ANGEL GRIJALVA
 */
public class SoporteTecnico {
    
    private Integer codigoSoporteTecnico;
    private String estado;
    private String asunto;
    private String prioridad;
    private String categoria;
    private Date fechaCreacion;
    private Integer codigoReserva;
    private String correoUsuario;

    public SoporteTecnico() {
    }

    public Integer getCodigoSoporteTecnico() {
        return codigoSoporteTecnico;
    }

    public void setCodigoSoporteTecnico(Integer codigoSoporteTecnico) {
        this.codigoSoporteTecnico = codigoSoporteTecnico;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getAsunto() {
        return asunto;
    }

    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }

    public String getPrioridad() {
        return prioridad;
    }

    public void setPrioridad(String prioridad) {
        this.prioridad = prioridad;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public Integer getCodigoReserva() {
        return codigoReserva;
    }

    public void setCodigoReserva(Integer codigoReserva) {
        this.codigoReserva = codigoReserva;
    }

    public String getCorreoUsuario() {
        return correoUsuario;
    }

    public void setCorreoUsuario(String correoUsuario) {
        this.correoUsuario = correoUsuario;
    }

    
}