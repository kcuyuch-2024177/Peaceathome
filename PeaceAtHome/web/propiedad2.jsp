<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cabaña Con Vista Al lago</title>
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
            <div class="item grande"><img src="Imagenes/Propiedad2_2.jpg" alt="Propiedad2_2"></div>
            <div class="item grande"><img src="Imagenes/Propiedad2_3.jpg" alt="Propiedad2_3"></div>
            <div class="item pequeña"><img src="Imagenes/Propiedad2_1.jpg" alt="Propiedad2_1"></div>
            <div class="item pequeña"><img src="Imagenes/Propiedad2.jpg" alt="Propiedad2"></div>
        </div>
        <div class="detalle-contenedor">
            <div class="fila-superior">
                <div class="detalle-propiedad">
                    <h2>Cabaña Con Vista Al lago</h2>
                    <p><strong>Tipo:</strong> Cabaña</p>
                    <p><strong>Habitaciones:</strong> 6</p>
                    <p><strong>Máx huéspedes:</strong> 10</p>
                    <p><strong>Propietario:</strong> usuario2@email.com</p>
                    <p><strong>Ubicación:</strong> Jutiapa</p>
                    <p><strong>Política de cancelación:</strong> Flexible</p>
                    <p class="precio"><strong>Precio por noche:</strong> Q780</p>
                </div>
            
                <div class="detalle-propiedad">
                    <h3>Servicios incluidos</h3>
                    <table class="tabla-servicios">
                        <tr><td>WiFi</td></tr>
                        <tr><td>TV</td></tr>
                        <tr><td>Cocina equipada</td></tr>
                        <tr><td>Aire acondicionado</td></tr>
                        <tr><td>Jardin</td></tr>
                        <tr><td>Piscina</td></tr>
                        <td class="no-disponible">Almacen</td>
                    </table>
                </div>
                <div class="reserva-box">
                    <h3>Reserva tu estancia</h3>
                    <p><strong>Precio:</strong> Q780 por noche</p>
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
            Esta cabaña junto al lago se encuentra en una de las mejores zonas de Jutiapa con hermosas vistas del lago Moyuta.
            Ideal para despejar la rutina y relajarte tomando una taza de café mientras disfrutas de las vistas.
            Disfruta de una cocina totalmente equipara, espacios luminoso y de la tranquilidad de despertar viendo al lago.
            Perfecta para un viaje familiar y disfrutar de un hermoso fin de semana.
        </p>
        <section class="resenas">
            <h3><i class='bx bx-message-dots'></i> Reseñas</h3>
            <div class="resenas-lista">
                <div class="resena">
                    <div class=>
                        <strong>kenet</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bx-star'></i>
                        </span>
                    </div>
                    <p>Una experiencia increíble, el lugar es perfecto para desconectarse del estrés de la ciudad.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>profeestrada</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>La cabaña es muy bonita y acogedora, con espacios iluminados y cómodos. Nos encantó tomar café por la mañana frente al lago. Solo recomendaría mejorar un poco el acceso al lugar, pero en general todo excelente.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>don omar</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Lugar mágico para relajarse. Ver el amanecer desde la cabaña fue una experiencia única. Perfecto para descansar y compartir en familia. Los anfitriones muy atentos en todo momento.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Sofia421</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Todo muy limpio y bien cuidado. Las camas son cómodas y el ambiente es muy tranquilo. Un sitio ideal para descansar un par de días. Volveríamos sin pensarlo.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Marioaceituno</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>La ubicación es perfecta, en una de las mejores zonas del lago Moyuta. Tuvimos la oportunidad de hacer caminatas alrededor y disfrutar de la naturaleza.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Jimmyskiny</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Nos encantó la estancia. Desde la cocina totalmente equipada hasta las hermosas vistas del lago. Definitivamente un lugar para recargar energías</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Farruko</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>El lugar es tal cual como en las fotos, incluso mejor. Todo impecable y con detalles que hacen la diferencia.</p>
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
