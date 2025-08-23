/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 
 */
public class ServicioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    public List listar(){
        
        String sql = "select * from servicio";
        List<Servicio> listaServicio = new ArrayList<>();
        try{
            
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Servicio ser = new Servicio();
                ser.setCodigoServicio(rs.getInt(1));
                ser.setNombre(rs.getString(2));
                ser.setDescripcion(rs.getString(3));
                ser.setHorarioDisponible(rs.getTime(4));
                ser.setTipoServicio(rs.getString(5));
                ser.setEstado(rs.getString(6));
                ser.setCostoExtra(rs.getDouble(7));
                ser.setCodigoReserva(rs.getInt(8));
                listaServicio.add(ser);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaServicio;
    }
    
    public int agregar(Servicio ser){
        String sql = "insert into Servicio (nombre, descripcion, horarioDisponible,tipoServicio,estado, costoExtra, codigoReserva) values (?,?,?,?,?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, ser.getNombre());
            ps.setString(2, ser.getDescripcion());
            ps.setTime(3, ser.getHorarioDisponible());
            ps.setString(4, ser.getTipoServicio());
            ps.setString(5, ser.getEstado());
            ps.setDouble(6, ser.getCostoExtra());
            ps.setInt(7, ser.getCodigoReserva());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    public Servicio listaCodigoServicio(int codSer){
        Servicio ser = new Servicio();
        String sql = "select * from Servicio where codigoServicio = "+codSer;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                ser.setNombre(rs.getString(2));
                ser.setDescripcion(rs.getString(3));
                ser.setHorarioDisponible(rs.getTime(4));
                ser.setTipoServicio(rs.getString(5));
                ser.setEstado(rs.getString(6));
                ser.setCostoExtra(rs.getDouble(7));
                ser.setCodigoReserva(rs.getInt(8));
                }
        }catch(Exception e){
            e.printStackTrace();
        }
        return ser;
    }
    
    public int actualizar (Servicio ser){
        String sql = "update Servicio set nombre = ?, descripcion = ?, horarioDisponible = ?,"
                + "tipoServicio = ?, estado = ?, costoExtra = ? where codigoServicio = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, ser.getNombre());
            ps.setString(2, ser.getDescripcion());
            ps.setTime(3, ser.getHorarioDisponible());
            ps.setString(4, ser.getTipoServicio());
            ps.setString(5, ser.getEstado());
            ps.setDouble(6, ser.getCostoExtra());
            ps.setInt(7, ser.getCodigoServicio());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    public void eliminar (int codSer){
        String sql = "delete from Servicio where codigoServicio = "+codSer;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
