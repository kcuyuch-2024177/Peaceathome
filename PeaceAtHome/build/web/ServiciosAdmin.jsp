<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Servicio</title>
    <link rel="stylesheet" href="styles/Nav.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" crossorigin="anonymous">
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

    <div>
        <div class="d-flex" style="margin-left:90px; margin-top:10px;">
            <div class="card col-sm-4" >
                <div class="card-body" style="max-width: 300px;">
                    <form action="Controlador?menu=ServiciosAdmin" method="POST">
                        <div class="form-group">
                            <label><strong>Nombre:</strong></label>
                            <input type="text" value="${servicio.getNombre()}" name="txtNombre" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Descripcion:</strong></label>
                            <input type="text" value="${servicio.getDescripcion()}" name="txtDescripcion" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>HorarioDisponible:</strong></label>
                            <input type="text" value="${servicio.getHorarioDisponible()}" name="txtHorarioDisponible" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Servicio:</strong></label>
                            <input type="text" value="${servicio.getTipoServicio()}" name="txtTipoServicio" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Estado:</strong></label>
                            <input type="text" value="${servicio.getEstado()}" name="txtEstado" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>CostoExtra:</strong></label>
                            <input type="text" value="${servicio.getCostoExtra()}" name="txtCostoExtra" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>CodigoReserva:</strong></label>
                            <input type="text" value="${servicio.getCodigoReserva()}" name="txtCodigoReserva" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead class='thead-dark'>
                        <tr>
                            <th>NOMBRE</th>
                            <th>DESCRIPCION</th>
                            <th>HORARIODISPONIBLE</th>
                            <th>TIPOSERVICIO</th>
                            <th>ESTADO</th>
                            <th>COSTOEXTRA</th>
                            <th>CODIGORESERVA</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="servicio" items="${servicios}">
                            <tr>
                                <td>${servicio.getCodigoServicio()}</td>
                                <td>${servicio.getNombre()}</td>
                                <td>${servicio.getDescripcion()}</td>
                                <td>${servicio.getHorarioDisponible()}</td>
                                <td>${servicio.getTipoServicio()}</td>
                                <td>${servicio.getEstado()}</td>
                                <td>${servicio.getCostoExtra()}</td>
                                <td>${servicio.getCodigoReserva()}</td>
                                <td>
                                    <a class="btn btn-warning" href="Controlador?menu=ServiciosAdmin&accion=Editar&codigoServicio=${servicio.getCodigoServicio()}">Editar</a> 
                                    <a class="btn btn-danger" href="Controlador?menu=ServiciosAdmin&accion=Eliminar&codigoServicio=${servicio.getCodigoServicio()}" >Eliminar</a>
                                </td>                            
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>