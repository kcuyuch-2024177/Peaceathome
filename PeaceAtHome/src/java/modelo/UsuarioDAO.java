package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO {
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Usuario validar(String correo, String contrasenia){
        Usuario usuario = new Usuario();
        String sql = "select * from Usuario where correoUsuario = ? and contrasenia = ?;";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, contrasenia);
            rs = ps.executeQuery();
            while(rs.next()){
                usuario.setCorreoUsuario(rs.getString("correoUsuario"));
                usuario.setNombreUsuario(rs.getString("nombreUsuario"));
                usuario.setTelefonoUsuario(rs.getString("telefonoUsuario"));
                usuario.setFechaNacimiento(rs.getString("fechaNacimiento"));
                usuario.setContrasenia(rs.getString("contrasenia"));
                usuario.setTipoUsuario(rs.getString("tipoUsuario"));          
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return usuario;
    }
    
}
