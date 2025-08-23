package modelo;


import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LocacionDAO {

    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;


    public List<Locacion> listar() {
        List<Locacion> listaLocacion = new ArrayList<>();
        String sql = "SELECT * FROM locacion";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Locacion lo = new Locacion();
                lo.setCodigoLocacion(rs.getInt("codigoLocacion"));
                lo.setDireccion(rs.getString("direccion"));
                lo.setDepartamento(rs.getString("departamento"));
                lo.setMunicipio(rs.getString("municipio"));
                lo.setReferencia(rs.getString("referencia"));
                lo.setCodigoPropiedad(rs.getInt("codigoPropiedad"));
                listaLocacion.add(lo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            cerrarRecursos();
        }
        return listaLocacion;
    }


    public int agregar(Locacion loc) {
        String sql = "INSERT INTO locacion (direccion, departamento, municipio, referencia, codigoPropiedad) VALUES (?, ?, ?, ?, ?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, loc.getDireccion());
            ps.setString(2, loc.getDepartamento());
            ps.setString(3, loc.getMunicipio());
            ps.setString(4, loc.getReferencia());
            ps.setInt(5, loc.getCodigoPropiedad());
            resp = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            cerrarRecursos();
        }
        return resp;
    }


    public Locacion listarCodigoLocacion(int id) {
        Locacion loc = new Locacion();
        String sql = "SELECT * FROM locacion WHERE codigoLocacion = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                loc.setCodigoLocacion(rs.getInt("codigoLocacion"));
                loc.setDireccion(rs.getString("direccion"));
                loc.setDepartamento(rs.getString("departamento"));
                loc.setMunicipio(rs.getString("municipio"));
                loc.setReferencia(rs.getString("referencia"));
                loc.setCodigoPropiedad(rs.getInt("codigoPropiedad"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            cerrarRecursos();
        }
        return loc;
    }

 
    public int actualizar(Locacion loc) {
        String sql = "UPDATE locacion SET direccion = ?, departamento = ?, municipio = ?, referencia = ? WHERE codigoLocacion = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, loc.getDireccion());
            ps.setString(2, loc.getDepartamento());
            ps.setString(3, loc.getMunicipio());
            ps.setString(4, loc.getReferencia());
            ps.setInt(5, loc.getCodigoLocacion());
            resp = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            cerrarRecursos();
        }
        return resp;
    }


    public void eliminar(int id) {
        String sql = "DELETE FROM locacion WHERE codigoLocacion = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            cerrarRecursos();
        }
    }


    private void cerrarRecursos() {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}