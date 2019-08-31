<%-- 
    Document   : index
    Created on : 18/04/2019, 11:36:36 PM
    Author     : Adrian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fuxion | Enrollment - Join Today!</title>
        <%@include file="WEB-INF/jspf/styles.jspf" %>
        <script src="resources/js/validacionforms.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="resources/js/script.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="section_header">
            <%@include file="WEB-INF/jspf/navbar.jspf" %>
        </div>
        <div class="container">
            <br>
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card mb-3">
                        <div class="card-body">
                            <h4>¡Únete a nuestra familia Fuxion!</h4>
                            <p>Comienza ingresando el número de identificación de su patrocinador para comenzar el proceso de afiliación.
                            </p>
                            <form action="<%=request.getContextPath()%>/productcontroller.do?operation=list" method="post" onsubmit="return validateFormIndex();">
                                <div class="form-group" >
                                    <label for="exampleInputEmail1">* ID del patrocinador: </label>
                                    <div class="row" >
                                        <div class="col-md-9" >
                                            <input type="number" name="txtId" id="txtId" class="form-control" id="" aria-describedby="" placeholder="Ejemplo: 105032">
                                        </div>
                                        <div class="col-md-3" >
                                            <button type="button" class="btn btn-primary" onclick="buscar()">Buscar</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="resultado" id="resultado">
                                </div>
                                <div class ="form-group">
                                    <label for="exampleFormControlSelect1">* Selecciona tu país: </label>
                                    <select class="form-control" id="FormControlMarket">
                                        <option>Estados Unidos</option>
                                        <option>Perú</option>
                                    </select>
                                </div>
                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" id="CheckTermsAndConditions">
                                    <label class="form-check-label" for="exampleCheck1">Acepto los términos y condiciones de Fuxion.</label>
                                </div>
                                <div>
                                    <button type="submit" class="btn btn-primary">Afiliarme ahora</button>
                                    <!--<a type="submit" href="ProductsMain.jsp" class="btn btn-primary">Afiliarme ahora</a>-->
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>

        </div>  
    </body>
</html>
