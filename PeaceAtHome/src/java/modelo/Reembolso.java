package modelo;

import java.sql.Date;

public class Reembolso {
    public int codigoReembolso;
    public Date fechaReembolso;
    public Double monto;
    public String transaccionReembolso;
    public int codigoPago;

    public Reembolso() {
    }

    public Reembolso(int codigoReembolso, Date fechaReembolso, Double monto, String transaccionReembolso, int codigoPago) {
        this.codigoReembolso = codigoReembolso;
        this.fechaReembolso = fechaReembolso;
        this.monto = monto;
        this.transaccionReembolso = transaccionReembolso;
        this.codigoPago = codigoPago;
    }

    public int getCodigoReembolso() {
        return codigoReembolso;
    }

    public void setCodigoReembolso(int codigoReembolso) {
        this.codigoReembolso = codigoReembolso;
    }

    public Date getFechaReembolso() {
        return fechaReembolso;
    }

    public void setFechaReembolso(Date fechaReembolso) {
        this.fechaReembolso = fechaReembolso;
    }

    public Double getMonto() {
        return monto;
    }

    public void setMonto(Double monto) {
        this.monto = monto;
    }

    public String getTransaccionReembolso() {
        return transaccionReembolso;
    }

    public void setTransaccionReembolso(String transaccionReembolso) {
        this.transaccionReembolso = transaccionReembolso;
    }

    public int getCodigoPago() {
        return codigoPago;
    }

    public void setCodigoPago(int codigoPago) {
        this.codigoPago = codigoPago;
    }
    
}
