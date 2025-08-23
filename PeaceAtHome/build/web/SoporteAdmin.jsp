<%-- 
    Document   : Soporteadmin
    Created on : 21 ago 2025, 22:54:27
    Author     : ANGEL GRIJALVA
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.SoporteTecnico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Soporte Técnico</title>
    <link rel="stylesheet" href="styles/adminSoporte.css">
    <link rel="stylesheet" href="styles/Nav.css">
    <link rel="stylesheet" href="styles/footer.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<nav>
        <h2></h2>
        <a href="#" class="nav-btn"><i class='bx bx-list-ul'></i></a>
        <a href="Home.jsp" class="nav-btn"><i class='bx bx-home'></i></a>
        <a href="Controlador?menu=Usuario&accion=Listar" class="nav-btn"><i class='bx bx-user'></i></a>
        <a href="SoporteAdmin.jsp" class="btn"><i class='bx bx-cog'></i></a>
        <a href="EmpleadoAdmin.jsp" class="nav-btn"><i class='bx  bx-group'></i></a>      
    </nav>

<div class="container">
    <!-- FORMULARIO -->
    <div class="form-container">
        <form action="Controlador?menu=SoporteAdmin" method="POST">
            <input type="hidden" name="txtcodigoSoporteTecnico" value="${soporteTecnico.codigoSoporteTecnico}">
            <div>
               <label for="estado"><strong>Estado:</strong></label>
                <select id="estado" name="txtEstado">
                    <option value="">Seleccione...</option>
                    <option value="Abierto" ${soporteTecnico.estado == 'Abierto' ? 'selected' : ''}>Abierto</option>
                    <option value="Procesado" ${soporteTecnico.estado == 'Procesado' ? 'selected' : ''}>Procesado</option>
                    <option value="Cerrado" ${soporteTecnico.estado == 'Cerrado' ? 'selected' : ''}>Cerrado</option>
                </select>
            </div>
            <div>
                <label>Asunto:</label>
                <input type="text" name="txtAsunto" value="${soporteTecnico.asunto}">
            </div>
            <div>
                <label for="prioridad"><strong>Prioridad:</strong></label>
                <select id="prioridad" name="txtPrioridad">
                    <option value="">Seleccione...</option>
                    <option value="Baja" ${soporteTecnico.prioridad == 'Baja' ? 'selected' : ''}>Baja</option>
                    <option value="Media" ${soporteTecnico.prioridad == 'Media' ? 'selected' : ''}>Media</option>
                    <option value="Alta" ${soporteTecnico.prioridad == 'Alta' ? 'selected' : ''}>Alta</option>
                </select>
            </div>
            <div>
                <label for="categoria"><strong>Categoria:</strong></label>
                <select id="categoria" name="txtCategoria">
                    <option value="">Seleccione...</option>
                    <option value="General" ${soporteTecnico.categoria == 'General' ? 'selected' : ''}>General</option>
                    <option value="Pago" ${soporteTecnico.categoria == 'Pago' ? 'selected' : ''}>Pago</option>
                    <option value="Reserva" ${soporteTecnico.categoria == 'Reserva' ? 'selected' : ''}>Reserva</option>
                    <option value="Tecnico" ${soporteTecnico.categoria == 'Tecnico' ? 'selected' : ''}>Técnico</option>
                </select>
            </div>
            <div>
                <label>Fecha de Creación:</label>
                <input type="date" name="txtFechaCreacion"
                       value="<fmt:formatDate value='${soporteTecnico.fechaCreacion}' pattern='yyyy-MM-dd'/>">
            </div>
            <div>
                <label>Código de Reserva:</label>
                <input type="number" name="txtCodigoReserva" value="${soporteTecnico.codigoReserva}">
            </div>
            <div>
                <label>Correo Usuario:</label>
                <input type="text" name="txtCorreoUsuario" value="${soporteTecnico.correoUsuario}">
            </div>
            <input type="submit" name="accion" value="Actualizar">
        </form>
    </div>

    <!-- TABLA -->
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>CODIGO</th>
                    <th>ESTADO</th>
                    <th>ASUNTO</th>
                    <th>PRIORIDAD</th>
                    <th>CATEGORIA</th>
                    <th>FECHA CREACION</th>
                    <th>CODIGO RESERVA</th>
                    <th>CORREO USUARIO</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${not empty soporteTecnicos}">
                        <c:forEach var="soporte" items="${soporteTecnicos}">
                            <tr>
                                <td>${soporte.codigoSoporteTecnico}</td>
                                <td>${soporte.estado}</td>
                                <td>${soporte.asunto}</td>
                                <td>${soporte.prioridad}</td>
                                <td>${soporte.categoria}</td>
                                <td><fmt:formatDate value="${soporte.fechaCreacion}" pattern="dd/MM/yyyy"/></td>
                                <td>${soporte.codigoReserva}</td>
                                <td>${soporte.correoUsuario}</td>
                                <td>
                                    <a class="btn-editar" href="Controlador?menu=SoporteAdmin&accion=Editar&codigoSoporteTecnico=${soporte.codigoSoporteTecnico}">Editar</a>
                                    <a class="btn-eliminar" href="Controlador?menu=SoporteAdmin&accion=Eliminar&codigoSoporteTecnico=${soporte.codigoSoporteTecnico}" onclick="return confirm('¿Eliminar soporte ${soporte.codigoSoporteTecnico}?')">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td colspan="10" class="no-data">No hay Soportes registrados</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
        
    </div>
    
</div>
            
            <footer>
                <div>
                <p>© 2025 PieceAtHome. Todos los derechos reservados.</p>
                </div>
                <p class="centra">
                    <a href="SoporteTecnico.jsp" style="color:#fff; text-decoration:underline;">Soporte Técnico</a>
                </p>

                <div class="footer-social">
                        <div class="footer-logo">
                            <a href="Home.jsp" target="_blank" title="Logo"><i><img class="img-footer" src="Imagenes/Logo.png" alt="Logo" ></i></a>
                        </div>
                    <a href="https://facebook.com" target="_blank" title="Facebook"><i class='bx bxl-facebook'></i></a>
                    <a href="https://twitter.com" target="_blank" title="Twitter"><i class='bx bxl-twitter'></i></a>
                    <a href="https://instagram.com" target="_blank" title="Instagram"><i class='bx bxl-instagram'></i></a>
                    <a href="https://wa.me/50239482283" target="_blank" title="WhatsApp"><i class='bx bxl-whatsapp'></i></a>
                </div>
            </footer>
</body>
</html>