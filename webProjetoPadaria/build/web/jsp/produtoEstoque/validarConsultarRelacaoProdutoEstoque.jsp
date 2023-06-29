<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Estoque"%>
<%@page import="projetopadaria.controller.EstoqueController"%>
<%@page import="projetopadaria.model.bean.Produto"%>
<%@page import="projetopadaria.controller.ProdutoController"%>
<%@page import="projetopadaria.model.bean.Produto_estoque"%>
<%@page import="projetopadaria.controller.ProdutoEstoqueController"%>
<%@page import="java.util.List"%>

<%
    String dataValidade = request.getParameter("data_validade");
    Produto_estoque prodEst = new Produto_estoque(dataValidade);
    ProdutoEstoqueController prodEstCont = new ProdutoEstoqueController();
    
    List<Produto_estoque> prodEstList = prodEstCont.listar(prodEst);
    String url = "prodEstBusca=" + prodEst.getData_validade() + "&id=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PRODUTO ESTOQUE</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="idProdutoEstoque">Id</th>
                  <th data-field="idProduto">IdProduto</th>
                  <th data-field="nomePessoa">NomeProduto</th>
                  <th data-field="idEstoque">IdEstoque</th>
                  <th data-field="nomeEstoque">NomeEstoque</th>
                  <th data-field="quantidadeProduto">quantidadeProduto</th>
                  <th data-field="dataEntrada">dataEntrada</th>
                  <th data-field="dataValidade">dataValidade</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(prodEstList.isEmpty())) { %>    
                <tbody>
                    <% for (Produto_estoque listaProdutoEstoque : prodEstList) { %>
                        <tr>
                            <td><%=listaProdutoEstoque.getId_produto_estoque()%></td>
                            <td><%=listaProdutoEstoque.getProduto_id_produto()%></td>
                            <td><%=listaProdutoEstoque.getProduto().getNome_produto()%></td>
                            <td><%=listaProdutoEstoque.getEstoque_id_estoque()%></td>
                            <td><%=listaProdutoEstoque.getEstoque().getNome_estoque()%></td>
                            <td><%=listaProdutoEstoque.getQntd_produto()%></td>
                            <td><%=listaProdutoEstoque.getData_entrada()%></td>
                            <td><%=listaProdutoEstoque.getData_validade()%></td>
                            <td><a href="excluirRelacaoProdutoEstoque.jsp?<%=url + listaProdutoEstoque.getId_produto_estoque()%>">Excluir</a></td>
                            <td><a href="alterarRelacaoProdutoEstoque.jsp?<%=url + listaProdutoEstoque.getId_produto_estoque()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>