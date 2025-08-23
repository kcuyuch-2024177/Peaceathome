<%-- 
    Document   : Reserva
    Created on : 22/08/2025, 14:51:06
    Author     : joj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/Nav.css">
        <link rel="stylesheet" href="styles/Reserva.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>
        <nav>
        <h2></h2>
        <a href="#" class="btn"><i class='bx bx-list-ul'></i></a>
        <a href="Home.jsp" class="btn"><i class='bx bx-home'></i></a>
        <%
            String rol = (String) session.getAttribute("rol");
            if("Administrador".equalsIgnoreCase(rol)){
        %>
        <a href="Usuarioadmin.jsp" class="btn"><i class='bx bx-user'></i></a>
        <a href="Propiedad.jsp" class="btn"><i class='bx bx-building-house'></i></a>
        <a href="Pago.jsp" class="btn"><i class='bx  bx-coin'></i></a>
        <a href="SoporteAdmin.jsp" class="btn"><i class='bx bx-cog'></i></a>
        <%    
            }
        %>
    </nav>
    
        <div class="contenido">
        <div class="reserva-container">
            <div class="reserva-header">
                <button class="btn-volver" onclick="window.history.back()">
                    <i class='bx bx-arrow-back'></i> Volver
                </button>
                <h1>Completar Reserva</h1>
            </div>

            <div class="reserva-content">
                <div class="propiedad-summary">
                    <h2 id="property-title">Loft moderno</h2>
                    <div class="price-display">
                        <span class="price-label">Precio por día:</span>
                        <span class="price-value">450</span>
                    </div>
                </div>

                <form id="reserva-form" class="reserva-form" action="Controlador?menu=Reserva&accion=Agregar" method="post">
        <div class="form-section">
            <h3>Información de la Reserva</h3>

            <div class="form-row">
                <div class="form-group">
                    <label for="fecha-inicio">Fecha de Inicio *</label>
                    <input type="date" id="fecha-inicio" name="fechaInicio" required>
                </div>

                <div class="form-group">
                    <label for="fecha-fin">Fecha de Fin *</label>
                    <input type="date" id="fecha-fin" name="fechaFin" required>
                </div>
            </div>
        </div>

        <div class="form-section">
            <h3>Información Personal</h3>
            <div class="form-group">
                <label for="email">Correo Electrónico *</label>
                <input type="email" id="email" name="correoUsuario" required>
            </div>
        </div>

        <!-- Campo oculto con precio fijo -->
        <input type="hidden" name="precioDia" value="450">

        <div class="form-actions">
            <button type="button" class="btn-cancelar" onclick="window.history.back()">Cancelar</button>
            <button type="submit" class="btn-confirmar">Confirmar Reserva</button>
        </div>
    </form>
            </div>
        </div>
    </div>

    </body>
</html>








