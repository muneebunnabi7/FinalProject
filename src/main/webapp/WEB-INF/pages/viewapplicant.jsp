<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ page isELIgnored="false"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Trainees</title>
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
.milestone {
    font-family: Arial;
    padding: 5px;
    width:100%;
    margin-top: 100px;
    background-color: #adcbe3;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
    float: left;
    width: 100%;
    height:80%;
     padding-left: 2px;
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
@media screen and (max-width: 1000px) {
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
table, tr, th {
    border: 1px solid black;
}

table {
    border-collapse: collapse;
    width: 100%;
}

tr {
	text-align:center;
    height: 30px;
    width:40px;
}
</style>
</head>
<body>
<div class="milestone">

	
	<h4 align="center"> Trainee Details</h4>				
<div class="row">
  <div class="leftcolumn">
    <div class="card">
    
    
      <center>
     <h4>List of Trainee Details</h4><hr>
     <form action="applicants">
<table border="2" width="70%" cellpadding="2">
  
<tr>
<th>Registration Id</th>
<th>First Name</th>
<th>Middle Name</th>
<th>Last Name</th>
<th>Date of Birth</th>
<th>Email Id</th>
<th>User Name</th>
<th>Password</th>
<th>Aadhar Number</th>
<th>Phone Number</th>
<th>Status</th>
<th>Course Name</th>
<th>NGO Name</th>
<th>Course Duration</th>
<th>Documents</th>
</tr>  
   
   <c:forEach var="emp" items="${list}">   
   <tr>  
   <td>${emp.gpt_rid}</td>  
   <td>${emp.gpt_firstname}</td>  
   <td>${emp.gpt_middlename}</td>  
   <td>${emp.gpt_lastname}</td>  
   <td>${emp.gpt_dob}</td>  
   <td>${emp.gpt_email}</td>  
   <td>${emp.gpt_uname}</td>  
   <td>${emp.gpt_password}</td>  
   <td>${emp.gpt_aadhar}</td>  
   <td>${emp.gpt_phone}</td>  
   <td>${emp.gpt_status}</td>
   <td>${emp.gtc_course_name}</td>  
    <td>${emp.gtc_ngo_name}</td>  
   <td>${emp.gtc_duration}</td> 
   <td><a href="/G6WomEmp/download/${emp.gpt_rid}">veiw birth certificate</a></td>
   </tr>  
  <!--   Registration Id:<input type="number" id="memreg" name="memid" value="<c:out value="${emp.gpt_rid}"/>"><hr>-->
   
   
   </c:forEach>  
   </table> <hr>
    Apllication Status:<select name="stat">
    <option value="Status">Select Course:</option>
    <option value="Approve">Approve</option>
    <option value="Rejected">Rejected</option>
    </select><br><hr>
    <button class="btn" type="submit">Submit</button>
   </form>  
     </center>
    
    
  	</div>
   </div>
   
</div>
    
	</div>