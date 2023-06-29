<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Produto"%>
<%@page import="projetopadaria.controller.ProdutoController"%>
<%@page import="java.util.List"%>

<%
    String nome = request.getParameter("nome");
    Produto prod = new Produto(nome);
    ProdutoController prodCont = new ProdutoController();
    List<Produto> prodList = prodCont.listar(prod);
  
    String url = "prodBusca=" + nome + "&id=";
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PRODUTOS</title>
    <body>
        <table class="striped responsive-table">
            <thead> 
              <tr>
                  <th data-field="id">Id</th>
                  <th data-field="nome">Nome do produto</th>
                  <th data-field="tipo">Tipo</th>
                  <th data-field="preco_unitario">Preço Unitário</th>
                  <th data-field="excluir">Excluir</th>
                  <th data-field="alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(prodList.isEmpty())) { %>    
                <tbody>
                    <% for (Produto listaProdutos : prodList) { %>
                        <tr>
                            <td><%=listaProdutos.getId_produto()%></td>
                            <td><%=listaProdutos.getNome_produto()%></td>
                            <td><%=listaProdutos.getTipo()%></td>
                            <td><%=listaProdutos.getPreco_unitario()%></td>
                            <td><a href="excluirProduto.jsp?<%=url + listaProdutos.getId_produto()%>">Excluir</a></td>
                            <td><a href="alterarProduto.jsp?<%=url + listaProdutos.getId_produto()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>