/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.ReembolsoDAO;

public class Controlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");

        if (menu == null) menu = "Home";
        if (accion == null || accion.isEmpty()) {
            response.sendRedirect("Controlador?menu=Usuario&accion=Listar");
            return;
        }

        try {
            if ("Reembolso".equals(menu)) {
                ReembolsoDAO dao = new ReembolsoDAO();

                switch (accion) {
                    // Paso 1: mostrar notificación antes de realizar el reembolso
                    case "MostrarNotiReembolso":
                        request.getRequestDispatcher("NotiReembolso.jsp").forward(request, response);
                        break;

                    // Paso 2: realizar reembolso
                    case "RealizarReembolso":
                        int codigoPago = 0;
                        try {
                            codigoPago = Integer.parseInt(request.getParameter("codigoPago"));
                        } catch (NumberFormatException e) {
                            e.printStackTrace();
                        }

                        boolean resultado = dao.cancelarReserva(codigoPago);
                        request.setAttribute("resultado", resultado ? "Reembolso realizado con éxito" : "Error al realizar reembolso");
                        request.getRequestDispatcher("Reembolso.jsp").forward(request, response);
                        break;

                    default:
                        response.sendRedirect("Controlador?menu=Home");
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
