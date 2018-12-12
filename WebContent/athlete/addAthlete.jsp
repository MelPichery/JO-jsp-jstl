<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Ajouter un athlete et un palmares</title>
</head>
<body>
<%@ include file="../fragment/header.jsp"%>

<h2>Ajout athlete et palmares</h2>
<form action="/JO/addAthleteAndPalmares" method="post">
	<div class="form-row">
		<div class="form-group col-md-6">
			<label for="athleteName">Nom de l'athlete</label>
			<input class="form-control" name="athleteName">
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col-md-6">
		  <label for="discipline">Discipline</label>
			<select class="custom-select" name="discipline" id="discipline">
    			<c:forEach items="${disciplines}" var="d">
       				<option value="${d.name}" ${institution.d == d ? 'selected' : ''}>${d.label}</option>
   				 </c:forEach>
			</select>
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col-md-6">
		 <label for="medaille">Médaille</label>
			<select class="custom-select" name="medaille" id="medaille">
    			<c:forEach items="${medailles}" var="m">
       			<option value="${m.name}" ${institution.m == m ? 'selected' : ''}>${m.label}</option>
   				 </c:forEach>
			</select>
		</div>
	</div>
	<input type="submit" value="enregistrer" class="btn btn-primary">
</form>
<%@ include file="../fragment/footer.jsp"%>
</body>
</html>