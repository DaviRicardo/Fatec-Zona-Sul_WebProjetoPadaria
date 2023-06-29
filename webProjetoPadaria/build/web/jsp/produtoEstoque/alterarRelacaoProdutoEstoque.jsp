<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Estoque"%>
<%@page import="projetopadaria.controller.EstoqueController"%>
<%@page import="projetopadaria.model.bean.Produto"%>
<%@page import="projetopadaria.controller.ProdutoController"%>
<%@page import="projetopadaria.model.bean.Produto_estoque"%>
<%@page import="projetopadaria.controller.ProdutoEstoqueController"%>
<%@page import="java.util.List"%>

<%
    EstoqueController estCont = new EstoqueController();
    Estoque est = new Estoque("");
    List<Estoque> estList = estCont.listar(est);

    ProdutoController prodCont = new ProdutoController();
    Produto prod = new Produto("");
    List<Produto> prodList = prodCont.listar(prod);

    int id = Integer.parseInt(request.getParameter("id"));
    Produto_estoque prodEst = new Produto_estoque(id);
    ProdutoEstoqueController prodEstCont = new ProdutoEstoqueController();
    prodEst = prodEstCont.buscar(prodEst);
    String prodEstBusca = request.getParameter("prodEstBusca");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PRODUTO ESTOQUE</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR PRODUTO ESTOQUE</h1>
        <form name="alterarProdutoEstoque" action="validarAlterarRelacaoProdutoEstoque.jsp" method="post">
            <table>
                <tr>
                    <td>Estoque:</td>
                    <td>
                        <select NAME="id_estoque" class="browser-default">
                            <% for (Estoque estoque : estList) { %>
                                <option selected value="<%=estoque.getId_estoque()%>"><%=estoque.getNome_estoque()%></option>   
                            <% } %>
                        </select> 
                    </td>
                </tr>
                <tr>
                    <td>Produto:</td>
                    <td>
                        <select NAME ="id_produto" class="browser-default">
                            <% for (Produto produto : prodList) { %>
                                <option selected value="<%=produto.getId_produto()%>"><%=produto.getNome_produto()%></option>  
                            <% } %>
                        </select> 
                        </td>
                    </tr>
                <tr>
                    <td>Quantidade do produto:</td>
                    <td><input type="text" name="qntd_produto" value="<%=prodEst.getQntd_produto()%>"></td>
                    <td>Data de entrada:</td>
                    <td><input type="date" name="data_entrada" value="<%=prodEst.getData_entrada()%>"></td>
                    <td>Data de validade:</td>
                    <td><input type="date" name="data_validade" value="<%=prodEst.getData_validade()%>"></td>
                </tr>
            </table>    
            <input type="HIDDEN" name="id" value="<%=prodEst.getId_produto_estoque()%>"> <br>
            <input type="HIDDEN" name="prodEstBusca" value="<%=prodEstBusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>