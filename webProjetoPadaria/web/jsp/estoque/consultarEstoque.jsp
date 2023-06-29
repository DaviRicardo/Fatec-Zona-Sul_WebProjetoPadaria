<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - ESTOQUEO</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR ESTOQUE</h1>
       <form name="consultarEstoque" action="validarConsultarEstoque.jsp" method="post">
           Nome do estoque: <input type="text" name = "nome" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
