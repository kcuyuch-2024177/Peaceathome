<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Casa en la playa</title>
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
                <div class="item grande"><img src="Imagenes/Propiedad4.jpg" alt="Propiedad4"></div>
                <div class="item grande"><img src="Imagenes/Propiedad4_3.webp" alt="Propiedad4_3"></div>
                <div class="item pequeña"><img src="Imagenes/Propiedad4_2.jpg" alt="Propiedad4_2"></div>
                <div class="item pequeña"><img src="Imagenes/Propiedad4_1.webp" alt="Propiedad4_1"></div>
            </div>
            <div class="detalle-contenedor">
                <div class="fila-superior">
                    <div class="detalle-propiedad">
                        <h2>Casa en la playa</h2>
                        <p><strong>Tipo:</strong> Casa</p>
                        <p><strong>Habitaciones:</strong> 3</p>
                        <p><strong>Máx huéspedes:</strong> 8</p>
                        <p><strong>Propietario:</strong> anamorales@gmail.com</p>
                        <p><strong>Ubicación:</strong> Ciudad de Guatemala, Guatemala</p>
                        <p><strong>Política de cancelación:</strong> Flexible</p>
                        <p class="precio"><strong>Precio por noche:</strong> Q150</p>
                    </div>

                    <div class="detalle-propiedad">
                        <h3>Servicios incluidos</h3>
                        <table class="tabla-servicios">
                            <tr><td>TV</td></tr>
                            <tr><td>WiFi</td></tr>
                            <tr><td>Aire acondicionado</td></tr>
                            <tr><td>Piscina</td></tr>
                            <td class="no-disponible">Amaca</td>
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
                Hermosa casa frente al mar con piscina privada
            </p>
            <section class="resenas">
            <h3><i class='bx bx-message-dots'></i> Reseñas</h3>
            <div class="resenas-lista">
                <div class="resena">
                    <div class=>
                        <strong>Carlos josue</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bx-star'></i>
                        </span>
                    </div>
                    <p>La casa es espectacular, justo frente al mar y con una piscina privada increíble. Pasamos unas vacaciones inolvidables en familia. Todo estaba limpio y bien cuidado. ¡Definitivamente volveremos!</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Jeferson andres</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>La ubicación es perfecta, despertar con la vista al mar no tiene precio. La piscina privada fue un gran plus. Solo recomendaría mejorar un poco el WiFi, pero en general todo excelente.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>MonterrosoDavid</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Un paraíso frente al mar. Nos encantó la casa, muy espaciosa y cómoda. La piscina fue la favorita de los niños. Muy recomendable para viajes familiares o con amigos.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Ericka sofia </strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Un lugar mágico para relajarse. Disfrutamos de las tardes en la piscina viendo el atardecer frente al mar. La casa tiene todo lo necesario y más. ¡Volveríamos sin pensarlo!</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>chinito555</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Excelente estancia, todo muy limpio y ordenado. El mar a unos pasos y la piscina privada fue lo mejor. Un lugar perfecto para descansar y desconectarse.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>virgilio21</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>La casa tiene una ubicación privilegiada. Pasamos unos días hermosos disfrutando del mar y de la piscina privada. Ideal para familias que buscan privacidad y comodidad.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>cuc ruben</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Simplemente espectacular. Despertar frente al mar y tener tu propia piscina es un lujo total. La casa es amplia, luminosa y perfecta para vacaciones en grupo.</p>
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
