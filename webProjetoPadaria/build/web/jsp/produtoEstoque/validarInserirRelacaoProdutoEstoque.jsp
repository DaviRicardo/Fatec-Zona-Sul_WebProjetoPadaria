<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Estoque"%>
<%@page import="projetopadaria.controller.EstoqueController"%>
<%@page import="projetopadaria.model.bean.Produto"%>
<%@page import="projetopadaria.controller.ProdutoController"%>
<%@page import="projetopadaria.model.bean.Produto_estoque"%>
<%@page import="projetopadaria.controller.ProdutoEstoqueController"%>
<%@page import="java.util.List"%>

<%
    int idProduto = Integer.parseInt(request.getParameter("id_produto"));
    int idEstoque = Integer.parseInt(request.getParameter("id_estoque"));
    int qntd_produto = Integer.parseInt(request.getParameter("qntd_produto"));
    String dataEntrada = request.getParameter("data_entrada");
    String dataValidade = request.getParameter("data_validade");
    
    Produto_estoque prodEst = new Produto_estoque (idProduto, idEstoque, qntd_produto, dataEntrada, dataValidade);
    ProdutoEstoqueController prodEstCont = new ProdutoEstoqueController();
    prodEst = prodEstCont.inserir(prodEst);
    
    // Redireciona para a página de menu
    String url = "../menu/menu.jsp";
    response.sendRedirect(url);

%>