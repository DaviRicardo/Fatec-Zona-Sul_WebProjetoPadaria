<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR PRODUTO - ESTOQUE</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR PRODUTO ESTOQUE</h1>
       <form name="consultarProdutoEstoque" action="validarConsultarRelacaoProdutoEstoque.jsp" method="post">
           Data de validade: <input type="date" name ="data_validade" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
