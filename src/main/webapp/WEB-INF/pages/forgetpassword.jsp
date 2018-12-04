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
       
       <form action="forpas">
            Question: <select name ="question">
                                  <option value="What is your birthplace">What is your birthplace</option>
                                  <option value="What is your favorite game">What is your favorite game</option>
                                  <option value="What is your nick name">What is your nick name</option>
                                  <option value="what is your deepest secrit">what is your deepest secrit</option>
                                  </select> <br>
                              
                               
                              <input type="text" class="form-control" name="ans" placeholder="Answer" ><br>
                              <input type="submit" value ="submit">
                              </form>
           
</body>
</html>