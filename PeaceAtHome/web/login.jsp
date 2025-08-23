<%-- 
    Document   : index
    Created on : 23/07/2025, 13:57:39
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="styles/login.css">
</head>
<body class="body-login">

        <div class="logo-container">
            <img src="Imagenes/Logo.png" alt="Logo" class="logo">
        </div>
        <h2 class="titulo-login">Peace at Home</h2>
<!---------------------------------------------------------------------------------------->
    <div class="formulario">
        <form action="Validar" method="POST">
            <div class="input-box">
                <input type="text" name="txtUser" >
                <label>Email</label>
                <i class='bx bxs-user'></i>
                <span></span>
            </div>
<!---------------------------------------------------------------------------------------->
            <div class="input-box">
                <input type="password" name="txtPass">
                <label>Password</label>
                <i class='bx bxs-lock'></i>
                <span></span>
            </div>
<!---------------------------------------------------------------------------------------->
            <div class="recordar">¿Forgot password?</div>
            <input type="submit" value="Iniciar" name="accion">
            <div class="registrarse">
                
                Don't have an account <a href="Registro.jsp">Sing up</a>
            </div>
        </form>
    </div>
</body>
</html>
