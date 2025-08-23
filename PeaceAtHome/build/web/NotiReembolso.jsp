<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>!Politica de Reembolso</title>
    <link rel="stylesheet" href="styles/Reembolso.css">
    <link rel="stylesheet" href="styles/Nav.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
    <div class="contenedor">
        <div class="lado plantilla">
            <h1>¡Politica de Reembolso!</h1>
            <p>Si no estas satisfecho con tu reserva, ofrecemos un reembolso completo si cancelas dentro de las 24 horas posteriores a la reserva.</p>
        </div>
        <div class="lado blanco">
            <h2>Como Solicitar un Reembolso</h2>
            <ol>
                <li>¿Estas seguro de hacer el reembolso?</li>
                <li>Ten en cuenta que si haces el reembolso se te devolvera el dinero </li>
                <li>Pero tendras que esperar un lapso de 24 horas para una nueva reserva</li>
            </ol>

            <h1>¿Desea hacer el reembolso?</h1>
            <a href="Reembolso.jsp">
                <button class="btn-reembolso">Solicitar Reembolso</button>
            </a>
        </div>
    </div>
</body>
</html>
