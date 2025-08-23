<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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
    
    <div class="d-flex main-content">
        <div class="card col-sm-4">
            <div class="card-body">
                <form action="Controlador?menu=Reserva" method="POST">
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                </form>
            </div>
        </div>
        
        <div class="col-sm-8">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>CODIGO</th>
                        <th>ESTADO</th>
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
                            <td>${reserva.codigoReserva}</td>
                            <td>${reserva.estado}</td>
                            <td>${reserva.fechaInicio}</td>
                            <td>${reserva.fechaFin}</td>
                            <td>${reserva.precioDia}</td>
                            <td>${reserva.correoUsuario}</td>
                            <td>${reserva.codigoPropiedad}</td>
                            <td>${reserva.codigoPago}</td>
                            <td>
                                <a class="btn btn-warning" href="Controlador?menu=Reserva&accion=Editar&codigoReserva=${reserva.codigoReserva}">Editar</a>
                                <a class="btn btn-danger" href="Controlador?menu=Reserva&accion=Eliminar&codigoReserva=${reserva.codigoReserva}">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
