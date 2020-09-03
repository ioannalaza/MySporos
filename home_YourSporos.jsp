<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "classes_yoursporos.*"%>
<%@ page import = "java.util.List"%>
<%@ page errorPage="apperror_YourSporos.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <!-- Title -->
  <title>YourSporos </title>
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
					<li class="active"><a href="home_YourSporos.jsp">Home</a></li>
					<li ><a href="resources_YourSporos.jsp">Resources</li>
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
					<li class="active"><a href="home_YourSporos.jsp">Home</a></li>
					<li ><a href="resources_YourSporos.jsp">Resources</li>
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
					<li class = "active"><a href="home_YourSporos.jsp">Home</a></li>
					<li ><a href="resources_YourSporos.jsp">Resources</a></li>
					<li> <a href="courses_YourSporos.jsp">Courses</a></li>
					<li><a href="register_YourSporos.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="login_YourSporos.jsp"><span class="glyphicon glyphicon-log-in"></span> Log in </a></li>
				</ul>
			</div>
		</div>
	<% } %>
		
  <!-- ##### Search Start ##### -->
	<section class="newsletter-area section-padding-100 bg-img bg-overlay jarallax" style="background-image: url('img/bg-img/plantation.jpg');">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-lg-10">
					<div class="newsletter-content">
						<!-- Section Heading -->
						<div class="section-heading white text-center">
						  <p>Ξεκινα</p>
						  <h2>YourSporos</h2>
						  <img src="img/core-img/decor2.png" alt="">
						</div>
						<p class="text-white mb-20 text-center" style="font-size:20px;">Το μόνο που χρειάζεσαι είναι ήλιος, καλό χώμα και λίγος χώρος.</p>
					</div>
				</div>
			</div>
			<!-- Search Form -->
				<div class="row justify-content-center">
					<form  id="myform" class="myform" method="post" action="results_YourSporos.jsp">
						<div class="form-group" > <!-- Search Button -->
							<select class="form-control" name="no_field" id="no_field" onchange="this.form.submit()" >
								<option value="" disabled selected value >Αναζήτησε κοντινή γη για να καλλιεργήσεις...</option>
								<option value="1">Παιανία</option>
								<option value="2">Άσπρόπυργος</option>
								<option value="3">Κιούρκα</option>
								<option value="4">Μαρκόπουλο</option>
							</select>
							<noscript><input type="submit" value="Submit"></noscript>					
						</div>
					</form>
				</div>
		</div>
	</section>
  <!-- ##### Search End ##### -->

		
  <!-- ##### Farming Practice Area Start ##### -->
  <section class="farming-practice-area section-padding-100-50">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <!-- Section Heading -->
          <div class="section-heading text-center">
            <p>Κανε πιο πρασινο τον κοσμο</p>
            <h2><span>Βήματα</span> για να ξεκινήσεις</h2>
            <img src="img/core-img/decor2.png" alt="">
          </div>
        </div>
      </div>

      <div class="row">

        
        <!-- Single Farming Practice Area -->
        <div class="col-12 col-sm-6 col-lg-4">
          <div class="single-farming-practice-area mb-50 wow fadeInUp" data-wow-delay="400ms">
            <!-- Thumbnail -->
            <div class="farming-practice-thumbnail">
              <img src="img/bg-img/13.jpg" alt="">
            </div>
            <!-- Content -->
            <div class="farming-practice-content text-center">
              <!-- Icon -->
              <div class="farming-icon">
                <img src="img/core-img/cereal.png" alt="">
              </div>
              <span>Με τη YourSporos μπορείς</span>
              <h4>1. Διάλεξε κοντινή γη </h4>
              <p>Έχεις τη δυνατότητα να βρείς κοντινή γη σε σένα και να νοικιάσεις τον δικό σου χώρο για να ξεκινήσεις να καλλιεργείς.Σου παρέχουμε επίσης εξοπλισμό και σε καθοδηγούμε σε όλη την διαδικασία.</p>
            </div>
          </div>
        </div>

        <!-- Single Farming Practice Area -->
        <div class="col-12 col-sm-6 col-lg-4">
          <div class="single-farming-practice-area mb-50 wow fadeInUp" data-wow-delay="500ms">
            <!-- Thumbnail -->
            <div class="farming-practice-thumbnail">
              <img src="img/bg-img/planting.jpg" alt="">
            </div>
            <!-- Content -->
            <div class="farming-practice-content text-center">
              <!-- Icon -->
              <div class="farming-icon">
                <img src="img/core-img/sprout.png" alt="">
              </div>
              <span>Με τη YourSporos μπορείς</span>
              <h4>2. Μάθε ειδικές τεχνικές </h4>
              <p>Η YourSporos διοργανώνει ειδικά προγράμματα εκμάθησης.Μπορείς να αποκτήσεις εμπειρία, να μάθεις τεχνικές και να εστιάσεις στα λαχανικά της προτίμησης σου.</p>
            </div>
          </div>
        </div>

        <!-- Single Farming Practice Area -->
        <div class="col-12 col-sm-6 col-lg-4">
          <div class="single-farming-practice-area mb-50 wow fadeInUp" data-wow-delay="600ms">
            <!-- Thumbnail -->
            <div class="farming-practice-thumbnail">
              <img src="img/bg-img/14.jpg" alt="">
            </div>
            <!-- Content -->
            <div class="farming-practice-content text-center">
              <!-- Icon -->
              <div class="farming-icon">
                <img src="img/core-img/vegetable.png" alt="">
              </div>
              <span>Με τη YourSporos μπορείς</span>
              <h4>3. Καλλιέργησε τα δικά σου προιόντα</h4>
              <p>Ξεκινάς να εφαρμόζεις στην πράξη τις γνώσεις που πήρες στη δικιά σου γη. Καθ' όλη την διάρκεια σε συμβουλεύουμε και σε στηρίζουμε. </p>
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>
  <!-- ##### Farming Practice Area End ##### -->

