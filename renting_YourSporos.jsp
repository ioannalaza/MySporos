<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "classes_yoursporos.*"%>
<%@ page import = "java.util.List"%>

<!DOCTYPE html>
<html lang="en">
	<head>	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta name="description" content="Team Project">
	<meta name="author" content="YourSporos@aueb.gr">
	<link rel="icon" href="images/Logo1.jpg">

	<title>YourSporos Renting</title>
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
					<li> <a href="courses_YourSporos.jsp">Courses</li>
					<li><a href="register_YourSporos.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="login_YourSporos.jsp"><span class="glyphicon glyphicon-log-in"></span> Log in </a></li>
				</ul>
			</div>
		</div>
		<!--/.nav-collapse -->
<!-- ##### Breadcrumb Area Start ##### -->
  <div class="breadcrumb-area bg-img bg-overlay jarallax" style="background-image: url('img/bg-img/100.jpg');">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-12">
          <div class="breadcrumb-text">
            <h2>Ενοικιαση</h2>
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
          <li class="breadcrumb-item active" aria-current="page">Renting</li>
		  
        </ol>
      </nav>
    </div>
  </div>
  <!-- ##### Breadcrumb Area End ##### -->
  
  <%
			String fieldIdS = request.getParameter("fieldId");
			int fieldId = Integer.parseInt(fieldIdS);
			String fieldPhotoS = request.getParameter("fieldPhoto"); 
			int fieldPhoto = Integer.parseInt(fieldPhotoS);
		
			FieldDAO_YourSporos fdao = new FieldDAO_YourSporos();
			String fieldName = fdao.getFieldName(fieldId); 
			Field_YourSporos fys = fdao.findField(fieldName); 
			int ownerId = fys.getOwnerId(); 
			OwnerDAO_YourSporos odao = new OwnerDAO_YourSporos();			
			Owner_YourSporos owner = odao.findOwner(ownerId);

		 
	%>
