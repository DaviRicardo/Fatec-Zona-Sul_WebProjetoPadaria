<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - ESTOQUE</title>
    <body>
       <div class="container"/>
        <h1>INSERIR ESTOQUE</h1>
        <form name="inserirEstoque" action="validarInserirEstoque.jsp" method="post">
            Nome do estoque: <input type="text" name="nome" value=""> <br>
            Localização: <input type="text" name="localizacao" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
