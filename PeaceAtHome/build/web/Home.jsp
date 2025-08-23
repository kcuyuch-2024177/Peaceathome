<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menú Lateral</title>
    <link rel="stylesheet" href="styles/Home.css">
    <link rel="stylesheet" href="styles/footer.css">
    <link rel="stylesheet" href="styles/Nav.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<!-----------------------------Botones de La nave----------------------------------------------------------->
    <section id="hero">
        <h1>PEACE AT HOME</h1>
        <p>Hospedaje inteligente para viajeros exigentes</p>
    </section>
    <nav>
        <h2></h2>
        <a href="#" class="btn"><i class='bx bx-list-ul'></i></a>
        <a href="#" class="btn"><i class='bx bx-home'></i></a>
        <a href="Servicios.jsp" class="nav-btn"><i class='bx  bx-bell'></i></a>
        <%
            String rol = (String) session.getAttribute("rol");
            if("Administrador".equalsIgnoreCase(rol)){
        %>
        <a href="Usuarioadmin.jsp" class="btn"><i class='bx bx-user'></i></a>
        <a href="PropiedadAdmin.jsp" class="btn"><i class='bx bx-building-house'></i></a>
        <a href="PagoAdmin.jsp" class="btn"><i class='bx  bx-coin'></i></a>
        <a href="Controlador?menu=SoporteAdmin&accion=Listar" class="btn"><i class='bx bx-cog'></i></a>
        <%    
            }
        %>
    </nav>

<!----------------------------- Hotele 1 ---------------------------------------------------------->
    <div class="hotel-grid">
        <div class="hotel-card">
            <div class="hotel-image">
                <img src="Imagenes/Propiedad1.jpg" alt="Loft moderno">
            </div>
            <div class="hotel-info">
                <h3>Loft moderno</h3>
                <p class="location">Zona 10, Guatemala</p>
                <div class="rating">
                    <span class="score">9.1</span>
                    <span class="text">Excelente (1813)</span>
                    <span class="stars">???</span>
                </div>
                <div class="price-list">
                    <div class="price-row">
                        <span class="site"><img src="hotels.png" alt=""> Hotels.com</span>
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                    <div class="price-row">
                        <span class="site"><img src="booking.png" alt=""> Booking.com</span>
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                </div>
            </div>
            <div class="hotel-offer">
                <span class="site-offer"><img src="expedia.png" alt="">Expedia</span>
                <h2>Q450</h2>
                <p>Desayuno gratis<br>Internet gratis</p>
                <a href="propiedad1.jsp">
                    <button>Ver Propiedad</button>
                </a>
                <%
                    if("Administrador".equalsIgnoreCase(rol)){
                %>
                <button>Eliminar</button>
                <%    
                    }
                %>
            </div>
            
        </div>
<!----------------------------- Hotele 2 ---------------------------------------------------------->
        <div class="hotel-card">
            <div class="hotel-image">
                <img src="Imagenes/Propiedad2.jpg" alt="Propiedad Junto Al lago">
            </div>
            <div class="hotel-info">
                <h3>Propiedad Con Vista Al lago</h3>
                <p class="location">Jutiapa</p>
                <div class="rating">
                    <span class="score">9.1</span>
                    <span class="text">Excelente (1813)</span>
                    <span class="stars">???</span>
                </div>
                <div class="price-list">
                    <div class="price-row">

                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                    <div class="price-row">
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                </div>
            </div>
            <div class="hotel-offer">
                <h2>Q780</h2>
                <p>Desayuno gratis<br>Internet gratis</p>
                <a href="propiedad2.jsp"><button>Ver Propiedad</button></a>
                <%
                    if("Administrador".equalsIgnoreCase(rol)){
                %>
                <button>Eliminar</button>
                <%    
                    }
                %>
            </div>
        </div>
            
