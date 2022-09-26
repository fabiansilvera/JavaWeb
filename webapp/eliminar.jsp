<%-- 
    Document   : eliminar
    Created on : 25 sept 2022, 18:25:39
    Author     : fabia
--%>

<%@page import="java.util.*"%>
<%@page import="com.fabian.mensajes.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminado</title>
    </head>
    <body>
        <%
            mensajeDao mensajeDao = new mensajeDao();
            String id = request.getParameter("id");
            mensaje mensaje = new mensaje(
                    Integer.parseInt(id.trim()));
            mensajeDao.eliminar(mensaje);
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
