<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Register Here</h2>
<form action="Register">
<h3>Personal Details</h3>
First Name: <input type="text" placeholder="Enter First Name" name="fname"><br>
Middle Name: <input type="text" placeholder="Enter Middle Name" name="mname"><br>
Last Name: <input type="text" placeholder="Enter Last Name" name="lname"><br>
Date of Birth: <input type=date name="dob"><br>
Email Id:<input type="text" placeholder="Enter Email-id" name="email"><br>
Username:<input type="text" placeholder="Enter Username" name="uname"><br>
Password:<input type="password" placeholder="Enter password" name="pass"><br>
Aadhar Number:<input type="tel" placeholder="Enter Aadhar Number" name="aadhar"><br>
Contact Number:<input type="tel" placeholder="Enter Contact Number" name="phone"><br>

<br>
<h3>Address Details</h3>

 City:<input type="text" placeholder="Enter City" name="city"> <br>
 State:<input type="text" placeholder="Enter State" name="state"><br>
 Pin code:<input type="tel" placeholder="Pin Code" name="pin"><br>
 

<br>
 <h3>Course Details</h3>
  Course Name:<select name="coursename">
    <option value="Null">Select Course:</option>
    <option value="Agriculture-Faring">Agriculture-Faring</option>
    <option value="Agriculture-organic Farming">Agriculture-organic Farming"</option>
    <option value="Tailoring-Fitting and atteration">Tailoring-Fitting and atteration</option>
    <option value="Tailoring-Simple Cuttng and Tailoring">Tailoring-Simple Cuttng and  atteration</option>
    </select><br>
    NGO Name:<select name="ngo">
    <option value="Null">Select Ngo Name:</option>
    <option value="SKVZ Agriculture Mumbai">Agriculture-SKVZ-Mumbai</option>
    <option value="BGSD- Tailoring Utrakhand">Tailoring -BGSD-Utrakhand"</option>
    </select><br>
     Course Duration<input type="tel" placeholder="In months" name="duration"> <br>
 
     <input type ="submit" value="Save">
</form>
</body>
</html>