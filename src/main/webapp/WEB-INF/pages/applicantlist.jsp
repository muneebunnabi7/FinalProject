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
<body>
      
       <table>
       <tr>
       <th>Application id</th>
       <th>First Name</th>
       <th>Second Name</th>
       <th>Last Name</th>
       <th>View all Records</th>
        </tr>   
         <c:forEach var="info" items="${data}">
   
        <tr> 
            <td>${info.gpt_rid} </td>
            <td>${info.gpt_firstname}</td>
            <td>${info.gpt_middlename}</td>
            <td>${info.gpt_lastname}</td>
            <td><a href="ViewAllRecords/${info.gpt_rid}">ViewAllRecords</a> 
              
        </tr>
       </c:forEach> 
        </table>
        <br/>
             
</body>
</html>    
      
