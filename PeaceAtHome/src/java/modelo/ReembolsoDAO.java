package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ReembolsoDAO {
    Conexion connection = new Conexion();
    Connection con;
    PreparedStatement pst;

    // ✅ cancelar reserva y eliminar de la base
    public boolean cancelarReserva(int codigoPago) {
        String sql = "{ CALL CancelarReserva(?) }";
        try {
            con = connection.Conexion();
            pst = con.prepareStatement(sql);
            pst.setInt(1, codigoPago);
            int filas = pst.executeUpdate();
            return filas > 0; 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // ✅ ver si esta disponible u ocupada
    public boolean PropiedadDesabilitada(int codigoPropiedad) {
        String sql = "SELECT estado FROM Propiedad WHERE codigoPropiedad = ?";
        try {
            con = connection.Conexion();
            pst = con.prepareStatement(sql);
            pst.setInt(1, codigoPropiedad);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                return rs.getString("estado").equalsIgnoreCase("Ocupada");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false; // si no esta ocupada se pone como disponible
    }
}

