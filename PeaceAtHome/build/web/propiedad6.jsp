<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cabaña en el bosque</title>
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
                <div class="item grande"><img src="Imagenes/Propiedad6.jpg" alt="Propiedad6"></div>
                <div class="item grande"><img src="Imagenes/Propiedad6_2.jpg" alt="Propiedad6_2"></div>
                <div class="item pequeña"><img src="Imagenes/Propiedad6_3.jpg" alt="Propiedad6_3"></div>
                <div class="item pequeña"><img src="Imagenes/Propiedad6_1.jpg" alt="Propiedad6_1"></div>
            </div>
            <div class="detalle-contenedor">
                <div class="fila-superior">
                    <div class="detalle-propiedad">
                        <h2>Cabaña en el bosque</h2>
                        <p><strong>Tipo:</strong> Cabaña</p>
                        <p><strong>Habitaciones:</strong> 1</p>
                        <p><strong>Máx huéspedes:</strong> 2</p>
                        <p><strong>Propietario:</strong> martagomez@gmail.com</p>
                        <p><strong>Ubicación:</strong> Ciudad de Guatemala, Guatemala</p>
                        <p><strong>Política de cancelación:</strong> Flexible</p>
                        <p class="precio"><strong>Precio por noche:</strong> Q900</p>
                    </div>

                    <div class="detalle-propiedad">
                        <h3>Servicios incluidos</h3>
                        <table class="tabla-servicios">
                            <tr><td>TV</td></tr>
                            <tr><td>WiFi</td></tr>
                            <tr><td>Aire acondicionado</td></tr>
                            <tr><td>Balcon</td></tr>
                            <tr><td>Cocina Equipada</td></tr>
                            <td class="no-disponible">Fogata</td>
                        </table>
                    </div>
                    <div class="reserva-box">
                        <h3>Reserva tu estancia</h3>
                        <p><strong>Precio:</strong> Q900 por noche</p>
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
                Cabaña rústica ideal para desconectarse de la ciudad.
            </p>
            <section class="resenas">
            <h3><i class='bx bx-message-dots'></i> Reseñas</h3>
            <div class="resenas-lista">
                <div class="resena">
                    <div class=>
                        <strong>Pepeaguilar</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bx-star'></i>
                        </span>
                    </div>
                    <p>Un lugar perfecto para relajarse y olvidarse del ruido de la ciudad. La cabaña es acogedora, rodeada de naturaleza y con todo lo necesario para una estadía tranquila.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Ricardo gonzalez</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>La cabaña es muy bonita y cómoda, ideal para pasar un fin de semana en paz. La ubicación es un poco retirada, pero justo eso la hace especial para desconectarse.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>ever cano</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Excelente experiencia. El ambiente rústico y natural nos encantó. Muy limpia y con detalles que hacen sentir como en casa. Volveríamos sin pensarlo.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>jessiestrada </strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Perfecto para descansar y disfrutar de la naturaleza. Pasamos noches muy tranquilas y el lugar tiene un encanto especial. Muy recomendado para quienes buscan paz.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>karina213</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>La cabaña tiene todo lo necesario y la decoración rústica la hace muy acogedora. Es ideal para desconectarse, aunque recomendaría llevar provisiones ya que no hay tiendas cerca.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>mauro lopez</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Un lugar mágico. Nos encantó la tranquilidad y el ambiente natural. La cabaña es rústica pero muy bien cuidada. Perfecta para escaparse de la rutina.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Christian lopez</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Una experiencia única. Dormir rodeado de naturaleza y sin ruidos de la ciudad fue lo mejor. La cabaña es sencilla, cómoda y tiene todo lo que se necesita.</p>
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
