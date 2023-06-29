<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Estoque"%>
<%@page import="projetopadaria.controller.EstoqueController"%>
<%@page import="java.util.List"%>

<%
    String nome = request.getParameter("nome");
    Estoque est = new Estoque(nome);
    EstoqueController estCont = new EstoqueController();
    List<Estoque> estList = estCont.listar(est);
  
    String url = "estBusca=" + nome + "&id=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA ESTOQUES</title>
    <body>
        <table class="striped responsive-table">
            <thead> 
              <tr>
                  <th data-field="id">Id</th>
                  <th data-field="nome">Nome do estoque</th>
                  <th data-field="localizacao">Localização</th>
                  <th data-field="excluir">Excluir</th>
                  <th data-field="alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(estList.isEmpty())) { %>    
                <tbody>
                    <% for (Estoque listaEstoques : estList) { %>
                        <tr>
                            <td><%=listaEstoques.getId_estoque()%></td>
                            <td><%=listaEstoques.getNome_estoque()%></td>
                            <td><%=listaEstoques.getLocalizacao()%></td>
                            <td><a href="excluirEstoque.jsp?<%=url + listaEstoques.getId_estoque()%>">Excluir</a></td>
                            <td><a href="alterarEstoque.jsp?<%=url + listaEstoques.getId_estoque()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>