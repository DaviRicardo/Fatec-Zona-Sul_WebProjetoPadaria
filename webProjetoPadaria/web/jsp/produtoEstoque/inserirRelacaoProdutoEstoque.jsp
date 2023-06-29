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

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - PRODUTO ESTOQUE</title>
    <body>
        <div class="container">
            <h1>INSERIR PRODUTO ESTOQUE</h1>
            <form name="inseriProdutoEstoque" action="validarInserirRelacaoProdutoEstoque.jsp" method="POST">
                <table>
                    <tr>
                        <td>Estoque:</td>
                        <td>
                            <select NAME ="id_estoque" class="browser-default">
                                <% for (Estoque estoque : estList) { %>
                                    <option value="<%=estoque.getId_estoque()%>"><%=estoque.getNome_estoque()%></option>
                                 <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Produto:</td>
                        <td>
                            <select NAME="id_produto" class="browser-default">
                                <% for (Produto produto : prodList) { %>
                                    <option value="<%=produto.getId_produto()%>"><%=produto.getNome_produto()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Quantidade do produto:</td>
                        <td><input type="text" name="qntd_produto" value=""></td>
                        <td>Data de entrada:</td>
                        <td><input type="date" name="data_entrada" value=""></td>
                        <td>Data de validade:</td>
                        <td><input type="date" name="data_validade" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
