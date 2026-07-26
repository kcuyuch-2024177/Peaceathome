package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SoporteTecnicoDAO {

    Conexion cn = new Conexion();

    public List<SoporteTecnico> listar() {
        List<SoporteTecnico> listaSoporte = new ArrayList<>();
        String sql = "select * from soporteTecnico";

        System.out.println("Ejecutando listar...");

        try (Connection con = cn.Conexion(); PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

            System.out.println("Conexión establecida para listar");

            while (rs.next()) {
                SoporteTecnico sp = new SoporteTecnico();
                sp.setCodigoSoporteTecnico(rs.getInt("codigoSoporteTecnico"));
                sp.setEstado(rs.getString("estado"));
                sp.setAsunto(rs.getString("asunto"));
                sp.setPrioridad(rs.getString("prioridad"));
                sp.setCategoria(rs.getString("categoria"));
                sp.setFechaCreacion(rs.getDate("fechaCreacion"));
                sp.setCodigoReserva(rs.getInt("codigoReserva"));
                sp.setCorreoUsuario(rs.getString("correoUsuario"));
                listaSoporte.add(sp);

                System.out.println("Soporte encontrado: " + sp.getCorreoUsuario());
            }

            System.out.println("Total Soportes listados: " + listaSoporte.size());

        } catch (Exception e) {
            System.out.println("Error en listar: " + e.getMessage());
            e.printStackTrace();
        }
        return listaSoporte;
    }

    public boolean existeCorreoUsuario(String correo) {
        String sql = "select count(*) from usuario where correoUsuario = ?";
        try (Connection con = cn.Conexion(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, correo);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean existeCodigoReserva(int codigoReserva) {
        String sql = "select count(*) from reserva where codigoReserva = ?";
        try (Connection con = cn.Conexion(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, codigoReserva);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean agregar(SoporteTecnico sp) {
        String sql = "insert into soporteTecnico (estado, asunto, prioridad, categoria, fechaCreacion, codigoReserva, correoUsuario) value (?, ?, ?, ?, ?, ?, ?)";

        System.out.println("Ejecutando agregar...");

        try (Connection con = cn.Conexion(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, sp.getEstado());
            ps.setString(2, sp.getAsunto());
            ps.setString(3, sp.getPrioridad());
            ps.setString(4, sp.getCategoria());

            if (sp.getFechaCreacion() != null) {
                ps.setDate(5, new java.sql.Date(sp.getFechaCreacion().getTime()));
            } else {
                ps.setNull(5, java.sql.Types.DATE);
            }

            if (sp.getCodigoReserva() <= 0) {
                System.out.println("Error: CodigoReserva inválido (" + sp.getCodigoReserva() + ")");
                return false;
            }
            ps.setInt(6, sp.getCodigoReserva());
            ps.setString(7, sp.getCorreoUsuario());

            int filasAfectadas = ps.executeUpdate();
            System.out.println("Filas afectadas al agregar: " + filasAfectadas);
            return filasAfectadas > 0;

        } catch (Exception e) {
            System.out.println("Error en agregar: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    public SoporteTecnico listarCodigoSoporte(int id) {
        SoporteTecnico sp = null;
        String sql = "select * from soporteTecnico where codigoSoporteTecnico = ?";

        try (Connection con = cn.Conexion(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    sp = new SoporteTecnico();
                    sp.setCodigoSoporteTecnico(rs.getInt(1));
                    sp.setEstado(rs.getString(2));
                    sp.setAsunto(rs.getString(3));
                    sp.setPrioridad(rs.getString(4));
                    sp.setCategoria(rs.getString(5));
                    sp.setFechaCreacion(rs.getDate(6));
                    sp.setCodigoReserva(rs.getInt(7));
                    sp.setCorreoUsuario(rs.getString(8));
                }
            }

        } catch (Exception e) {
            System.out.println("Error en listarCodigoSoporte: " + e.getMessage());
            e.printStackTrace();
        }
        return sp;
    }
    
    public boolean actualizar(SoporteTecnico sp) {
        String sql = "update soporteTecnico set estado = ?, asunto = ?, prioridad = ?, categoria = ?, fechaCreacion = ?, codigoReserva = ?, correoUsuario = ? where codigoSoporteTecnico = ?";

        try (Connection con = cn.Conexion(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, sp.getEstado());
            ps.setString(2, sp.getAsunto());
            ps.setString(3, sp.getPrioridad());
            ps.setString(4, sp.getCategoria());

            if (sp.getFechaCreacion() != null) {
                ps.setDate(5, new java.sql.Date(sp.getFechaCreacion().getTime()));
            } else {
                ps.setNull(5, java.sql.Types.DATE);
            }

            ps.setInt(6, sp.getCodigoReserva());
            ps.setString(7, sp.getCorreoUsuario());
            ps.setInt(8, sp.getCodigoSoporteTecnico());

            int filasAfectadas = ps.executeUpdate();
            return filasAfectadas > 0;

        } catch (Exception e) {
            System.out.println("Error en actualizar: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    public boolean eliminar(String codigoSoporteTecnico) {
        String sql = "delete from soporteTecnico where codigoSoporteTecnico = ?";

        try (Connection con = cn.Conexion(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, Integer.parseInt(codigoSoporteTecnico));
            int filasAfectadas = ps.executeUpdate();
            return filasAfectadas > 0;

        } catch (Exception e) {
            System.out.println("Error en eliminar: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
}