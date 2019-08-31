<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String mensaje = (String)request.getSession().getAttribute("mensaje"); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Ventas</title>
        <!-- Incluir las etiquetas meta -->
        <%@include file="WEB-INF/jspf/meta.jspf" %>
        <!-- Incluir el segmento de estilos -->
        <%@include file="WEB-INF/jspf/styles.jspf" %>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="WEB-INF/jspf/header.jspf" %>
            <%@include file="WEB-INF/jspf/navbootstrap.jspf" %>
            <!--<h1>Bienvenido al Sistema</h1>-->
            <section>
                <div class="mensaje">
                <p>Ha ocurrido el siguiente error: <%=mensaje%></p>
            </div>
            <a href="login.jsp">Volver al login</a>

            </section>
            <%@include file="WEB-INF/jspf/footer.jspf" %>
            <%@include file="WEB-INF/jspf/scripts.jspf" %>
        </div>
    </body>
</html>