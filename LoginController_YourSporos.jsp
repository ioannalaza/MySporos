<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "classes_yoursporos.*"%>

<!DOCTYPE html>
	<html lang="en">
		<head>
			<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1">
		
			
			
		</head>
		
		<% String username = request.getParameter("username"); %>
		<% String password = request.getParameter("password"); %>
		<% CustomerDAO_YourSporos customerDao = new CustomerDAO_YourSporos();%>
		
		<% try {
			customerDao.authenticate(username, password);	
			OwnerDAO_YourSporos owdao = new OwnerDAO_YourSporos();
			if (customerDao.authenticate(username,password)) {
				session.setAttribute("login-customer-object", customerDao.findUser(username));
		 %>
		
			<jsp:forward page = "profileCustomer_YourSporos.jsp"/>;
		
		<% } else if(owdao.authenticateOwner(username, password)) {
			session.setAttribute("login-owner-object", owdao.findUserOwner(username));%>
			
	
			<jsp:forward page = "profileOwner_YourSporos.jsp"/>;
		<% } else { 
			request.setAttribute("message", "Wrong username or password"); %>
			<jsp:forward page="login_YourSporos.jsp" />;
			
		<% } %> 
		<%} catch(Exception e) {
			
			
		}%>
	</html>
	
	
	