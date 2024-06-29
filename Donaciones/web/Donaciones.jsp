<%-- 
    Document   : Donaciones
    Created on : 5/06/2024, 8:43:14 a. m.
    Author     : PC_01 ADSO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donaciones</title>
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
        </style>

        <div class="container">
            <center>
            <h1 class="mt-2">Donaciones de Sangre</h1>
            </center>
            <hr><br><h2>Registro</h2>
            <form class="row 4" action="inicio.jsp" method="post">
                <div class="col md-4">
                    <label for="validationDefault01" class="form-label">Nombres</label>
                    <input type="text" class="form-control" id="nombres" name="nombres" required>
                </div>
                <div class="col md-4">
                    <label for="validationDefault02" class="form-label">Apellidos</label>
                    <input type="text" class="form-control" id="apellidos" name="apellidos" required>
                </div>
                <div class="md-4">
                    <label for="validationDefault02" class="form-label">Telefono</label>
                    <input type="text" class="form-control" id="telefono" name="telefono" required>
                </div>
                <div class="md-6">
                    <label for="validationDefault03" class="form-label">Ciudad</label>
                    <input type="text" class="form-control" id="ciudad" name="ciudad" required>
                </div>
                <div class="md-4">
                    <label for="validationDefault02" class="form-label">Direccion</label>
                    <input type="text" class="form-control" id="direccion" name="direccion" required>
                </div>                
                <div class="col-md-3">
                    <label for="validationDefault04" class="form-label">Tipo de Sangre</label>
                    <select class="form-select" id="tiposangre" name="tiposangre" required>
                        <option selected disabled value="">Selecciona...</option>
                        <option>A+</option>
                        <option>A-</option>
                        <option>B+</option>
                        <option>B-</option>
                        <option>O+</option>
                        <option>O-</option>
                    </select>
                    <div class="form-group">
                        <br>
                        <label for="email"><b>Email:</b></label>
                        <input type="email" class="form-control" id="email" name="mail" required><br>
                    </div>
                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
                            <label class="form-check-label" for="invalidCheck2">
                                Agree to terms and conditions
                            </label>
                        </div>
                    </div>
                    <div class="col-12">
                        <br><button class="btn btn-primary" type="submit">Registrarse</button>
                    </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
