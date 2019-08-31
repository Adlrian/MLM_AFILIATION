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
                        <li class="page-item active"><a class="page-link" href="#">4 Revisión > </a></li>
                        <li class="page-item"><a class="page-link" href="#">5 Confirmación > </a></li>
                    </ul>
                </nav>
            </div>

            <span><br></span>          

            <div class="row">
                <div class="card col-md-8">
                    <div class="card-header">
                        Método de pago
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Método: </label>
                                <div class="col-sm-10">
                                    <img src="resources/imgs/Visa_Logo.png" alt="" width="90"/>
                                 </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Titular: </label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputEmail3" placeholder="Nombre del titular de la tarjeta">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Número:</label>
                                <div class="col-sm-7">
                                    <input type="text" class="form-control" id="inputPassword3" placeholder="Número de la tarjeta">
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" placeholder="CCV">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword3" class="col-sm-2 col-form-label">Fecha de caducidad:</label>
                                <div class="col-sm-7">
                                    <select id="inputState" class="form-control">
                                        <option selected>Seleccionar</option>
                                        <option>Enero</option>
                                        <option>Febrero</option>
                                        <option>Marzo</option>
                                        <option>Abril</option>
                                        <option>Mayo</option>
                                        <option>Junio</option>
                                        <option>Julio</option>
                                        <option>Agosto</option>
                                        <option>Setiembre</option>
                                        <option>Octubre</option>
                                        <option>Noviembre</option>
                                        <option>Diciembre</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <select id="inputState" class="form-control">
                                        <option selected>Seleccionar</option>
                                        <option>2021</option>
                                        <option>2022</option>
                                        <option>2023</option>
                                        <option>2024</option>
                                        <option>2025</option>
                                        <option>2026</option>
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="card col-md-4">
                    <div class="card-header">
                        Resumen de pago
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-8">
                                <p class="sepH_a"><span class="sepV_b text-muted">Sub Total</span></p>
                                <p class="sepH_a"><span class="sepV_b text-muted"><b>Impuesto</b></span></p>
                                <p class="sepH_a"><span class="sepV_b text-muted"><b>Envío</b></span></p>
                                <p class="sepH_a text-success"><strong><span class="sepV_b">Total</span></strong></p>                                    
                            </div>
                            <div class="col-md-4">
                                <p class="sepH_a">
                                    <span id="">S/. 59.99</span>
                                </p>
                                <p class="sepH_a" id="" style="display: none;">
                                    <span id="">0</span>
                                </p>
                                <p class="sepH_a">
                                    <span id="">S/. 3.90</span>
                                </p>
                                <p class="sepH_a">
                                    <span id="">S/. 8.95</span>
                                </p>
                                <p class="sepH_a text-success">
                                    <b>
                                        <span id="">S/. 72.84</span></b>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <a class="btn btn-primary btn-md btn-block" href="Confirmation.jsp" role="button">Confirmar y pagar</a>
                        </div>
                    </div>
                </div>
            </div>
            <span><br></span>
            <div class="row">
                <div class="card col-md-12">
                    <div class="card-header">
                        Resumen de la orden
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-12" style="position: relative;" id="">
                            <table id="OrderDetails" class="table table-striped tablecenter">
                                <thead>
                                    <tr>

                                        <th class="colcode">Codigo de item</th>
                                        <th class="colorder">Cantidad</th>
                                        <th class="coldesc tdnone" style="text-align: left !important;">Item</th>
                                        <th class="notshow colvol tdnone">Volumen Unitario</th>
                                        <th class="notshow coltvol tdnone">Total Volumen</th>
                                        <th class="colprice">Precio Unitario</th>
                                        <th class="coltprice">Precio Total</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="colorhead notshow">
                                        <td class="tdnone">SKU1205WXS5Q</td>
                                        <td class="tdnone">5</td>
                                        <td class="invoice_tar"><p class="sepH_a"><span class="sepV_b text-muted">Kit de Afiliación - PE</span></p></td>
                                        <td class="tdnone">20</td>
                                        <td class="tdnone">20</td>
                                        <td class="tdnone">S/. 59.99</td>
                                        <td class="tdnone">S/. 299.95</td>
                                    </tr>
                                    <tr class="colorhead notshow">
                                        <td class="tdnone">SKU1205WXS5Q</td>
                                        <td class="tdnone">5</td>
                                        <td class="invoice_tar"><p class="sepH_a"><span class="sepV_b text-muted">Kit de Afiliación - PE</span></p></td>
                                        <td class="tdnone">20</td>
                                        <td class="tdnone">20</td>
                                        <td class="tdnone">S/. 59.99</td>
                                        <td class="tdnone">S/. 299.95</td>
                                    </tr>
                                    <tr class="colorhead notshow">
                                        <td class="tdnone">SKU1205WXS5Q</td>
                                        <td class="tdnone">5</td>
                                        <td class="invoice_tar"><p class="sepH_a"><span class="sepV_b text-muted">Kit de Afiliación - PE</span></p></td>
                                        <td class="tdnone">20</td>
                                        <td class="tdnone">20</td>
                                        <td class="tdnone">S/. 59.99</td>
                                        <td class="tdnone">S/. 299.95</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>

                    </div>
                </div>
            </div>
            <span><br></span>

            <div class="container d-flex justify-content-between">
                <a href="Information.jsp">Volver</a>
            </div>
            <span><br></span>
        </div>  
    </body>
</html>