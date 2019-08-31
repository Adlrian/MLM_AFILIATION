<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fuxion | Enrollment - Join Today!</title>
        <%@include file="WEB-INF/jspf/styles.jspf" %>
        <script src="resources/js/validacionforms.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="section_header">
            <%@include file="WEB-INF/jspf/navbar.jspf" %>
        </div>
        <span><br></span>

        <div class="container">
            <div class="d-flex justify-content-center">
                <nav aria-label="...">
                    <ul class="pagination pagination-md">
                        <li class="page-item" aria-current="page">
                            <span class="page-link">1 Inscripción > </span>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">2 Productos > </a></li>
                        <li class="page-item"><a class="page-link" href="#">3 Información > </a></li>
                        <li class="page-item active"><a class="page-link" href="#">4 Confirmación > </a></li>
                    </ul>
                </nav>
            </div>
            <span><br></span>
            <div class="card">
                <div class="card-header">
                    ¡Registro completado con éxito!
                </div>
                <div class="card-body row">
                    <span><br></span>
                    <div class="d-flex justify-content-between">
                       <!-- <div class="container col-md-8">
                            <h6>Nombre: Adrian Quiroz Sotil</h6>
                            <h6>Username: adrianq</h6>
                            <h6>Correo: aquirozs@fuxion.net</h6>
                            <span><br></span>
                            <p>Detalle del pedidio</p>
                        </div>
                        <div class="container col-md-4">
                            <a href="#">Ir a mi Oficina Virtual</a>
                        </div>-->
                       <img src="https://4.bp.blogspot.com/-xKWHwP06X18/VzMYd2TrGeI/AAAAAAAACBw/CGm7gmjgA_gj0sDChvt0vGth0z9jRoWugCLcB/s640/gracias-por-registrarte-533x225.png" alt="Logotipo de HTML5">

                    </div>
                    
                </div>
            </div>
            <span><br></span>
        </div>  
    </body>
</html>
