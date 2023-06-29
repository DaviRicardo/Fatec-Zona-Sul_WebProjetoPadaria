<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Produto"%>
<%@page import="projetopadaria.controller.ProdutoController"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    Produto prod = new Produto(id);
    ProdutoController prodCont = new ProdutoController();
    prod = prodCont.buscar(prod);
    String prodBusca = request.getParameter("prodBusca");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PRODUTO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR PRODUTO</h1>
        <form name="alterarProduto" action="validarAlterarProduto.jsp" method="post">
            Nome do produto: <input type="text" name="nome" value="<%=prod.getNome_produto()%>"> <br>
            Tipo: <input type="text" name="tipo" value="<%=prod.getTipo()%>"> <br>
            Preço unitário: <input type="text" name="preco_unitario" value="<%=prod.getPreco_unitario()%>"> <br>
            <input type="HIDDEN" name="id" value="<%=prod.getId_produto()%>"> <br>
            <input type="HIDDEN" name="prodBusca" value="<%=prodBusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>