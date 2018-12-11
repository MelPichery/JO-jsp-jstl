<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Identification</title>
</head>
<body>
<%@ include file="../fragment/header.jsp"%>
<h2>Connexion</h2>
<form action="../loginServlet" method="POST">
<div class="form-row">
	<div class="form-group col-md-6">
		<label for="username">Nom</label>
		<input class="form-control" name="username">
	</div>
</div>
<div class="form-row">
	<div class="form-group col-md-6">	
		<label for="password">Mot de passe</label>
		<input class="form-control" name="password">
	</div>	
</div>
<input type="submit" value="enregistrer" class="btn btn-primary">
</form>
<%@ include file="../fragment/footer.jsp"%>	
</body>
</html>