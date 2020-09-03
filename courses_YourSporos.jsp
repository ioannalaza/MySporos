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
  <title>YourSporos Courses </title>
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
  <link rel="icon" href="img/core-img/decor3.png">
  <!-- Core Stylesheet -->
  
  <link rel="stylesheet" href="style.css">
 
</head>

<body>
  <!-- Preloader -->
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
					<li class = "active"> <a href="courses_YourSporos.jsp">Courses</li>
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
					<li class = "active"> <a href="courses_YourSporos.jsp">Courses</li>
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
					<li class = "active"> <a href="courses_YourSporos.jsp">Courses</a></li>
					<li><a href="register_YourSporos.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="login_YourSporos.jsp"><span class="glyphicon glyphicon-log-in"></span> Log in </a></li>
				</ul>
			</div>
		</div>
	<% } %>
		<!--/.nav-collapse --><br><br>
<section class="farming-practice-area section-padding-60-50">
    <div class="container">
                <div class="row">
        <div class="col-12">
          <!-- Section Heading -->
          <div class="section-heading text-center">
            <p>Κανε πιο πρασινο τον κοσμο</p>
            <h2>Ολοκληρωμένα πακέτα μαθημάτων για καλλιέργειες</h2>
            <img src="img/core-img/decor2.png" alt="">
          </div>
        </div>
      </div></div>
</section>
     <div class="famie-breadcrumb">
		<div class="container">
		  <nav aria-label="breadcrumb">
			<ol class="breadcrumb">
			  <li class="breadcrumb-item"><a href="home_YourSporos.jsp"><i class="fa fa-home"></i> Home</a></li>
			  <li class="breadcrumb-item active" aria-current="page">Courses</li>
			  
			</ol>
		  </nav>
		</div>
	  </div>           
             <!-- ##### News Area Start ##### -->
  <section class="news-area bg-gray section-padding-100-0">
    <div class="container">
      <div class="row">

        <!-- Featured Post Area -->
        <div class="col-12 col-lg-6">
          <div class="featured-post-area mb-100 wow fadeInUp" data-wow-delay="100ms">
            <img src="img/bg-img/Gardening.jpeg" alt="">
            <!-- Post Content -->
            <div class="post-content">
              <h6> Προγραμματισμένο στις 18 Αυγ 2019 / <a href="https://www.symagro.com/">SymAgro</a></h6>
              <a href="https://www.symagro.com/mathimata-kalliergies/" class="post-title">Μάθημα 1ο: Εγκατάσταση της καλλιέργειας και πρώτα βήματα</a>
            </div>
          </div>
        </div>

        <!-- Single Blog Area -->
        <div class="col-12 col-lg-6 mb-100">

          <!-- Single Blog Area -->
          <div class="single-blog-area style-2 wow fadeInUp" data-wow-delay="300ms">
            <!-- Post Content -->
            <div class="post-content">
              <h6>Προγραμματισμένο στις 18 May 2019</a> / <a href="https://www.symagro.com/">SymAgro</a></h6>
              <a href="https://www.symagro.com/mathimata-kalliergies/" class="post-title">Μάθημα 2ο: Άρδευση</a>
              <p>Ανάγκες του φυτού σε νερό.Η ποιότητα του αρδευτικού νερού.Τα τασίμετρα.Επιφανειακή άρδευση.Τεχνητή βροχή.Στάγδην άρδευση.Υπόγεια άρδευση.</p>
            </div>
          </div>

          <!-- Single Blog Area -->
          <div class="single-blog-area style-2 wow fadeInUp" data-wow-delay="500ms">
            <!-- Post Content -->
            <div class="post-content">
              <h6>Προγραμματισμένο στις 19 Jun 2019</a> / <a href="https://www.symagro.com/">SymAgro</a></h6>
              <a href="https://www.symagro.com/mathimata-kalliergies/" class="post-title">Μάθημα 3ο: Η λίπανση του φυτού</a>
              <p>Τα θρεπτικά στοιχεία του φυτού (μακροστοιχεία, ιχνοστοιχεία, κλπ).Αζωτούχος λίπανση.Φωσφορική λίπανση.Καλιούχος λίπανση.Έλλειψη θρεπτικών στοιχείων- τροφοπενίες.
				Φυλλοδιαγνωστική.</p>
            </div>
          </div>

          <!-- Single Blog Area -->
          <div class="single-blog-area style-2 wow fadeInUp" data-wow-delay="700ms">
            <!-- Post Content -->
            <div class="post-content">
              <h6>Προγραμματισμένο στις 20 Jun 2019</a> / <a href="https://www.symagro.com/">SymAgro</a></h6>
              <a href="https://www.symagro.com/mathimata-kalliergies/" class="post-title">Μάθημα 4ο: Φύτευση διαφορετικών σπόρων</a>
              <p>Κλίμα (θερμοκρασία, υγρασία, άνεμοι, βροχοπτώσεις, ηλιοφάνεια)Υψόμετρο.Έδαφος (ανάλυση εδάφους, βελτίωση εδάφους).Νερό που απαιτείται για κάθε φυτό.</p>
            </div>
          </div>

        </div>
      </div>
    </div>
  </section>
  <!-- ##### News Area End ##### -->


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
</body>

</html>