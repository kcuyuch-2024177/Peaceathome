<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mariana's Petit Hotel</title>
    <link rel="stylesheet" href="styles/Home.css">
        <link rel="stylesheet" href="styles/Nav.css">
        <link rel="stylesheet" href="styles/Resenias.css">
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
        <a href="PropiedadAdmin.jsp" class="btn"><i class='bx bx-building-house'></i></a>
        <a href="PagoAdmin.jsp" class="btn"><i class='bx  bx-coin'></i></a>
        <a href="SoporteAdminAdmin.jsp" class="btn"><i class='bx bx-cog'></i></a>
        <%    
            }
        %>
    </nav>

    <div class="contenido">
        <div class="collage">
            <div class="item grande"><img src="Imagenes/Propiedad3_1.jpg" alt="Propiedad2_2"></div>
            <div class="item grande"><img src="Imagenes/Propiedad3_3.jpg" alt="Propiedad2_3"></div>
            <div class="item pequeña"><img src="Imagenes/Propiedad3_2.jpg" alt="Propiedad2_1"></div>
            <div class="item pequeña"><img src="Imagenes/Propiedad3.jpg" alt="Propiedad2"></div>
        </div>
        <div class="detalle-contenedor">
            <div class="fila-superior">
                <div class="detalle-propiedad">
                    <h2>Mariana's Petit Hotel</h2>
                    <p><strong>Tipo:</strong> Hotel</p>
                    <p><strong>Habitaciones:</strong> 2</p>
                    <p><strong>Máx huéspedes:</strong> 5</p>
                    <p><strong>Propietario:</strong> usuario3@email.com</p>
                    <p><strong>Ubicación:</strong> Ciudad de Guatemala, Guatemala</p>
                    <p><strong>Política de cancelación:</strong> Flexible</p>
                    <p class="precio"><strong>Precio por noche:</strong> Q120</p>
                </div>
            
                <div class="detalle-propiedad">
                    <h3>Servicios incluidos</h3>
                    <table class="tabla-servicios">
                        <tr><td>TV</td></tr>
                        <tr><td>Desayunos</td></tr>
                        <tr><td>Aire acondicionado</td></tr>
                        <tr><td>Jardin</td></tr>
                        <td class="no-disponible">Fuente</td>
                    </table>
                </div>
                <div class="reserva-box">
                    <h3>Reserva tu estancia</h3>
                    <p><strong>Precio:</strong> Q120 por noche</p>
                    <a href="">
                        <button class="btn-reservar">Reservar ahora</button>
                    </a>
                    <br><br>
                    <a href="">
                        <button class="btn-reservar">Comodidades</button>
                    </a>
                    <br><br>
                    <a href="NotiReembolso.jsp">
                        <button class="btn-reservar">Reembolso</button>
                    </a>
                </div>
            </div>
        </div>
        <p class="descripcion">
            Este hotel esta situado en una buena zona de la ciudad con hermosas vistas de las montañas.
            Perfeto para descansar un rato de los ruidos de la ciudad y relajarte en familia.
            Disfruta de los desayunosw que vienen incluidos con la reserva.
            Ideal para una familia pequeña que quiera descansar en un viaje familiar de visita a las areas turisticas.
        </p>
         <section class="resenas">
            <h3><i class='bx bx-message-dots'></i> Reseñas</h3>
            <div class="resenas-lista">
                <div class="resena">
                    <div class=>
                        <strong>cano andres</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bx-star'></i>
                        </span>
                    </div>
                    <p>El hotel tiene una vista hermosa a las montañas, realmente es un lugar perfecto para descansar. Muy tranquilo y los desayunos incluidos fueron deliciosos.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>chinpacas</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Todo muy limpio y cómodo. El ambiente es relajante y alejado del ruido de la ciudad. Lo único es que me hubiera gustado tener más variedad en el desayuno, pero en general muy bien.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>pepearmas</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Lugar acogedor, ideal para pasar un par de noches. Las habitaciones cómodas y la atención del personal fue muy amable. Desde la ventana se ven las montañas, una vista espectacular.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>rosmary421</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Pasamos un lindo fin de semana en familia. El hotel está bien ubicado para visitar las áreas turísticas cercanas. Los desayunos incluidos fueron un gran detalle. Muy recomendado.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>armando estrada</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Excelente relación calidad-precio. El lugar es tranquilo y seguro, perfecto para descansar. El desayuno estuvo bien, aunque podría mejorar la presentación. Sin duda volvería.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>stivenpaiz</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Me encantó la tranquilidad del lugar. Es perfecto para relajarse y disfrutar del paisaje. Muy buena atención y habitaciones cómodas. Ideal para viajes familiares.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Ottopaiz</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>El hotel está en una zona muy bonita y con fácil acceso a los sitios turísticos. Las vistas son increíbles y los desayunos muy ricos. Lo recomiendo totalmente para una visita en familia.</p>
                </div>
 
 
            </div>
            <form class="form-resena">
                <h4><i class='bx bx-edit'></i> Agregar una reseña</h4>
                <div class="form-group">
                    <input type="text" placeholder="Tu nombre" required>
                </div>
                <div class="form-group">
                    <textarea placeholder="Escribe tu reseña aquí..." required></textarea>
                </div>
                <div class="form-group">
                    <label>Calificación:</label>
                    <span class="estrellas-input">
                        <input type="radio" name="rating" id="star5" value="5"><label for="star5"><i class='bx bxs-star'></i></label>
                        <input type="radio" name="rating" id="star4" value="4"><label for="star4"><i class='bx bxs-star'></i></label>
                        <input type="radio" name="rating" id="star3" value="3"><label for="star3"><i class='bx bxs-star'></i></label>
                        <input type="radio" name="rating" id="star2" value="2"><label for="star2"><i class='bx bxs-star'></i></label>
                        <input type="radio" name="rating" id="star1" value="1"><label for="star1"><i class='bx bxs-star'></i></label>
                    </span>
                </div>
                <button type="submit" class="btn-enviar"><i class='bx bx-send'></i> Enviar</button>
                <div class="mensaje-resena"></div>
            </form>
        </section>
    </div>
</body>
</html>
