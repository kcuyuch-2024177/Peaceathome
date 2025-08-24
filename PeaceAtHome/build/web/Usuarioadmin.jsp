<%-- 
    Document   : Usuarioadmin
    Created on : 16/08/2025, 00:31:47
    Author     : joj
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarioadmin</title>
        <link href="styles/Usuarioadm.css" rel='stylesheet'>
        <link href="styles/Nav.css" rel='stylesheet'>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>
    <nav>
        <h2></h2>
        <a href="#" class="nav-btn"><i class='bx bx-list-ul'></i></a>
        <a href="Home.jsp" class="nav-btn"><i class='bx bx-home'></i></a>
        <a href="Controlador?menu=Usuario&accion=Listar" class="nav-btn"><i class='bx bx-user'></i></a>
        <a href="SoporteAdmin.jsp" class="btn"><i class='bx bx-cog'></i></a>
        <a href="Empleado.jsp" class="nav-btn"><i class='bx  bx-group'></i></a>      
    </nav>
        
        <%
    if (request.getAttribute("usuarios") == null) {
        response.sendRedirect("Controlador?menu=Usuario&accion=Listar");
        return;
    }
        %>
    
    <c:if test="${not empty param.mensaje}">
        <div class="alert alert-${param.tipo}">
            ${param.mensaje}
        </div>
    </c:if>
        
    <div class="container">
        <h1>Administración de Usuarios</h1>
        
        <table class="tabla-usuarios">
            <thead>
                <tr>
                    <th>CORREO</th>
                    <th>NOMBRE</th>
                    <th>TELEFONO</th>
                    <th>FECHA NAC.</th>
                    <th>TIPO USUARIO</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${not empty usuarios}">
                        <c:forEach var="usuario" items="${usuarios}">
                            <tr>
                                <td>${usuario.correoUsuario}</td>
                                <td>${usuario.nombreUsuario}</td>
                                <td>${usuario.telefonoUsuario}</td>
                                <td>
                                    <fmt:formatDate value="${usuario.fechaNacimiento}" pattern="dd/MM/yyyy"/>
                                </td>
                                <td>${usuario.tipoUsuario}</td>
                                <td class="acciones">
                                    <a class="btn btn-eliminar" href="Controlador?menu=Usuario&accion=Eliminar&correoUsuario=${usuario.correoUsuario}" 
                                       onclick="return confirm('¿Está seguro de eliminar a ${usuario.nombreUsuario}?')">
                                        <i class='bx bx-trash'></i> Eliminar
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td colspan="6" class="no-data">No hay usuarios registrados</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
        
        <div class="actions">
            <a href="Registro.jsp" class="btn btn-agregar">
                <i class='bx bx-plus'></i> Agregar Nuevo Usuario
            </a>
        </div>
    </div>
    
    <script>
        // Confirmación para eliminar
        document.querySelectorAll('.btn-eliminar').forEach(btn => {
            btn.addEventListener('click', function(e) {
                if (!confirm('¿Está seguro de que desea eliminar este usuario?')) {
                    e.preventDefault();
                }
            });
        });
    </script>
</body>
</html>