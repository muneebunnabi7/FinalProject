<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">


<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: black;
    width: 50%;
     vertical-align: middle;
   margin-left: 300px;
}

* {
    box-sizing: border-box;
}

/* Add padding to containers */
.container {
    padding: 10px;
    background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}
input[type=date] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}
input[type="tel"] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}
#drop{
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;

}

#change{
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;

}
#course,#ngo,#document
{
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;

}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
</style>
</head>
<body>

<form action="Register"  method="POST" enctype="multipart/form-data">
  <div class="container">
    <h1><i class="fas fa-sign-out-alt"></i>Registration form</h1>
    <p style=text-align center;>Personal Details</p>
    <hr>
 

    <label for="firstname"><b>First Name</b></label>
    <input type="text" placeholder="First Name" name="fname" required>

    <label for="middlename"><b>Middle Name</b></label>
    <input type="text" placeholder="Middle Name" name="mname" required>

    <label for="lastname"><b>Last Name</b></label>
    <input type="text" placeholder="Last Name" name="lname" required>


    <label for="dob"><b>Date Of Birth</b></label>
    <input type="date" placeholder="DOB" name="dob" required><br>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br>

    <label for="username"><b>UserName</b></label>
    <input type="text" placeholder="UserName" name="uname" required><br>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password"  required><br>
   
    <label for="aadhar"><b>Aadhar Number</b></label>
    <input type="tel" placeholder="Aadhar Number" name="aadhar" required><br>

    <label for="phone number"><b>Phone Number</b></label>
    <input type="tel" placeholder="Phone Number" name="phone" required maxlength="14"><br>

     <p style=color black>Security Details</p>
     
     Question: <select name ="question">
                        <option value="What is your birthplace">What is your birthplace</option>
                         <option value="What is your favorite game">What is your favorite game</option>
                         <option value="What is your nick name">What is your nick name</option>
                         <option value="what is your deepest secrit">what is your deepest secrit</option>
    </select>

    <input type="text"  name="ans" placeholder="Answer" >

     <p style=color red>Residential address</p>

     <div id="drop">
         <label for="state"><b>State</b></label>
          <select name ="state">
                        <option value="Andra Pradesh">Andra Pradesh</option>
                         <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                         <option value="Assam">Assam</option>
                         <option value="Bihar">Bihar</option>
                         <option value="Chhattisgarh">Chhattisgarh</option>
                         <option value="Goa">Goa</option>
                         <option value="Gujarat">Gujarat</option>
                         <option value="Haryana">Haryana</option>
                         <option value="Himachal Pradesh">Himachal Pradesh</option>
                         <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                         <option value="Jharkhand">Jharkhand</option>
                         <option value="Karnataka">Karnataka</option>
                         <option value="Kerala">Kerala</option>
                         <option value="Madya Pradesh">Madya Pradesh</option>
                         <option value="Maharashtra">Maharashtra</option>
                         <option value="Manipur">Manipur</option>
                         <option value="Meghalaya">Meghalaya</option>
                         <option value="West Bengal">West Bengal</option>

               </select><br>
      </div>  


      <div id="change">
         <label for="city"><b>city</b></label>
         <select name ="city">
                        <option value="Hyderabad, Amaravat">Andra Pradesh</option>
                         <option value="Itangar">Arunachal Pradesh</option>
                         <option value="Dispur">Assam</option>
                         <option value="Patna">Patna</option>
                         <option value="Raipur">Raipur</option>
                         <option value="Panaji">Panaji</option>
                         <option value="Gandhinagar">Gandhinagar</option>
                         <option value="Chandigarh">Chandigarh</option>
                         <option value="Shimla">Shimla</option>
                         <option value="Srinagar and Jammu">Srinagar and Jammu</option>
                         <option value="Ranchi">Ranchi</option>
                         <option value="Bangalore">Bangalore</option>
                         <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                         <option value="Bhopal">Bhopal</option>
                         <option value="Mumbai">Mumbai</option>
                         <option value="Imphal">Imphal</option>
                         <option value="Shillong">Shillong</option>
                         <option value="Kolkata">Kolkata</option>

               </select>

     </div>  
   <label for="Pin code"><b>Pin code</b></label>
    <input type="tel" placeholder="Pin code" name="pin" required pattern="[0-9]{6}" maxlength="6"><br>
       

     <p style=color "red";>Course Details</p>

    <label for="course"><b>Course Selection</b></label>
     <div id="course">
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


       <label for="ngo"><b>NGO Selection</b></label>
     <div id="ngo">
    <select name="ngo" class="form-control">
    <option value="ngo">Select Ngo Name:</option>
    <option value="Organic Farming Asssociation of India, Goa">Agriculture-OFAI-Mumbai</option>
    <option value="SKVG Handicrafts, Nainital">Agriculture-SKVZ-Nainital</option>
    <option value="BGS-Tailoring, Uttarakhand">Tailoring -BGS-Utrakhand</option>
    </select><br>
       </div>
      <label for="duratiion"><b> Course Duration</b></label>
    <input type="tel" placeholder="Duration in months" name="duration" required maxlength="1"><br>

    <p>Documnet section</p>
    <label for="ngo"><b>Date Of Birth</b></label>
    <div id="document">
    <input type="file" name="file">
    </div>

    <input type="submit" class="registerbtn" value="Submit">Register</input>
  </div>
</form>

</body>
</html>