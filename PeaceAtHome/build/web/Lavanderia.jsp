<%-- 
    Document   : Lavanderia
    Created on : 18/08/2025, 23:34:24
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
        <h1>Servicio de Lavanderia</h1>
    </header>

    <main>
        <img src="Imagenes/imagen12.png" alt="Lavanderia del Hotel">

        <section>
            <p>
                Contamos con las mejores lavadoras y secadoras para un servicio premium y de calidad.
            </p>
            <p>
                Esperamos que sea de su agrado el servicio de lavanderia.
            </p>
            <ul>
                <li><strong>Horario Disponible:</strong> 07:00 - 19:00</li>
                <li><strong>Costo Extra:</strong> Q100.00</li>
                <li><strong>Código de Reserva:</strong> 67890</li>
            </ul>
        </section>

        <section>
            <a href="compra.html">Compra servicio de lavanderia</a>
        </section>
    </main>

    <footer>
        <p>© 2023 Nuestros Servicios</p>
    </footer>

</body>
</html>
