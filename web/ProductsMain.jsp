<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
                        <li class="page-item active"><a class="page-link" href="#">2 Productos > </a></li>
                        <li class="page-item"><a class="page-link" href="#">3 Información > </a></li>
                        <li class="page-item"><a class="page-link" href="#">4 Confirmación > </a></li>
                    </ul>
                </nav>
            </div>
            <div class="card">
                <div class="card-header">
                    Para ser un emprendedor Fuxion debes adquirir el paquete inicial o kit de afiliación obligatoriamente, por eso nosotros lo cargamos directamente al carrito ;).
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col"> </th>
                                <th scope="col">Producto</th>
                                <th scope="col">Precio y CV</th>
                                <th scope="col">Selección</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><img src="resources/imgs/PE_143095_EXT_20032019_173019_MAIN.jpg" alt="" width="130"/></td>
                                <td>KIT DE AFILIACIÓN</td>
                                <td>S/. 49.00 <br> CV - 00</td>
                                <td><img src="resources/imgs/checkmark.png" alt=""/></td>
                            </tr>         
                        </tbody>
                    </table>

                </div>
            </div>
            <span><br></span>
            <div class="card">
                <div class="card-header">
                    Además, si deseas comprar alguno de nuestros productos lo puedes hacer añadiendolos a tu carrito, pero recuerda que no es obligatorio.
                </div>
                <div class="card-body">
                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 170px; overflow: auto;"> </th>
                                <th scope="col">Producto</th>
                                <th scope="col">Descripcion</th>
                                <th scope="col">Precio</th>
                                <th scope="col">Puntos</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="productos" items="${sessionScope.Lista}">
                                <tr>
                                    <td>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend" id="button-addon3">
                                                <button class="btn btn-outline-secondary" type="button"> - </button>
                                            </div>
                                            <input type="text" class="form-control" placeholder="50" aria-label="50" aria-describedby="" >
                                            <div class="input-group-append" id="button-addon3">
                                                <button class="btn btn-outline-secondary" type="button"> + </button>
                                            </div>
                                        </div>
                                        <span><i class="fas fa-cart-plus"></i></span>
                                        <button type="button" class="btn btn-primary btn-sm btn-block">Agregar al carrito</button>
                                    </td>
                                    <td><span><img src="${productos.URL}" alt="" width="130"/>
                                        </span>${productos.nombre_producto}
                                    </td>
                                    <td><span style="color: grey;font-size:12px">${productos.descripcion_producto}</span></td>
                                    <td>S/. ${productos.precio}.00</td>
                                    <td>${productos.puntos}</td>
                            <!-- <td><a href="<%=request.getContextPath()%>/clientecontroller.do?operation=edit&id=${clientes.id}" class="btn btn-info btn-lg active" role="button" aria-pressed="true"><i class="fas fa-edit"></i></a></td>-->
                                </tr>
                            </c:forEach> 


                        </tbody>

                    </table>

                </div>
            </div>

            <span><br></span>

            <div class="container d-flex justify-content-between">
                <a href="index.jsp">Volver</a>
                <a href="Information.jsp">Siguiente</a>
            </div>
            <span><br></span>
        </div>  
    </body>
</html>

