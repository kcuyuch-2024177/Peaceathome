<%-- 
    Document   : Reserva
    Created on : 20/08/2025, 02:06:24
    Author     : joj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reserva</title>
        <link href="styles/Nav.css" rel='stylesheet'>
        <link href="styles/ReservaAdmin.css" rel='stylesheet'>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>
        <nav>
        <h2></h2>
        <a href="#" class="nav-btn"><i class='bx bx-list-ul'></i></a>
        <a href="Home.jsp" class="nav-btn"><i class='bx bx-home'></i></a>
        <a href="ReservaAdmin.jsp" class="nav-btn"><i class='bx bx-calendar-alt'></i></a>
        <a href="PropiedadAdmin.jsp" class="nav-btn"><i class='bx bx-building-house'></i></a>
        <a href="PagoAdminAdmin.jsp" class="nav-btn"><i class='bx bx-coin'></i></a>
        <a href="ServiciosAdmin.jsp" class="nav-btn"><i class='bx  bx-bell'></i></a>
        <a href="ReseniaAdmin.jsp" class="nav-btn"><i class='bx  bx-star'></i></a>
        <a href="#" class="nav-btn"><i class='bx  bx-undo-stroke-alt'></i></a>
        </nav>
        
        <div class="col-sm-8">
                <table class="table table-hover">
                    <thead class="">
                        <tr>
                            <th>CODIGO</th>
                            <th>Estado</th>
                            <th>FECHA INICIO</th>
                            <th>FECHA FIN</th>
                            <th>PRECIO DIA</th>
                            <th>CORREO USUARIO</th>
                            <th>CODIGO PROPIEDAD</th>
                            <th>CODIGO PAGO</th>
                            <th>ACCIONES</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                        <c:forEach var="reserva" items="${reservas}">
                            <tr>
                                <td>${reserva.getCodigoReserva()}</td>
                                <td>${reserva.getEstado()}</td>
                                <td>${reserva.getFechaInicio()}</td>
                                <td>${reserva.getFechaFin()}</td>
                                <td>${reserva.getPrecioDia()}</td>
                                <td>${reserva.getCorrreoUsuario()}</td>
                                <td>${reserva.getCodigoPropiedad()}</td>
                                <td>${reserva.getCodigoPago()}</td>
                                <td>
                                    <a class="btn btn-danger" href="Controlador?menu=&accion=Eliminar&codigoReserva=${reserva.getCodigoReserva()}">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