<!-- ##### Team Member Area Start ##### -->
  <section class="team-member-area section-padding-100-0">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <!-- Section Heading -->
          <div class="section-heading text-center">
            <p>ΓΝΩΡΙΣΕ ΤΗΝ ΟΜΑΔΑ</p>
            <h2><span>Η ομάδα YourSporos </span> είναι εδώ για σένα</h2>
            <img src="img/core-img/decor2.png" alt="">
          </div>
        </div>
      </div>

      <div class="row">
        <!-- Single Team Member -->
        <div class="col-12 col-sm-6 col-lg-4">
          <div class="single-team-member mb-100 wow fadeInUp" data-wow-delay="100ms">
            <!-- Team Thumbnail -->
            <div class="team-img">
              <img src="img/bg-img/ii.jpg" alt="">
              <!-- Social Info -->
              <div class="team-social-info">
                <a href="https://www.facebook.com/ioanna.lazaridi.1" data-toggle="tooltip" data-placement="right" title="Facebook"><i class="fa fa-facebook"></i></a>
                <a href="https://www.linkedin.com/in/ioanna-lazaridi-3a351b175/" data-toggle="tooltip" data-placement="right" title="Linkedin"><i class="fa fa-linkedin"></i></a>
              </div>
            </div>
            <!-- Team Member Info -->
            <div class="team-member-info">
              <h4>Ioanna Lazaridi</h4>
              <p>Co-Founder<br> Front-end Development</p>
            </div>
          </div>
        </div>

        <!-- Single Team Member -->
        <div class="col-12 col-sm-6 col-lg-4">
          <div class="single-team-member mb-100 wow fadeInUp" data-wow-delay="300ms">
            <!-- Team Thumbnail -->
            <div class="team-img">
              <img src="img/bg-img/D.jpg" alt="">
              <!-- Social Info -->
              <div class="team-social-info">
                <a href="https://www.facebook.com/dajana.szewczyk.9" data-toggle="tooltip" data-placement="right" title="Facebook"><i class="fa fa-facebook"></i></a>
                <a href="https://www.linkedin.com/in/dajana-szewczyk/" data-toggle="tooltip" data-placement="right" title="Linkedin"><i class="fa fa-linkedin"></i></a>
              </div>
            </div>
            <!-- Team Member Info -->
            <div class="team-member-info">
              <h4>Dajana Szewczyk</h4>
              <p>Co-Founder<br> Back-end Development</p>
            </div>
          </div>
        </div>

        <!-- Single Team Member -->
        <div class="col-12 col-sm- col-lg-4">
          <div class="single-team-member mb-100 wow fadeInUp" data-wow-delay="500ms">
            <!-- Team Thumbnail -->
            <div class="team-img">
              <img src="img/bg-img/A.jpg" alt="">
              <!-- Social Info -->
              <div class="team-social-info">
                <a href="https://www.facebook.com/angie.love.7503" data-toggle="tooltip" data-placement="right" title="Facebook"><i class="fa fa-facebook"></i></a>
                <a href="https://www.linkedin.com/in/aggeliki-rubati-16b414163/" data-toggle="tooltip" data-placement="right" title="Linkedin"><i class="fa fa-linkedin"></i></a>
              </div>
            </div>
            <!-- Team Member Info -->
            <div class="team-member-info">
              <h4>Aggeliki Rubati</h4>
              <p>Co-Founder<br> Back-end Development</p>
            </div>
          </div>
        </div>
		
       
            

      </div>
    </div>
  </section>
  <!-- ##### Team Member Area End ##### -->
		

			
		
		
		<div class="contact">
        <h3>θες να προσθεσουμε και το δικo σου οικoπεδο;&darr;</h3>
        <p>Συμπλήρωσε την φόρμα επικοινωνίας για να σε γνωρίσουμε </p>
      </div>
		

		<%@ include file="footer_YourSporos.jsp"%>
			</div>

			
 

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