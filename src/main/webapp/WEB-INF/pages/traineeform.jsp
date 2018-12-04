<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<html>
	<head>
		<meta charset="utf-8">
		<title>FormWizard_v9</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<link rel="stylesheet" type="text/css" href="css/default.css"/>

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

		<!-- DATE-PICKER -->
		<link rel="stylesheet" href="vendor/date-picker/css/datepicker.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
	
	
		<div class="wrapper">
            
        		 <form method="POST" action="Register" id="wizard" enctype="multipart/form-data">
                <h4></h4>
  
                    <h3>Trainee Application Form</h3>
                    <h5>Part-A</h5>
                	<div class="form-row">
                        <div class="form-col">
                            <label for="">
                                First Name
                            </label>
                            <div class="form-holder">
                                
                                <input type="text" class="form-control" name="fname" placeholder="First Name">
                            </div>
                        </div>
                        <div class="form-col">
                            <label for="">
                                Middle Name
                            </label>
                            <div class="form-holder">
                                
                                <input type="text" class="form-control" name="mname" placeholder="Middle Name" >
                            </div>
                        </div>
                        <div class="form-col">
                            <label for="">
                                Last Name
                            </label>
                            <div class="form-holder">
                                
                                <input type="text" class="form-control" name="lname" placeholder="Last Name" >
                            </div>
                        </div>
                    </div>
                        <div class="form-row">
                         <div class="form-col">
                            <label for="">
                                Date of Birth
                            </label>
                            <div class="form-holder">
                               
                                <input type="date" class="form-control datepicker-here" name="dob" data-language='en' data-date-format="dd - mm - yyyy" id="dp1">
                            </div>
                			</div>
                  		  <div class="form-col">
                            <label for="">
                               Aadhar Number
                            </label>
                            <div class="form-holder">
                               
                                <input type="text" class="form-control" name="aadhar" placeholder="Aadhar Number" >
                            </div>
                        </div>
                    </div>

               		<div class="form-row">
                        <div class="form-col">
                            <label for="">
                                Username
                            </label>
                            <div class="form-holder">
                                
                                <input type="text" class="form-control" name="uname" placeholder="Username" >
                            </div>
                        </div>
              
                        <div class="form-col">
                            <label for="">
                                Password
                            </label>
                            <div class="form-holder">
                               
                                <input type="password" class="form-control" name="pass" placeholder="Password" >
                            </div>
                        </div>
                        
                         <div class="form-col">
                            <label for="">
                               Question: <select name ="question">
                                  <option value="What is your birthplace">What is your birthplace</option>
                                  <option value="What is your favorite game">What is your favorite game</option>
                                  <option value="What is your nick name">What is your nick name</option>
                                  <option value="what is your deepest secrit">what is your deepest secrit</option>
                                  </select>
                            </label>
                            <div class="form-holder">
                               
                              <input type="text" class="form-control" name="ans" placeholder="Answer" >
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-col">
                            <label for="">
                                Email ID
                            </label>
                            <div class="form-holder">
                                
                                <input type="text" class="form-control" name="email" placeholder="Email ID">
                            </div>
                        </div>

                        <div class="form-col">
                            <label for="">
                                Mobile Number
                            </label>
                            <div class="form-holder">
                                
                                <input type="text" class="form-control" name="phone" placeholder="Mobile Number" >
                            </div>
                        </div>
                    </div>
                      
             
                
                <div>
                	<h3>Residential address</h3>
                      <h5>Part-B</h5>
                    <div class="form-row">
                        <div class="form-col">
                            <label for="">
                                City
                            </label>
                            <div class="form-holder">
                               
                                <input type="text" class="form-control" name="city" placeholder="City">
                            </div>
                        </div>
                        <div class="form-col">
                            <label for="">
                                State
                            </label>
                            <div class="form-holder">
                                
                                <input type="text" class="form-control" name="state" placeholder="State">
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        
                        <div class="form-col">
                            <label for="">
                                Postcode / Zip
                            </label>
                            <div class="form-holder password">
                                
								<input type="tel" class="form-control" name="pin" placeholder="Pin" >      
								    </div>
                        </div>
                    </div>
                </div>

              
                <div>

                    <h3 style="margin-bottom: 37px;">Course Details</h3>
                      <h5>Part-C</h5>
                        <div class="form-row">
                        
                        <div class="form-col">
                            <label for="">
                                Course Name
                            </label>
                            <div class="form-holder">
                                
                                <select name="coursename" class="form-control">
                                <option value="Null">Select Course:</option>
    <option value="Agriculture-Faring" class="form-control">Agriculture-Organic Farming</option>
    <option value="Agriculture-organic Farming" class="form-control">Agriculture-Production of Bio-Fertilizers</option>
    <option value="Agriculture-Vermi-Composting " class="form-control">Agriculture-Vermi-Composting</option>
    <option value="Tailoring-Fitting and atteration" class="form-control">Tailoring-Fitting and alteration</option>
    <option value="Tailoring-Fitting and atteration" class="form-control">Tailoring-Simple Cutting and Stitching</option>
    <option value="Tailoring-Fitting and atteration" class="form-control">Stitching-Hand Stitches</option>
    <option value="Tailoring-Fitting and atteration" class="form-control">Stitching-Machine Stitches</option>
    <option value="Tailoring-Fitting and atteration" class="form-control">Stitching-Decorative Stitches</option>
    </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-col">
                            <label for="">
                                Course Duration
                            </label>
                            <div class="form-holder">
                             
                                <input type="text" class="form-control" name="duration" placeholder="Duration in months" >
                            </div>
                        </div>
                    

                        <div class="form-col">
                            <label for="">
                               NGO  
                            </label>
                            <div class="form-holder">
                               <select name="ngo" class="form-control">
                               <option value="ngo">Select Ngo Name:</option>
    <option value="Organic Farming Asssociation of India, Goa">Agriculture-OFAI-Mumbai</option>
    <option value="SKVG Handicrafts, Nainital">Agriculture-SKVZ-Nainital</option>
    <option value="BGS-Tailoring, Uttarakhand">Tailoring -BGS-Utrakhand</option>
    </select><br>
                            </div>
                        </div>
                    </div>
                </div>



                    <div>
                    <h3>Document Upload</h3>
                      <h5>Part-d</h5>
                      <div class="form-col">
                        <label for="">
                               Upload your document: 
                            </label> <input type="file" name="file"><br /> 

                   </div>
                   <br>
                   <br>
                   <br>


                   <button type="submit"  class="button" value="Submit">Submit</button>
            </form>

		</div>

		<script src="js/jquery-3.3.1.min.js"></script>
		
		<!-- JQUERY STEP -->
		<script src="js/jquery.steps.js"></script>

		<!-- DATE-PICKER -->
		<script src="vendor/date-picker/js/datepicker.js"></script>
		<script src="vendor/date-picker/js/datepicker.en.js"></script>

		<script src="js/main.js"></script>

</div>
</body>
</html>