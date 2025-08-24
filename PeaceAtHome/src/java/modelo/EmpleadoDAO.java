package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmpleadoDAO {
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    

    public List<Empleado> listar(){
        String sql ="SELECT * FROM empleado";
        List<Empleado> listaEmpleado = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Empleado em = new Empleado();
                em.setCodigoEmpleado(rs.getInt("codigoEmpleado"));
                em.setNombreEmpleado(rs.getString("nombres"));
                em.setApellidoEmpleado(rs.getString("apellidos"));
                em.setTelefonoEmpleado(rs.getString("telefono"));
                em.setCorreoEmpleado(rs.getString("correo"));
                em.setCargo(rs.getString("cargo"));
                em.setFechaContratacion(rs.getString("fechaContratacion"));
                em.setEstado(rs.getString("estado"));
                listaEmpleado.add(em);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaEmpleado;
    }
    

    public int agregar(Empleado emp){
        String sql = "INSERT INTO empleado (nombres, apellidos, telefono, correo, cargo, fechaContratacion, estado) VALUES (?,?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, emp.getNombreEmpleado());
            ps.setString(2, emp.getApellidoEmpleado());
            ps.setString(3, emp.getTelefonoEmpleado());
            ps.setString(4, emp.getCorreoEmpleado());
            ps.setString(5, emp.getCargo());
            ps.setString(6, emp.getFechaContratacion());
            ps.setString(7, emp.getEstado());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }


    public Empleado listarCodigoEmpleado(int id){
        Empleado emp = new Empleado();
        String sql = "SELECT * FROM empleado WHERE codigoEmpleado = " + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if(rs.next()){
                emp.setCodigoEmpleado(rs.getInt("codigoEmpleado"));
                emp.setNombreEmpleado(rs.getString("nombres"));
                emp.setApellidoEmpleado(rs.getString("apellidos"));
                emp.setTelefonoEmpleado(rs.getString("telefono"));
                emp.setCorreoEmpleado(rs.getString("correo"));
                emp.setCargo(rs.getString("cargo"));
                emp.setFechaContratacion(rs.getString("fechaContratacion"));
                emp.setEstado(rs.getString("estado"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return emp;
    }


    public int actualizar(Empleado emp){
        String sql = "UPDATE empleado SET nombres = ?, apellidos = ?, telefono = ?, correo = ?, cargo = ?, fechaContratacion = ?, estado = ? WHERE codigoEmpleado = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, emp.getNombreEmpleado());
            ps.setString(2, emp.getApellidoEmpleado());
            ps.setString(3, emp.getTelefonoEmpleado());
            ps.setString(4, emp.getCorreoEmpleado());
            ps.setString(5, emp.getCargo());
            ps.setString(6, emp.getFechaContratacion());
            ps.setString(7, emp.getEstado());
            ps.setInt(8, emp.getCodigoEmpleado());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }    
    

    public void eliminar(int id){
        String sql= "DELETE FROM empleado WHERE codigoEmpleado =" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
