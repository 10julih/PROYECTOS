<%-- 
    Document   : intro
    Created on : 6/06/2024, 8:31:48 a. m.
    Author     : PC_01 ADSO
--%>
<%@page import="java.util.Locale"%>
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
<title>Hipoteca</title>
<!-- External Stylesheets -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">                        
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/gridjs/dist/theme/mermaid.min.css" rel="stylesheet">      
<link rel="icon" href="pngwing.com.png" type="image/png">
<body class="bg-light">

<!--Menú-->
<div class="sidebar" style="background-color: #222">
<ul>
<br><br><br><br><br><br><br><br><br><br>
<li><a href="intro.jsp">Inicio</a></li>
<li><a href="SimLibreInversion.jsp">Simulador de Libre Inversión</a></li>
<li><a href="simuladorCDT.jsp">CDT</a></li>
<li><a href="experiencia.jsp">Experiencia del Usuario</a></li>
<li><a href="#">Contacto</a></li>
<li><a href="QuienSomos.jsp">Quienes Somos</a></li>
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
Bienvenido al Simulador de Crédito de Libre Inversión
</h1>
<hr style="color: white;">
<p class="lead mb-4" style="color: white;">
Utilice nuestro simulador para capturar las coutas de su préstamo
de manera fácil y eficiente
</p>
</div>

<hr style="color: white;">

</div>

<div class="container" mt-5>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


<div class="text-center" style="color : white">
<h2 class="mt-5 text-center">Simulador de Crédito Hipotecario</h2>
<div class="container mt-5">
<div class="row">
<div class="col-sm">
<form action="EmuCredHipoteca.jsp" method="post">
<div style="color : white">
<label>Digite el Monto del Préstamo:</label>
<input type="text" class="form-control" name="monto" id="monto" placeholder="Cantidad en pesos">
</div></br>
<div style="color : white">
<label>Seleccione el Plazo en meses:</label>
<select name="plazo" class="form-select" id="plazo">
<option value="Seleccione">Seleccione:</option>
<option value="120">120</option>
<option value="180">180</option>
<option value="240">240</option>
<option value="300">300</option>
<option value="360">360</option>
<option value="420">420</option>
</select>
</div></br>
<div style="color : white">
<label>Digite la tasa de Interés Anual:</label>
<input type="text" class="form-control" name="tasa" id="tasa" placeholder="Verifique y digite la tasa anual, Esta en promedio de 16.55">
</div></br>
<button type="submit" class="btn btn-primary">Calcular
</button>
<a href="inicio.jsp" class="btn btn-success">Volver</a>
<button type="reset" class="btn btn-secondary">Limpiar</button></br>
</form>
<div id="grid"></div>
<div class="mt-3">
<button id="export-pdf" class="btn btn-danger">Exportar a PDF</button>
<button id="export-excel" class="btn btn-success">Exportar a Excel</button>
<button id="export-csv" class="btn btn-warning">Exportar a CSV</button>
<button id="print" class="btn btn-info">Imprimir</button>
</div>
<%
String jsonData = "[]";
try {
int monto = Integer.parseInt(request.getParameter("monto"));
int plazo = Integer.parseInt(request.getParameter("plazo"));
String tas = request.getParameter("tasa");
double tasa = Double.parseDouble(tas);
NumberFormat nf = NumberFormat.getCurrencyInstance();

if (monto >= 1000000 && monto <= 250000000) {
double interesMensual = tasa / 12 / 100;
double cuotaMensual = monto * interesMensual / (1 - Math.pow(1 + interesMensual, -plazo));
double saldo = monto;
StringBuilder jsonBuilder = new StringBuilder("[");
for (int i = 1; i <= plazo; i++) {
double intereses = saldo * interesMensual;
double abonoCapital = cuotaMensual - intereses;
saldo -= abonoCapital;
jsonBuilder.append("[")
        .append(i).append(",")
        .append("\"").append(nf.format(cuotaMensual)).append("\",")
        .append("\"").append(nf.format(abonoCapital)).append("\",")
        .append("\"").append(nf.format(intereses)).append("\",")
        .append("\"").append(nf.format(saldo)).append("\"],");
}
jsonBuilder.setLength(jsonBuilder.length() - 1); // Remove the last comma
jsonBuilder.append("]");
jsonData = jsonBuilder.toString();
} else {
out.println("No cumple con las condiciones del Prestamo");
}
} catch (NumberFormatException e) {
out.println("Error en los datos ingresados");
}
%>


</div>
</div>
</div>

<!-- Grid.js -->
<script src="https://cdn.jsdelivr.net/npm/gridjs/dist/gridjs.umd.js"></script>
<!-- Librerías adicionales para exportación -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.68/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.68/vfs_fonts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.16.9/xlsx.full.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.5/FileSaver.min.js"></script>

<script>
document.addEventListener("DOMContentLoaded", function () {
const grid = new gridjs.Grid({
columns: ["No Cuota", "Cuota Mensual", "Abono a Capital", "Abono a Intereses", "Saldo"],
data: <%= jsonData%>,
search: true,
pagination: {
enabled: true,
limit: 10
},
sort: true,
resizable: true,
style: {
th: {
'background-color': '#000000',
'text-align': 'center'
}
}
}).render(document.getElementById("grid"));

// Exportar a PDF
document.getElementById("export-pdf").addEventListener("click", function () {
const docDefinition = {
content: [
{
table: {
headerRows: 1,
widths: ['auto', 'auto', 'auto', 'auto', 'auto'],
body: [
['No Cuota', 'Cuota Mensual', 'Abono a Capital', 'Abono a Intereses', 'Saldo'],
...grid.config.data.map(row => row)
]
}
}
]
};
pdfMake.createPdf(docDefinition).download('data.pdf');
});

// Exportar a Excel
document.getElementById("export-excel").addEventListener("click", function () {
const ws = XLSX.utils.aoa_to_sheet([
['No Cuota', 'Cuota Mensual', 'Abono a Capital', 'Abono a Intereses', 'Saldo'],
...grid.config.data.map(row => row)
]);
const wb = XLSX.utils.book_new();
XLSX.utils.book_append_sheet(wb, ws, "Sheet1");
XLSX.writeFile(wb, 'data.xlsx');
});

// Exportar a CSV
document.getElementById("export-csv").addEventListener("click", function () {
const csv = [
['No Cuota', 'Cuota Mensual', 'Abono a Capital', 'Abono a Intereses', 'Saldo'],
...grid.config.data.map(row => row)
].map(e => e.join(",")).join("\n");
const blob = new Blob([csv], {type: 'text/csv'});
saveAs(blob, 'data.csv');
});

// Imprimir
document.getElementById("print").addEventListener("click", function () {
window.print();
});
});
</script>


</div>
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
