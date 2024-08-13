<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel ="icon" href="images/logo.png"  type="image/x-icon" />
<title>CARDZILLA-Smart Card for Smart People</title>

<link rel="stylesheet" href="mystyle.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

</head>
<body>

	<nav class=" navbar primarybackground shadow-sm m-1 bg-white rounded">
		<a class="nav-link m-0 p-0" href="index.jsp"><h2>CARDZILLA</h2></a>
		<div id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item register-button"><a class="nav-link"
					href="register.jsp"><b>Register</b></a></li>
			</ul>
		</div>
	</nav>
	<nav
		class="navbar navbar-expand-sm m-0 p-0 primarybackground underline">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="Aboutus.jsp">About
					us</a></li>
			<li class="nav-item"><a class="nav-link" href="contactus.jsp">Contact
					us</a></li>
		</ul>
	</nav>
	<hr class="new1 m-0 p-0">

	<img src="images/register.jpg" alt="background" width="100%"
		height="450px" />
	<br>
	<br>

	<h3 style="margin-left:350px;font-family:cursive;">
		Book Your Card Online!&#X1F600</h3>
	<p style="margin-left:350px">Let give us chance to create your dream....</p>
	<div style="text-align: center" class="contactus-form">

		<form id="reg-form" action="servlet/Booking" method="post">
		<input type="text" name="name" placeholder="Name" style="background-color: #f0f0f5;margin-bottom:5px" required/><br> 
			<input type="email"  id="email" name="email" placeholder="Email Address" style="margin-bottom:5px;background-color: #f0f0f5;" required/><br>
			<input type="number" name="phone" placeholder="PhoneNo." style="background-color: #f0f0f5;margin-bottom:20px;" required/><br>
			<select style="width:300px;height:35px;border:none;background-color:#f0f0f5;" name="cardtype" required>
			 <option value="" disabled selected="selected">Card Type</option>
		    <option value="Special">Special</option>
			<option value="Videos">Videos</option>
			<option value="Wishes">Wishes</option>
			<option value="Celebrations">Celebrations</option>
			<option value="BabyShower">Baby Shower</option>
			<option value="Birthday">Birthday</option>
			<option value="Anniversary">Anniversary</option>
			<option value="Wedding">Wedding</option>
			<option value="Business">Business</option>
			<option value="Custom">Custom<option>
			</select>
			<br> <input type="submit" name="submit"  class="submit-button" id="submit-btn2" />
		</form>
	</div>
	
	<div style="text-align:center;display:none" id="loader2">
	<p>please wait...........<span class="fa fa-circle-o-notch fa-spin"></span></p>
	<img src="images/rename.gif" height="120" width="120"/>
	</div>
	<br>
	<br>
	<%@include file="footer.jsp"%>
	
		<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script>
$(document).ready(function(){
	console.log("loaded......")
	
	$('#reg-form').on('submit',function(event){
		event.preventDefault();
		
		let form=new FormData(this);
		
		$("#submit-btn2").hide();
		$("#loader2").show();
		//send subscribe servlet
		$.ajax({
			url:"Booking",
			type: 'POST',
			data: form,
			success: function(data, textStatus, jqXHR){
				
				console.log(data)
				$("#submit-btn2").show();
				$("#loader2").hide();
				
				if(data.trim()==='done'){
					
				
				swal("Thanks for Booking Your Card, Our executive will contact you soon!")
				.then((value) => {
				  window.location="index.jsp"
				});
				
				}
				else{
				swal(data);	
					
				}	
				},
			error: function(jqXHR, textStatus, errorThrown){
				console.log(jqXHR)
				$("#submit-btn2").show();
				$("#loader2").hide();
				
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