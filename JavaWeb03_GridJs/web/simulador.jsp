<%@page contentType="text/html" pageEncoding="ISO-8859-9"%>
<%@page import = "java.text.NumberFormat"%>
<%@page import = "java.util.Locale"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
        <title>Simulador</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/gridjs/dist/theme/mermaid.min.css" rel="stylesheet">
    </head>
    <body>
        <h2 class="mt-5 text-center">Simulador de Crédito de Libre Inversión</h2>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form action="simulador.jsp" method="post">
                        <div>
                            <label><b>Digite el Monto del Préstamo:</b></label>
                            <input type="text" class="form-control" name="monto" id="monto" placeholder="Cantidad en pesos">
                        </div></br>
                        <div>
                            <label><b>Seleccione el Plazo:</b></label>
                            <select name="plazo" class="form-select" id="plazo">
                                <option value="12">12</option>
                                <option value="24">24</option>
                                <option value="36">36</option>
                                <option value="48">48</option>
                                <option value="60">60</option>
                                <option value="72">72</option>
                                <option value="84">84</option>
                                <option value="96">96</option>
                                <option value="108">108</option>
                                <option value="120">120</option>
                            </select>
                        </div></br>
                        <div>
                            <label><b>Digite la tasa de Interés Anual:</b></label>
                            <input type="text" class="form-control" name="tasa" id="tasa" placeholder="Verifique y digite la tasa anual">
                        </div></br>
                        <button type="submit" class="btn btn-primary">Calcular</button>
                        <a href="intro.jsp" class="btn btn-success">Volver</a>
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

                            if (monto >= 1000000 && monto <= 25000000) {
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
            document.addEventListener("DOMContentLoaded", function() {
                const grid = new gridjs.Grid({
                    columns: ["No Cuota", "Cuota Mensual", "Abono a Capital", "Abono a Intereses", "Saldo"],
                    data: <%= jsonData %>,
                    search: true,
                    pagination: {
                        enabled: true,
                        limit: 10
                    },
                    sort: true,
                    resizable: true,
                    style: {
                        th: {
                            'background-color': '#f8f9fa',
                            'text-align': 'center'
                        }
                    }
                }).render(document.getElementById("grid"));

                // Exportar a PDF
                document.getElementById("export-pdf").addEventListener("click", function() {
                    const docDefinition = {
                        content: [
                            {
                                table: {
                                    headerRows: 1,
                                    widths: [ 'auto', 'auto', 'auto', 'auto', 'auto' ],
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
                document.getElementById("export-excel").addEventListener("click", function() {
                    const ws = XLSX.utils.aoa_to_sheet([
                        ['No Cuota', 'Cuota Mensual', 'Abono a Capital', 'Abono a Intereses', 'Saldo'],
                        ...grid.config.data.map(row => row)
                    ]);
                    const wb = XLSX.utils.book_new();
                    XLSX.utils.book_append_sheet(wb, ws, "Sheet1");
                    XLSX.writeFile(wb, 'data.xlsx');
                });

                // Exportar a CSV
                document.getElementById("export-csv").addEventListener("click", function() {
                    const csv = [
                        ['No Cuota', 'Cuota Mensual', 'Abono a Capital', 'Abono a Intereses', 'Saldo'],
                        ...grid.config.data.map(row => row)
                    ].map(e => e.join(",")).join("\n");
                    const blob = new Blob([csv], { type: 'text/csv' });
                    saveAs(blob, 'data.csv');
                });

                // Imprimir
                document.getElementById("print").addEventListener("click", function() {
                    window.print();
                });
            });
        </script>
    <br>
    </body>
</html>
