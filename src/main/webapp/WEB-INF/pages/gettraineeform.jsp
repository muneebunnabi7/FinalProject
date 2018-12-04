<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Applicants</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bootstrap/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="bootstrap/main_styles.css">
<link rel="stylesheet" type="text/css" href="bootstrap/responsive.css">
<link rel="stylesheet" type="text/css" href="css/test.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">


<style>
/* Add a gray background color with some padding */
.box {
    font-family: Arial;
    padding: 10px;
    width:98%;
    margin-top: 200px;
    margin-left: 220px;
    margin-right: 40px;
    background-color: #adcbe3;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
    float: left;
    width: 49%;
    height:80%;
     padding-left: 10px;
}
.rightcolumn{
float: left;
    width: 49%;
    height:80%;
     padding-left: 10px;
}


/* Add a card effect for articles */
.card {
     background-color: white;
     padding: 20px;
     margin-top: 20px;
     
     
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 900px) {
    .leftcolumn, .rightcolumn {   
        width: 100%;
        padding: 0;
    }
   }
   
   /* Style buttons */
.btn {
  background-color: MediumSeaGreen;
  border: none;
  color: white;
  padding: 12px 30px;
  cursor: pointer;
  font-size: 20px;
}

/* Darker background on mouse-over */
.btn:hover {
  background-color: RoyalBlue;
}

</style>
</head>
<body>

<div class="super_container">

	<!-- Header -->

	<header class="header">
			
		<!-- Top Bar -->
		<div class="top_bar">
			<div class="top_bar_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="top_bar_content d-flex flex-row align-items-center justify-content-start">
								<ul class="top_bar_contact_list">
									<li><div class="topnav" id="myTopnav" ><a href="index.jsp">Home</a></div></li>
								</ul>
								<div class="top_bar_login ml-auto">
									<div class="topnav" id="myTopnav"><a href="logout">Logout</a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>				
		</div>
		
		
		

		<!-- Header Content -->
		<div class="header_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_content d-flex flex-row align-items-center justify-content-start">
							<div class="logo_container">
								<a href="#"  >
									 <a href="#"  >
									 <div> <p  class="logo_text"> <img src="images/logo.jfif" height="50px" width="50px"> </p></div>   
								</a>   
								</a>
							</div>
							&nbsp;
							&nbsp;
							&nbsp;
							&nbsp;
							<p> <h2>Ministry Of Women And Child Development</h2></p>  

						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
				<div class="top_bar">
			<div class="top_bar_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="top_bar_content d-flex flex-row align-items-center justify-content-start">
								<ul class="top_bar_contact_list">
									<nav class="main_nav_contaner ml-auto">
								<ul class="topnav" id="myTopnav" align=center;>
									<li><a href="habout">About Us</a></li>
									<li><a href="hleg">Legislations & policy</a></li>
									<li><a href="hstep">STEP Scheme</a></li>
									<li><a href="hngo">NGOs</a></li>
									<li><a href="hadmin">Admin</a></li>
									<li><a href="hfaq">FAQ</a></li>
								
								</ul>
							</nav>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>				
		</div>

		<!-- Header Search Panel -->
		<div class="header_search_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_search_content d-flex flex-row align-items-center justify-content-end">
							<form action="#" class="header_search_form">
								<input type="search" class="search_input" placeholder="Search" required="required">
								<button class="header_search_button d-flex flex-column align-items-center justify-content-center">
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>			
		</div>			
	</header>

	<!-- Menu -->

	<div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
		<div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
		<div class="search">
			<form action="#" class="header_search_form menu_mm">
				<input type="search" class="search_input menu_mm" placeholder="Search" required="required">
				<button class="header_search_button d-flex flex-column align-items-center justify-content-center menu_mm">
					<i class="fa fa-search menu_mm" ="true"></i>
				</button>
			</form>
		</div>
		
	</div>
	
	<!-- Home -->

	<div class="home">
		
				<!-- Home Slider Item -->
				<div class="owl-item">
				
				<!-- Milestone -->
							<div class="milestone">

	<div class="box">	
	<h5 align="center">View Trainee/ NGO Details</h5>				
<div class="row">
  <div class="leftcolumn">
    <div class="card">
     <h4 align="center">View Trainee</h4>
     <div class="card">
      <center>
     <h6>Click here to view Trainee Details</h6>
     <form action="information">
     <button class="btn" type="submit">TRAINEE</button>
     </form>
     </center>
    </div>
    
  	</div>
   </div>
   <div class="rightcolumn">
    <div class="card">
     <h4 align="center">View NGO</h4>
     <div class="card">
      <center>
     <h6>Click here to view NGO Details</h6>
     <form action="NgoInfo">
    <button class="btn" type="submit">NGO</button>
     </form>
     </center>
    </div>
    
  	</div>
   </div>
</div>
    </div>
	</div>
</div>
</div>
</div>
</div>
</div>
</div>
		
	<!-- Footer -->

	
			<div class="row copyright_row">
				<div class="col">
					<div class="copyright d-flex flex-lg-row flex-column align-items-center justify-content-start">
						<div class="cr_text"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
						<div class="ml-lg-auto cr_links">
							<ul class="cr_list">
								<li><a href="#">Copyright notification</a></li>
								<li><a href="#">Terms of Use</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>