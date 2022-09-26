<%-- 
    Document   : index
    Created on : 22 sept 2022, 13:51:39
    Author     : fabian
--%>

<%@page import="java.util.*"%>
<%@page import="com.fabian.mensajes.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
        <title>Index</title>
    </head>
    <body>
        <div class="contenedor">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 class="modal-title" id="exampleModalLabel">Crear mensaje</h2>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="index.jsp" method="POST">
                            <div class="mb-3">
                                <label class="form-label">Ingrese el mensaje</label>
                                <textarea minlength="3"  maxlength="250" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="mensaje" rows="3"></textarea>
                            </div>
                            <div class="mb-3">
                                <label  class="form-label">Autor</label>
                                <input minlength="3" maxlength="30" type="text" class="form-control" name="autor">
                            </div>
                            <div class="alert alert-success" role="alert">
                                Porfavor complete todos los campos
                            </div>
                            <hr>
                            <button type="submit" class="btn btn-success btn-lg" name="enviar">Enviar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%
            mensajeDao mensajeDao = new mensajeDao();
            
            if (request.getParameter("enviar") != null) {
            mensaje mensaje = new mensaje(
                    request.getParameter("mensaje"),
                    request.getParameter("autor")
            );
            mensajeDao.insertar(mensaje);
            }
        %>
        <div class="contenedor">
            <h2>Todos los mensajes</h2>
            <%
                List<mensaje> mensajes = mensajeDao.seleccionar();
                Collections.reverse(mensajes);
                // ciclo foreach para mostrar mensajes de la DB
                for (mensaje mensaje : mensajes) {
            %>
            <hr>
            <div class="padding">
            <h5 class="autor"><%=mensaje.getAutor()%></h5>
            <p class="descripcion"><%=mensaje.getMensaje()%></p>
            <p><cite></cite><%=mensaje.getFecha()%></p>
            <a href="editar.jsp?id=<%=mensaje.getId()%>&&mensaje=<%=mensaje.getMensaje()%>&&autor=<%=mensaje.getAutor()%>" type="button" class="btn btn-warning btn-lg">Editar</a>
            <a href="eliminar.jsp?id=<%=mensaje.getId()%>" type="button" class="btn btn-danger btn-lg">Eliminar</a>
            </div> 
            <%}%>
        </div> 
    </body>
</html>
