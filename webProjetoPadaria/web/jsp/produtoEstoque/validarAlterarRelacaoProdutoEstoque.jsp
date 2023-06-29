<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetopadaria.model.bean.Estoque"%>
<%@page import="projetopadaria.controller.EstoqueController"%>
<%@page import="projetopadaria.model.bean.Produto"%>
<%@page import="projetopadaria.controller.ProdutoController"%>
<%@page import="projetopadaria.model.bean.Produto_estoque"%>
<%@page import="projetopadaria.controller.ProdutoEstoqueController"%>
<%@page import="java.util.List"%>

<%
    int idProdutoEstoque = Integer.parseInt(request.getParameter("id"));
    int idEstoque = Integer.parseInt(request.getParameter("id_estoque"));
    int idProduto = Integer.parseInt(request.getParameter("id_produto"));
    int quantidade_produto = Integer.parseInt(request.getParameter("qntd_produto"));
    String dataEntrada = request.getParameter("data_entrada");
    String dataValidade = request.getParameter("data_validade");
    String prodEstBusca = request.getParameter("prodEstBusca");
    
    Produto_estoque prodEst = new Produto_estoque(idProdutoEstoque, idProduto, idEstoque, quantidade_produto, dataEntrada, dataValidade);
    ProdutoEstoqueController prodEstCont = new ProdutoEstoqueController();
    prodEst = prodEstCont.alterar(prodEst);
    
    // Redireciona para a página de consuta novamente
    String url = "validarConsultarRelacaoProdutoEstoque.jsp?data_validade=" + prodEstBusca;
    response.sendRedirect(url);
%>    
    
    