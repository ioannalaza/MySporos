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
			<title>YourSporos Register </title>
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
							<span class="icon-bar"></span> <span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<br><a class="navbar-brand" href="home_YourSporos.jsp"><img src="img/bg-img/Logo.png" class="img-circle"></a>	
						<li><a href="home_YourSporos.jsp">Home</a></li>
						<li ><a href="resources_YourSporos.jsp">Resources</li>
						<li> <a href="courses_YourSporos.jsp">Courses</li>
						<li class = "active"><a href="register_YourSporos.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li><a href="login_YourSporos.jsp"><span class="glyphicon glyphicon-log-in"></span> Log in </a></li>
					</ul>
				</div>
			</div>
			<!--/.nav-collapse -->
			<div class="famie-breadcrumb">
    <div class="container">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="home_YourSporos.jsp"><i class="fa fa-home"></i> Home</a></li>
          <li class="breadcrumb-item active" aria-current="page">Register</li>
		  
        </ol>
      </nav>
    </div>
  </div>		
							
			<section class="contact-area section-padding-40-0">
				<div class="container">
					<div class="row justify-content-between">
					<!-- Contact Content -->
						<div class="col-12 col-lg-5">
							<div class="contact-content mb-100 wow fadeInUp" data-wow-delay="100ms">
							<!-- Section Heading -->
								<div class="section-heading">
									<p>YourSporos</p>
									<h2><span>Join Us</span> Sign Up</h2>
									<img src="img/core-img/decor2.png" alt="">
								</div>
								<!-- Contact Form Area -->
								<div class="contact-form-area">
									<form  method="post" onsubmit = "return Validate()" name = "vform" action = "RegisterController_YourSporos.jsp" accept-charset = "ISO-8859-1">
									<div action = "servlet/LoginController_YourSporos.java">
										<div class="row">
											<div class="col-6">
												<input type="text" class="form-control" name="first_name" placeholder="Your Name">
												<div id = "first_name_error" class = "val_error"></div>
											</div> 
											<div class="col-6">
												<input type="text" class="form-control" name="surname" placeholder="Your Surname">
												<div id = "surname_error" class = "val_error"></div>
											</div> 
											<div class="col-6">
												<input type="email" class="form-control" name="email" placeholder="Your Email">
												<div id = "email_error" class = "val_error"></div>
											</div> 
											<div class="col-6">
													<input type="text" class="form-control" name="username" placeholder="Username">
													<div id = "username_error" class = "val_error"></div>
											</div>
											<div class="col-6">
												<input type="text" class="form-control" name="phone" placeholder="Your Phone">
											</div> 
											<div class="col-6">
												<input type="text" class="form-control" name="address" placeholder="Your Address">
											</div>
											<div class="col-12">
												<input type="password" class="form-control" name="password" placeholder="Password">
												<div id = "password_error" class = "val_error"></div>
											</div> 
											<div class="col-12">
												<input type="password" class="form-control" name="password_confirmation" placeholder="Confirm password">
												<div id = "password_confirmation_error" class = "val_error"></div>
											</div>
											<div class="col-12">
												<button type="submit" class="btn famie-btn">Sign up</button>
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
	
	


	
	
	
	<script type = "text/javascript">
		var username = document.forms["vform"]["username"];
		var password = document.forms["vform"]["password"];
		var email = document.forms["vform"]["email"];
		var first_name = document.forms["vform"]["first_name"];
		var surname = document.forms["vform"]["surname"];
		var password_confirmation = document.forms["vform"]["password_confirmation"];
		
		var username_error = document.getElementById("username_error");
		var first_name_error = document.getElementById("first_name_error");
		var surname_error = document.getElementById("surname_error");
		var password_error = document.getElementById("password_error");
		var password_confirmation_error = document.getElementById("password_confirmation_error");
		
		username.addEventListener("blur", usernameVerify, true);
		password.addEventListener("blur", passwordVerify, true);
		first_name.addEventListener("blur", first_nameVerify, true);
		surname.addEventListener("blur", surnameVerify, true);
		
		function Validate() {
			if (first_name.value == "") {
				first_name.style.border = "1px solid red";
				first_name_error.textContent = "Name is required";
				first_name.focus();
				return false;
			}
			
			if (surname.value == "") {
				surname.style.border = "1px solid red";
				surname_error.textContent = "Surname is required";
				surname.focus();
				return false;
			}
			
			if (username.value == "" ) {
				username.style.border = "1px solid red";
				username_error.textContent = "Username is required";
				username.focus();
				return false;
			} else if (username.value.length < 5){
				username.style.border = "1px solid red";
				username_error.textContent = "Username must be at least 5 characters";
				username.focus();
				return false;
			}
			if (email.value == "") {
				email.style.border = "1px solid red";
				email_error.textContent = "Email is required";
				email.focus();
				return false;
			}
			if (password.value == "") {
				password.style.border = "1px solid red";
				password_error.textContent = "Password is required";
				password.focus();
				return false;
			} else if (password.value.length < 5) {
				password_confirmation.style.border = "1px solid red";
				password_confirmation_error.textContent = "Password must be at least 5 characters";
				password_confirmation.focus();
				return false;
			} else if (password.value != password_confirmation.value) {
				password.style.border = "1px solid red";
				password_error.textContent = "The 2 passwords do not match";
				password.focus();
				return false;
			}
			
		}
		function usernameVerify() {
			if (username.value != "" && username.length > 5) {
				username.style.border = "1px solid #5E6E66";
				username_error.innerHTML = "";
				return true;
			}
		}
		function surnameVerify() {
			if (surname.value != "") {
				surname.style.border = "1px solid #5E6E66";
				surname_error.innerHTML = "";
				return true;
			}
		}
		function first_nameVerify (){
			if (first_name.value != "") {
				first_name.style.border = "1px solid #5E6E66";
				first_name_error.innerHTML = "";
				return true;
			}
		}
		
	
	</script>
	<!--https://www.youtube.com/watch?v=pYvVD5DCCr0-->
	<!--https://www.youtube.com/watch?v=K1CzktZMXhY-->
	<%@ include file="footer_YourSporos.jsp"%>
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
  