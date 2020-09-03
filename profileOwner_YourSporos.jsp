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
  <title>YourSporos Profile </title>
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
  
  <link rel="stylesheet" href="profile.css">
 <style>
 
 
	h3{
		color:#0c3300;
		font-size:24px;
	}
   h4 {
    color:#0c3300;
  }

   p {
    color:#0c3300;
	font-size:18px;
  }


 </style>
  
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
					<li ><a href="home_YourSporos.jsp">Home</a></li>
					<li ><a href="resources_YourSporos.jsp">Resources</li>
					<li> <a href="courses_YourSporos.jsp">Courses</li>
					<li><a href="logout_YourSporos.jsp"><span class="glyphicon glyphicon-log-in"></span> Log out </a></li>
					<li class="active"><a href="register_YourSporos.jsp"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
					
				</ul>
			</div>
		</div>
		<!--/.nav-collapse -->
                <!--/.nav-collapse -->
      <!-- ##### Breadcrumb Area Start ##### -->
  <div class="famie-breadcrumb bg-img bg-overlay jarallax" style="background-image: url('img/bg-img/8.jpg');">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-12">
          <div class="breadcrumb-text" >
            <h2 style="color:white;">ΠΡΟΦΙΛ</h2>
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
          <li class="breadcrumb-item active" aria-current="page">Profile</li>
		  
        </ol>
      </nav>
    </div>
  </div>
  <!-- ##### Breadcrumb Area End ##### -->    
  
        
			<%
				Owner_YourSporos owner = (Owner_YourSporos) session.getAttribute("login-owner-object");
				OwnerDAO_YourSporos odao = new OwnerDAO_YourSporos();
				String ownerUsername = owner.getOwnerUsername();
				int ownerId = odao.getOwnerId(ownerUsername);	

				FieldDAO_YourSporos owner_fdao = new FieldDAO_YourSporos();		
				
				String owner_fieldName = null;
				Field_YourSporos owner_fys = owner_fdao.getFieldByOwnerId(ownerId);	
				
				RequestDAO_YourSporos rdao = new RequestDAO_YourSporos();
				List<Request_YourSporos> requests = rdao.getRequestsOwner(ownerId);

				int requestRentingSpace = 0;
				int requestAnswer = 0;
				int fieldId = 0;
				int customerId = 0;
				int requestId  = 0;
				
				FieldDAO_YourSporos fdao = new FieldDAO_YourSporos();				
				String fieldName = null;
				Field_YourSporos fys = null;
				
				CustomerDAO_YourSporos cdao = new CustomerDAO_YourSporos();
				Customer_YourSporos cys = null;
				

				
			%>
			<section class="news-area bg-gray section-padding-100-0">
          <div class="container">
     
        <!-- Single Request Area -->
        <div class="col-12  mb-100">                 

          <!-- Single Value Area -->
          <div class="single-blog-area style-2 wow fadeInUp" data-wow-delay="300ms" style="background-color:#bbff99;">
            <!-- Post Content -->
            <div class="post-content text-left" >
              <div class="col-12">
          <!-- Section Heading -->
          <div class="section-heading text-center wow fadeInUp" data-wow-delay="100ms">
            <p>YourSporos</p>
            <h3>Προσωπικά στοιχεία</h3>
            
          </div>
        </div>
              
              <div class="row justify-content-center">
			<!-- Single Benefits Area -->
			<div class="col-12 col-sm-4 col-lg">
			  <h4 >Όνομα</h4>
            <p> <%= owner.getOwnerName() %></p>			  
			</div>

			<!-- Single Benefits Area -->
			<div class="col-12 col-sm-4 col-lg">			  				
				<h4>Επώνυμο</h4>
            <p><%= owner.getOwnerSurname() %></p>			  
			</div>

			<!-- Single Benefits Area -->
			<div class="col-12 col-sm-4 col-lg">			  				
				<h4>Τηλέφωνο</h4>
            <p><%= owner.getOwnerPhone() %></p>			  
			</div>

			<div class="col-12 col-sm-4 col-lg">			  				
				<h4>Διεύθυνση</h4>
            <p><%= owner.getOwnerAddress() %></p>			  
			</div>
			<div class="col-12 col-sm-4 col-lg">			  				
				<h4>Email</h4>
            <p> <%= owner.getOwnerEmail() %></p>		  
			</div>
			<div class="col-12 col-sm-4 col-lg">			  				
				<h4>Username</h4>
            <p><%= owner.getOwnerUsername() %></p>			  
			</div>
		</div>
            </div>
          </div>

          

        </div>
      </div>
    
  </section>
  <div class="col-12 ">
          <div class="contact-form">
            <!-- Section Heading -->
          <div class="section-heading text-center">
            <p>YourSporos</p>
            <h2><span>Τα Χωράφια</span> μου</h2>
            <img src="img/core-img/decor2.png" alt="">
          </div>
			<section class="about-us-area">

    <div class="container">
      <div class="row align-items-center">

        <!-- About Us Thumbnail -->
        <div class="col-12 col-lg-6">
          <div class="about-us-thumbnail mb-100">
				<img src="images\plantation.jpg" class="img-rounded" style="width:450px">						
          </div>
        </div>

        <!-- About Us Content -->
        <div class="col-12 col-lg-6">
          <div class="about-us-content mb-100">
            <!-- Section Heading -->
            <div class="section-heading">
              
              <h3><%= owner_fys.getFieldName()%></h3>
              
            </div>
			<!-- Single Service Area -->
          <div class="col-12 col-lg-4">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="100ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-center">
                    <h4>Περιοχή:<p> <%= owner_fys.getFieldRegion() %></p></h4>
              </div>           
            </div>
          </div>
            <!-- Single Service Area -->
          <div class="col-12 col-lg-4">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="300ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-center">
                   <h4>Διεύθυνση: <p><%= owner_fys.getFieldAddress() %></p></h4>
              </div>              
            </div>
          </div>

          <!-- Single Service Area -->
          <div class="col-12 col-lg-4">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="300ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-center">
                   <h4>Διαθεσιμότητα: <p><%=owner_fys.getFieldSpaceAvailable() %> m²</p></h4>
              </div>              
            </div>
          </div>

          <!-- Single Service Area -->
          <div class="col-12 col-lg-4">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="500ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-left">
                   <h4>Μηνιαία Τιμή ανα m²:<p> <%= owner_fys.getFieldPrice() %> &euro;<br></p> </h4>
              </div>              
            </div>
          </div>  
		  <!-- Single Service Area -->
          <div class="col-12 col-lg-4">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="500ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-left">
                   <h4>Διάρκεια ενοικίασης:<p> <%= owner_fys.getFieldRentingTime() %><br></p> </h4>
              </div>              
            </div>
          </div>  
		  
          </div>
        </div>

      </div>
    </div>
  </section>
  <!-- ##### Our Products Area Start ##### -->
  <section class="our-products-area section-padding-100">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <!-- Section Heading -->
          <div class="section-heading text-center">
            
            <h2><span>Οι Πελάτες</span> μου</h2>
            <img src="img/core-img/decor2.png" alt="">
          </div>
        </div>
      </div>

      <div class="row">

        <!-- Single Product Area -->
        <div class="col-12 col-sm-6 col-lg-3">
          <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="100ms">
            <!-- Product Thumbnail -->
            <div class="product-thumbnail">
              <img src="img/bg-img/p2.jpg" alt="">
              <!-- Product Tags -->
              <span class="product-tags">Best</span>
              <!-- Product Meta Data -->
              <div class="product-meta-data">
                <a href="#" data-toggle="tooltip" data-placement="top" title="Favourite"><i class="icon_heart_alt"></i></a>
                <a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="icon_email_alt"></i></a>
                <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><i class="arrow_left-right_alt"></i></a>
              </div>
            </div>
            <!-- Product Description -->
            <div class="product-desc text-center pt-4">
              <p><strong>Διεύθυνση: </strong></p>	
							<p>Email: </p>
							<p>Επιλεγμένα m²: </p>
							<p>Μηνιαία τιμή ανά m²:  </p>								
							<p>Τιμή Ενοικίου:  </p>
            </div>
          </div>
        </div>

        <!-- Single Product Area -->
        <div class="col-12 col-sm-6 col-lg-3">
          <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="300ms">
            <!-- Product Thumbnail -->
            <div class="product-thumbnail">
              <img src="img/bg-img/p2.jpg" alt="">
              <!-- Product Meta Data -->
              <div class="product-meta-data">
                <a href="#" data-toggle="tooltip" data-placement="top" title="Favourite"><i class="icon_heart_alt"></i></a>
                <a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="fa fa-email"></i></a>
                <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><i class="arrow_left-right_alt"></i></a>
              </div>
            </div>
            <!-- Product Description -->
            <div class="product-desc text-center pt-4">
              <a href="#" class="product-title">ddd</a>
              <p><strong>Διεύθυνση: </strong></p>	
							<p>Email: </p>
							<p>Επιλεγμένα m²: </p>
							<p>Μηνιαία τιμή ανά m²:  </p>								
							<p>Τιμή Ενοικίου:  </p>
            </div>
          </div>
        </div>

        
    </div>
  </section>
  <!-- ##### Our Products Area End ##### -->
			
					
			<div class="container">
			
			<div>
				<h3>ΠΕΛΑΤΕΣ ΜΟΥ</h3>
				<% for (Request_YourSporos r: requests) { 
				
						requestRentingSpace = r.getRequestRentingSpace();
						requestAnswer = r.getRequestAnswer();
						customerId = r.getCustomerId();
						fieldId = r.getFieldId();
						ownerId = r.getOwnerId();	

				
						fieldName = fdao.getFieldName(fieldId);
						fys = fdao.findField(fieldName);					
						
						cys = cdao.findCustomer(customerId);
											
				
						if(r.getRequestAnswer() == 4 ) { %>
							<h3><%= cys.getCustomerName()%> <%= cys.getCustomerSurname()%></h3>					
							<p><strong>Διεύθυνση: </strong><%= cys.getCustomerAddress() %></p>	
							<p><strong>Email: </strong><%= cys.getCustomerEmail() %></p>
							<p><strong>Επιλεγμένα m²: </strong><%= requestRentingSpace %></p>
							<p><strong>Μηνιαία τιμή ανά m²: </strong><%= fys.getFieldPrice() %> &euro; </p>
								
							<p><strong>Τιμή Ενοικίου: </strong><%=requestRentingSpace * fys.getFieldPrice() %> &euro; </p>						

							
				<%		} 
					} %>
				<h3>ΤΑ AITHMATA ΜΟΥ</h3>
				<% for (Request_YourSporos r: requests) { 
				
						requestRentingSpace = r.getRequestRentingSpace();
						requestAnswer = r.getRequestAnswer();
						customerId = r.getCustomerId();
						fieldId = r.getFieldId();
						ownerId = r.getOwnerId();	

				
						fieldName = fdao.getFieldName(fieldId);
						fys = fdao.findField(fieldName);
						cys = cdao.findCustomer(customerId);
						requestId = r.findRequestId(customerId,fieldId,ownerId);

							
						if (r.getRequestAnswer() == 1 ) { %>
							<h3><%= cys.getCustomerName()%> <%= cys.getCustomerSurname()%></h3>
							<p><strong>Τηλέφωνο: </strong><%= cys.getCustomerPhone() %></p>
							<p><strong>Email: </strong><%= cys.getCustomerEmail() %></p>
							<p><strong>Επιλεγμένα m²: </strong><%= requestRentingSpace %></p>
							<p><strong>Μηνιαία τιμή ανά m²: </strong><%= fys.getFieldPrice() %> &euro; </p>
							<p><strong>Διάρκεια ενοικίασης: </strong><%= fys.getFieldRentingTime() %> μήνες </p>	
							<p><strong>Τιμή Ενοικίου: </strong><%=requestRentingSpace * fys.getFieldPrice() %> &euro; </p>							
								

							<form method="post" name ="request4" id="request4" action="profileOwnerController_YourSporos.jsp">
								<input type="hidden" id="requestId" name="requestId" value=<%= requestId %>>
																
								<input type="hidden"  id="answerWannaBe" name="answerWannaBe"  value="4">																	
								<button type="submit" name="Accept" value="Accept" class="btn btn-success"><span 
								class="glyphicon glyphicon-ok" aria-hidden="true"></span>  Αποδοχή</button>		

							</form>
							
							<form method="post" name ="request3" id="request3" action="profileOwnerController_YourSporos.jsp">
								<input type="hidden" id="requestId" name="requestId" value=<%= requestId %>>

								<input type="hidden"  id="answerWannaBe " name="answerWannaBe"  value="3">
								<button type="submit" name="Decline" value="Decline" class="btn btn-danger"><span 
								class="glyphicon glyphicon-remove" aria-hidden="true"></span>  Απόρριψη</button>	
									
							</form>
										
													
								
					 <% } %> 
					

				
		         <% } %> 				

			</div>

			
		</div>		

			</div>		
			
		
			
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