/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.sql.Time;

/**
 *
 * @author 
 */
public class Servicio {
    private int codigoServicio;
    private String nombre;
    private String descripcion;
    private Time horarioDisponible;
    private String tipoServicio;
    private String estado;
    private Double costoExtra;
    private int codigoReserva;

    public Servicio() {
    }

    public Servicio(int codigoServicio, String nombre, String descripcion, Time horarioDisponible, String tipoServicio, String estado, Double costoExtra, int codigoReserva) {
        this.codigoServicio = codigoServicio;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.horarioDisponible = horarioDisponible;
        this.tipoServicio = tipoServicio;
        this.estado = estado;
        this.costoExtra = costoExtra;
        this.codigoReserva = codigoReserva;
    }

    public int getCodigoServicio() {
        return codigoServicio;
    }

    public void setCodigoServicio(int codigoServicio) {
        this.codigoServicio = codigoServicio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Time getHorarioDisponible() {
        return horarioDisponible;
    }

    public void setHorarioDisponible(Time horarioDisponible) {
        this.horarioDisponible = horarioDisponible;
    }

    public String getTipoServicio() {
        return tipoServicio;
    }

    public void setTipoServicio(String tipoServicio) {
        this.tipoServicio = tipoServicio;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Double getCostoExtra() {
        return costoExtra;
    }

    public void setCostoExtra(Double costoExtra) {
        this.costoExtra = costoExtra;
    }

    public int getCodigoReserva() {
        return codigoReserva;
    }

    public void setCodigoReserva(int codigoReserva) {
        this.codigoReserva = codigoReserva;
    }
}
