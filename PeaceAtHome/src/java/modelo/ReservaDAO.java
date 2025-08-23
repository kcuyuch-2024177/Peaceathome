package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ReservaDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    // LISTAR TODAS LAS RESERVAS
    public List<Reserva> listar(){
        String sql = "SELECT * FROM Reserva";
        List<Reserva> listaReserva = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Reserva res = new Reserva();
                res.setCodigoReserva(rs.getInt("codigoReserva"));
                res.setEstado(rs.getString("estado"));
                res.setFechaInicio(rs.getDate("fechaInicio"));
                res.setFechaFin(rs.getDate("fechaFin"));
                res.setPrecioDia(rs.getDouble("precioDia"));
                res.setCorreoUsuario(rs.getString("correoUsuario"));
                res.setCodigoPropiedad(rs.getInt("codigoPropiedad"));
                res.setCodigoPago(rs.getInt("codigoPago"));
                listaReserva.add(res);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaReserva;
    }
    
    // AGREGAR UNA RESERVA
    public int agregar(Reserva res) {
        String sql = "INSERT INTO Reserva (estado, fechaInicio, fechaFin, precioDia, correoUsuario, codigoPropiedad, codigoPago) "
                   + "VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, res.getEstado());           
            ps.setDate(2, res.getFechaInicio());        
            ps.setDate(3, res.getFechaFin());         
            ps.setDouble(4, res.getPrecioDia());        
            ps.setString(5, res.getCorreoUsuario());    
            ps.setInt(6, res.getCodigoPropiedad());     
            ps.setInt(7, res.getCodigoPago());          

            System.out.println("Insertando reserva: " 
                + res.getCorreoUsuario() + " / Propiedad: " 
                + res.getCodigoPropiedad() + " / Pago: " 
                + res.getCodigoPago());

            resp = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            resp = 0;
        }
        return resp;
    }

    // BUSCAR UNA RESERVA POR CÓDIGO
    public Reserva listaCodigoReserva(int codRes){
        Reserva res = new Reserva();
        String sql = "SELECT * FROM Reserva WHERE codigoReserva = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, codRes);
            rs = ps.executeQuery();
            if(rs.next()){
                res.setCodigoReserva(rs.getInt("codigoReserva"));
                res.setEstado(rs.getString("estado"));
                res.setFechaInicio(rs.getDate("fechaInicio"));
                res.setFechaFin(rs.getDate("fechaFin"));
                res.setPrecioDia(rs.getDouble("precioDia"));
                res.setCorreoUsuario(rs.getString("correoUsuario"));
                res.setCodigoPropiedad(rs.getInt("codigoPropiedad"));
                res.setCodigoPago(rs.getInt("codigoPago"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return res;
    }
}




