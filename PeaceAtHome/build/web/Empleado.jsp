<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="UTF-8">
        <title>Empleado</title>
        <link rel="stylesheet" href="styles/Nav.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" crossorigin="anonymous">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="styles/Empleado_1.css">
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

    <div class="main-content">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-6 col-sm-12">
                <div class="card shadow-sm rounded-lg border-0">
                    <div class="card-header text-white text-center">
                        <h5 class="mb-0">Gestión de Empleados</h5>
                    </div>
                    <div class="card-body">
                        <form action="Controlador?menu=Empleado" method="POST">
                            <div class="form-group">
                                <label><strong>Nombre</strong></label>
                                <input type="text" value="${empleado != null ? empleado.getNombreEmpleado() : ''}" 
                                       name="txtNombreEmpleado" class="form-control" placeholder="Ingrese el nombre">
                            </div>
                            <div class="form-group">
                                <label><strong>Apellido</strong></label>
                                <input type="text" value="${empleado != null ? empleado.getApellidoEmpleado() : ''}" 
                                       name="txtApellidoEmpleado" class="form-control" placeholder="Ingrese el Apellido">
                            </div>
                            <div class="form-group">
                                <label><strong>Telefono</strong></label>
                                <input type="number" value="${empleado != null ? empleado.getTelefonoEmpleado() : ''}" 
                                       name="txtTelefonoEmpleado" class="form-control" placeholder="Tel:">
                            </div>
                            <div class="form-group">
                                <label><strong>Correo</strong></label>
                                <input type="text" value="${empleado != null ? empleado.getCorreoEmpleado() : ''}" 
                                       name="txtCorreoEmpleado" class="form-control" placeholder="Ingrese el correo">
                            </div>
                            <div class="form-group">
                                <label><strong>Cargo</strong></label>
                                <input type="text" value="${empleado != null ? empleado.getCargo() : ''}" 
                                       name="txtCargo" class="form-control" placeholder="Ingrese el cargo">
                            </div>
                            <div class="form-group">
                                <label><strong>Fecha de Contratación</strong></label>
                                <input type="date" value="${empleado != null ? empleado.getFechaContratacion() : ''}" 
                                       name="txtFechaContratacion" class="form-control">
                            </div>
                            <div class="form-group">
                                <label><strong>Estado</strong></label>
                                <select name="txtEstado" class="form-control">
                                    <option value="Activo" ${empleado != null && empleado.getEstado() == 'Activo' ? 'selected' : ''}>Activo</option>
                                    <option value="Inactivo" ${empleado != null && empleado.getEstado() == 'Inactivo' ? 'selected' : ''}>Inactivo</option>
                                </select>
                            </div>
                            <div class="d-flex justify-content-between">
                                <button type="submit" name="accion" value="Agregar" class="btn-form">Agregar</button>
                                <button type="submit" name="accion" value="Actualizar" class="btn-form">Actualizar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-lg-7 col-md-6 col-sm-12">
                <div class="card shadow-sm rounded-lg border-0">
                    <div class="card-header text-white text-center">
                        <h5 class="mb-0">Lista de Empleados</h5>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-hover mb-0">
                                <thead class="thead-custom">
                                    <tr>
                                        <th>NOMBRE</th>
                                        <th>APELLIDO</th>
                                        <th>TELEFONO</th>
                                        <th>CORREO</th>
                                        <th>CARGO</th>
                                        <th>FECHA CONTRATACIÓN</th>
                                        <th>ESTADO</th>
                                        <th>ACCIONES</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="empleado" items="${empleados}">
                                        <tr>
                                            <td>${empleado.getNombreEmpleado()}</td>
                                            <td>${empleado.getApellidoEmpleado()}</td>
                                            <td>${empleado.getTelefonoEmpleado()}</td>
                                            <td>${empleado.getCorreoEmpleado()}</td>
                                            <td>${empleado.getCargo()}</td>
                                            <td>${empleado.getFechaContratacion()}</td>
                                            <td>${empleado.getEstado()}</td>
                                            <td>
                                                <a href="Controlador?menu=Empleado&accion=Editar&codigoEmpleado=${empleado.getCodigoEmpleado()}" 
                                                   class="btn btn-table"><i class="bx bx-pencil"></i></a>
                                                <a href="Controlador?menu=Empleado&accion=Eliminar&codigoEmpleado=${empleado.getCodigoEmpleado()}" 
                                                   onclick="return confirm('¿Desea eliminar este empleado?')" 
                                                   class="btn btn-table"><i class="bx bx-trash"></i></a>
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

    <script>
        function confirmarEliminacion() {
            return confirm("¿Desea eliminar este elemento?");
        }
    </script>
</body>
</html>
