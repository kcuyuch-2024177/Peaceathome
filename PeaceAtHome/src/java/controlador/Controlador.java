/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Locacion;
import modelo.LocacionDAO;
import modelo.Propiedad;
import modelo.PropiedadDAO;
import modelo.ReembolsoDAO;
import modelo.Servicio;
import modelo.ServicioDAO;
import modelo.SoporteTecnico;
import modelo.SoporteTecnicoDAO;
import modelo.UsuarioDAO;
import modelo.Usuario;

public class Controlador extends HttpServlet {
    SoporteTecnicoDAO soporteDao = new SoporteTecnicoDAO();
    int codSoporte;
    int codLocacion;
    int codServicio;
    int codPropiedad;
    Propiedad propiedad = new Propiedad();
    PropiedadDAO propiedadDao = new PropiedadDAO();
    Servicio servicio = new Servicio(); 
    ServicioDAO servicioDao = new ServicioDAO();
    UsuarioDAO usuarioDao = new UsuarioDAO();
    LocacionDAO locacionDao = new LocacionDAO();
    Locacion locacion = new Locacion();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu == null) menu = "Home";
        if (accion == null || accion.equals("")) {
        response.sendRedirect("Controlador?menu=Usuario&accion=Listar");
        return;
        }
        try {
            
            if ("Home".equals(menu)) {
                request.getRequestDispatcher("Home.jsp").forward(request, response);
            } else if ("Usuario".equals(menu)) {
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
                        if (correoEliminar != null) {
                            usuarioDao.eliminar(correoEliminar);
                        }
                        response.sendRedirect("Controlador?menu=Usuario&accion=Listar");
                        break;
                    default:
                        response.sendRedirect("Controlador?menu=Usuario&accion=Listar");
                        break;
                }
            }else if ("SoporteAdmin".equals(menu)) {

                switch (accion) {
                    case "Listar":
                        List<SoporteTecnico> listaSoporte = soporteDao.listar();
                        request.setAttribute("soporteTecnicos", listaSoporte);
                        request.getRequestDispatcher("SoporteAdmin.jsp").forward(request, response);
                        break;
                    case "Editar":
                        codSoporte = Integer.parseInt(request.getParameter("codigoSoporteTecnico"));
                        SoporteTecnico sp = soporteDao.listarCodigoSoporte(codSoporte);
                        request.setAttribute("soporteTecnico", sp);
                        
                         List<SoporteTecnico> lista = soporteDao.listar();
                        request.setAttribute("soporteTecnicos", lista);
                        request.getRequestDispatcher("SoporteAdmin.jsp").forward(request, response);
                        break;
                    case "Actualizar":
                        String codActualizarStr = request.getParameter("txtcodigoSoporteTecnico");
                        if (codActualizarStr != null) {
                            try {
                                int codActualizar = Integer.parseInt(codActualizarStr);
                                SoporteTecnico soporteActualizar = new SoporteTecnico();

                                soporteActualizar.setCodigoSoporteTecnico(codActualizar);
                                soporteActualizar.setEstado(request.getParameter("txtEstado"));
                                soporteActualizar.setAsunto(request.getParameter("txtAsunto"));
                                soporteActualizar.setPrioridad(request.getParameter("txtPrioridad"));
                                soporteActualizar.setCategoria(request.getParameter("txtCategoria"));

                                // Fecha
                                String fechaActStr = request.getParameter("txtFechaCreacion");
                                if (fechaActStr != null && !fechaActStr.isEmpty()) {
                                    try {
                                        soporteActualizar.setFechaCreacion(
                                                new SimpleDateFormat("yyyy-MM-dd").parse(fechaActStr));
                                    } catch (ParseException e) {
                                        e.printStackTrace();
                                        soporteActualizar.setFechaCreacion(new Date());
                                    }
                                } else {
                                    soporteActualizar.setFechaCreacion(new Date());
                                }

                                // Código reserva
                                String codResStr = request.getParameter("txtCodigoReserva");
                                int codRes = 0;
                                if (codResStr != null && !codResStr.isEmpty()) {
                                    try {
                                        codRes = Integer.parseInt(codResStr);
                                    } catch (NumberFormatException e) {
                                        e.printStackTrace();
                                    }
                                }
                                soporteActualizar.setCodigoReserva(codRes);
                                soporteActualizar.setCorreoUsuario(request.getParameter("txtCorreoUsuario"));

                                soporteDao.actualizar(soporteActualizar);
                                response.sendRedirect("Controlador?menu=SoporteAdmin&accion=Listar");

                            } catch (NumberFormatException e) {
                                e.printStackTrace();
                                response.sendRedirect("Controlador?menu=SoporteAdmin&accion=Listar");
                            }
                        }
                        break;
                    case "Eliminar":
                        String codEliminar = request.getParameter("codigoSoporteTecnico");
                        if (codEliminar != null) {
                            soporteDao.eliminar(codEliminar);
                        }
                        response.sendRedirect("Controlador?menu=SoporteAdmin&accion=Listar");
                        break;

                    default:
                        response.sendRedirect("Controlador?menu=SoporteAdmin&accion=Listar");
                        break;
                }
            }else if("SoporteTecnico".equals(menu)){
                switch(accion){
                    case "Enviar Ticket":
                        SoporteTecnico nuevoSoporte = new SoporteTecnico();

                        // Datos desde formulario
                        String estado = request.getParameter("txtEstado");
                        nuevoSoporte.setEstado((estado == null || estado.isEmpty()) ? "Abierto" : estado);
                        nuevoSoporte.setAsunto(request.getParameter("txtAsunto"));
                        nuevoSoporte.setPrioridad(request.getParameter("txtPrioridad"));
                        nuevoSoporte.setCategoria(request.getParameter("txtCategoria"));

                        // Fecha de creación
                        String fechaStr = request.getParameter("txtFechaCreacion");
                        Date fechaCreacion = new Date(); // default
                        if (fechaStr != null && !fechaStr.isEmpty()) {
                            try {
                                fechaCreacion = new SimpleDateFormat("yyyy-MM-dd").parse(fechaStr);
                            } catch (ParseException e) {
                                e.printStackTrace();
                            }
                        }
                        nuevoSoporte.setFechaCreacion(fechaCreacion);

                        // Código de reserva
                        String codReservaStr = request.getParameter("txtCodigoReserva");
                        int codigoReserva = 0;
                        if (codReservaStr != null && !codReservaStr.isEmpty()) {
                            try {
                                codigoReserva = Integer.parseInt(codReservaStr);
                            } catch (NumberFormatException e) {
                                e.printStackTrace();
                            }
                        }
                        nuevoSoporte.setCodigoReserva(codigoReserva);

                        nuevoSoporte.setCorreoUsuario(request.getParameter("txtCorreoUsuario"));
                        
                        boolean existeCorreo = soporteDao.existeCorreoUsuario(nuevoSoporte.getCorreoUsuario());
                        boolean existeReserva = soporteDao.existeCodigoReserva(nuevoSoporte.getCodigoReserva());
    
                        if (!existeReserva) {
                            response.sendRedirect("SoporteTecnico.jsp?error=ReservaNoExiste");
                            break;
                        }
                        
                        if (!existeCorreo) {
                            response.sendRedirect("SoporteTecnico.jsp?error=CorreoNoExiste");
                            break;
                        }
                        
                        soporteDao.agregar(nuevoSoporte);
                        response.sendRedirect("SoporteTecnico.jsp");
                        break;
                }
            } else if ("Locacion".equals(menu)) {
                    switch (accion) {
                        case "Listar":
                            List<Locacion> listaLocacion = locacionDao.listar();
                            request.setAttribute("locacion", listaLocacion);
                            request.getRequestDispatcher("Locacion.jsp").forward(request, response);
                            break;

                        case "Agregar":
                            Locacion nuevaLocacion = new Locacion();
                            nuevaLocacion.setDireccion(request.getParameter("txtDireccion"));
                            nuevaLocacion.setDepartamento(request.getParameter("txtDepartamento"));
                            nuevaLocacion.setMunicipio(request.getParameter("txtMunicipio"));
                            nuevaLocacion.setReferencia(request.getParameter("txtReferencia"));

                            String codPropiedadStr = request.getParameter("txtCodigoPropiedad");
                            int codPropiedad = 0;
                            try {
                                codPropiedad = Integer.parseInt(codPropiedadStr);
                            } catch (NumberFormatException e) { }
                            nuevaLocacion.setCodigoPropiedad(codPropiedad);

                            locacionDao.agregar(nuevaLocacion);
                            response.sendRedirect("Controlador?menu=Locacion&accion=Listar");
                            break;

                        case "Editar":
                            int codEditar = 0;
                            try {
                                codEditar = Integer.parseInt(request.getParameter("codigoLocacion"));
                            } catch (NumberFormatException e) { }
                            Locacion locacionEditar = locacionDao.listarCodigoLocacion(codEditar);
                            request.setAttribute("locacionEditar", locacionEditar);

                            List<Locacion> lista = locacionDao.listar();
                            request.setAttribute("locacion", lista);
                            request.getRequestDispatcher("Locacion.jsp").forward(request, response);
                            break;

                        case "Actualizar":
                            Locacion locacionActualizar = new Locacion();
                            locacionActualizar.setCodigoLocacion(Integer.parseInt(request.getParameter("txtCodigoLocacion"))); // importante
                            locacionActualizar.setDireccion(request.getParameter("txtDireccion"));
                            locacionActualizar.setDepartamento(request.getParameter("txtDepartamento"));
                            locacionActualizar.setMunicipio(request.getParameter("txtMunicipio"));
                            locacionActualizar.setReferencia(request.getParameter("txtReferencia"));

                            try {
                                locacionActualizar.setCodigoPropiedad(Integer.parseInt(request.getParameter("txtCodigoPropiedad")));
                            } catch (NumberFormatException e) { }

                            locacionDao.actualizar(locacionActualizar);
                            response.sendRedirect("Controlador?menu=Locacion&accion=Listar");
                            break;

                        case "Eliminar":
                            try {
                                int codEliminar = Integer.parseInt(request.getParameter("codigoLocacion"));
                                locacionDao.eliminar(codEliminar);
                            } catch (NumberFormatException e) { }
                            response.sendRedirect("Controlador?menu=Locacion&accion=Listar");
                            break;

                        default:
                            response.sendRedirect("Controlador?menu=Locacion&accion=Listar");
                            break;
                    }
                } else if(menu.equals("Servicio")){
            switch(accion){
                   case "Listar":
                        List listaServicio = servicioDao.listar();
                        request.setAttribute("servicio", listaServicio);
                   break;    
            case "Agregar":
                        String nombre = request.getParameter("txtNombre");
                        String descripcion = request.getParameter("txtDescripcion");
                        Time horarioDisponible = Time.valueOf("txtHorarioDisponible");
                        int codigoServicio = Integer.parseInt(request.getParameter("txtCodigoServicio"));
                        String tipoServicio = request.getParameter("txtTipoServicio");
                        String estado = request.getParameter("Activo"); 
                        Double costoExtra = Double.parseDouble("costoExtraStr");  
                        int codigoReserva = Integer.parseInt(request.getParameter("txtCodigoServicio"));      
                        servicio.setNombre(nombre);                       
                        servicio.setDescripcion(descripcion);
                        servicio.setHorarioDisponible(horarioDisponible);
                        servicio.setTipoServicio(tipoServicio);
                        servicio.setEstado(estado);
                        servicio.setCostoExtra(costoExtra);
                        servicio.setCodigoReserva(codigoReserva);
                        servicioDao.agregar(servicio);
                        request.getRequestDispatcher("Controlador?menu=Servicio&accion=Listar").forward(request, response);
                        break;
            
                        
                      case "Eliminar":
                      codServicio = Integer.parseInt(request.getParameter("codigoServicio"));
                      servicioDao.eliminar(codServicio);
                      request.getRequestDispatcher("Controlador?menu=Servicios&accion=Listar").forward(request, response);    
                      break;                      
            }request.getRequestDispatcher("Servicio.jsp").forward(request, response);
                    }else if (menu.equals("ServiciosAdmin")) {
                        switch(accion){
                            case"Listar":
                                List listaServicio = servicioDao.listar();
                                request.setAttribute("servicios", listaServicio);
                                request.getRequestDispatcher("ServiciosAdmin.jsp").forward(request, response);
                            break;
                            case"Agregar":
                                String nombre = request.getParameter("txtNombre");
                                String descripcion = request.getParameter("txtDescripcion");
                                Time horarioServicio = Time.valueOf(request.getParameter("txtHorarioDisponible"));
                                String tipoServicio = request.getParameter("txtTipoServicio");
                                String estado = request.getParameter("txtEstado");
                                Double costoExtra = Double.parseDouble(request.getParameter("txtCostoExtra"));
                                Integer codigoReserva = Integer.parseInt(request.getParameter("txtCodigoReserva"));
                                servicio.setNombre(nombre);
                                servicio.setDescripcion(descripcion);
                                servicio.setHorarioDisponible(horarioServicio);
                                servicio.setTipoServicio(tipoServicio);
                                servicio.setEstado(estado);
                                servicio.setCostoExtra(costoExtra);
                                servicio.setCodigoReserva(codigoReserva);
                                servicioDao.agregar(servicio);
                                request.getRequestDispatcher("Controlador?menu=ServiciosAdmin&accion=Listar").forward(request, response);
                            break;
                            case"Editar":
                                codServicio = Integer.parseInt(request.getParameter("codigoServicio"));
                                Servicio ser = servicioDao.listaCodigoServicio(codServicio);
                                request.setAttribute("servicio", ser);
                                request.getRequestDispatcher("Controlador?menu=ServiciosAdmin&accion=Listar").forward(request, response);
                            break;
                            case"Actualizar":
                                String nombreSer = request.getParameter("txtNombre");
                                String descripcionSer = request.getParameter("txtDescripcion");
                                Time horarioServicioSer = Time.valueOf(request.getParameter("txtHorarioDisponible"));
                                String tipoServicioSer = request.getParameter("txtTipoServicio");
                                String estadoSer = request.getParameter("txtEstado");
                                Double costoExtraSer = Double.parseDouble(request.getParameter("txtCostoExtra"));

                                int codigoRes = Integer.parseInt(request.getParameter("txtCodigoReserva"));

                                servicio.setNombre(nombreSer);
                                servicio.setDescripcion(descripcionSer);
                                servicio.setHorarioDisponible(horarioServicioSer);
                                servicio.setTipoServicio(tipoServicioSer);
                                servicio.setEstado(estadoSer);
                                servicio.setCostoExtra(costoExtraSer);
                                servicio.setCodigoReserva(codigoRes);
                                servicioDao.actualizar(servicio);
                                request.getRequestDispatcher("Controlador?menu=ServiciosAdmin&accion=Listar").forward(request, response);
                            break;
                            case"Eliminar":
                                codServicio = Integer.parseInt(request.getParameter("codigoServicio"));
                                servicioDao.eliminar(codServicio);
                                request.getRequestDispatcher("Controlador?menu=ServiciosAdmin&accion=Listar").forward(request, response);
                            break;
                        }
                       request.getRequestDispatcher("ServiciosAdmin.jsp").forward(request, response);;
                        }else if("Propiedad".equals(menu)){
            switch(accion){
                case "Listar":
                    List listaPropiedad = propiedadDao.listar();
                    request.setAttribute("propiedad", listaPropiedad);
                    break;
                case "Agregar":
                    String titulo = request.getParameter("txtTitulo");
                    String descripcion = request.getParameter("txtDescripcion");
                    String tipoPropiedad = request.getParameter("txtTipoPropiedad");
                    String numHabitaciones = request.getParameter("txtNumHabitacioens");
                    String maxHuesped = request.getParameter("txtMaxHuesped");
                    String correoUsuario = request.getParameter("txtCorreoUsuario");
                    propiedad.setTitulo(titulo);
                    propiedad.setDescripcion(descripcion);
                    propiedad.setTipoPropiedad(tipoPropiedad);
                    propiedad.setNumHabitaciones(Integer.parseInt(numHabitaciones));
                    propiedad.setMaxHusped(Integer.parseInt(maxHuesped));
                    propiedad.setCorreoUsuario(correoUsuario);
                    break;
                case "Editar":
                    codPropiedad = Integer.parseInt(request.getParameter("codigoPropiedad"));
                    Propiedad p = propiedadDao.listarCodigoPropiedad(codPropiedad);
                    request.setAttribute("propiedad", p);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                        String tituloProp = request.getParameter("txtTitulo");
                        String descriProp = request.getParameter("txtDescripcion");
                        String tipoProp = request.getParameter("txtTipoPropiedad");
                        String numHabit = request.getParameter("txtNumHabitaciones");
                        String maxHuesp = request.getParameter("txtMaxHuesped");
                        String correoUser = request.getParameter("txtCorreoUsuario");
                        propiedad.setTitulo(tituloProp);
                        propiedad.setDescripcion(descriProp);
                        propiedad.setTipoPropiedad(tipoProp);
                        propiedad.setNumHabitaciones(Integer.parseInt(numHabit));
                        propiedad.setMaxHusped(Integer.parseInt(maxHuesp));
                        propiedad.setCorreoUsuario(correoUser);
                        request.getRequestDispatcher("Controlador?menu=Propiedad&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    codPropiedad = Integer.parseInt(request.getParameter("codigoPropiedad"));
                    propiedadDao.eliminar(codPropiedad);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
            }
        }else if("Reembolso".equals(menu)){
            switch (accion) {
                // Paso 1: muestra una notificacion de que si esta seguro de hacer el reembolso
                case "MostrarNotiReembolso":
                    request.getRequestDispatcher("NotiReembolso.jsp").forward(request, response);
                    break;
                //Paso 2: si presiona solicitar reembolso que pida el codigoPago y elimine la reserva
                case "RealizarReembolso":
                    int codigoPago = Integer.parseInt(request.getParameter("codigoPago"));
                    ReembolsoDAO dao = new ReembolsoDAO();
                    boolean si = dao.cancelarReserva(codigoPago);
                    request.setAttribute("resultado", si ? "Reembolso realizado con éxito" : "Error al realizar reembolso");
                    request.getRequestDispatcher("Reembolso.jsp").forward(request, response);
                    break;
            }
        }
                           
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Controlador?menu=Home");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
