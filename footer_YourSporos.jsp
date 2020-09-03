<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="apperror_YourSporos.jsp"%>

<style>
.footer{
    left: 0;
    bottom: 0;
    width: 100%;
	
    background-color:#d9ffb3;
    color: black;
    text-align: center;
	font-family:Georgia;
}
.btn{
	
  border: none;
  text-align: center;
  text-decoration: none;
  
}
</style>
<!-- footer -->
		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
					
						<form id = "contact-form" class="form-signin"  onsubmit = "checkHTML()" name = "contact-form" action = "mailto: yoursporos@otenet.gr ? Subject = Question" target="_top" method="POST"  enctype="text/plain">
							<div class="container-fluid bg-grey">
								<h2 class="text-center">CONTACT</h2>
								<div class="row">
									<div class="col-sm-5">
										<p>DON'T BE SHY <br>Say hello!<br><br>Contact us and we'll get back to you within 24 hours.</p>
										<p><span class="glyphicon glyphicon-map-marker"></span> Athens,Greece</p>
										<p><span class="glyphicon glyphicon-phone"></span> +30 21005151515</p>
										<p><span class="glyphicon glyphicon-envelope"></span> yoursporos@otenet.gr</p>
									</div>
										<div class="col-sm-6">
											<div class="row">
												<div class="col-sm-6 form-group">
													<input class="form-control" id="contact_name" name="first_name" placeholder="Name" type="text" required>
													
												</div>
												<div class="col-sm-6 form-group">
													<input class="form-control" id="contact_email" name="email" placeholder="Email" type="email" required>
													
												</div>
											</div>
											<textarea class="form-control" id="contact_comments" name="message" placeholder="Comment" rows="5"></textarea><br>

											<div class="row">
												<div class="col-sm-12 form-group">
													<button class="btn famie-btn  mt-60 pull-right "  type="submit" value = "Submit" id = "submit" name = "submit">Send</button>
												</div>
											</div>
										</div>
								</div>
							</div>
						</form>
						
						<p class="text-center">&copy; Copyright 2018. All Rights Reserved. </p>
					</div>
				</div>
			</div>
		</footer>
		<!-- End footer -->
		
		<!-- =================== Place all javascript at the end of the document so the pages load faster =================== -->
		<!-- ##### All Javascript Files ##### -->
  <!-- jquery 2.2.4  -->
  
  
	<script>
$(function()
{
    function after_form_submitted(data)
    {
        if(data.result == 'success')
        {
            $('form#reused_form').hide();
            $('#success_message').show();
            $('#error_message').hide();
        }
        else
        {
            $('#error_message').append('<ul></ul>');

            jQuery.each(data.errors,function(key,val)
            {
                $('#error_message ul').append('<li>'+key+':'+val+'</li>');
            });
            $('#success_message').hide();
            $('#error_message').show();

            //reverse the response on the button
            $('button[type="button"]', $form).each(function()
            {
                $btn = $(this);
                label = $btn.prop('orig_label');
                if(label)
                {
                    $btn.prop('type','submit' );
                    $btn.text(label);
                    $btn.prop('orig_label','');
                }
            });

        }//else
    }

	$('#reused_form').submit(function(e)
      {
        e.preventDefault();

        $form = $(this);
        //show some response on the button
        $('button[type="submit"]', $form).each(function()
        {
            $btn = $(this);
            $btn.prop('type','button' );
            $btn.prop('orig_label',$btn.text());
            $btn.text('Sending ...');
        });


                    $.ajax({
                type: "POST",
                url: 'handler.php',
                data: $form.serialize(),
                success: after_form_submitted,
                dataType: 'json'
            });

      });
});
</script>









  
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
  
  