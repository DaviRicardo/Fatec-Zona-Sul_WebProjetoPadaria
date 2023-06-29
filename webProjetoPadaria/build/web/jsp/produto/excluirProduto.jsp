<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Produto"%>
<%@page import="projetopadaria.controller.ProdutoController"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    Produto prod = new Produto(id);
    ProdutoController prodCont = new ProdutoController();
    prod = prodCont.excluir(prod);
    String prodBusca = request.getParameter("prodBusca");
    
    // Redireciona para a página de consulta novamente
    String url = "validarConsultarProduto.jsp?nome=" + prodBusca;
    response.sendRedirect(url);
%>