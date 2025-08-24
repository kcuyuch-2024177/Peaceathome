<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Apartamento Moderno</title>
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
                <div class="item grande"><img src="Imagenes/Propiedad5.jpg" alt="Propiedad5"></div>
                <div class="item grande"><img src="Imagenes/Propiedad5_3.jpg" alt="Propiedad5_3"></div>
                <div class="item pequeña"><img src="Imagenes/Propiedad5_2.jpg" alt="Propiedad5_2"></div>
                <div class="item pequeña"><img src="Imagenes/Propiedad5_1.jpg" alt="Propiedad5_1"></div>
            </div>
            <div class="detalle-contenedor">
                <div class="fila-superior">
                    <div class="detalle-propiedad">
                        <h2>Casa en la playa</h2>
                        <p><strong>Tipo:</strong> Apartamento</p>
                        <p><strong>Habitaciones:</strong> 2</p>
                        <p><strong>Máx huéspedes:</strong> 4</p>
                        <p><strong>Propietario:</strong> martagomez@gmail.com</p>
                        <p><strong>Ubicación:</strong> Ciudad de Guatemala, Guatemala</p>
                        <p><strong>Política de cancelación:</strong> Flexible</p>
                        <p class="precio"><strong>Precio por noche:</strong> Q700</p>
                    </div>

                    <div class="detalle-propiedad">
                        <h3>Servicios incluidos</h3>
                        <table class="tabla-servicios">
                            <tr><td>TV</td></tr>
                            <tr><td>WiFi</td></tr>
                            <tr><td>Aire acondicionado</td></tr>
                            <tr><td>Balcon</td></tr>
                            <tr><td>Seguridad 24H</td></tr>
                            <td class="no-disponible">Chimenea</td>
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
                Departamento céntrico cerca de centros comerciales.
            </p>
             <section class="resenas">
            <h3><i class='bx bx-message-dots'></i> Reseñas</h3>
            <div class="resenas-lista">
                <div class="resena">
                    <div class=>
                        <strong>DayanaLopez</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bx-star'></i>
                        </span>
                    </div>
                    <p>El departamento está muy bien ubicado, a solo unos pasos de centros comerciales y restaurantes. Muy cómodo y limpio, ideal para una estadía corta en la ciudad.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Prosaster55</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Todo estuvo muy bien, el lugar es práctico y la ubicación excelente. Perfecto si quieres moverte rápido por la ciudad. Solo sugeriría mejorar un poco el estacionamiento.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Alan lopez</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Excelente opción. El departamento estaba ordenado, con todo lo necesario y lo mejor es que puedes salir caminando a centros comerciales. Muy conveniente.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>ashley lopez </strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Muy céntrico y seguro. Pasamos un par de noches y estuvo perfecto. Todo limpio y el anfitrión muy atento. Volveríamos sin dudarlo.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Sol maira</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>El departamento es pequeño pero funcional. La ubicación lo compensa todo, ya que tienes tiendas, restaurantes y centros comerciales muy cerca. Muy recomendable.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>hozman belis</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Nos encantó la ubicación, es lo mejor del departamento. Muy cómodo para moverse por la ciudad y hacer compras. Limpieza impecable y buena atención.</p>
                </div>
                <div class="resena">
                    <div class=>
                        <strong>Christian antonio</strong>
                        <span class="estrellas">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                        </span>
                    </div>
                    <p>Perfecto para un viaje corto. Todo está cerca y no necesitas transporte para salir a comer o ir de compras. El lugar es sencillo pero muy cómodo.</p>
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
