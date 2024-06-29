
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">                
    </head>
    <body>

        <style>
            body {
                background-image: url('2.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                color: white;
            }
            .table td, .table th {
                color: white;
            }
        </style>

        <div class="container">
            <center>
            <br><h2>Datos Registrados</h2>
            </center>
            <%
                String nombres = request.getParameter("nombres");
                String apellidos = request.getParameter("apellidos");
                String telefono = request.getParameter("telefono");
                String ciudad = request.getParameter("ciudad");
                String direccion = request.getParameter("direccion");
                String[] tiposangre = request.getParameterValues("tiposangre");
                String mail = request.getParameter("mail");
            %>

            <table class="table table-bordered">
                <hr><thead class="thead-light">
                    <tr>
                        <th>
                            Campo
                        </th>
                        <th>
                            Detalle
                        </th>
                    </tr>
                </thead> 
                <!--tabla-->
                <tbody>
                    <tr>
                        <td>
                            Nombres
                        </td>
                        <td>
                            <%= nombres%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            apellidos
                        </td>
                        <td>
                            <%= apellidos%>
                        </td>
                    </tr>
                <td>
                    telefono
                </td>
                <td>
                    <%= telefono%>
                </td>
                <tr>
                    <td>
                        ciudad
                    </td>
                    <td>
                        <%= ciudad%>
                    </td>                
                </tr>
                <tr>
                    <td>
                        Direccion
                    </td>
                    <td>
                        <%= direccion%>
                    </td>                
                </tr>               
                <tr>
                    <td>
                        Tipo de Snagre
                    </td>
                    <td>
                        <%
                            if (tiposangre != null) {
                                for (String hob : tiposangre) {
                                    out.println(hob + "");
                                }
                            } else {
                                out.println("No ha seleccionado ningún hobbie");
                            }
                        %>                
                    </td>
                </tr>
                <tr>
                    <td>
                        Mail
                    </td>
                    <td>
                        <%= mail%>
                    </td>

                <tbody>

                </tbody>
            </table>
                <hr><br></tr>
                    <form action="Donaciones.jsp" method="post">
                        <button type="submit" class="btn btn-primary">Salir</button>
                    </form>
                <tr>                    
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </body>
</html>
