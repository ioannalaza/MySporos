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
				Customer_YourSporos customer = (Customer_YourSporos) session.getAttribute("login-customer-object");
				CustomerDAO_YourSporos cdao = new CustomerDAO_YourSporos();
				int customerId = cdao.getCustomerId(customer.getCustomerUsername());				
				
				RequestDAO_YourSporos rdao = new RequestDAO_YourSporos();
				List<Request_YourSporos> requests = rdao.getRequests(customerId);

				int requestRentingSpace = 0;
				int requestAnswer = 0;
				int fieldId = 0;
				int ownerId = 0;
				int requestId  = 0;
				
				FieldDAO_YourSporos fdao = new FieldDAO_YourSporos();				
				String fieldName = null;
				Field_YourSporos fys = null;
				
				OwnerDAO_YourSporos odao = new OwnerDAO_YourSporos();
				Owner_YourSporos oys = null;
				

				
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
            <p> <%= customer.getCustomerName() %></p>			  
			</div>

			<!-- Single Benefits Area -->
			<div class="col-12 col-sm-4 col-lg">			  				
				<h4>Επώνυμο</h4>
            <p><%= customer.getCustomerSurname() %></p>			  
			</div>

			<!-- Single Benefits Area -->
			<div class="col-12 col-sm-4 col-lg">			  				
				<h4>Τηλέφωνο</h4>
            <p><%= customer.getCustomerPhone() %></p>			  
			</div>

			<div class="col-12 col-sm-4 col-lg">			  				
				<h4>Διεύθυνση</h4>
            <p><%= customer.getCustomerAddress() %></p>			  
			</div>
			<div class="col-12 col-sm-4 col-lg">			  				
				<h4>Email</h4>
            <p> <%= customer.getCustomerEmail() %></p>		  
			</div>
			<div class="col-12 col-sm-4 col-lg">			  				
				<h4>Username</h4>
            <p><%= customer.getCustomerUsername() %></p>			  
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
            
					
					
			<!-- ##### About Us Area Start ##### -->
			
  <section class="about-us-area">

    <div class="container">
      <div class="row align-items-center">
