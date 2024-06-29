<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Experiencia</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="icon" href="pngwing.com.png" type="image/png">
        <style>
            body {
                background-image: url('travis.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                color: white;
            }
            .card-text, .card-text strong {
                color: black;
            }
        </style>
    </head>
    <body class="bg-light">
        <div class="container mt-5">
            <div class="text-center">
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                <h1 class="mb-4">Experiencia de Usuario</h1>
                <p class="lead mb-4">Conozca la experiencia de nuestros usuarios en nuestro simulador de crédito.</p>
                <div class="row">
                    <%-- Obtener la lista de experiencias de la aplicación --%>
                    <% List<String[]> experiencias = (List<String[]>) application.getAttribute("experiencias"); %>
                    <% if (experiencias == null) { %>
                    <% experiencias = new ArrayList<String[]>(); %>
                    <% application.setAttribute("experiencias", experiencias); %>
                    <% } %>

                    <%-- Obtener datos del Formulario --%>
                    <% String nombre = request.getParameter("nombre"); %>
                    <% String experiencia = request.getParameter("experiencia"); %>

                    <%-- Agregar nueva experiencia capturada del formulario --%>
                    <% if (nombre != null && experiencia != null) { %>
                    <% experiencias.add(new String[]{nombre, experiencia}); %>
                    <% } %>

                    <%-- Mostrar todas las experiencias --%>
                    <% for (String[] exp : experiencias) {%>
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <p class="card-text">
                                    <%= exp[1]%> -
                                    <strong><%= exp[0]%></strong>
                                </p>
                            </div>
                        </div>
                    </div>
                    <% }%>
                </div>
                <div class="text-center">
                    <a href="formularioExp.jsp" class="btn btn-primary">Agregar Experiencia</a>
                    <a href="intro.jsp" class="btn btn-primary">Inicio</a>
                    <a href="simulador.jsp" class="btn btn-primary">Ir al Simulador</a>
                </div>
            </div>
        </div>
    </body>
</html>

