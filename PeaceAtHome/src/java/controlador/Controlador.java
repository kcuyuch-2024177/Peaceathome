package controlador;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuario;
import modelo.UsuarioDAO;

public class Controlador extends HttpServlet {
    UsuarioDAO usuarioDao = new UsuarioDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    String menu = request.getParameter("menu");
    String accion = request.getParameter("accion");

    if (menu == null || menu.isEmpty()) menu = "Usuario";
    if (accion == null || accion.isEmpty()) accion = "Listar";
    if ("Home".equals(menu)) {
        request.getRequestDispatcher("Home.jsp").forward(request, response);
        return;
    }

    try {
        switch (menu) {
                case "Usuario":
                    switch (accion) {
                        case "Listar":
                            List<Usuario> listaUsuarios = usuarioDao.listar();
                            request.setAttribute("usuarios", listaUsuarios);
                            request.getRequestDispatcher("Usuarioadmin.jsp").forward(request, response);
                            break;
                        case "Agregar":
                            Usuario usuario = new Usuario();
                            usuario.setCorreoUsuario(request.getParameter("correoUsuario"));
                            usuario.setNombreUsuario(request.getParameter("nombreUsuario"));
                            usuario.setTelefonoUsuario(request.getParameter("telefono"));
                            String fechaStr = request.getParameter("fechaNacimiento");
                            if (fechaStr != null && !fechaStr.isEmpty()) {
                                try {
                                    Date fecha = new SimpleDateFormat("yyyy-MM-dd").parse(fechaStr);
                                    usuario.setFechaNacimiento(fecha);
                                } catch (ParseException e) {
                                    e.printStackTrace();
                                }
                            }
                            usuario.setContrasenia(request.getParameter("contrasena"));
                            usuario.setTipoUsuario(request.getParameter("tipoUsuario"));
                            usuarioDao.agregar(usuario);
                            response.sendRedirect("login.jsp");
                            break;
                        case "Editar":
                            String correoEditar = request.getParameter("correoUsuario");
                            if (correoEditar != null) {
                                Usuario usuarioEditar = usuarioDao.listarCorreoUsuario(correoEditar);
                                request.setAttribute("usuarioEditar", usuarioEditar);
                            }
                            List<Usuario> lista = usuarioDao.listar();
                            request.setAttribute("usuarios", lista);
                            request.getRequestDispatcher("Usuarioadmin.jsp").forward(request, response);
                            break;
                        case "Eliminar":
                            String correoEliminar = request.getParameter("correoUsuario");
                            if (correoEliminar != null) usuarioDao.eliminar(correoEliminar);
                            response.sendRedirect("Controlador?menu=Usuario&accion=Listar");
                            break;
                        default:
                            response.sendRedirect("Controlador?menu=Usuario&accion=Listar");
                            break;
                    }
                    break;
                }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Controlador?menu=Home");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Controlador unificado Usuario + Soporte";
    }
}
