
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Experiencia</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">                        
        <link rel="icon" href="pngwing.com.png" type="image/png">

    </head>
    <body class="bg-light">

        <style>
            body {
                background-image: url('travis.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                color: white;

                .btn-gold {
                    background-color: gold;
                }
                .btn-gold:hover {
                    background-color: #8B4513;
                    outline: none;
                }
            }
        </style>    

        <div class="container mt-5">
            <div class="text-center">
                <h1 class="mb-4">
                    Ingrese su experiencia
                </h1>
                <form action="experiencia.jsp" method="post">
                    <div class="mb-3">
                        <label for="nombre" class="form-label"><b>Nombre: </b></label>
                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre"required>
                    </div>
                    <div class="mb-3">
                        <label for="experiencia" class="form-label"><b>Experiencia </b></label>
                        <textarea class="form-control" id="experiencia" name="experiencia" placeholder="Experiencia" rows="3" required></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary">
                        Enviar
                    </button>
                    
                    <a href="experiencia.jsp" class="btn btn-success">
                        Volver a experiencia
                    </a>

                </form>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>        

    </body>
</html>
