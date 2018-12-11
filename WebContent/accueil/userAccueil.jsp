<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="org.tutorial.servlets.*"%> 
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Page d'accueil utilisateur</title>
</head>
<body>
<%@ include file="../fragment/header.jsp"%>
	<h1>Bienvenue à toi l'utilisateur !</h1>
	
	<% String username= (String)session.getAttribute("username");  %>
	
	Oui, c'est bien toi, on t'a reconnu <%= username %>
<%@ include file="../fragment/footer.jsp"%>	
</body>
</html>