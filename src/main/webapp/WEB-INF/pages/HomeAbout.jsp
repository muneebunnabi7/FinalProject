<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MWCD</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bootstrap/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="bootstrap/main_styles.css">
<link rel="stylesheet" type="text/css" href="bootstrap/responsive.css">
<link rel="stylesheet" type="text/css" href="css/test.css"><script src="js/test.js"></script>

<style>
/* Add a gray background color with some padding */
.box {
    font-family: Arial;
    padding: 10px;
    margin-left: 260px;
    margin-right: 10px;
    background-color: #adcbe3;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
    float: left;
    width: 70%;
     padding-left: 10px;
}

/* Right column */
.rightcolumn {
    float: left;
    width: 20%;
    padding-left: 10px;
}

/* Fake image */
.fakeimg {
    
    width: 80%;
    padding: 20px;
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
@media screen and (max-width: 700px) {
    .leftcolumn, .rightcolumn {   
        width: 75%;
        padding: 0;
    }
}
</style>
</head>
<body>
<form action="Home">
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
									<div class="topnav" id="myTopnav" ><a href="logout">Logout</a></div>
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
									<a href="habout">About Us</a>
									<a href="hleg">Legislations & policy</a>
									<a href="hstep">STEP Scheme</a>
									<a href="hngo">NGOs</a>
									<a href="hadmin">Admin</a>
									<a href="hfaq">FAQ</a>
									<a href="javascript:void(0);" class="icon" onclick="myFunction()">
								<i class="fa fa-bars"></i></a>
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
					<i class="fa fa-search menu_mm" aria-hidden="true"></i>
				</button>
			</form>
		</div>
		
	</div>
	
	<!-- Home -->

	<div class="home">
		
				<!-- Home Slider Item -->
				<div class="owl-item">
				
				
							<!-- Milestone -->
							<div class="milestone"><br><br><br><br><br><br><br><br>
								
								
								<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">About the Ministry</a>
  <a href="#">Vision And Mission</a>
  <a href="#">Umbrella ICDS</a>
  <a href="#">Policy Initiatives</a>
</div>

<!-- Use any element to open the sidenav -->
<div class="icon"><span onclick="openNav()"> <b>MENU</b></span></div>


<!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
<div id="main">

<div class="content"></div>

</div>
							
<div class="box">					
<div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h4>Introduction</h4>
      <h5>Ministry of Women And Child Development</h5>
      <div class="fakeimg" style="height:200px;"><img src="images/we1.jfif"></div>
      <p>The Department of Women and Child Development, Government of India, came into existence as a separate Ministry 
      with effect from 30th January, 2006, earlier since 1985 it was a Department under the Ministry of Human Resources 
      Development.</p>
      <p>The Ministry was constituted with the prime intention of addressing gaps in State action for women and children 
      for promoting inter-Ministerial and inter-sectoral convergence to create gender equitable and child-centred legislation, 
      policies and programmes.</p>
    </div>
    <div class="card">
      <h4>Women's Empowerment and Gender Equity</h4>
      <p><li>National Commission for Women</li>
      <li>Rashtriya Mahila Kosh (RMK)</li>
      <li>The Juvenile Justice (Care And Protection of Children)Act, 2000</li></p>
      
    </div>
  </div>
  <div class="rightcolumn">
    <div class="card">
      <h5>In Focus</h5>
      
      <p><li>Participation Form for Women of India Organic Festival, 2018</li>
      <li>Significant Achievements Booklet, 2014-2018</li></p>
    </div>
    <div class="card">
      <h5>Whats New</h5>
      <p><li>Last date for applying for Nari Shakti Puraskar, 2018 is extended to 10th December, 2018</li>
      <li> Advertisement for Short Terms Internship Programme of 2 Months duration in MWCD -2018-2019
	</li></p>
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
<script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script>
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
</form>
</body>
</html>