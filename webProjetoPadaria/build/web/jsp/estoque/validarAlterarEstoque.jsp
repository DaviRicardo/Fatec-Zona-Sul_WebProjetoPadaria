<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Estoque"%>
<%@page import="projetopadaria.controller.EstoqueController"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    String estBusca = request.getParameter("estBusca");
    String nomeEstoque = request.getParameter("nome_estoque");
    String localizacao = request.getParameter("localizacao");
    
    Estoque est = new Estoque(id, nomeEstoque, localizacao);
    EstoqueController estCont = new EstoqueController();
    est = estCont.alterar(est);
    
    // Redireciona para a página de consulta novamente
    String url = "validarConsultarEstoque.jsp?nome=" + estBusca;
    response.sendRedirect(url);
%>