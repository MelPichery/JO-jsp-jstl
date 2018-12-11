<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Page Erreur</title>
</head>
<body>
<%@ include file="../fragment/header.jsp"%>

<h2>Peut-être qu'il y a une erreur</h2>
 
<h3>Le code erreur est <%=response.getStatus() %></h3>

<%@ include file="../fragment/footer.jsp"%>	
</body>
</html>