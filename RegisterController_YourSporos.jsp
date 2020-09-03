<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "classes_yoursporos.*"%>
<%@ page errorPage="apperror_YourSporos.jsp"%>

		
		<% 
		String name = request.getParameter("first_name");
		String surname = request.getParameter("surname");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirm = request.getParameter("password_confirmation");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		
		try {
			CustomerDAO_YourSporos customerDao = new CustomerDAO_YourSporos();
			if (customerDao.findUser(username) != null) { 
				request.setAttribute("message", "This username already exists"); %>
			<jsp:forward page="register_YourSporos.jsp" />;
				
			<%} else {
					Customer_YourSporos customer = new Customer_YourSporos(username,password,name,surname,phone,address,email);
					customerDao.registerUser(customer);
					session.setAttribute("login-customer-object", customerDao.findUser(username));%>
					
					<jsp:forward page = "profileCustomer_YourSporos.jsp"/>;
					
					
			<% }
			
		} catch (Exception ex){
			request.setAttribute("message", "An error occured");
		} %>
