<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
session.invalidate();
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- automatically will redirect to index_ex3_8160058.jsp after 2 seconds -->
	<meta http-equiv="refresh" content="2;url=home_YourSporos.jsp" />
	<meta name="description" content="Team Project">
	<meta name="author" content="YourSporos@aueb.gr">
	<link rel="icon" href="images/Logo.png">
		<!-- Page Title -->
	<title>YourSporos Loading </title>
	
	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">	
	<!-- Bootstrap Optional theme -->
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
		
	<!-- Custom styles for this template -->
	<link href="css/theme_8XXXXXX.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	
	<link rel="stylesheet" type="text/css" href="css/loading_YourSporos.css">
	
	
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
	</head>
	
	<body >

		<div class="header">
			<div class="collapse navbar-collapse  navbar-light text-right " style="background-color: #e6ffcc;">
				<ul class="menu-bar"></ul>
			</div>  
		</div>
		
		<div class="page-header">
				<a><img src="images/Logo.png" class="img-circle"></a>
		</div>
		
		<div class="container">
			<section>
				<div class="loader loader-1">
					<div class="loader-outter"></div>
					<div class="loader-inner"></div>
				</div>
			</section>
		</div>
	</body>
</html>