<%-- 
    Document   : Validacion
    Created on : 6/06/2024, 8:27:44 a. m.
    Author     : PC_01 ADSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validacion</title>
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            if (username.equals("admin")&&password.equals("admin")) {
                    response.sendRedirect("intro.jsp");
                } else {
                out.println("<div class='alert alert-danger text-center'>Usuario NO Existe</div>");
            }
        %>
    </body>
</html>
