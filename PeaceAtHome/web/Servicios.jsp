<%-- 
    Document   : Servicios
    Created on : 23/08/2025, 00:26:13
    Author     : joj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/Servicios2.css">
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
        
        
    <section class="services-container">
        <h1 class="page-title">Nuestros Servicios</h1>

        <div class="services-grid">

            <div class="service-card">
                <div class="service-image-container">
                    <img src="Imagenes/imagen1.png" alt="Habitación de hotel" class="service-image">
                </div>
                <div class="service-info">
                    <h3 class="nombre">Hospedaje de Calidad</h3>
                    <p class="descripcion">Ofrecemos habitaciones cómodas y limpias con WiFi de alta velocidad y servicio a la habitación.</p>
                    <div class="details">
                        <p><strong>Horario Disponible:</strong> <span class="horarioDisponible">24 horas</span></p>
                        <p><strong>Tipo de Servicio:</strong> <span class="tipoServicio">Hospedaje</span></p>
                        <p><strong>Estado:</strong> <span class="estado disponible">Disponible</span></p>
                        <p><strong>Costo Extra:</strong> <span class="costoExtra">Q20.00</span></p>
                        <p><strong>Código de Reserva:</strong> <span class="codigoReserva">12345</span></p>
                    </div>
                    <a href="Hospedaje.jsp" class="service-button">Agregar servicio</a>
                </div>
            </div>
            <div class="service-card">
                <div class="service-image-container">
                    <img src="Imagenes/imagen2.png" alt="Restaurante" class="service-image">
                </div>
                <div class="service-info">
                    <h3 class="nombre">Servicio de Restaurante</h3>
                    <p class="descripcion">Disfruta de nuestra cocina local e internacional en un ambiente acogedor. Desayuno, almuerzo y cena.</p>
                    <div class="details">
                        <p><strong>Horario Disponible:</strong> <span class="horarioDisponible">07:00 - 22:00</span></p>
                        <p><strong>Tipo de Servicio:</strong> <span class="tipoServicio">Restaurante</span></p>
                        <p><strong>Estado:</strong> <span class="estado disponible">Disponible</span></p>
                        <p><strong>Costo Extra:</strong> <span class="costoExtra">Q345.00</span></p>
                        <p><strong>Código de Reserva:</strong> <span class="codigoReserva">67890</span></p>
                    </div>
                    <a href="Restaurante.jsp" class="service-button">Agregar servicio</a>
                </div>
            </div>
            <div class="service-card">
                <div class="service-image-container">
                    <img src="Imagenes/imagen3.png" alt="Gimnasio" class="service-image">
                </div>
                <div class="service-info">
                    <h3 class="nombre">Gimnasio Completo</h3>
                    <p class="descripcion">Mantente en forma durante tu viaje con nuestro gimnasio totalmente equipado.</p>
                    <div class="details">
                        <p><strong>Horario Disponible:</strong> <span class="horarioDisponible">06:00 - 23:00</span></p>
                        <p><strong>Tipo de Servicio:</strong> <span class="tipoServicio">Fitness</span></p>
                        <p><strong>Estado:</strong> <span class="estado disponible">Disponible</span></p>
                        <p><strong>Costo Extra:</strong> <span class="costoExtra">Q250.00</span></p>
                        <p><strong>Código de Reserva:</strong> <span class="codigoReserva">ABC12</span></p>
                    </div>
                    <a href="Gimnasio.jsp" class="service-button">Agregar servicio</a>
                </div>
            </div>
            <div class="service-card">
                <div class="service-image-container">
                    <img src="Imagenes/imagen4.png" alt="Lavandería" class="service-image">
                </div>
                <div class="service-info">
                    <h3 class="nombre">Servicio de Lavandería</h3>
                    <p class="descripcion">Servicio de lavandería express para que tu ropa esté siempre lista.</p>
                    <div class="details">
                        <p><strong>Horario Disponible:</strong> <span class="horarioDisponible">08:00 - 18:00</span></p>
                        <p><strong>Tipo de Servicio:</strong> <span class="tipoServicio">Lavandería</span></p>
                        <p><strong>Estado:</strong> <span class="estado disponible">Disponible</span></p>
                        <p><strong>Costo Extra:</strong> <span class="costoExtra">Q520.00</span></p>
                        <p><strong>Código de Reserva:</strong> <span class="codigoReserva">DEF34</span></p>
                    </div>
                    <a href="Lavanderia.jsp" class="service-button">Agregar servicio</a>
                </div>
            </div>
            <div class="service-card">
                <div class="service-image-container">
                    <img src="Imagenes/imagen5.png" alt="Spa" class="service-image">
                </div>
                <div class="service-info">
                    <h3 class="nombre">Spa y Masajes</h3>
                    <p class="descripcion">Relájate con una sesión de masajes en nuestro spa profesional.</p>
                    <div class="details">
                        <p><strong>Horario Disponible:</strong> <span class="horarioDisponible">10:00 - 20:00</span></p>
                        <p><strong>Tipo de Servicio:</strong> <span class="tipoServicio">Bienestar</span></p>
                        <p><strong>Estado:</strong> <span class="estado disponible">Disponible</span></p>
                        <p><strong>Costo Extra:</strong> <span class="costoExtra">Q350.00</span></p>
                        <p><strong>Código de Reserva:</strong> <span class="codigoReserva">GHI56</span></p>
                    </div>
                    <a href="Spa.jsp" class="service-button">Agregar servicio</a>
                </div>
            </div>
            <div class="service-card">
                <div class="service-image-container">
                    <img src="Imagenes/imagen6.png" alt="Transporte" class="service-image">
                </div>
                <div class="service-info">
                    <h3 class="nombre">Transporte al Aeropuerto</h3>
                    <p class="descripcion">Servicio de shuttle directo desde y hacia el aeropuerto, con horario flexible.</p>
                    <div class="details">
                        <p><strong>Horario Disponible:</strong> <span class="horarioDisponible">24 horas</span></p>
                        <p><strong>Tipo de Servicio:</strong> <span class="tipoServicio">Transporte</span></p>
                        <p><strong>Estado:</strong> <span class="estado disponible">Disponible</span></p>
                        <p><strong>Costo Extra:</strong> <span class="costoExtra">Q80.00</span></p>
                        <p><strong>Código de Reserva:</strong> <span class="codigoReserva">JKL78</span></p>
                    </div>
                    <a href="Transporte.jsp" class="service-button">Agregar servicio </a>
                </div>
            </div>
            <div class="service-card">
                <div class="service-image-container">
                    <img src="Imagenes/imagen7.png" alt="Conferencias" class="service-image">
                </div>
                <div class="service-info">
                    <h3 class="nombre">Salas de Conferencias</h3>
                    <p class="descripcion">Espacios equipados para reuniones de negocios y eventos. Incluye proyector y WiFi.</p>
                    <div class="details">
                        <p><strong>Horario Disponible:</strong> <span class="horarioDisponible">08:00 - 17:00</span></p>
                        <p><strong>Tipo de Servicio:</strong> <span class="tipoServicio">Eventos</span></p>
                        <p><strong>Estado:</strong> <span class="estado disponible">Disponible</span></p>
                        <p><strong>Costo Extra:</strong> <span class="costoExtra">Q200.00</span></p>
                        <p><strong>Código de Reserva:</strong> <span class="codigoReserva">MNO90</span></p>
                    </div>
                    <a href="Conferencias.jsp" class="service-button">Agregar servicio</a>
                </div>
            </div>
            <div class="service-card">
                <div class="service-image-container">
                    <img src="Imagenes/imagen8.png" alt="Cuidado de mascotas" class="service-image">
                </div>
                <div class="service-info">
                    <h3 class="nombre">Servicio Pet-Friendly</h3>
                    <p class="descripcion">Trae a tu mascota contigo. Proporcionamos camas, comida y juguetes para ellos.</p>
                    <div class="details">
                        <p><strong>Horario Disponible:</strong> <span class="horarioDisponible">24 horas</span></p>
                        <p><strong>Tipo de Servicio:</strong> <span class="tipoServicio">Mascotas</span></p>
                        <p><strong>Estado:</strong> <span class="estado disponible">Disponible</span></p>
                        <p><strong>Costo Extra:</strong> <span class="costoExtra">Q320.00</span></p>
                        <p><strong>Código de Reserva:</strong> <span class="codigoReserva">PQR12</span></p>
                    </div>
                    <a href="Mascotas.jsp" class="service-button">Agregar servicio</a>
                </div>
            </div>
            </div>
            <%
                if("Administrador".equalsIgnoreCase(rol)){
            %>
            <a href="ServiciosAdmin.jsp" class="service-button">
                <button>Agregar Servicio</button>
            </a>
            <%    
                }
            %>
    </section>
</body>
</html>
