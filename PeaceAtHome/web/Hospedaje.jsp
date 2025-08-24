<%-- 
    Document   : Hospedaje
    Created on : 18/08/2025, 23:33:46
    Author     : kikec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servicio de renta de Salas</title>
    <link rel="stylesheet" href="styles/Nav.css">
    <link rel="stylesheet" href="styles/Servicios1.css">
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
    
    <header>
        <h1>Hospedaje de Calidad</h1>
    </header>

    <main>
        <img src="Imagenes/imagen9.png" alt="Habitación de hotel">

        <section>
            <p>
                Disfrute de una estadía placentera en nuestras habitaciones. 
            <p>
                Esperamos que sea de su agrado poder adquirir este servicio.
            </p>
            <ul>
                <li><strong>Horario Disponible:</strong> 24 horas</li>
                <li><strong>Costo Extra:</strong> Q20.00</li>
                <li><strong>Código de Reserva:</strong> 12345</li>
            </ul>
        </section>

        <section>
           
            
            <a href="compra.jsp">Compra servicio</a>
        </section>
    </main>

    <footer>
        <p> 2023 Nuestros Servicios</p>
    </footer>
     <link rel="stylesheet" href="styles/Servicios1.css">

</body>
</html>
