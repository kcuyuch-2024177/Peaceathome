package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PropiedadDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    public int agregar(Propiedad prop){
        String sql = "insert into Propiedad (titulo, descripcion, tipoPropiedad, numHabitaciones, maxHuesped, correoUsuario) values (?,?,?,?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, prop.getTitulo());
            ps.setString(2, prop.getDescripcion());
            ps.setString(3, prop.getTipoPropiedad());
            ps.setInt(4, prop.getNumHabitaciones());
            ps.setInt(5, prop.getMaxHusped());
            ps.setString(6, prop.getCorreoUsuario());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
     public List listar(){
        String sql = "select * from Propiedad";
        List<Propiedad> listaEmpleado = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Propiedad prop = new Propiedad();
                prop.setCodigoPropiedad(rs.getInt(1));
                prop.setTitulo(rs.getString(2));
                prop.setDescripcion(rs.getString(3));
                prop.setTipoPropiedad(rs.getString(4));
                prop.setNumHabitaciones(rs.getInt(5));
                prop.setMaxHusped(rs.getInt(6));
                prop.setCorreoUsuario(rs.getString(7));
                listaEmpleado.add(prop);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaEmpleado;
    }
     
     public Propiedad listarCodigoPropiedad(int id){
        Propiedad prop = new Propiedad();
        String sql = "select * from Propiedad where codigoPropiedad ="+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                prop.setTitulo(rs.getString(2));
                prop.setDescripcion(rs.getString(3));
                prop.setTipoPropiedad(rs.getString(4));
                prop.setNumHabitaciones(rs.getInt(5));
                prop.setMaxHusped(rs.getInt(6));
                prop.setCorreoUsuario(rs.getString(7));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return prop;
    }
     
     public int actualiza(Propiedad prop){
        String sql = "update Propiedad set titulo = ?,"
                + "descripcion = ?,"
                + "tipoPropiedad = ?"
                + "numHabitaciones = ?,"
                + "maxHuesped = ?,"
                + "correoUsuario = ?"
                + "where codigoPropiedad = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, prop.getTitulo());
            ps.setString(2, prop.getDescripcion());
            ps.setString(3, prop.getTipoPropiedad());
            ps.setInt(4, prop.getNumHabitaciones());
            ps.setInt(5, prop.getMaxHusped());
            ps.setString(6, prop.getCorreoUsuario());
            ps.setInt(7, prop.getCodigoPropiedad());
            ps.executeUpdate();
        }catch( Exception e){
            e.printStackTrace();
        }
        return resp;
    }
     
     public void eliminar(int id){
        String sql =  "delete from Propiedad where codigoPropiedad = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
