<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Page d'accueil</title>
</head>
<body>
<%@ include file="../fragment/header.jsp"%>
	<h1>Bienvenue sur mon site !</h1>
	
	<a href="../login/login.jsp" class="btn btn-primary">Identification</a>
<%@ include file="../fragment/footer.jsp"%>
</body>
</html>