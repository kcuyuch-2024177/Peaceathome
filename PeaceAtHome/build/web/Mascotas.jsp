<%-- 
    Document   : Mascotas
    Created on : 18/08/2025, 23:34:50
    Author     : kikec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <h1>Servicio Pet-Friendly </h1>
    </header>

    <main>
        <img src="Imagenes/imagen16.png" alt="Pet-Friendly">

        <section>
            <p>
                Momentos para cuidar a tus mascotas sin ninguna preocupacion.
            </p>
            <p>
                Nuestros peludos seran tratados de la mejor manera a toda hora.
            </p>
            <ul>
                <li><strong>Horario Disponible:</strong> 08:00 - 15:00</li>
                <li><strong>Costo Extra:</strong> Q320.00</li>
                <li><strong>Código de Reserva para horario:</strong> 67780</li>
            </ul>
        </section>

        <section>
            <a href="compra.html">Compra servicio Pet-Friendly </a>
        </section>
    </main>

    <footer>
        <p>© 2023 Nuestros Servicios</p>
    </footer>

</body>
</html>
