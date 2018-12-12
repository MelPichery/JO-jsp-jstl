<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.tutorial.servlets.*"%> 
<div
  style="background: #E0E0E0; text-align: center; padding: 5px; margin-top: 10px;">
  @Copyright monsite.com
 
</div>
 <% 
 	  if(session.getAttribute("username") != null){ 
	  String name =(String)session.getAttribute("username");%> 
	  Hello <%=name %> 
	  <a href="../addAthlete">Ajout athlete</a>
	  <form action="/JO/logout" method="post">
	  	<input type="submit" value="déconnexion" class="btn btn-primary">
	  </form>
	  
	  <% } %>