<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
   
<!DOCTYPE html> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>CARDZILLA-Smart Card for Smart People</title>
<link rel = "icon" href ="images/logo.png"  type = "image/x-icon" /> 
<link rel="stylesheet" href="mystyle.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

<nav class=" navbar primarybackground shadow-sm m-1 bg-white rounded">
  <a class="nav-link m-0 p-0" href="index.jsp"><h2>CARDZILLA</h2></a>
  <div id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item register-button">
        <a class="nav-link" href="register.jsp"><b>Register</b></a>
      </li>
    </ul>
  </div>  
</nav>
<nav class="navbar navbar-expand-sm m-0 p-0 primarybackground underline">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="index.jsp">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Aboutus.jsp">About us</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="contactus.jsp">Contact us</a>
    </li>
  </ul>
</nav>
<hr class="new1 m-0 p-0">
<img src="images/aboutusback.jpg" alt="background" width="100%" height="450px"/>
<br><br>
<div>
<ul class="aboutus-main">
           <li>
            <h1>Our Story</h1>
            <p  style="margin-bottom:40px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
              Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus,
              luctus nec ullamcorper mattis, pulvinar dapibus leo. Lorem ipsum dolor sit
              amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper 
              mattis, pulvinar dapibus leo. Lorem ipsum dolor sit amet, consectetur 
              adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar 
              dapibus leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
              Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus,
              luctus nec ullamcorper mattis, pulvinar dapibus leo. Lorem ipsum dolor si</p>
              <h1>Our Aim</h1>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
              Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus,
              luctus nec ullamcorper mattis, pulvinar dapibus leo. Lorem ipsum dolor sit
              amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper 
              mattis, pulvinar dapibus leo. Lorem ipsum dolor sit amet, consectetur 
              adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar 
              dapibus leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
              Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus,
              luctus nec ullamcorper mattis, pulvinar dapibus leo. Lorem ipsum dolor si</p></li>
             
              <li><img src="images/aboutus.jpg" alt="Our goals" width="400px" height="490px"  /></li>
              </ul>
             </div>
             <br>
             <h1 style="text-align:center;font-weight:bold;text-decoration:underline">Why choose us?</h1>
             <br>
             <div style="display:flex;justify-content:space-around">
             <div><img src="images/experts.png" alt="expertteam" height="90px" width="90px" />
             <p style="font-weight:bold">Expert Team</p>
             </div>
             <div><img src="images/delivery-truck.png" alt="ontime delivery" height="90px" width="90px" />
             <p style="font-weight:bold;">Ontime Delivery</p>
             </div>
             <div><img src="images/design.png" alt="creative and unique design" height="90px" width="90px" />
             <p style="font-weight:bold">Creative and Unique Design</p>
             </div>
             </div>
             
        <br><br>
     <h1 style="text-align:center;font-weight:bold;text-decoration:underline">Our Product features</h1>
     <br>   
<div class="timeline">
  <div class="container-first left">
    <div class="content">
      <h2>Carry in Pocket</h2>
      <p>Lorem ipsum dolor sit amet, quo ei simul congue exerci, ad nec admodum perfecto mnesarchum, vim ea mazim fierent detracto. Ea quis iuvaret expetendis his, te elit voluptua dignissim per, habeo iusto primis ea eam.</p>
    </div>
  </div>
  <div class="container-first right">
    <div class="content">
      <h2>Clickable</h2>
      <p>Lorem ipsum dolor sit amet, quo ei simul congue exerci, ad nec admodum perfecto mnesarchum, vim ea mazim fierent detracto. Ea quis iuvaret expetendis his, te elit voluptua dignissim per, habeo iusto primis ea eam.</p>
    </div>
  </div>
  <div class="container-first left">
    <div class="content">
      <h2>Nature Friendly</h2>
      <p>Lorem ipsum dolor sit amet, quo ei simul congue exerci, ad nec admodum perfecto mnesarchum, vim ea mazim fierent detracto. Ea quis iuvaret expetendis his, te elit voluptua dignissim per, habeo iusto primis ea eam.</p>
    </div>
  </div>
  <div class="container-first right">
    <div class="content">
      <h2>Money Saving</h2>
      <p>Lorem ipsum dolor sit amet, quo ei simul congue exerci, ad nec admodum perfecto mnesarchum, vim ea mazim fierent detracto. Ea quis iuvaret expetendis his, te elit voluptua dignissim per, habeo iusto primis ea eam.</p>
    </div>
  </div>
  <div class="container-first left">
    <div class="content">
      <h2>Add to Calender function</h2>
      <p>Lorem ipsum dolor sit amet, quo ei simul congue exerci, ad nec admodum perfecto mnesarchum, vim ea mazim fierent detracto. Ea quis iuvaret expetendis his, te elit voluptua dignissim per, habeo iusto primis ea eam.</p>
    </div>
  </div>
  <div class="container-first right">
    <div class="content">
      <h2>Unlimited Share</h2>
      <p>Lorem ipsum dolor sit amet, quo ei simul congue exerci, ad nec admodum perfecto mnesarchum, vim ea mazim fierent detracto. Ea quis iuvaret expetendis his, te elit voluptua dignissim per, habeo iusto primis ea eam.</p>
    </div>
  </div>
  <div class="container-first left">
    <div class="content">
      <h2>Accesible Lifetime</h2>
      <p>Lorem ipsum dolor sit amet, quo ei simul congue exerci, ad nec admodum perfecto mnesarchum, vim ea mazim fierent detracto. Ea quis iuvaret expetendis his, te elit voluptua dignissim per, habeo iusto primis ea eam.</p>
    </div>
  </div>  
</div>
<%@include file="footer.jsp" %>
</body>
</html>