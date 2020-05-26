<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acesso negado</title>
</head>
<body>
	<c:if test="${!logado}"> 
       <c:redirect url="index.jsp" /> 
    </c:if>
</body>
</html>