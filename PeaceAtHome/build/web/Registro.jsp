<%-- 
    Document   : Registro
    Created on : 19/08/2025, 00:55:47
    Author     : joj
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Usuario</title>
        <link rel="stylesheet" href="styles/Registro.css">
    </head>
    <body>
        
    <div class="logo-container">
        <img src="Imagenes/Logo.png" alt="Logo" class="logo">
    </div>
    <h2 class="form-title">Registro</h2> 
  <div class="form-container">

    <c:if test="${not empty param.registro}">
        <div class="alert alert-success">
            <c:choose>
                <c:when test="${param.registro == 'exito'}">
                    ¡Usuario registrado exitosamente! Por favor inicie sesión.
                </c:when>
                <c:when test="${param.registro == 'error'}">
                    Error al registrar usuario. Intente nuevamente.
                </c:when>
            </c:choose>
        </div>
    </c:if>

    <form action="Controlador" method="POST">
        <input type="hidden" name="menu" value="Usuario">
        <input type="hidden" name="accion" value="Agregar">

        <div class="input-box">
            <input type="email" name="correoUsuario" value="${usuario.getCorreoUsuario()}" required>
            <label>Correo</label>
            <span></span>
        </div>

        <div class="input-box">
            <input type="text" name="nombreUsuario" value="${usuario.getNombreUsuario()}" required>
            <label>Nombre de Usuario</label>
            <span></span>
        </div>

        <div class="input-box">
            <input type="tel" name="telefono" value="${usuario.getTelefonoUsuario()}" required pattern="[0-9]{8,15}">
            <label>Teléfono</label>
            <span></span>
        </div>

        <div class="input-box">
            <input type="date" name="fechaNacimiento" value="${usuario.getFechaNacimiento()}" required>
            <span></span>
        </div>

        <div class="input-box">
            <input type="password" name="contrasena" value="${usuario.getContrasenia()}" required minlength="6">
            <label>Contraseña</label>
            <span></span>
        </div>

        <div class="input-box">
            <select name="tipoUsuario" required>
                <option value="">Seleccione...</option>
                <option value="HUESPED" <c:if test="${usuario.tipoUsuario == 'HUESPED'}">selected</c:if>>Huésped</option>
                <option value="ANFITRION" <c:if test="${usuario.tipoUsuario == 'ANFITRION'}">selected</c:if>>Anfitrión</option>
            </select>
            <span></span>
        </div>

        <button type="submit" class="btn">Registrarse</button>
    </form>

    <div class="login-link">
        <p>¿Ya tienes cuenta? <a href="login.jsp">Inicia sesión aquí</a></p>
    </div>
</div>

</body>
</html>