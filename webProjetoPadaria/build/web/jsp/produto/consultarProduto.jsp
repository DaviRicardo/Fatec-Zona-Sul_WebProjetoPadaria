<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - PRODUTO</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR PRODUTO</h1>
       <form name="consultarProduto" action="validarConsultarProduto.jsp" method="post">
           Nome do produto: <input type="text" name="nome" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
