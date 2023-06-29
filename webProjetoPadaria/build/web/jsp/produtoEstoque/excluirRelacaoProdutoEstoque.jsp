<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Produto_estoque"%>
<%@page import="projetopadaria.controller.ProdutoEstoqueController"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    Produto_estoque prodEst = new Produto_estoque (id);
    ProdutoEstoqueController prodEstCont = new ProdutoEstoqueController ();
    prodEst = prodEstCont.excluir(prodEst);
    
    String prodEstBusca = request.getParameter("prodEstBusca");
    
    // Redireciona para a página de consulta novamente
    String url = "validarConsultarRelacaoProdutoEstoque.jsp?data_validade=" + prodEstBusca;
    response.sendRedirect(url);

%>

