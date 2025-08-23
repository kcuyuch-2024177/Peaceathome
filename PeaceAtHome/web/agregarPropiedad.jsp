<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/style.css">
        <link rel="stylesheet" href="styles/Nav.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Agregar Propiedades</title>
    </head>
    <body>
        <nav>
        <h2></h2>
        <a href="#" class="btn"><i class='bx bx-list-ul'></i></a>
        <a href="Home.jsp" class="btn"><i class='bx bx-home'></i></a>
        <a href="Servicios.jsp" class="nav-btn"><i class='bx bx-bell'></i></a>
        <%
            String rol = (String) session.getAttribute("rol");
            if("Administrador".equalsIgnoreCase(rol)){
        %>
        <a href="Usuarioadmin.jsp" class="btn"><i class='bx bx-user'></i></a>
        <a href="PropiedadAdmin.jsp" class="btn"><i class='bx bx-building-house'></i></a>
        <a href="PagoAdmin.jsp" class="btn"><i class='bx bx-coin'></i></a>
        <a href="SoporteAdmin.jsp" class="btn"><i class='bx bx-cog'></i></a>
        <% } %>
        </nav>
        <div>
            <div>
                <div>
                    <form action="Controlador?menu=Propiedad" method="POST">
                        <div>
                            <label><strong>Titulo</strong></label>
                            <input type="text" value="${propiedad.getTitulo()}" name="txtTitilo">
                        </div>
                        <div>
                            <label><strong>Descripcion</strong></label>
                            <input type="text" value="${propiedad.getDescripcion()}" name="txtDescripcion">
                        </div>
                        <div>
                            <label><strong>Tipo</strong></label>
                            <input type="text" value="${propiedad.getTipoPropiedad}" name="txtTipoPropiedad">
                        </div>
                        <div>
                            <label><strong>Habitaciones</strong></label>
                            <input type="text" value="${propiedad.getNumHabitaciones}" name="txtNumHabitaciones">
                        </div>
                        <div>
                            <label><strong>Huespedes</strong></label>
                            <input type="text" value="${propiedad.getMaxHusped}" name="txtMaxHuesped">
                        </div>
                        <div>
                            <label><strong>Correo</strong></label>
                            <input type="text" value="${propiedad.getCorreoUsuario}" name="txtCorreoUsuario">
                        </div>
                        <input type="submit" name="acciones" value="Agregar">
                        <input type="submit" name="acciones" value="Actualizar">
                    </form>
                </div>
            </div>
        </div>
        <div>
            <table>
                <thead>
                    <tr>
                        <th>CODIGO</th>
                        <th>TITULO</th>
                        <th>DESCRIPCION</th>
                        <th>TIPO</th>
                        <th>HABITACIONES</th>
                        <th>HUESPEDES</th>
                        <th>CORREO</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="Propiedad" items="${propiedad}">
                        <tr>
                            <td>${Propiedad.getCodigoPropiedad()}</td>
                            <td>${Propiedad.getTitulo()}</td>
                            <td>${Propiedad.getDescripcion()}</td>
                            <td>${Propiedad.getTipoPropiedad()}</td>
                            <td>${Propiedad.getNumHabitaciones()}</td>
                            <td>${Propiedad.getMaxHuesped()}</td>
                            <td>${Propiedad.getCorreoUsuario()}</td>
                            <td>
                                <a href="Controlador?menu=Propiedad?acciones=Editar&codigoPropiedad=${propiedad.getCodigoPropiedad()}">Agregar</a>
                                <a href="Controlador?menu=Propiedad&acciones=Eliminar&codigoPropiedad=${propiedad.getCodigoPropiedad()}">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
