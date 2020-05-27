<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.Roupa.*, bean.Roupa2.*, bean.Roupa3.*, bean.Roupa4.*"%>
<%@page import="java.util.Date, java.text.SimpleDateFormat" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/estoque.css">
<title>Estoque</title>

</head>
<body>
	<div id="topo">
		<br/><h1>Lista de Produtos em Estoque</h1><br/><br/>
	</div>
	<br/><br/><br/><br/>

	<jsp:useBean id="roupa" class="bean.Roupa">
		<jsp:setProperty name="roupa" property="tipo" value="Blusa" />
		<jsp:setProperty name="roupa" property="marca" value="Hering" />
		<jsp:setProperty name="roupa" property="quantidade" value="20" />
		<jsp:setProperty name="roupa" property="valor" value="220.50" />
	</jsp:useBean>
	
	<jsp:useBean id="roupa2" class="bean.Roupa2">
		<jsp:setProperty name="roupa2" property="tipo" value="Calça Jeans" />
		<jsp:setProperty name="roupa2" property="marca" value="Lewis" />
		<jsp:setProperty name="roupa2" property="quantidade" value="50" />
		<jsp:setProperty name="roupa2" property="valor" value="100.00" />
	</jsp:useBean>
	
	<jsp:useBean id="roupa3" class="bean.Roupa3">
		<jsp:setProperty name="roupa3" property="tipo" value="Camiseta" />
		<jsp:setProperty name="roupa3" property="marca" value="Lacoste" />
		<jsp:setProperty name="roupa3" property="quantidade" value="100" />
		<jsp:setProperty name="roupa3" property="valor" value="180.00" />
	</jsp:useBean>
	
	<jsp:useBean id="roupa4" class="bean.Roupa4">
		<jsp:setProperty name="roupa4" property="tipo" value="Bermuda" />
		<jsp:setProperty name="roupa4" property="marca" value="TNG" />
		<jsp:setProperty name="roupa4" property="quantidade" value="40" />
		<jsp:setProperty name="roupa4" property="valor" value="90.00" />
	</jsp:useBean>
	
	<table class="tabela-produtos">

		<thead>
			<tr>
				<th>Tipo</th>
				<th>Marca</th>
				<th>Quantidade</th>
				<th>Valor</th>
			</tr>
			
		<%-- //////////////////// --%>
				
		<tr>
			<td>${roupa.tipo}</td>
			<td>${roupa.marca}</td>
			<td>${roupa.quantidade}</td>
			<td><fmt:formatNumber value="${roupa.valor}" pattern="R$ #.00" /></td>
			
		<tr>
		
		<%-- //////////////////// --%>
		
		<tr>
			<td>${roupa2.tipo}</td>
			<td>${roupa2.marca}</td>
			<td>${roupa2.quantidade}</td>
			<td><fmt:formatNumber value="${roupa2.valor}" pattern="R$ #.00" /></td>
		</tr>
		
		<%-- //////////////////// --%>
		
		<tr>
			<td>${roupa3.tipo}</td>
			<td>${roupa3.marca}</td>
			<td>${roupa3.quantidade}</td>
			<td><fmt:formatNumber value="${roupa3.valor}" pattern="R$ #.00" /></td>
		</tr>
		
		<%-- //////////////////// --%>
		
		<tr>
			<td>${roupa4.tipo}</td>
			<td>${roupa4.marca}</td>
			<td>${roupa4.quantidade}</td>
			<td><fmt:formatNumber value="${roupa4.valor}" pattern="R$ #.00" /></td>
		</tr>
		
		<%-- //////////////////// --%>
		
	</table>
	<a href="acessoLiberado.jsp" class="back-button"><img src="resources/img/voltar.jpg" alt="Voltar" width="35px" height="35px" /></a>
</body>
</html>