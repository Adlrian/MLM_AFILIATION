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
                        <li class="page-item active"><a class="page-link" href="#">3 Información > </a></li>
                        <li class="page-item"><a class="page-link" href="#">4 Confirmación > </a></li>
                    </ul>
                </nav>
            </div>
            <span><br></span>
            <div class="card">
                <div class="card-header">
                    Información del patrocinador
                </div>
                <div class="row">
                    <div class="card-body col-md-2">
                        <img src="resources/imgs/user.png" alt="" width="150"/>
                    </div>
                    <div class="card-body col-md-9">
                        <h5 class="card-title"><br>Numero del patrocinador: 10514.</h5>
                        <p class="card-text">Nombre: Adrian Quiroz Sotil.</p>
                        <p class="card-text">País: Perú.</p>
                    </div>
                </div>
            </div>
            <span><br></span>
            <form action="<%=request.getContextPath()%>/distributorcontroller.do?operation=insert" method="POST">
                <div class="card">
                    <div class="card-header">
                        Información personal
                    </div>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputName">Nombre</label>
                                <input type="text" class="form-control" id="txtNombre" name="txtNombre" placeholder="Nombre">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputLastName">Apellido</label>
                                <input type="text" class="form-control" id="txtApellido" name="txtApellido" placeholder="Apellido">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputPhone">Celular</label>
                                <input type="text" class="form-control" id="txtCelular" name="txtCelular" placeholder="Celular">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputDocument">DNI</label>
                                <input type="text" class="form-control" id="txtDni" name="txtDni" placeholder="DNI">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail">Correo electronico</label>
                                <input type="text" class="form-control" id="txtCorreo" name="txtCorreo" placeholder="Correo">
                            </div>

                        </div>
                    </div>
                </div>
                <span><br></span>
                <div class="card">
                    <div class="card-header">
                        Tu Dirección
                    </div>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputAddress">Dirección</label>
                                <input type="text" class="form-control" id="txtDireccion" name="txtDireccion" placeholder="Dirección">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPostalCode">Codigo Postal</label>
                                <input type="text" class="form-control" id="txtZip" name="txtZip" placeholder="Codigo Postal">
                            </div>
                        </div>
                    </div>
                </div>
                <span><br></span>
                <div class="card">
                    <div class="card-header">
                        Información de tu sitio web y oficina virtual
                    </div>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputUsername">Nombre de usuario</label>
                                <input type="text" class="form-control" id="txtUser" name="txtUser" placeholder="Nombre de usuario">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputPassword">Contraseña</label>
                                <input type="text" class="form-control" id="txtPass" name="txtPass" placeholder="Contraseña">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputConfirmPassword">Confirmar contraseña</label>
                                <input type="text" class="form-control" id="inputConfirmPassword" placeholder="Confirmar contraseña">
                            </div>
                        </div>
                    </div>
                </div>
                <span><br></span>
                <div class="card">
                    <div class="card-header">
                        Método de pago
                    </div>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <div class="form-check">
                                    <input checked class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3">
                                    <label class="form-check-label" for="exampleRadios3">
                                        Pago con tarjeta de crédito o débito - PayU
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                            <span><br></span>

                            <div class="container d-flex justify-content-between">
                <a href="ProductsMain.jsp">Volver</a>
                <button type="submit" class="btn btn-primary"><i class="fas fa-user-plus"></i>&nbsp;Completar mi registro</button>
                </div>

            </form>


            <span><br></span>
        </div>  
    </body>
</html>

