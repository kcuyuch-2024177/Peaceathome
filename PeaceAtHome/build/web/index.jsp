<%-- 
    Document   : index
    Created on : 19/08/2025, 21:47:09
    Author     : joj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Redirección</title>
</head>
<body>
    <%
        // Redirección automática al login
        response.sendRedirect("login.jsp");
    %>
</body>
</html>