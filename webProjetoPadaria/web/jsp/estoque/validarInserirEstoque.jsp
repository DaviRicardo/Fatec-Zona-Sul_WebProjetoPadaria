<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Estoque"%>
<%@page import="projetopadaria.controller.EstoqueController"%>

<%
    String nomeEstoque = request.getParameter("nome");
    String localizacao = request.getParameter("localizacao");
    
    Estoque est = new Estoque (nomeEstoque, localizacao);
    EstoqueController estCont = new EstoqueController();
    est = estCont.inserir(est);

    // Redireciona para a página de menu
    String url = "../menu/menu.jsp";
    response.sendRedirect(url);
%>

