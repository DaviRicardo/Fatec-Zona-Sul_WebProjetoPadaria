<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Produto"%>
<%@page import="projetopadaria.controller.ProdutoController"%>

<%
    String nomeProduto = request.getParameter("nome");
    String tipo = request.getParameter("tipo");
    float precoUnitario = Float.parseFloat(request.getParameter("preco_unitario"));
    
    Produto prod = new Produto(nomeProduto,tipo,precoUnitario);
    ProdutoController prodCont = new ProdutoController();
    prod = prodCont.inserir(prod);

    // Redireciona para a página de menu
    String url = "../menu/menu.jsp";
    response.sendRedirect(url);
%>

