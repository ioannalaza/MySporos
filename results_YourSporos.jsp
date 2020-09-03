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
  <title>YourSporos Results </title>
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
					<li class="active"><a href="home_YourSporos.jsp">Home</a></li>
					<li ><a href="resources_YourSporos.jsp">Resources</li>
					<li> <a href="https://www.symagro.com/mathimata-kalliergies/">Courses</li>
					<li><a href="register_YourSporos.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="login_YourSporos.jsp"><span class="glyphicon glyphicon-log-in"></span> Log in </a></li>
				</ul>
			</div>
		</div>
		<!--/.nav-collapse -->
                
                
            


  <!-- ##### Breadcrumb Area Start ##### -->
  <div class="breadcrumb-area bg-img bg-overlay jarallax" style="background-image: url('img/bg-img/55.jpg');">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-12">
          <div class="breadcrumb-text">
            <h2>αναζητηση</h2>
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
          <li class="breadcrumb-item active" aria-current="page">Results</li>
		  
        </ol>
      </nav>
    </div>
  </div>
  <!-- ##### Breadcrumb Area End ##### -->

	
		<div class="container">

			
		<% 
			String no_field = request.getParameter("no_field");  
			
			String fieldRegion;
			int photo = 0;
			if(no_field.equals("1")){
				fieldRegion = "Παιανία";
				photo = 1;
			} else if(no_field.equals("2")){
				fieldRegion = "Ασπρόπυργος";
				photo = 4;
			} else if(no_field.equals("3")){
				fieldRegion = "Κιούρκα";
				photo = 7;
			} else if(no_field.equals("4")){
				fieldRegion = "Μαρκόπουλο";
				photo = 10;
			} else {
				fieldRegion = null;
			}
			
			FieldDAO_YourSporos fdao = new FieldDAO_YourSporos();
			List<Field_YourSporos> fields = fdao.getFields(fieldRegion);
			

		%>

		
		

<!-- ##### About Us Area Start ##### -->
  <section class="about-us-area">
  <% for (Field_YourSporos f: fields) { %>
    <div class="container">
      <div class="row align-items-center">

        <!-- About Us Thumbnail -->
        <div class="col-12 col-lg-6">
          <div class="about-us-thumbnail mb-100">
			<%	if (fieldRegion == "Παιανία") { %>
								<img src="images\<%=photo%>.jpg" class="img-rounded" style="width:450px">				
						<%  }%>	
           <%	if (fieldRegion == "Ασπρόπυργος") { %>
								<img src="images\<%=photo%>.jpg" class="img-rounded" style="width:450px">
						<%  }%>
							
						<%	if (fieldRegion == "Κιούρκα") { %>
								<img src="images\<%=photo%>.jpg" class="img-rounded" style="width:450px">
						<%  }%>
							
						<%	if (fieldRegion == "Μαρκόπουλο") { %>
								<img src="images\<%=photo%>.jpg" class="img-rounded" style="width:450px">
						<%  }%>
          </div>
        </div>

        <!-- About Us Content -->
        <div class="col-12 col-lg-6">
          <div class="about-us-content mb-100">
            <!-- Section Heading -->
            <div class="section-heading">
              <p>YourSporos</p>
              <h3><%= f.getFieldName() %></h3>
              
            </div>
			<!-- Single Service Area -->
          <div class="col-12 col-lg-6">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="100ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-center">
                <img src="img/core-img/s4.png" alt="">
                <h4>Διαθεσιμότητα:<p> <%=f.getFieldSpaceAvailable() %> m²</p></h4>
              </div>           
            </div>
          </div>
            <!-- Single Service Area -->
          <div class="col-12 col-lg-6">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="300ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-center">
                <img src="img/core-img/s5.png" alt="">
                <h4>Περιοχή: <p><%= f.getFieldRegion() %></p></h4>
              </div>              
            </div>
          </div>

          

          <!-- Single Service Area -->
          <div class="col-12 col-lg-6">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="500ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-left">
                <img src="img/core-img/s6.png" alt="">
                <h4>Μηνιαία Τιμή ανα m²:<p> <%=f.getFieldPrice()%> &euro;<br></p> </h4>
              </div>              
            </div>
          </div>
		  
						<%
							String fieldName= f.getFieldName();
							int fieldId = fdao.getFieldId(fieldName);
						%>
						
          <form method="post" name ="form_field" id="form_field" action="renting_YourSporos.jsp" accept-charset="ISO-8859-1">
							
							<input type="hidden" id="fieldId" name="fieldId" value=<%=fieldId%>>
							<input type="hidden" id="fieldPhoto" name="fieldPhoto" value=<%=photo%>>
							<p><button  class="btn famie-btn mt-30">Περισσοτερα...</button></p>
						</form>
		  
            
          </div>
        </div>

      </div>
    </div>
  </section>
  <% photo++; %>
		<%  } %>
  <!-- ##### About Us Area End ##### -->
		</div>
		
		<!-- Pagination -->
          <nav>
            <ul class="pagination mb-0 mt-50">
              <li class="page-item active"><a class="page-link" href="#">1</a></li>              
              <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>
            </ul>
          </nav>
        </div>
      </div>
	  <br><br>
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