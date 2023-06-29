<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Estoque"%>
<%@page import="projetopadaria.controller.EstoqueController"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    Estoque est = new Estoque(id);
    EstoqueController estCont = new EstoqueController();
    est = estCont.buscar(est);
    String estBusca = request.getParameter("estBusca");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - ESTOQUE</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR ESTOQUE</h1>
        <form name="alterarEstoque" action="validarAlterarEstoque.jsp" method="post">
            Nome do estoque: <input type="text" name="nome_estoque" value="<%=est.getNome_estoque()%>"> <br>
            Localizacao <input type="text" name="localizacao" value="<%=est.getLocalizacao()%>"> <br>
            <input type="HIDDEN" name="id" value="<%=est.getId_estoque()%>"> <br>
            <input type="HIDDEN" name="estBusca" value="<%=estBusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>