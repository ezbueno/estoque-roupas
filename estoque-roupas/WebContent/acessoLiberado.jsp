<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date, java.text.SimpleDateFormat" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="resources/css/home.css">
</head>
<body>
<div class="cabecalho">
	<table>
	<tr/><tr/><tr/><tr/><tr/>
		<tr>
			<td/><td/>
			<td><a href="estoque.jsp">Estoque</a></td>
			<td/><td/><td/><td/>
			<td><a href="index.jsp">Sair</a></td>
		</tr>
	</table>
	<div class="cabecalho">
		<table>
			<tr>
				<td class="ola">
					<h3>Olá, 
					
						<%= session.getAttribute("nomeUsuario") %>!
						
						<%
							Date dataHoraAtual = new Date();
							String data = new SimpleDateFormat("dd/MM/yyyy").format(dataHoraAtual);
							String hora = new SimpleDateFormat("HH:mm:ss").format(dataHoraAtual);
						%>
						
						<%= data + " / " + hora %>
					</h3>
				</td>
			</tr>
		</table>
	</div>
</div>
	<img alt="estoque" src="resources/img/estoque.jpg" class="imagem">
</body>
</html>