<% for (Request_YourSporos r: requests) { 
				
						requestRentingSpace = r.getRequestRentingSpace();
						requestAnswer = r.getRequestAnswer();
						customerId = r.getCustomerId();
						fieldId = r.getFieldId();
						ownerId = r.getOwnerId();	

				
						fieldName = fdao.getFieldName(fieldId);
						fys = fdao.findField(fieldName);
						oys = odao.findOwner(ownerId);
											
				
						if(r.getRequestAnswer() == 4 ) { %>
        <!-- About Us Thumbnail -->
        <div class="col-12 col-lg-6">
          <div class="about-us-thumbnail mb-100">
				<img src="images\<%= fieldId%>.jpg" class="img-rounded" style="width:450px">						
          </div>
        </div>

        <!-- About Us Content -->
        <div class="col-12 col-lg-6">
          <div class="about-us-content mb-100">
            <!-- Section Heading -->
            <div class="section-heading">
              
              <h3><%= fys.getFieldName()%></h3>
              
            </div>
			<!-- Single Service Area -->
          <div class="col-12 col-lg-4">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="100ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-center">
                    <h4>Περιοχή:<p> <%= fys.getFieldRegion() %> </p></h4>
              </div>           
            </div>
          </div>
            <!-- Single Service Area -->
          <div class="col-12 col-lg-4">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="300ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-center">
                   <h4>Διεύθυνση: <p><%= fys.getFieldAddress() %></p></h4>
              </div>              
            </div>
          </div>
<!-- Single Service Area -->
          <div class="col-12 col-lg-4">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="300ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-center">
                   <h4>Ιδιοκτήτης: <p><%= oys.getOwnerName() %> <%= oys.getOwnerSurname() %></p></h4>
              </div>              
            </div>
          </div>
          <!-- Single Service Area -->
          <div class="col-12 col-lg-4">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="300ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-center">
                   <h4>Επιλεγμένα m²: <p><%= requestRentingSpace %></p></h4>
              </div>              
            </div>
          </div>

          <!-- Single Service Area -->
          <div class="col-12 col-lg-4">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="500ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-left">
                   <h4>Μηνιαία Τιμή ανα m²:<p> <%= fys.getFieldPrice() %> &euro;<br></p> </h4>
              </div>              
            </div>
          </div>  
		  <!-- Single Service Area -->
          <div class="col-12 col-lg-4">
            <div class="single-service-area mb-50 wow fadeInUp" data-wow-delay="500ms">
              <!-- Service Title -->
              <div class="service-title mb-3 d-flex align-items-left">
                   <h4>Τιμή Ενοικίου: :<p> <%=requestRentingSpace * fys.getFieldPrice() %> &euro;<br></p> </h4>
              </div>              
            </div>
          </div>  
		  
          </div>
        </div>
<%		} 
					} %>
      </div>
    </div>
  </section>
  
 
  <!-- ##### About Us Area End ##### -->
		</div>			
					
				
			
			
			
				
							
					</div>
          </div>
        </div>
	</div>
    </div>	
	
	<section class="news-area bg-gray section-padding-100-0">
		<div class="container" text-left>
		  <div class="row">

		 
			
			<div class="col-12">
			  <!-- Section Heading -->
			  <div class="section-heading text-center wow fadeInUp" data-wow-delay="100ms">
				<p>YourSporos</p>
				<h2><span>Τα Αιτήματα</span> μου</h2>
				<img src="img/core-img/decor2.png" alt="">
			  </div>
			</div>		
				
				<% for (Request_YourSporos r: requests) { 
				
						requestRentingSpace = r.getRequestRentingSpace();
						requestAnswer = r.getRequestAnswer();
						customerId = r.getCustomerId();
						fieldId = r.getFieldId();
						ownerId = r.getOwnerId();	

				
						fieldName = fdao.getFieldName(fieldId);
						fys = fdao.findField(fieldName);
						oys = odao.findOwner(ownerId);
						requestId = r.findRequestId(customerId,fieldId,ownerId);

						if(r.getRequestAnswer() != 4 )  {
							
								 if (r.getRequestAnswer() == 3 ) { %>
								 <!-- Single Request Area -->
								<div class="col-12  mb-100">                 

								  <!-- Single Value Area -->
								  <div class="single-blog-area style-2 wow fadeInUp" data-wow-delay="300ms">
									<!-- Post Content -->
									<div class="post-content text-left">
									  <h6>Απορριφθέντα Αιτήματα</a> / <a href="home_YourSporos.jsp">YourSporos</a></h6>
									  <h3 class="post-title" style="color:red;"><%= fys.getFieldName() %></h3>
									  <div class="row justify-content-center">
									<!-- Single Benefits Area -->
									<div class="col-12 col-sm-4 col-lg">
									  <h5>Περιοχή:</h5>
										<p><%= fys.getFieldRegion() %> </p>			  
									</div>

										<!-- Single Benefits Area -->
									<div class="col-12 col-sm-4 col-lg">			  				
										<h5>Ιδιοκτήτης:</h5>
										<p><%= oys.getOwnerName() %> <%= oys.getOwnerSurname() %></p>			  
									</div>

									<div class="col-12 col-sm-4 col-lg">			  				
										<h5>Επιλεγμένα m²:</h5>
										<p><%= requestRentingSpace %> </p>				  
									</div>
									<!-- Single Benefits Area -->
									<div class="col-12 col-sm-4 col-lg">			  				
										<h5>Τιμή Ενοικίου:</h5>
										<p><%=requestRentingSpace * fys.getFieldPrice() %> &euro;</p>			  
									</div>
									<form method="post" name ="request3" id="request3" action="profileCustomerController_YourSporos.jsp">
									<input type="hidden" id="requestId" name="requestId" value=<%= requestId %>>
									<input type="hidden" id="answerWannaBe" name="answerWannaBe" value="0">
									<button type="submit" class="btn btn-danger"><span 
									class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>								
								</form>			
															
									   </div>
									</div>
								  </div>  
								</div>
														
								
						<%	} else if (r.getRequestAnswer() == 1 ) { %>
						 <!-- Single Request Area -->
				<div class="col-12  mb-100">                 

				  <!-- Single Value Area -->
				  <div class="single-blog-area style-2 wow fadeInUp" data-wow-delay="300ms">
					<!-- Post Content -->
					<div class="post-content text-left">
					  <h6> Αιτήματα</a> / <a href="home_YourSporos.jsp">YourSporos</a></h6>
					  <h3  class="post-title" style="color:goldenrod;"><%= fys.getFieldName() %></h3>
					  <div class="row justify-content-center">
					<!-- Single Benefits Area -->
					<div class="col-12 col-sm-4 col-lg">
					  <h5>Περιοχή:</h5>
						<p><%= fys.getFieldRegion() %> </p>			  
					</div>

						<!-- Single Benefits Area -->
					<div class="col-12 col-sm-4 col-lg">			  				
						<h5>Ιδιοκτήτης:</h5>
						<p><%= oys.getOwnerName() %> <%= oys.getOwnerSurname() %></p>			  
					</div>

					<div class="col-12 col-sm-4 col-lg">			  				
						<h5>Επιλεγμένα m²:</h5>
						<p><%= requestRentingSpace %> </p>			  
					</div>
					<!-- Single Benefits Area -->
					<div class="col-12 col-sm-4 col-lg">			  				
						<h5>Τιμή Ενοικίου:</h5>
						<p><%=requestRentingSpace * fys.getFieldPrice() %> &euro;</p>			  
					</div>
					<form method="post" name ="request1" id="request1" action="profileCustomerController_YourSporos.jsp">
											<input type="hidden" id="requestId" name="requestId" value=<%= requestId %>>
											<input type="hidden" id="answerWannaBe" name="answerWannaBe" value="0">
											<button type="submit" class="btn btn-warning"><span 
											class="glyphicon glyphicon-remove" aria-hidden="true"></span>  Ακύρωση</button>
										
											
										</form>		
							<% } %> 
								
							
							 <% } %> 

						
						 <% } %> 				
					   </div>
					</div>
				  </div>  
				</div>
															
								
						 			

			</div>			
		</div>	</section>	

					
			
		</section>
			
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