<!----------------------------- Hotele 3 ---------------------------------------------------------->
        <div class="hotel-card">
            <div class="hotel-image">
                <img src="Imagenes/Propiedad3_1.jpg" alt="Mariana's Petit Hotel">
            </div>
            <div class="hotel-info">
                <h3>Mariana's Petit Hotel</h3>
                <p class="location">Ciudad de Guatemala, Guatemala</p>
                <div class="rating">
                    <span class="score">9.1</span>
                    <span class="text">Excelente (1813)</span>
                    <span class="stars">???</span>
                </div>
                <div class="price-list">
                    <div class="price-row">
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                    <div class="price-row">
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                </div>
            </div>
            <div class="hotel-offer">
                <h2>$39</h2>
                <p>Desayuno gratis<br>Internet gratis<br>Paga en el hotel</p>
                <a href="propiedad3.jsp">
                    <button>Ver Propiedad</button>
                </a>
                <%
                    if("Administrador".equalsIgnoreCase(rol)){
                %>
                <button>Eliminar</button>
                <%    
                    }
                %>
            </div>
        </div>
<!----------------------------- Hotele 4 ---------------------------------------------------------->
        <div class="hotel-card">
                <div class="hotel-image">
                    <img src="Imagenes/Propiedad4.jpg" alt="Propiedad 4"/>
                </div>
            <div class="hotel-info">
                    <h3>Mariana's Petit Hotel</h3>
                    <p class="location">Ciudad de Guatemala, Guatemala</p>
                    <div class="rating">
                        <span class="score">9.1</span>
                        <span class="text">Excelente (1813)</span>
                        <span class="stars">???</span>
                    </div>
                <div class="price-list">
                    <div class="price-row">
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                    <div class="price-row">
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                </div>
            </div>
            <div class="hotel-offer">
                <h2>$39</h2>
                <p>Desayuno gratis<br>Internet gratis<br>Paga en el hotel</p>
                <a href="propiedad4.jsp">
                    <button>Ver Propiedad</button>
                </a>
                <%
                    if("Administrador".equalsIgnoreCase(rol)){
                %>
                <button>Eliminar</button>
                <%    
                    }
                %>
            </div>
        </div>
<!----------------------------- Hotele 5 ---------------------------------------------------------->
        <div class="hotel-card">
                <div class="hotel-image">
                    <img src="Imagenes/Propiedad5.jpg" alt="Propiedad 5"/>
                </div>
            <div class="hotel-info">
                    <h3>Apartamento moderno</h3>
                    <p class="location">Ciudad de Guatemala, Guatemala</p>
                    <div class="rating">
                        <span class="score">9.1</span>
                        <span class="text">Excelente (1813)</span>
                        <span class="stars">???</span>
                    </div>
                <div class="price-list">
                    <div class="price-row">
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                    <div class="price-row">
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                </div>
            </div>
            <div class="hotel-offer">
                <h2>Q700</h2>
                <p>Desayuno gratis<br>Internet gratis<br>Paga en el hotel</p>
                <a href="propiedad5.jsp">
                    <button>Ver Propiedad</button>
                </a>
                <%
                    if("Administrador".equalsIgnoreCase(rol)){
                %>
                <button>Eliminar</button>
                <%    
                    }
                %>
            </div>
        </div>
<!----------------------------- Hotele 6 ---------------------------------------------------------->
        <div class="hotel-card">
                <div class="hotel-image">
                    <img src="Imagenes/Propiedad6.jpg" alt="Propiedad 4"/>
                </div>
            <div class="hotel-info">
                    <h3>Cabaña en el bosque</h3>
                    <p class="location">Ciudad de Guatemala, Guatemala</p>
                    <div class="rating">
                        <span class="score">9.1</span>
                        <span class="text">Excelente (1813)</span>
                        <span class="stars">???</span>
                    </div>
                <div class="price-list">
                    <div class="price-row">
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                    <div class="price-row">
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                </div>
            </div>
            <div class="hotel-offer">
                <h2>Q900</h2>
                <p>Desayuno gratis<br>Internet gratis<br>Paga en el hotel</p>
                <a href="propiedad6.jsp">
                    <button>Ver Propiedad</button>
                </a>
                <%
                    if("Administrador".equalsIgnoreCase(rol)){
                %>
                <button>Eliminar</button>
                <%    
                    }
                %>
            </div>
        </div>
