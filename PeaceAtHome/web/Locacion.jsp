<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Gestión de Locaciones</title>
    <link rel="stylesheet" href="styles/Nav.css">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="styles/Locacion.css">
</head>
<body>
    <!-- NAVBAR -->
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

    <div class="container" style="margin-top:20px;">
        <div class="row">
            <!-- FORMULARIO -->
            <div class="col-md-5">
                <div class="card shadow-sm rounded-lg border-0">
                    <div class="card-header bg-gradient text-white text-center">
                        <h5 class="mb-0">Agregar / Actualizar Locación</h5>
                    </div>
                    <div class="card-body">
                        <form action="Controlador" method="post">
                            <input type="hidden" name="menu" value="Locacion">
                            <input type="hidden" name="txtCodigoLocacion" 
                                   value="${locacionEditar != null ? locacionEditar.codigoLocacion : ''}">

                            <div class="form-group">
                                <label><strong>Dirección</strong></label>
                                <input type="text" class="form-control" name="txtDireccion" 
                                       placeholder="Ingrese la dirección" 
                                       value="${locacionEditar != null ? locacionEditar.direccion : ''}" required>
                            </div>

                            <div class="form-group">
                                <label><strong>Departamento</strong></label>
                                <select class="form-control" name="txtDepartamento" required>
                                    <c:forEach var="dep" items="${['Guatemala','Alta Verapaz','Baja Verapaz','Chimaltenango','Chiquimula','El Progreso','El Petén','El Quiché','Escuintla','Huehuetenango','Izabal','Jalapa','Jutiapa','Quetzaltenango','Retalhuleu','Sacatepéquez','San Marcos','Santa Rosa','Sololá','Suchitepéquez','Totonicapán','Zacapa']}">
                                        <option value="${dep}" ${locacionEditar != null && locacionEditar.departamento == dep ? 'selected' : ''}>${dep}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="form-group">
                                <label><strong>Municipio</strong></label>
                                <input type="text" class="form-control" name="txtMunicipio" 
                                       placeholder="Ingrese el municipio" 
                                       value="${locacionEditar != null ? locacionEditar.municipio : ''}" required>
                            </div>

                            <div class="form-group">
                                <label><strong>Referencia</strong></label>
                                <input type="text" class="form-control" name="txtReferencia" 
                                       placeholder="Ingrese la referencia" 
                                       value="${locacionEditar != null ? locacionEditar.referencia : ''}" required>
                            </div>

                            <div class="form-group">
                                <label><strong>Propiedad</strong></label>
                                <input type="text" class="form-control" name="txtCodigoPropiedad" 
                                       placeholder="ID de la propiedad" 
                                       value="${locacionEditar != null ? locacionEditar.codigoPropiedad : ''}" required>
                            </div>

                            <div class="d-flex justify-content-between">
                                <button type="submit" name="accion" value="Agregar" class="btn-form">Agregar</button>
                                <button type="submit" name="accion" value="Actualizar" class="btn-form">Actualizar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!-- LISTADO -->
            <div class="col-md-7">
                <div class="card shadow-sm rounded-lg border-0">
                    <div class="card-header text-white text-center">
                        <h5 class="mb-0">Listado de Locaciones</h5>
                    </div>
                    <div class="card-body p-0" style="max-height: 500px; overflow-y: auto;">
                        <div class="table-responsive">
                            <table class="table table-hover mb-0">
                                <thead class="thead-custom">
                                    <tr>
                                        <th>CODIGO</th>
                                        <th>DIRECCION</th>
                                        <th>DEPARTAMENTO</th>
                                        <th>MUNICIPIO</th>
                                        <th>REFERENCIA</th>
                                        <th>ACCION</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="l" items="${locacion}">
                                        <tr>
                                            <td>${l.codigoLocacion}</td>
                                            <td>${l.direccion}</td>
                                            <td>${l.departamento}</td>
                                            <td>${l.municipio}</td>
                                            <td>${l.referencia}</td>
                                            <td>
                                                <a href="Controlador?menu=Locacion&accion=Editar&codigoLocacion=${l.codigoLocacion}" 
                                                   class="btn btn-table"><i class="bx bx-pencil"></i></a>
                                                <form action="Controlador" method="post" style="display:inline;">
                                                    <input type="hidden" name="menu" value="Locacion">
                                                    <input type="hidden" name="accion" value="Eliminar">
                                                    <input type="hidden" name="codigoLocacion" value="${l.codigoLocacion}">
                                                    <button type="submit" class="btn btn-table"><i class="bx bx-trash"></i></button>
                                                </form>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>