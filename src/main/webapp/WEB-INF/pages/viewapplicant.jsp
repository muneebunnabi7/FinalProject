<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ page isELIgnored="false"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<form action="/G6WomEmp/statusUpdation">
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
   Registration Id:<input type="number" id="memreg" name="memid" value="<c:out value="${emp.gpt_rid}"/>">
   
   </c:forEach>  
   </table> 
    Apllication Status:<select name="stat">
    <option value="Status">Select Course:</option>
    <option value="Approve">Approve</option>
    <option value="Rejected">Rejected</option>
    </select><br> 
    <input type="submit" value="Submit">
   </form>  
  </body> 
</html>