<!----------------------------- Hotele 7 ---------------------------------------------------------->
        <div class="hotel-card">
                <div class="hotel-image">
                    <img src="Imagenes/Propiedad7.jpg" alt="Propiedad 4"/>
                </div>
            <div class="hotel-info">
                    <h3>Estudio acogedor</h3>
                    <p class="location">Ciudad de Guatemala, Guatemala</p>
                    <div class="rating">
                        <span class="score">9.1</span>
                        <span class="text">Excelente (1813)</span>
                        <span class="stars">???</span>
                    </div>
                <div class="price-list">
                    <div class="price-row">
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                    <div class="price-row">
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                </div>
            </div>
            <div class="hotel-offer">
                <h2>Q700</h2>
                <p>Desayuno gratis<br>Internet gratis<br>Paga en el hotel</p>
                <a href="propiedad7.jsp">
                    <button>Ver Propiedad</button>
                </a>
                <%
                    if("Administrador".equalsIgnoreCase(rol)){
                %>
                <button>Eliminar</button>
                <%    
                    }
                %>
            </div>
        </div>
<!----------------------------- Hotele 8 ---------------------------------------------------------->
        <div class="hotel-card">
                <div class="hotel-image">
                    <img src="Imagenes/Propiedad4.jpg" alt="Propiedad 4"/>
                </div>
            <div class="hotel-info">
                    <h3>Mariana's Petit Hotel</h3>
                    <p class="location">Ciudad de Guatemala, Guatemala</p>
                    <div class="rating">
                        <span class="score">9.1</span>
                        <span class="text">Excelente (1813)</span>
                        <span class="stars">???</span>
                    </div>
                <div class="price-list">
                    <div class="price-row">
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                    <div class="price-row">
                        <span class="benefit">Desayuno gratis</span>
                        <span class="price">$43</span>
                    </div>
                </div>
            </div>
            <div class="hotel-offer">
                <h2>$39</h2>
                <p>Desayuno gratis<br>Internet gratis<br>Paga en el hotel</p>
                <a href="propiedad4.jsp">
                    <button>Ver Propiedad</button>
                </a>
                <%
                    if("Administrador".equalsIgnoreCase(rol)){
                %>
                <button>Eliminar</button>
                <%    
                    }
                %>
            </div>
        </div>
<!----------------------------- Agregar ---------------------------------------------------------->

        <a href="Locacion.jsp" class="hotel-offer">
            <button>Agregar Locacion</button>
        </a>

        <a href="agregarPropiedad.jsp" class="hotel-offer">
            <button>Agregar Propiedad</button>
        </a>
    </div>
    <footer>
            <div>
            <p>© 2025 PeaceAtHome. Todos los derechos reservados.</p>
            </div>
            <p class="centra">
                <a href="SoporteTecnico.jsp" style="color:#fff; text-decoration:underline;">Soporte Técnico</a>
            </p>

            <div class="footer-social">
                    <div class="footer-logo">
                        <a href="Home.jsp" target="_blank" title="Logo"><i><img class="img-footer" src="Imagenes/Logo.png" alt="Logo" ></i></a>
                    </div>
                <a href="https://facebook.com" target="_blank" title="Facebook"><i class='bx bxl-facebook'></i></a>
                <a href="https://twitter.com" target="_blank" title="Twitter"><i class='bx bxl-twitter'></i></a>
                <a href="https://instagram.com" target="_blank" title="Instagram"><i class='bx bxl-instagram'></i></a>
                <a href="https://wa.me/50239482283" target="_blank" title="WhatsApp"><i class='bx bxl-whatsapp'></i></a>
            </div>
    </footer>
</body>
</html>

