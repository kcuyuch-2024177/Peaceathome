<%-- 
    Document   : SoporteTecnico
    Created on : 20/08/2025, 01:54:27
    Author     : joj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soporte Tecnico</title>
        <link rel='stylesheet' href="styles/SoporteTecnico.css" >
        <link rel="stylesheet" href="styles/Nav.css">
        <link rel="stylesheet" href="styles/footer.css">
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
        <a href="Propiedad.jsp" class="btn"><i class='bx bx-building-house'></i></a>
        <a href="Pago.jsp" class="btn"><i class='bx  bx-coin'></i></a>
        <a href="SoporteAdmin.jsp" class="btn"><i class='bx bx-cog'></i></a>
        <%    
            }
        %>
    </nav>

    <div class="imagenFondo" class="form-container" > 

        <div>
            <h2>Soporte Técnico</h2>
            <p>Describe tu problema y nos pondremos en contacto contigo lo antes posible.</p>
        </div>
        
        <%
            String error = request.getParameter("error");
            String exito = request.getParameter("exito");
        %>

        <% if (error != null) { %>
            <div class="alert error">
                <% if ("CorreoNoExiste".equals(error)) { %>
                    ⚠️ El correo ingresado no existe en el sistema.
                <% } else if ("ReservaNoExiste".equals(error)) { %>
                    ⚠️ El código de reserva no existe en la base de datos.
                <% } else if ("DatosInvalidos".equals(error)) { %>
                    ⚠️ Debe ingresar todos los datos requeridos.
                <% } %>
            </div>
        <% } %>

        <% if (exito != null && "TicketEnviado".equals(exito)) { %>
            <div class="alert success">
                ✅ Su ticket fue enviado exitosamente.
            </div>
        <% }%>

        <form action="Controlador?menu=SoporteTecnico" method="POST">
            <input type="hidden" name="txtcodigoSoporteTecnico" value="${soporteTecnico.codigoSoporteTecnico}">
            
            <div>
                <label><strong>Asunto:</strong></label>
                <textarea name="txtAsunto" value="${soporteTecnico.asunto}" cols="20" rows="10" required></textarea>
            </div>
            <div>
                <label for="prioridad"><strong>Prioridad:</strong></label>
                <select id="prioridad" name="txtPrioridad" required>
                    <option value="">Seleccione...</option>
                    <option value="Baja" ${soporteTecnico.prioridad == 'Baja' ? 'selected' : ''} >Baja</option>
                    <option value="Media" ${soporteTecnico.prioridad == 'Media' ? 'selected' : ''}>Media</option>
                    <option value="Alta" ${soporteTecnico.prioridad == 'Alta' ? 'selected' : ''}>Alta</option>
                </select>
            </div>
            <div>
                <label for="categoria"><strong>Categoria:</strong></label>
                <select id="categoria" name="txtCategoria" required>
                    <option value="">Seleccione...</option>
                    <option value="General" ${soporteTecnico.categoria == 'General' ? 'selected' : ''}>General</option>
                    <option value="Pago" ${soporteTecnico.categoria == 'Pago' ? 'selected' : ''}>Pago</option>
                    <option value="Reserva" ${soporteTecnico.categoria == 'Reserva' ? 'selected' : ''}>Reserva</option>
                    <option value="Tecnico" ${soporteTecnico.categoria == 'Tecnico' ? 'selected' : ''}>Técnico</option>
                </select>
            </div>
            <div>
                <label><strong>Código de Reserva:</strong></label>
                <input type="number" name="txtCodigoReserva" value="${soporteTecnico.codigoReserva}" required>
            </div>
            <div>
                <label><strong>Correo:</strong></label>
                <input type="email" name="txtCorreoUsuario" value="${soporteTecnico.correoUsuario}" required>
            </div>   
                <input type="submit" name="accion" value="Enviar Ticket">
        </form>

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
    </div>
 
</body>
    
    
</html>
