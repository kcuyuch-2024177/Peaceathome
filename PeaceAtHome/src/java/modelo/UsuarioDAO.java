package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {
    
    Conexion cn = new Conexion();
    
    public Usuario validar(String correo, String contrasenia) {
        Usuario usuario = null;
        String sql = "SELECT * FROM Usuario WHERE correoUsuario = ? AND contrasenia = ?";
        
        try (Connection con = cn.Conexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setString(1, correo);
            ps.setString(2, contrasenia);
            
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    usuario = new Usuario();
                    usuario.setCorreoUsuario(rs.getString("correoUsuario"));
                    usuario.setNombreUsuario(rs.getString("nombreUsuario"));
                    usuario.setTelefonoUsuario(rs.getString("telefonoUsuario"));
                    usuario.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                    usuario.setContrasenia(rs.getString("contrasenia"));
                    usuario.setTipoUsuario(rs.getString("tipoUsuario"));
                }
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return usuario;
    }
    
    public List<Usuario> listar() {
        List<Usuario> listaUsuario = new ArrayList<>();
        String sql = "SELECT * FROM Usuario";        
        try (Connection con = cn.Conexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {      
            while (rs.next()) {
                Usuario us = new Usuario();
                us.setCorreoUsuario(rs.getString("correoUsuario"));
                us.setNombreUsuario(rs.getString("nombreUsuario"));
                us.setTelefonoUsuario(rs.getString("telefonoUsuario"));
                us.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                us.setContrasenia(rs.getString("contrasenia"));
                us.setTipoUsuario(rs.getString("tipoUsuario"));
                listaUsuario.add(us);
            }            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaUsuario;
    }
    
    public boolean agregar(Usuario us) {
        String sql = "INSERT INTO Usuario (correoUsuario, nombreUsuario, telefonoUsuario, fechaNacimiento, contrasenia, tipoUsuario) VALUES (?, ?, ?, ?, ?, ?)";       
        System.out.println(" Ejecutando agregar()...");
        System.out.println(" Datos a insertar:");
        System.out.println("   - Correo: " + us.getCorreoUsuario());
        System.out.println("   - Nombre: " + us.getNombreUsuario());
        System.out.println("   - Teléfono: " + us.getTelefonoUsuario());
        System.out.println("   - Fecha: " + us.getFechaNacimiento());
        System.out.println("   - Tipo: " + us.getTipoUsuario());
        try (Connection con = cn.Conexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, us.getCorreoUsuario());
            ps.setString(2, us.getNombreUsuario());
            ps.setString(3, us.getTelefonoUsuario());
            if (us.getFechaNacimiento() != null) {
                ps.setDate(4, new java.sql.Date(us.getFechaNacimiento().getTime()));
            } else {
                ps.setNull(4, java.sql.Types.DATE);
            }           
            ps.setString(5, us.getContrasenia());
            ps.setString(6, us.getTipoUsuario());            
            int filasAfectadas = ps.executeUpdate();
            System.out.println("Filas afectadas al agregar: " + filasAfectadas);           
            return filasAfectadas > 0;            
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public Usuario listarCorreoUsuario(String correoUsuario) {
        Usuario us = null;
        String sql = "SELECT * FROM Usuario WHERE correoUsuario = ?";
        
        try (Connection con = cn.Conexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setString(1, correoUsuario);
            
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    us = new Usuario();
                    us.setCorreoUsuario(rs.getString("correoUsuario"));
                    us.setNombreUsuario(rs.getString("nombreUsuario"));
                    us.setTelefonoUsuario(rs.getString("telefonoUsuario"));
                    us.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                    us.setContrasenia(rs.getString("contrasenia"));
                    us.setTipoUsuario(rs.getString("tipoUsuario"));
                }
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return us;
    }
    
    public boolean actualizar(Usuario us) {
        String sql = "UPDATE Usuario SET nombreUsuario = ?, telefonoUsuario = ?, fechaNacimiento = ?, contrasenia = ?, tipoUsuario = ? WHERE correoUsuario = ?";       
        try (Connection con = cn.Conexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setString(1, us.getNombreUsuario());
            ps.setString(2, us.getTelefonoUsuario());
            if (us.getFechaNacimiento() != null) {
                ps.setDate(3, new java.sql.Date(us.getFechaNacimiento().getTime()));
            } else {
                ps.setNull(3, java.sql.Types.DATE);
            }  
            ps.setString(4, us.getContrasenia());
            ps.setString(5, us.getTipoUsuario());
            ps.setString(6, us.getCorreoUsuario());
            
            int filasAfectadas = ps.executeUpdate();
            return filasAfectadas > 0;
            
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean eliminar(String correoUsuario) {
        String sql = "DELETE FROM Usuario WHERE correoUsuario = ?";      
        try (Connection con = cn.Conexion();
             PreparedStatement ps = con.prepareStatement(sql)) {            
            ps.setString(1, correoUsuario);
            int filasAfectadas = ps.executeUpdate();
            return filasAfectadas > 0;           
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}