<!-- ##### About Us Area Start ##### -->
  <section class="about-us-area">
    <div class="container">
		
		  <div class="row">
			<div class="col-12">
			  <div class="benefits-thumbnail mb-50">
				<img src="images\<%=fieldPhoto%>.jpg" style="width:60%">
			  </div>
			</div>
		  </div>
		  <!-- Section Heading -->
            <div class="section-heading">              
              <h2> <%= fys.getFieldName() %></h2>
			  <p>Στοιχεια Ενοικιασης</p>
            </div>
		<div class="row justify-content-center">
			<!-- Single Benefits Area -->
			<div class="col-12 col-sm-4 col-lg">
			  <div class="single-benefits-area wow fadeInUp mb-50" data-wow-delay="100ms">
				<h5>Περιοχή:</h5>
				<p><%= fys.getFieldRegion() %></p>
			  </div>
			</div>

			<!-- Single Benefits Area -->
			<div class="col-12 col-sm-4 col-lg">
			  <div class="single-benefits-area wow fadeInUp mb-50" data-wow-delay="300ms">				
				<h5>Διεύθυνση:</h5>
				<p><%= fys.getFieldAddress() %></p>
			  </div>
			</div>

			<!-- Single Benefits Area -->
			<div class="col-12 col-sm-4 col-lg">
			  <div class="single-benefits-area wow fadeInUp mb-50" data-wow-delay="500ms">				
				<h5>Ιδιοκτήτης:</h5>
				<p><%= owner.getOwnerName() %> <%= owner.getOwnerSurname() %></p>
			  </div>
			</div>

			
		</div>
		<div class="row justify-content-center">
			<!-- Single Benefits Area -->
			<div class="col-12 col-sm-4 col-lg">
			  <div class="single-benefits-area wow fadeInUp mb-50" data-wow-delay="100ms">				
				<h5>Διαθεσιμότητα:</h5>
				<p><%= fys.getFieldSpaceAvailable() %> m²</p>
			  </div>
			</div>

			<!-- Single Benefits Area -->
			<div class="col-12 col-sm-4 col-lg">
			  <div class="single-benefits-area wow fadeInUp mb-50" data-wow-delay="300ms">				
				<h5>Μηνιαία τιμή ανά m²:</h5>
				<p><%= fys.getFieldPrice() %> &euro;</p>
			  </div>
			</div>
			<!-- Single Benefits Area -->
			<div class="col-12 col-sm-4 col-lg">
			  <div class="single-benefits-area wow fadeInUp mb-50" data-wow-delay="500ms">				
				<h5>Διάρκεια ενοικίασης:</h5>
				<p><%= fys.getFieldRentingTime() %> μήνες</p>
			  </div>
			</div>				
		</div>
		<div class="row justify-content-center">
			<form action="rentingController_YourSporos.jsp" method="POST">
				<div class="col-12 col-sm-4 col-lg">
						<select id="requestRentingSpace" name="requestRentingSpace" class="form-control" required>
							<option disabled selected value> Επιλέξτε m²</option>
							<%
								for (int i =1; i <= fys.getFieldSpaceAvailable(); i++ ){
									if(i%5== 0 || i%5== 5 ){
							%>			
								<option value="<%=i%>"><%=i%></option>	
											
							<%		}
								
								} %> 

						</select>
				</div>
				<div class="col-12 col-sm-4 col-lg">
						<input type="hidden" id="requestAnswer" name="requestAnswer" value="1">
						<input type="hidden" id="fieldId" name="fieldId" value=<%=fieldId%>>
						<input type="hidden" id="ownerId" name="ownerId" value=<%=ownerId%>>
						<button type="submit" class="btn famie-btn mt-30"><span 
						class="glyphicon glyphicon-ok" aria-hidden="true"></span>  OK</button>
				</div>
					</form>
					</div>
		<br><br>
		
		<%String a = fys.getFieldAddress();%>
		<%if (a.equals("Πεύκου 54")){%>
		<!-- Παιανία Πεύκου 54 -->
		<div class="row align-items-center wow fadeInUp mb-50" data-wow-delay="300ms">
			<!-- Contact Maps -->
			<div class="col-lg-12">
				<div class="contact-maps mb-100">
					<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=%CE%A0%CE%B5%CF%8D%CE%BA%CE%BF%CF%85%2054%20paiania%20athens%20greece&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.crocothemes.net">simple one page wordpress themes</a></div><style>.mapouter{text-align:right;height:500px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}</style></div>
				</div>
			</div> 
		</div>
		
		<% }else if(a.equals("Υμηττού 23")){ %>
		<!-- Παιανία Υμηττού 23  -->
		<div class="row align-items-center wow fadeInUp mb-50" data-wow-delay="300ms">
			<!-- Contact Maps -->
			<div class="col-lg-12">
				<div class="contact-maps mb-100">
				<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=%CE%A5%CE%BC%CE%B7%CF%84%CF%84%CE%BF%CF%8D%2023%20%CE%A0%CE%B1%CE%B9%CE%B1%CE%BD%CE%AF%CE%B1%20%CE%95%CE%BB%CE%BB%CE%AC%CE%B4%CE%B1&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.crocothemes.net">simple one page wordpress themes</a></div><style>.mapouter{text-align:right;height:500px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}</style></div>
				</div>
			</div> 
		</div>
		
		<% }else if(a.equals("Ζακύνθου 10")){ %>
		<!--  Παιανία Ζακύνθου 10-->
		<div class="row align-items-center wow fadeInUp mb-50" data-wow-delay="300ms">
			<!-- Contact Maps -->
			<div class="col-lg-12">
				<div class="contact-maps mb-100">
				<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=%CE%96%CE%B1%CE%BA%CF%8D%CE%BD%CE%B8%CE%BF%CF%85%2010%20%CE%A0%CE%B1%CE%B9%CE%B1%CE%BD%CE%AF%CE%B1%20%CE%95%CE%BB%CE%BB%CE%AC%CE%B4%CE%B1&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter{text-align:right;height:500px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}</style></div>
				</div>
			</div> 
		</div>
		
		<% }else if(a.equals("Ρόδου 12")){ %>
		<!-- Ασπρόπυργος Ρόδου 12  -->
		<div class="row align-items-center wow fadeInUp mb-50" data-wow-delay="300ms">
			<!-- Contact Maps -->
			<div class="col-lg-12">
				<div class="contact-maps mb-100">
				<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=%CE%A1%CF%8C%CE%B4%CE%BF%CF%85%2012%20%CE%91%CF%83%CF%80%CF%81%CF%8C%CF%80%CF%85%CF%81%CE%B3%CE%BF%CF%82%20%CE%95%CE%BB%CE%BB%CE%AC%CE%B4%CE%B1&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter{text-align:right;height:500px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}</style></div>
				</div>
			</div> 
		</div>
		
		<% }else if(a.equals("Μιαούλη 65")){ %>
		<!-- Ασπρόπυργος Μιαούλη 65-->
		<div class="row align-items-center wow fadeInUp mb-50" data-wow-delay="300ms">
			<!-- Contact Maps -->
			<div class="col-lg-12">
				<div class="contact-maps mb-100">
					<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=%CE%9C%CE%B9%CE%B1%CE%BF%CF%8D%CE%BB%CE%B7%2065%20%CE%91%CF%83%CF%80%CF%81%CF%8C%CF%80%CF%85%CF%81%CE%B3%CE%BF%CF%82%20%CE%95%CE%BB%CE%BB%CE%AC%CE%B4%CE%B1&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter{text-align:right;height:500px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}</style></div>
				</div>
			</div> 
		</div>
		
		<% }else if(a.equals("Νίκης 32")){ %>
		<!-- Ασπρόπυργος Νίκης 32-->
		<div class="row align-items-center wow fadeInUp mb-50" data-wow-delay="300ms">
			<!-- Contact Maps -->
			<div class="col-lg-12">
				<div class="contact-maps mb-100">
					<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=%CE%9D%CE%AF%CE%BA%CE%B7%CF%82%2032%20%CE%91%CF%83%CF%80%CF%81%CF%8C%CF%80%CF%85%CF%81%CE%B3%CE%BF%CF%82%20%CE%95%CE%BB%CE%BB%CE%AC%CE%B4%CE%B1&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter{text-align:right;height:500px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}</style></div>
				</div>
			</div> 
		</div>
		
		<% }else if(a.equals("Λεωφ. Τυρταίου 25")){ %>
		<!-- Κιούρκα Λεωφ. Τυρταίου 25-->
		<div class="row align-items-center wow fadeInUp mb-50" data-wow-delay="300ms">
			<!-- Contact Maps -->
			<div class="col-lg-12">
				<div class="contact-maps mb-100">
					<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=%CE%9B%CE%B5%CF%89%CF%86.%20%CE%A4%CF%85%CF%81%CF%84%CE%B1%CE%AF%CE%BF%CF%85%2025%20%CE%9A%CE%B9%CE%BF%CF%8D%CF%81%CE%BA%CE%B1%20%CE%95%CE%BB%CE%BB%CE%AC%CE%B4%CE%B1&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter{text-align:right;height:500px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}</style></div>
				</div>
			</div> 
		</div>
		
		<% }else if(fys.getFieldAddress().equals("Ανδρούτσου 14")){ %>
		<!-- Κιούρκα Ανδρούτσου 14-->
		<div class="row align-items-center wow fadeInUp mb-50" data-wow-delay="300ms">
			<!-- Contact Maps -->
			<div class="col-lg-12">
				<div class="contact-maps mb-100">
					<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=%CE%91%CE%BD%CE%B4%CF%81%CE%BF%CF%8D%CF%84%CF%83%CE%BF%CF%85%2014%20%CE%9A%CE%B9%CE%BF%CF%8D%CF%81%CE%BA%CE%B1%20%CE%95%CE%BB%CE%BB%CE%AC%CE%B4%CE%B1&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter{text-align:right;height:500px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}</style></div>
				</div>
			</div> 
		</div>
		
		<% }else if(a.equals("Αγίας Μαρίνας 32")){ %>
		<!-- Κιούρκα Αγίας Μαρίνας 32-->
		<div class="row align-items-center wow fadeInUp mb-50" data-wow-delay="300ms">
			<!-- Contact Maps -->
			<div class="col-lg-12">
				<div class="contact-maps mb-100">
					<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=%CE%9A%CE%B9%CE%BF%CF%8D%CF%81%CE%BA%CE%B1%20%CE%91%CE%B3%CE%AF%CE%B1%CF%82%20%CE%9C%CE%B1%CF%81%CE%AF%CE%BD%CE%B1%CF%82%2032&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net"></a></div><style>.mapouter{text-align:right;height:500px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}</style></div>
				</div>
			</div> 
		</div>
		
		<% }else if(a.equals("Χασιώτη 13")){ %>
		<!--Μαρκόπουλο Χασιώτη 13-->
		<div class="row align-items-center wow fadeInUp mb-50" data-wow-delay="300ms">
			<!-- Contact Maps -->
			<div class="col-lg-12">
				<div class="contact-maps mb-100">
					<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=%CE%A7%CE%B1%CF%83%CE%B9%CF%8E%CF%84%CE%B7%2013%20%CE%9C%CE%B1%CF%81%CE%BA%CF%8C%CF%80%CE%BF%CF%85%CE%BB%CE%BF%20%CE%95%CE%BB%CE%BB%CE%AC%CE%B4%CE%B1&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter{text-align:right;height:500px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}</style></div>
				</div>
			</div> 
		</div>
		
		<% }else if(a.equals("Κέδρων 24")){ %>
		<!-- Μαρκόπουλο Κέδρων 24-->
		<div class="row align-items-center wow fadeInUp mb-50" data-wow-delay="300ms">
			<!-- Contact Maps -->
			<div class="col-lg-12">
				<div class="contact-maps mb-100">
					<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=%CE%9A%CE%AD%CE%B4%CF%81%CF%89%CE%BD%2024%20%CE%9C%CE%B1%CF%81%CE%BA%CF%8C%CF%80%CE%BF%CF%85%CE%BB%CE%BF%20%CE%95%CE%BB%CE%BB%CE%AC%CE%B4%CE%B1&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter{text-align:right;height:500px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}</style></div>
				</div>
			</div> 
		</div>
		
		<% }else { %>
		<!-- Μαρκόπουλο Ανθέων 6-->
		<div class="row align-items-center wow fadeInUp mb-50" data-wow-delay="300ms">
			<!-- Contact Maps -->
			<div class="col-lg-12">
				<div class="contact-maps mb-100">
					<div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=%CE%91%CE%BD%CE%B8%CE%AD%CF%89%CE%BD%206%20%CE%9C%CE%B1%CF%81%CE%BA%CF%8C%CF%80%CE%BF%CF%85%CE%BB%CE%BF%20%CE%95%CE%BB%CE%BB%CE%AC%CE%B4%CE%B1&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter{text-align:right;height:500px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}</style></div>
				</div>
			</div> 
		</div>
		<%}%>
	
	</div> 
		
		
    </div>
  </section>
  <!-- ##### About Us Area End ##### -->
		
		
		
		
	
		<%@ include file ="footer_YourSporos.jsp"%>
	
	</body>
	
</html>