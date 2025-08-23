package modelo;

import java.sql.Date;

public class Reserva {
    private int codigoReserva;
    private String estado;
    private Date fechaInicio;
    private Date fechaFin;
    private Double precioDia;
    private String correoUsuario;
    private int codigoPropiedad;
    private int codigoPago;

    public Reserva() {
    }

    public Reserva(int codigoReserva, String estado, Date fechaInicio, Date fechaFin, Double precioDia, String correoUsuario, int codigoPropiedad, int codigoPago) {
        this.codigoReserva = codigoReserva;
        this.estado = estado;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.precioDia = precioDia;
        this.correoUsuario = correoUsuario;
        this.codigoPropiedad = codigoPropiedad;
        this.codigoPago = codigoPago;
    }
    
    

    public int getCodigoReserva() {
        return codigoReserva;
    }

    public void setCodigoReserva(int codigoReserva) {
        this.codigoReserva = codigoReserva;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public Date getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }

    public Double getPrecioDia() {
        return precioDia;
    }

    public void setPrecioDia(Double precioDia) {
        this.precioDia = precioDia;
    }

    public String getCorreoUsuario() {
        return correoUsuario;
    }

    public void setCorreoUsuario(String correoUsuario) {
        this.correoUsuario = correoUsuario;
    }

    public int getCodigoPropiedad() {
        return codigoPropiedad;
    }

    public void setCodigoPropiedad(int codigoPropiedad) {
        this.codigoPropiedad = codigoPropiedad;
    }

    public int getCodigoPago() {
        return codigoPago;
    }

    public void setCodigoPago(int codigoPago) {
        this.codigoPago = codigoPago;
    }

}
