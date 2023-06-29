<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>Projeto Padaria</title>
    <body>
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Manter Produto</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Manter Estoque</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Manter Produto-Estoque</a>             

            
            <!-- Dropdown1 Structure -->
            <ul id='dropdown1' class='dropdown-content'>
                <li><a href="../produto/inserirProduto.jsp"> InseriProduto </a></li>
                <li><a href="../produto/consultarProduto.jsp"> ConsultaProduto </a></li>
            </ul>

            <!-- Dropdown2 Structure -->
            <ul id='dropdown2' class='dropdown-content'>
                <li><a href="../estoque/inserirEstoque.jsp"> InseriEstoque </a></li>
                <li><a href="../estoque/consultarEstoque.jsp"> ConsultaEstoque </a></li>
            </ul>
            
            <!-- Dropdown3 Structure -->
            <ul id='dropdown3' class='dropdown-content'>
               <li><a href="../produtoEstoque/inserirRelacaoProdutoEstoque.jsp"> inseriProdutoEstoque </a></li>
               <li><a href="../produtoEstoque/consultarRelacaoProdutoEstoque.jsp"> ConsultaProdutoEstoque </a></li>
            </ul>
    </body>
</html>