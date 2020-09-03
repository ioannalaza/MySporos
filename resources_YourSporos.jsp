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
  <title>YourSporos Resources </title>
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
					<li class = "active"><a href="resources_YourSporos.jsp">Resources</li>
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
					<li class = "active"><a href="resources_YourSporos.jsp">Resources</li>
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
					<li class = "active" ><a href="resources_YourSporos.jsp">Resources</a></li>
					<li> <a href="courses_YourSporos.jsp">Courses</a></li>
					<li><a href="register_YourSporos.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="login_YourSporos.jsp"><span class="glyphicon glyphicon-log-in"></span> Log in </a></li>
				</ul>
			</div>
		</div>
	<% } %>
                
                
            


  <!-- ##### Breadcrumb Area Start ##### -->
  <div class="breadcrumb-area bg-img bg-overlay jarallax" style="background-image: url('img/bg-img/18.jpg');">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-12">
          <div class="breadcrumb-text">
            <h2>Resources</h2>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="famie-breadcrumb">
    <div class="container">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="home_YourSporos.jsp"><i class="fa fa-home"></i> Home</a></li>
          <li class="breadcrumb-item active" aria-current="page">Resources</li>
        </ol>
      </nav>
    </div>
  </div>
  <!-- ##### Breadcrumb Area End ##### -->

  <!-- ##### About Us Area Start ##### -->
  <section class="about-us-area">
    <div class="container">
      <div class="row align-items-center wow fadeInUp" data-wow-delay="100ms">

        <!-- About Us Thumbnail -->
        <div class="col-12 col-lg-6">
          <div class="about-us-thumbnail mb-100 ">
            <img src="img/bg-img/veg-background.jpg" alt="">
          </div>
        </div>

        <!-- About Us Content -->
        <div class="col-12 col-lg-6">
          <div class="about-us-content mb-100">
            <!-- Section Heading -->
            <div class="section-heading">
              <p><a href="https://www.gardenguide.gr/">gardenguide.gr </a></p>
              <h2> 6 βήματα για να φτιάξετε τον δικό σας οικιακό λαχανόκηπο</h2>
              <img src="img/core-img/decor2.png" alt="">
            </div>
            <p>Η τάση για καλλιέργεια λαχανικών για οικιακή κατανάλωση στον κήπο ή ακόμα και στο μπαλκόνι συνεχώς διευρύνεται και αποτελεί πια στάση ζωής για όσους επιθυμούν την παραγωγή των δικών τους προϊόντων αλλά και την καθημερινή επαφή τους με τη φύση.

Φυσικά η βιολογική καλλιέργεια χωρίς χημικά σκευάσματα και η ορθή διαχείριση του νερού αποτελούν βασικές αρχές για τον οικιακό λαχανόκηπο. Ο λαχανόκηπος αποτελεί ένα από τα πιο δημιουργικά σημεία του κήπου και προσφέρει ενασχόληση σε όλη την οικογένεια και για όλη τη διάρκεια του έτους.</p>
            <a href="https://www.gardenguide.gr/6-steps-vegetable-garden/" class="btn famie-btn mt-30">Περισσοτερα</a>
          </div>
        </div>

      </div>
    </div>
  </section>
  <!-- ##### About Us Area End ##### -->
<!-- ##### About Us Area Start ##### -->
  <section class="about-us-area">
    <div class="container">
      <div class="row align-items-center wow fadeInUp" data-wow-delay="300ms">

        <!-- About Us Thumbnail -->
        <div class="col-12 col-lg-6">
          <div class="about-us-thumbnail mb-100">
            <img src="img/bg-img/watering.jpg" alt="">
          </div>
        </div>

        <!-- About Us Content -->
        <div class="col-12 col-lg-6">
          <div class="about-us-content mb-100">
            <!-- Section Heading -->
            <div class="section-heading">
              <p><a href="https://www.gardenguide.gr/">gardenguide.gr </a></p>
              <h2>Πότισμα για τομάτα, πατάτα, μελιτζάνα και πιπεριά</h2>
              <img src="img/core-img/decor2.png" alt="">
            </div>
            <p>Ο καλύτερος τρόπος ποτίσματος για την τομάτα, τη μελιτζάνα και την πιπεριά είναι το σύστημα της σταγόνας, 
			αφού κατά το πότισμα πρέπει να αποφεύγεται η διαβροχή του φυλλώματος. Η πατάτα στις εμπορικές καλλιέργειες ποτίζεται είτε με τεχνητή βροχή,
			είτε με αυλάκια.Στον λαχανόκηπο το πότισμα μπορεί να γίνει με μικρούς εκτοξευτήρες, με σταγόνα ή ακόμα και με το χέρι, 
			αρκεί να επιτυγχάνεται καλή διαβροχή του χώματος γύρω από το φυτό.</p>
            <a href="https://www.gardenguide.gr/%cf%80%cf%8c%cf%84%ce%b9%cf%83%ce%bc%ce%b1-%cf%84%ce%bf%ce%bc%ce%ac%cf%84%ce%b1-%cf%80%ce%b1%cf%84%ce%ac%cf%84%ce%b1-%ce%bc%ce%b5%ce%bb%ce%b9%cf%84%ce%b6%ce%ac%ce%bd%ce%b1/" class="btn famie-btn mt-30">Περισσοτερα</a>
          </div>
        </div>

      </div>
    </div>
  </section>
  <!-- ##### About Us Area End ##### -->
 <!-- ##### About Us Area Start ##### -->
  <section class="about-us-area">
    <div class="container">
      <div class="row align-items-center wow fadeInUp" data-wow-delay="500ms">

        <!-- About Us Thumbnail -->
        <div class="col-12 col-lg-6">
          <div class="about-us-thumbnail mb-100">
            <img src="img/bg-img/family.png" alt="">
          </div>
        </div>

        <!-- About Us Content -->
        <div class="col-12 col-lg-6">
          <div class="about-us-content mb-100">
            <!-- Section Heading -->
            <div class="section-heading">
              <p><a href="https://www.kalliergo.gr/">kalliergo.gr </a></p>
              <h2>Οδηγός νέου καλλιεργητή </h2>
              <img src="img/core-img/decor2.png" alt="">
            </div>
            <p>Μοιράστηκα ένα απόγευμα τις σκέψεις μου με το φίλο μου τον Παύλο Λούζη του οποίου ο πατέρας και ο αδερφός καλλιεργούν επαγγελματικά και μου είπε: “Την ημέρα που θα μπεις μέσα στον κήπο θα κόψεις την πρώτη ντομάτα που θα έχεις παράγει, θα την ανοίξεις, θα τη φέρεις κοντά στη μύτη σου και θα μυρίσεις το άρωμά της, τότε θα καταλάβεις τι έχανες τόσα χρόνια...”</p>
            <a href="https://www.kalliergo.gr/kalliergo-tag/173-odigos-neou-kalliergiti.html" class="btn famie-btn mt-30">Περισσοτερα</a>
          </div>
        </div>

      </div>
    </div>
  </section>
  <!-- ##### About Us Area End ##### -->
  
  <!-- Pagination -->
          <nav>
            <ul class="pagination mb-0 mt-50">
              <li class="page-item active"><a class="page-link" href="resources_YourSporos.jsp">1</a></li>
              <li class="page-item"><a class="page-link" href="resources_YourSporos.jsp">2</a></li>
              <li class="page-item"><a class="page-link" href="resources_YourSporos.jsp"><i class="fa fa-angle-right"></i></a></li>
            </ul>
          </nav>
        </div>
      </div>

    </div>
  </section><br><br>

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