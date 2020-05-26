<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bean.Roupa.*, bean.Roupa2.*"%>
<%@page import="java.util.Date, java.text.SimpleDateFormat" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Roupas</title>
<style>
body {
	font-family: "Verdana";
}

td {
	text-align: center;
	padding-left: 140px;
}
</style>
</head>
<body>

	<jsp:useBean id="roupa" class="bean.Roupa">
		<jsp:setProperty name="roupa" property="tipo" value="tecido" />
		<jsp:setProperty name="roupa" property="marca" value="hering" />
		<jsp:setProperty name="roupa" property="quantidade" value="20" />
		<jsp:setProperty name="roupa" property="valor" value="20.50" />
	</jsp:useBean>
	
	<jsp:useBean id="roupa2" class="bean.Roupa2">
		<jsp:setProperty name="roupa2" property="tipo" value="vestido" />
		<jsp:setProperty name="roupa2" property="marca" value="adidas" />
		<jsp:setProperty name="roupa2" property="quantidade" value="50" />
		<jsp:setProperty name="roupa2" property="valor" value="100.00" />
	</jsp:useBean>

			
	<% 
		Date dataHoraAtual = new Date();
		String data = new SimpleDateFormat("dd/MM/yyyy").format(dataHoraAtual);
		String hora = new SimpleDateFormat("HH:mm:ss").format(dataHoraAtual); 
    %> 
    
    <h4>Olá, <%= session.getAttribute("nomeUsuario") %>! Hoje é dia <%= data %></h4>
    <h4><%= hora %></h4><br/>
	
	<table id="produtos">
		<tr>
			<td width="50px" align="center"><b>Tipo</b></td>
			<td width="300px" align="center"><b>Marca</b></td>
			<td width="120px" align="center"><b>Quantidade</b></td>
			<td width="120px" align="center"><b>Valor</b></td>
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
	

	</table>
</body>
</html>