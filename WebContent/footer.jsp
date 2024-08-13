<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Footer</title>
<link rel = "icon" href ="logo.png"  type = "image/x-icon" /> 
<link rel="stylesheet" href="mystyle.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
 
</head>
<body>
<footer>
	<div class="footer1 shadow-lg ">
	<h3>Subscribe our newslatter for daily exclusive offers!</h3>
	<hr class="new2">
	<div class="subscribe">
			<form id="sub-form" action="servlet/Subscribe" method="post">
			<input type="text" name="name" placeholder="Enter you Name"   class="input shadow-lg" required/><br>
			<input type="email" id="email" name="email" placeholder="Enter your Email address..."   class="input shadow-lg" required/><br>
		
			<input id="submit-btn1" type="submit" name="subscribe" placeholder="Subscribe" class="subs-us shadow-lg submit-button"/>
			</form>
			<div id="loader1" style="text-align:center;display:none"><p>please wait...........<span class="fa fa-circle-o-notch fa-spin"></span></p></div>
	</div>
</div>
	<div class="footer2">
	<br>
	<div class="footer2-content">
	<ul>
	  <li><h4>Our Services</h4></li>
	  <li>Wedding invitation cards</li>
	  <li>Aniversary invitation Cards</li>
	  <li>Special Ocations</li>
	  <li>Invitation Videos</li>
	  <li>Visiting Cards</li>
	</ul>
	<ul>
	<li><h4>Connect with us</h4></li>
	<li ><a href="tel:+918006357434" style="color:white">+918006357434</a></li>
	
	<li><a href="mailto:ram8006357434@gmail.com" style="color:white">ram8006357434@gmail.com</a></li>

	<li style="display:flex;padding:0px"><a href="https://www.facebook.com/profile.php?id=100040469722454&mibextid=ZbWKwL"target="_blank"><img src="images/facebook1.png" height="30px" width="30px" class="shadow-lg" style="margin-left:0px!important"/></a>
	<a href="https://instagram.com/ram_singh800?igshid=OTk0YzhjMDVlZA=="target="_blank"><img src="images/Instagram.png"  height="30px" width="30px"  class="shadow-lg" /></a>
	 <a href="#"target="_blank"><img src="images/twitter.png" height="30px" width="30px"  class="shadow-lg" /></a>
	  <a href="https://www.linkedin.com/in/ram-kumar-1a43a925a"target="_blank"><img src="images/linkedin.png" height="30px" width="30px"   class="shadow-lg" /></a></li>
     </ul>
	</div>
</div>


   <div class="footer3 ">
                  <div><pre  style="color:white"><span class="fa fa-globe"></span> India</pre></div>
				  <div><pre  style="color:white"> ****Developed By Ram Kumar****</pre></div>
                 
                  <div><pre style="color:white"><span class="fa fa-copyright"></span> 2023 CARDZILLA. All Rights Reserved    <a href="#"  style="color:white">Privacy</a>    <a href="#"  style="color:white">Terms of use</a></pre></div>
                  
  </div>
</footer>


	<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script>
$(document).ready(function(){
	console.log("loaded......")
	
	$('#sub-form').on('submit',function(event){
		event.preventDefault();
		
		let form=new FormData(this);
		
		$("#submit-btn1").hide();
		$("#loader1").show();
		//send subscribe servlet
		$.ajax({
			url:"Subscribe",
			type: 'POST',
			data: form,
			success: function(data, textStatus, jqXHR){
				
				console.log(data)
				$("#submit-btn1").show();
				$("#loader1").hide();
				
				if(data.trim()==='done'){
					
				
				swal("Subscribed....click on OK")
				.then((value) => {
				  window.location="#"
				});
				
				}
				else{
				swal(data);	
					
				}	
				},
			error: function(jqXHR, textStatus, errorThrown){
				console.log(jqXHR)
				$("#submit-btn1").show();
				$("#loader1").hide();
				
				swal("Something went Wrong......try again")
			
			},
			processData: false,
			contentType: false
		});
		
		
		
	});
	
	
});
</script>
</body>
</html>