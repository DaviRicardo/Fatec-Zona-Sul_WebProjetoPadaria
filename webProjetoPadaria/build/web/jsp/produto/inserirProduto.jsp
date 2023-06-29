<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - PRODUTO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR PRODUTO</h1>
        <form name="inserirProduto" action="validarInserirProduto.jsp" method="post">
            Nome: <input type="text" name="nome" value=""> <br>
            Tipo: <input type="text" name="tipo" value=""> <br>
            Preço Unitário: <input type="number" step ="0.01" name="preco_unitario" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
