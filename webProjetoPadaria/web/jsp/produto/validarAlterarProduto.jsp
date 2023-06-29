<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Produto"%>
<%@page import="projetopadaria.controller.ProdutoController"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    String prodBusca = request.getParameter("prodBusca");
    String nomeProduto = request.getParameter("nome");
    String tipo = request.getParameter("tipo");
    float precoUnitario = Float.parseFloat(request.getParameter("preco_unitario"));
    
    Produto prod = new Produto(id, nomeProduto, tipo, precoUnitario);
    ProdutoController prodCont = new ProdutoController();
    prod = prodCont.alterar(prod);
    
    // Redireciona para a página de consulta novamente
    String url = "validarConsultarProduto.jsp?nome=" + prodBusca;
    response.sendRedirect(url);
%>