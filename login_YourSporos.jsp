<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "classes_yoursporos.*"%>
<%@ page import = "java.util.List"%>

<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="description" content="">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<!-- Title -->
		<title>YourSporos Login </title>
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
	  <!-- Preloader -->
		<div class="preloader d-flex align-items-center justify-content-center">
			<div class="spinner"></div>
		</div>
	  <!-- Fixed navbar -->
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
					<li ><a href="resources_YourSporos.jsp">Resources</a></li>
					<li> <a href="courses_YourSporos.jsp">Courses</a></li>
					<li><a href="register_YourSporos.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li class = "active"><a href="login_YourSporos.jsp"><span class="glyphicon glyphicon-log-in"></span> Log in </a></li>
				</ul>
			</div>
		</div>
		<!--/.nav-collapse -->
			
				<!-- ##### Breadcrumb Area Start ##### -->
	  
		<div class="famie-breadcrumb">
			<div class="container">
			  <nav aria-label="breadcrumb">
				<ol class="breadcrumb">
				  <li class="breadcrumb-item"><a href="home_YourSporos.jsp"><i class="fa fa-home"></i> Home</a></li>
				  <li class="breadcrumb-item active" aria-current="page">Log in</li>
				</ol>
			  </nav>
			</div>
		</div>
	  <!-- ##### Breadcrumb Area End ##### -->
			
			<section class="contact-area section-padding-50-0">
				<div class="container">
					<div class="row justify-content-between">
				<!-- Contact Content -->
						<div class="col-12 col-lg-5">
							<div class="contact-content mb-100 wow fadeInUp" data-wow-delay="100ms">
							<!-- Section Heading -->
								<div class="section-heading align-items-center"  >
								<p>YourSporos</p>
								<h2><span>Log in </span>Form</h2>
								<img src="img/core-img/decor2.png" alt="">
								</div>
							<!-- Contact Form Area -->
							
							
								<div class="contact-form-area">
									<form  method="post" onsubmit = "return Validate()" name = "vform" action = "LoginController_YourSporos.jsp" >
									<% if(request.getAttribute("message") != null) { %>		
										<div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
									<% } %>
										<div class="row">                
											<div class="col-12">
												<input type = "text" class="form-control"  name = "username" id = "username" placeholder = "Username"/>
												<div id = "username_error" class = "val_error"></div>
											</div> 
											<div class="col-12">
												<input type = "password" class="form-control" name = "password" id = "password" placeholder = "Password"/>
												<div id = "password_error" class = "val_error"></div>
											
												<p>Don't you have an account? <a href="register_YourSporos.jsp">Sign up</a></p><br>
											
												<button type="submit" class="btn famie-btn">Log In</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
	</body>
</html>
	
			<%@ include file="footer_YourSporos.jsp"%>
			
			
			
			
	<script type = "text/javascript">
		var username = document.forms["vform"]["username"];
		var password = document.forms["vform"]["password"];
		
		var username_error = document.getElementById("username_error");
		var password_error = document.getElementById("password_error");
		
		function Validate() {
			if (username.value == "") {
				username.style.border = "1px solid red";
				username_error.textContent = "Username is required";
				username.focus();
				return false;
			}
			if (password.value == "") {
				password.style.border = "1px solid red";
				password_error.textContent = "Password is required";
				password.focus();
				return false;
			}
		}
	</script>
	<!-- ##### All Javascript Files ##### -->
	<!-- jquery 2.2.4  -->
	<script src="js/jquery.min.js"></script>
	<!-- Popper js -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Owl Carousel js -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Classynav -->
	<script src="js/classynav.js"></script>
	<!-- Wow js -->
	<script src="js/wow.min.js"></script>
	<!-- Sticky js -->
	<script src="js/jquery.sticky.js"></script>
	<!-- Magnific Popup js -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Scrollup js -->
	<script src="js/jquery.scrollup.min.js"></script>
	<!-- Jarallax js -->
	<script src="js/jarallax.min.js"></script>
	<!-- Jarallax Video js -->
	<script src="js/jarallax-video.min.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
 
