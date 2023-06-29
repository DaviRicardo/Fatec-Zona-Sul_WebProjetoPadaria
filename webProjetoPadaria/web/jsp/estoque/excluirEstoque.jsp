<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Estoque"%>
<%@page import="projetopadaria.controller.EstoqueController"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    Estoque est = new Estoque(id);
    EstoqueController estCont = new EstoqueController();
    est = estCont.excluir(est);
    String estBusca = request.getParameter("estBusca");
    
    // Redireciona para a página de consulta novamente
    String url = "validarConsultarEstoque.jsp?nome=" + estBusca;
    response.sendRedirect(url);
%>