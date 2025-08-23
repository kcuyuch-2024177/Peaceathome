<!DOCTYPE html>
<html lang="es">
<link rel="stylesheet" href="styles/Reembolso.css">
<link rel="stylesheet" href="styles/Nav.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<head>
</head>
<body>
    <nav>
        <h2></h2>
        <a href="#" class="btn"><i class='bx bx-list-ul'></i></a>
        <a href="Home.jsp" class="btn"><i class='bx bx-home'></i></a>
        <a href="Servicios.jsp" class="nav-btn"><i class='bx  bx-bell'></i></a>
        <%
            String rol = (String) session.getAttribute("rol");
            if("Administrador".equalsIgnoreCase(rol)){
        %>
        <a href="Usuarioadmin.jsp" class="btn"><i class='bx bx-user'></i></a>
        <a href="PropiedadAdmin.jsp" class="btn"><i class='bx bx-building-house'></i></a>
        <a href="PagoAdmin.jsp" class="btn"><i class='bx  bx-coin'></i></a>
        <a href="SoporteAdmin.jsp" class="btn"><i class='bx bx-cog'></i></a>
        <%    
            }
        %>
    </nav>

    <h2 class="titulo">Cancelar Reserva</h2>

    <form action="Controlador" method="post">
    <input type="hidden" name="menu" value="Reembolso">
    <input type="hidden" name="accion" value="RealizarReembolso">

    <label for="codigoPago">Código de Pago:</label>
    <input type="text" id="codigoPago" name="codigoPago" required>

    <button type="submit" class="cancelar">Cancelar Reserva</button>
</form>


</body>
</html>

