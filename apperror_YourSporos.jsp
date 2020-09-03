<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@ page import = "classes_yoursporos.*"%>
	
	
	
	
<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="description" content="">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<!-- Title -->
		<title>YourSporos Error page</title>
		<!-- Bootstrap core CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css">	
		<!-- Bootstrap Optional theme -->
		<link rel="stylesheet" href="css/bootstrap-theme.min.css">
			
		<!-- Custom styles for this template -->
		<link href="css/theme_8XXXXXX.css" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<!-- Favicon -->
		<link rel="icon" href="img/bg-img/Logo.png">
		<!-- Core Stylesheet -->
		  
		<link rel="stylesheet" href="style.css">
 
	</head>
	<body>
		<div class="preloader d-flex align-items-center justify-content-center">
			<div class="spinner"></div>
		</div>
	  <!-- Fixed navbar -->
		 <% if (session.getAttribute("login-customer-object") != null) { 
			Customer_YourSporos customer = (Customer_YourSporos) session.getAttribute("login-customer-object");%>
				
		
		<div class="header">
			<div class="collapse navbar-collapse  navbar-light text-right " style="background-color: #e6ffcc;">
				<ul class="menu-bar">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<br><a class="navbar-brand" href="home_YourSporos.jsp"><img src="img/bg-img/Logo.png" class="img-circle"></a>	
					<li><a href="home_YourSporos.jsp">Home</a></li>
					<li><a href="resources_YourSporos.jsp">Resources</li>
					<li> <a href="courses_YourSporos.jsp">Courses</li>
					<li><a href="logout_YourSporos.jsp"><span class="glyphicon glyphicon-log-in"></span> Log out </a></li>
					<li><a href="profileCustomer_YourSporos.jsp"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
				</ul>
			</div>
		</div>
	<%  } else if(session.getAttribute("login-owner-object") != null){
			Owner_YourSporos owner = (Owner_YourSporos) session.getAttribute("login-owner-object");%>
	
		<div class="header">
			<div class="collapse navbar-collapse  navbar-light text-right " style="background-color: #e6ffcc;">
				<ul class="menu-bar">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<br><a class="navbar-brand" href="home_YourSporos.jsp"><img src="img/bg-img/Logo.png" class="img-circle"></a>	
					<li><a href="home_YourSporos.jsp">Home</a></li>
					<li><a href="resources_YourSporos.jsp">Resources</li>
					<li> <a href="courses_YourSporos.jsp">Courses</li>
					<li><a href="logout_YourSporos.jsp"><span class="glyphicon glyphicon-log-in"></span> Log out </a></li>
					<li><a href="profileOwner_YourSporos.jsp"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
				</ul>
			</div>
		</div>
	<% }  else {%>
	
		<div class="header">
			<div class="collapse navbar-collapse  navbar-light text-right " style="background-color: #e6ffcc;">
				<ul class="menu-bar">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<br><a class="navbar-brand" href="home_YourSporos.jsp"><img src="img/bg-img/Logo.png" class="img-circle"></a>	
					<li><a href="home_YourSporos.jsp">Home</a></li>
					<li><a href="resources_YourSporos.jsp">Resources</a></li>
					<li> <a href="courses_YourSporos.jsp">Courses</a></li>
					<li><a href="register_YourSporos.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="login_YourSporos.jsp"><span class="glyphicon glyphicon-log-in"></span> Log in </a></li>
				</ul>
			</div>
		</div>
	<% } %>
		<div class="container">

		
			<div class="page-header">
				<h1>Error</h1>
			</div>
			
			<div class="row">
				<div class="col-xs-12 col-md-10 col-lg-8">
					<% if(exception != null) { %>
						<p class="lead">
							<code><b>Σφάλμα:</b> <%= exception.getMessage() %></code>
						</p>
					<% } %>						
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br><br><br>
		<br>
		<br><br></div>
		<br>
		<br>
		<br>
		<br>
		<br><br><br>
		<br>
		<br><br></div>
		<br>
		<br>
		<br>
		<br>
		<br><br><br>
		<br>
		<br><br>
		

	<%@ include file="footer_YourSporos.jsp"%>
	
	</body>
</html>