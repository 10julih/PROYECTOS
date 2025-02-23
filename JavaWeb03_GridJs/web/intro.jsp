<%-- 
    Document   : intro
    Created on : 6/06/2024, 8:31:48 a. m.
    Author     : PC_01 ADSO
--%>

<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
body {
background-image: url('utopia.jpg');
background-size: cover;
background-repeat: no-repeat;
background-attachment: fixed;
color: white;
}
</style>        

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">                        
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/gridjs/dist/theme/mermaid.min.css" rel="stylesheet">      
<link rel="icon" href="pngwing.com.png" type="image/png">
</head>
<body class="bg-light">

<!--Menú-->
<div class="sidebar" style="background-color: #222">
<ul>
<br><br><br><br><br><br><br><br><br><br>
<li><a href="SimLibreInversion.jsp">Simulador de Libre Inversión</a></li>
<li><a href="EmuCredHipoteca.jsp">Emulador Crédito Hipoteca</a></li>
<li><a href="simuladorCDT.jsp">CDT</a></li>
<li><a href="experiencia.jsp">Experiencia del Usuario</a></li>
<li><a href="Contacto.jsp">Contacto</a></li>
<li><a href="QuienSomos.jsp">Quienes Somos</a></li>
<li><a href="Login.jsp">Salir</a></li>

</ul>

<style>
body {
margin: 0;
padding: 0;
font-family: Arial, sans-serif;
}

.sidebar {
position: fixed;
top: 0;
left: 0;
width: 280px;
height: 100%;
background-color: #222;
color: #fff;
padding-top: 20px;
box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.sidebar ul {
list-style-type: none;
padding: 0;
margin: 0;
}

.sidebar li {
padding: 10px 15px;
border-bottom: 1px solid #444;
}

.sidebar li:last-child {
border-bottom: none;
}

.sidebar a {
text-decoration: none;
color: #fff;
font-size: 16px;
}

.sidebar a:hover {
background-color: #333;
}

.content {
margin-left: 280px;
padding: 20px;
}

@media (max-width: 768px) {
.sidebar {
width: 100%;
height: auto;
position: relative;
}

.content {
margin-left: 0;
}
}
</style>

</div>
<!--Carrusel-->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
<div class="carousel-indicators">
<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
</div>
<div class="carousel-inner">
<div class="carousel-item active">
<img src="https://cloudfront-us-east-1.images.arcpublishing.com/semana/SLYCUNLM5FESBMSTUERTPI7WY4.jpeg" class="d-block" alt="..." border-radius: 10%>
</div>
<div class="carousel-item">
<img src="https://www.semana.com/resizer/v2/LC3NEG2MNJHTPK36IEAH45OKLY.jpeg?auth=6ae6738b5fcda483ce82c30844add9f4abd21cda2bacdbdf290e83393024fce0&smart=true&quality=75&width=1280&height=720" class="d-block" alt="80px" border-radius: 10%>
</div>
<div class="carousel-item">
<img src="https://thedailyaztec.com/wp-content/uploads/2023/03/FeaturePhoto.jpg" class="d-block" alt="..." border-radius: 10%>
</div>
<style>
.carousel-item {
overflow: hidden;
height: 250px; /* ajusta la altura según tu preferencia */
}
.carousel-item img {
height: auto;
width: 100%;
display: flex;
margin: auto;
}
</style>
</div>
<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
<span class="carousel-control-prev-icon" aria-hidden="true"></span>
<span class="visually-hidden">Previous</span>
</button>
<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
<span class="carousel-control-next-icon" aria-hidden="true"></span>
<span class="visually-hidden">Next</span>
</button>
</div>

</head>
<body>

<div class="container" mt-5>
<div class="text-center">
<br>

<!--Título-->
<h1 class="mb-4" style="color: white;">
Bienvenido a Nuestro Proyecto de Simuladores
</h1>
<hr style="color: white;">
<p class="lead mb-4" style="color: white;">
Utilice nuestros simuladores para resolver sus dudas referentes a prestamos, inversiones, entre otros.
</p>

</div>

<hr style="color: white;">

</div>

<div class="container" mt-5>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<br>

<!--Texto Final-->
<center>
<p class="mb-4" style="color: white;">
BancoAstroworld
<br>Avenida Rodeo - HUSTON TEXAS
<br>3185657114
<br>Instagram - LAFLAME BANCO
</p>
</center>

</body>
</html>
