<%-- 
    Document   : editar
    Created on : 25 sept 2022, 17:24:03
    Author     : fabia
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
        <title>Editar mensaje</title>
    </head>
    <body>
        <div class="contenedor">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 class="modal-title" id="exampleModalLabel">Editar mensaje</h2>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="editar.jsp" method="POST">
                            <div class="mb-3">
                                <label class="form-label">Ingrese el mensaje</label>
                                <textarea minlength="3" maxlength="250" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="mensaje" rows="3"><%=request.getParameter("mensaje")%></textarea>
                            </div>
                            <div class="mb-3">
                                <input type="hidden" name="id" value="<%=request.getParameter("id")%>">
                                <label  class="form-label">Autor</label>
                                <input minlength="3" maxlength="30" type="text" class="form-control" name="autor" value="<%=request.getParameter("autor")%>">
                            </div>
                            <div class="alert alert-success" role="alert">
                                Porfavor complete todos los campos
                            </div>
                            <hr>
                            <button type="submit" class="btn btn-success btn-lg" name="enviar">Guardar</button>
                            <a href="index.jsp" type="button" class="btn btn-warning btn-lg">Volver</a>
                        </form>
                    </div>
                    <%
                        mensajeDao mensajeDao = new mensajeDao();

                        String id = request.getParameter("id");
                        if (request.getParameter("enviar") != null) {
                            mensaje mensaje = new mensaje(
                                    Integer.parseInt(id.trim()),
                                    request.getParameter("mensaje"),
                                    request.getParameter("autor")
                            );
                            mensajeDao.editar(mensaje);
                        response.sendRedirect("index.jsp");
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>

