<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loft moderno en zona 10</title>
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
            <div class="item grande"><img src="Imagenes/Propiedad1.jpg" alt="Propiedad1"></div>
            <div class="item grande"><img src="Imagenes/Propiedad1_1.jpg" alt="Propiedad1_1"></div>
            <div class="item pequeña"><img src="Imagenes/Propiedad1_3.jpg" alt="Propiedad1_3"></div>
            <div class="item pequeña"><img src="Imagenes/Propiedad1_4.jpg" alt="Propiedad1_4"></div>
        </div>
        <div class="detalle-contenedor">
            <div class="fila-superior">
                <div class="detalle-propiedad">
                    <h2>Loft moderno en zona 10</h2>
                    <p><strong>Tipo:</strong> Apartamento</p>
                    <p><strong>Habitaciones:</strong> 2</p>
                    <p><strong>Máx húspedes:</strong> 4</p>
                    <p><strong>Propietario:</strong> usuario1@email.com</p>
                    <p><strong>Ubicación:</strong> Ciudad de Guatemala, Zona 10</p>
                    <p><strong>Política de cancelación:</strong> Flexible</p>
                    <p class="precio"><strong>Precio por noche:</strong> Q450</p>
                </div>
            
                <div class="detalle-propiedad">
                    <h3>Servicios incluidos</h3>
                    <table class="tabla-servicios">
                        <tr><td>WiFi</td></tr>
                        <tr><td>TV</td></tr>
                        <tr><td>Cocina equipada</td></tr>
                        <tr><td>Aire acondicionado</td></tr>
                        <tr><td>Seguridad 24h</td></tr>
                        <td class="no-disponible">Balcon</td>
                    </table>
                </div>
                <div class="reserva-box">
                    <h3>Reserva tu estancia</h3>
                    <p><strong>Precio:</strong> Q450 por noche</p>
                    <a href="Reserva.jsp">
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
                Este loft moderno se encuentra en el corazón de la zona 10, rodeado de restaurantes, cafés y centros comerciales. 
                Ideal para familias pequeï¿½as o grupos de amigos que buscan comodidad y estilo. 
                Disfruta de una cocina totalmente equipada, espacios luminosos y la tranquilidad de un edificio con seguridad 24 horas. 
                Perfecto para viajes de negocios o escapadas de fin de semana.
        </p>
        
        <section class="resenas">
            <h3><i class='bx bx-message-dots'></i> Reseñas</h3>
            <div class="resenas-lista">
                <div class="resena">
                    <div class=>
                        <strong>Daniel alejandro</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bx-star'></i>
                        </span>
                    </div>
                    <p>La ubicación es muy buena y el precio es justo. Sin embargo, encontramos algunos detalles de limpieza en el baño y la conexión a internet no era muy estable.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>megustaelFifa</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Excelente lugar, muy limpio y cómodo. La cama es súper confortable y la cocina está equipada con todo lo necesario. La ubicación es perfecta, cerca de restaurantes y transporte público. El anfitrión siempre estuvo atento y respondió rápido a todas nuestras dudas. ¡Definitivamente volvería!</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Dylan omar1223</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>El aire acondicionado mejoro todo al 100, me encanto mucho, volvere pronto</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Josuesajche</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Nos encantó la experiencia. El lugar tiene un ambiente hogareño y acogedor, perfecto para descansar. Además, el anfitrión nos dejó agua, café y algunos detalles de bienvenida que marcaron la diferencia. Súper recomendado.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Puvlogmez</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>La estadía fue increíble, el departamento estaba muy limpio y tenía todo lo necesario. La cama era muy cómoda y la ubicación perfecta, cerca de restaurantes y transporte. Sin duda volvería a hospedarme aquí.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Jimmipro055</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>El anfitrión fue súper amable, siempre disponible para responder dudas. El check-in fue fácil y rápido. La terraza con vista fue lo mejor, ideal para tomar café por la mañana.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Kikerg</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Excelente relación calidad-precio. El lugar es tal cual como en las fotos, incluso mejor. Todo impecable y con detalles que hacen la diferencia, como botellas de agua y café de cortesía.</p>
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
