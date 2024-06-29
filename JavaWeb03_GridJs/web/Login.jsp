<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">                        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">        
        <link rel="icon" href="pngwing.com.png" type="image/png">
    </head>
    <body class="bg-light">
        <br><br><br><br><br><br><br><br><br><br><br>
        <div class="container">
            <div class="row justify-content-center mt-5">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-head text-center">
                            <h3>
                                <br>    LOGIN
                            </h3>
                        </div>
                        <div class="card-body">
                            <form action="Validacion.jsp" method="post">
                                <form action="intro.jsp" method="post">
                                    <div class="mb-3 input-group">
                                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                                        <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>    
                                    </div>
                                    <br><div class="mb-3 input-group">
                                        <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                        <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>    
                                    </div>
                                    <br><button type="submit" class="btn btn-gold btn-primary w-100">
                                        Login
                                    </button>
                                </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>    

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </body>
</html>
