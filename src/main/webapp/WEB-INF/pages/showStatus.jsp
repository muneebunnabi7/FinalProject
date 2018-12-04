<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>  
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ page isELIgnored="false"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <h3> Your current application status is as:</h3>
      
       <table border="2" width="70%" cellpadding="2">
       <tr>
       <th>Application id</th>
       <th>First Name</th>
       <th>Second Name</th>
       <th>Last Name</th>
       <th>Course Name</th>
       <th>NGO Name</th>
       <th>Status</th>
        </tr>   
         <c:forEach var="in" items="${informa}">
   
        <tr> 
            <td>${in.gpt_rid} </td>
            <td>${in.gpt_firstname}</td>
            <td>${in.gpt_middlename}</td>
            <td>${in.gpt_lastname}</td>
            <td>${in.gtc_course_name}</td>
            <td>${in.gtc_ngo_name}</td>
            <td>${in.gpt_status}</td>
              
        </tr>
       </c:forEach> 
        </table>
        <br/>
               
</body>
</html>