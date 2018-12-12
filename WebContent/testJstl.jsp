<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test jstl</title>
</head>
<body>

<h2>Liste des athlètes et palmarès</h2>
<c:forEach items="${athletes}" var="athlete">
<h4>${athlete.nom}</h4>
<ul>
	<c:forEach items="${athlete.listePalmares}" var="p">
		<li>
			<c:out value="${p.medaille.label}"/> - <c:out value="${p.discipline.label}"/>
		</li>
	</c:forEach>
</ul>	
</c:forEach>
</body>
</html>