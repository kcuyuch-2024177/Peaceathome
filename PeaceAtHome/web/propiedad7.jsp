<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Estudio acogedor</title>
        <link rel="stylesheet" href="styles/Home.css">
            <link rel="stylesheet" href="styles/Nav.css">
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
                <div class="item grande"><img src="Imagenes/Propiedad7.jpg" alt="Propiedad7"></div>
                <div class="item grande"><img src="Imagenes/Propiedad7_4.jpg" alt="Propiedad7_4"></div>
                <div class="item pequeña"><img src="Imagenes/Propiedad7_3.jpg" alt="Propiedad7_3"></div>
                <div class="item pequeña"><img src="Imagenes/Propiedad7_2.jpg" alt="Propiedad7_2"></div>
            </div>
            <div class="detalle-contenedor">
                <div class="fila-superior">
                    <div class="detalle-propiedad">
                        <h2>Estudio acogedor</h2>
                        <p><strong>Tipo:</strong> Estudio</p>
                        <p><strong>Habitaciones:</strong> 1</p>
                        <p><strong>Máx huéspedes:</strong> 2</p>
                        <p><strong>Propietario:</strong> luciafernandez@gmail.com</p>
                        <p><strong>Ubicación:</strong> Ciudad de Guatemala, Guatemala</p>
                        <p><strong>Política de cancelación:</strong> Flexible</p>
                        <p class="precio"><strong>Precio por noche:</strong> Q500</p>
                    </div>

                    <div class="detalle-propiedad">
                        <h3>Servicios incluidos</h3>
                        <table class="tabla-servicios">
                            <tr><td>WiFi</td></tr>
                            <tr><td>Repisas</td></tr>
                            <tr><td>Grandes Ventanas</td></tr>
                            <tr><td>Baño</td></tr>
                            <td class="no-disponible">Lampara</td>
                        </table>
                    </div>
                    <div class="reserva-box">
                        <h3>Reserva tu estancia</h3>
                        <p><strong>Precio:</strong> Q500 por noche</p>
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
                Pequeño estudio ideal para una pareja en zona tranquila.
            </p>
            <section class="resenas">
            <h3><i class='bx bx-message-dots'></i> Reseñas</h3>
            <div class="resenas-lista">
                <div class="resena">
                    <div class=>
                        <strong>María G.</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bx-star'></i>
                        </span>
                    </div>
                    <p>El estudio es perfecto para dos personas, muy acogedor y con todo lo necesario. La zona es tranquila y segura, ideal para descansar después de recorrer la ciudad.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Carlos R. gonzalez</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Muy buena opción para una estadía corta. El lugar es pequeño pero funcional. Nos encantó que esté en una zona silenciosa, perfecta para descansar en pareja.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Lucía Marcela.</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Acogedor y limpio, justo como se describe. Es un espacio sencillo pero muy bien aprovechado. Perfecto para una escapada romántica.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Andrés Peña. </strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Pasamos unos días muy cómodos en este estudio. La tranquilidad de la zona nos permitió descansar y relajarnos. Todo estaba impecable.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Fernanda</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>El estudio es pequeño pero tiene todo lo que se necesita. Muy buena atención del anfitrión y excelente ambiente para una pareja que busca privacidad</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Javier gonzalez</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Lugar ideal para desconectarse y disfrutar en pareja. La zona es muy tranquila y el estudio estaba en perfecto estado. Sin duda volveríamos.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Paola V lopez</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Un espacio muy lindo y bien cuidado. La ubicación es perfecta si buscas tranquilidad. Muy recomendado para parejas que quieran relajarse unos días.</p>
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
